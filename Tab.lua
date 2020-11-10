local function AchievementCategoryButton_OnClick_Local(button)
    AchievementCategoryButton_OnClick_Original(button);
    print(button);
    DebugTable(button);
    DebugTable(AchievementFrameCategoriesContainer.buttons);
end

function AchievementFrameCategories_DisplayButton_Extended (button, element)
    AchievementFrameCategories_DisplayButton_Original(button, element);
    if not element then
		return;
    end
    -- Going to try to replace this with a level parameter on load so we don't have to go over the entire table every time we want to show the categories frame
    if ( type(element.parent) == "number" ) then
        local parentParent = -1;
        for i = 1, #ACHIEVEMENTUI_CATEGORIES do
            if element.parent == ACHIEVEMENTUI_CATEGORIES[i].id then
                parentParent = ACHIEVEMENTUI_CATEGORIES[i].parent;
            end
        end
        if type(parentParent) == "number" then
            button:SetWidth(ACHIEVEMENTUI_CATEGORIESWIDTH - 50);
        else
            button:SetWidth(ACHIEVEMENTUI_CATEGORIESWIDTH - 25);
        end
	end
end

-- more or less working code
local achievementFunctions;

local function AchievementFrame_UpdateTabs(clickedTab) -- Overwrite the debaulft Blizzard_AchievementUI AchievementFrame_UpdateTabs
	AchievementFrame.searchResults:Hide();
	PanelTemplates_Tab_OnClick(_G["AchievementFrameTab"..clickedTab], AchievementFrame);
	local tab;
	for i = 1, 4 do -- Extended from 3 to 4
		tab = _G["AchievementFrameTab"..i];
		if ( i == clickedTab ) then
			tab.text:SetPoint("CENTER", 0, -5);
		else
			tab.text:SetPoint("CENTER", 0, -3);
		end
	end
end


local function AchievementFrameBaseTab_OnClick(tab) -- Overwrite the debaulft Blizzard_AchievementUI AchievementFrameBaseTab_OnClick
    Debug(tab:GetID());
	AchievementFrame_UpdateTabs(tab:GetID());

    if IN_GUILD_VIEW then
        AchievementFrame_ToggleView();
    end
    achievementFunctions = ACHIEVEMENT_FUNCTIONS;
    -- AchievementFrameCategories_GetCategoryList(ACHIEVEMENTUI_CATEGORIES); -- This needs to happen before AchievementFrame_ShowSubFrame (fix for bug 157885)
    ACHIEVEMENTUI_CATEGORIES = {}; -- Clear the list so we can add our own categories, not sure how yet though
    tinsert(ACHIEVEMENTUI_CATEGORIES, {id = 96, parent = true,});
    tinsert(ACHIEVEMENTUI_CATEGORIES, {id = 95, parent = 96,});
    tinsert(ACHIEVEMENTUI_CATEGORIES, {id = 97, parent = 95,});
    AchievementFrame_ShowSubFrame(AchievementFrameAchievements);
    AchievementFrameWaterMark:SetTexture("Interface\\AchievementFrame\\UI-Achievement-AchievementWatermark");
    AchievementFrameCategoriesBG:SetTexCoord(0, 0.5, 0, 1);
    AchievementFrameGuildEmblemLeft:Hide();
    AchievementFrameGuildEmblemRight:Hide();

	AchievementFrameCategories_Update();
	achievementFunctions.updateFunc();

	-- SwitchAchievementSearchTab(tab:GetID()); -- Does not work yet
end

local function LoadTabButton()
    local tabID = 0;
    repeat
        tabID = tabID + 1;
    until not _G["AchievementFrameTab" .. tabID];
    local tabButton = CreateFrame("Button", "AchievementFrameTab" .. tabID, AchievementFrame, "AchievementFrameTabButtonTemplate");
    tabButton:SetText(AF_TAB_BUTTON_TEXT);
    tabButton:SetPoint("LEFT", "AchievementFrameTab" .. tabID - 1, "RIGHT", -5, 0);
    tabButton:SetID(tabID);
    tabButton:SetScript("OnClick", AchievementFrameBaseTab_OnClick);
    tabButton.RightFrame = nil;
    tabButton.LeftFrame = nil;
    PanelTemplates_SetNumTabs(AchievementFrame, tabID);

    return tabButton;
end

local function LoadRightFrame(tabButton)
    -- Frame
    local rightFrame = CreateFrame("Frame", "AF_RightFrame", AchievementFrame);
    rightFrame:SetWidth(504);
    rightFrame:SetHeight(440);
    rightFrame:SetPoint("TOPLEFT", AchievementFrameAchievements, "TOPLEFT", 0, 0);
    rightFrame:SetPoint("BOTTOM", AchievementFrameAchievements, "BOTTOM");
    tabButton.RightFrame = rightFrame;
    -- Background
    local rightFrameBackground = rightFrame:CreateTexture("$parentBackground", "BACKGROUND");
    rightFrameBackground:SetTexture("Interface\\AchievementFrame\\UI-Achievement-AchievementBackground");
    rightFrameBackground:SetPoint("TOPLEFT", rightFrame, "TOPLEFT", 3, -3);
    rightFrameBackground:SetPoint("BOTTOMRIGHT", rightFrame, "BOTTOMRIGHT", -3, 3);
    rightFrameBackground:SetTexCoord(0, 1, 0, 0.5);
    local rightFrameBackgroundDarken = rightFrame:CreateTexture(nil, "ARTWORK");
    rightFrameBackgroundDarken:SetAllPoints(rightFrameBackground);
    rightFrameBackgroundDarken:SetColorTexture(0, 0, 0, 0.75);
    -- Border
    local rightFrameBorder = CreateFrame("Frame", nil, rightFrame, "BackdropTemplate");
    rightFrameBorder:SetAllPoints(rightFrame);
    rightFrameBorder:SetBackdrop({
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        tile = true,
        tileSize = 16,
        edgeSize = 16,
        insets = { left = 5, right = 5, top = 5, bottom = 5 },
    });
    rightFrameBorder:SetBackdropBorderColor(ACHIEVEMENTUI_GOLDBORDER_R, ACHIEVEMENTUI_GOLDBORDER_G, ACHIEVEMENTUI_GOLDBORDER_B, ACHIEVEMENTUI_GOLDBORDER_A);
    rightFrameBorder:SetFrameLevel(rightFrameBorder:GetFrameLevel() + 1);
    tinsert(ACHIEVEMENTFRAME_SUBFRAMES, "AF_RightFrame");

    return rightFrame;
end

local function LeftFrame_OnShow(self)
    AchievementFrameCategoriesContainer:Hide();
    AchievementFrameCategoriesContainerScrollBar:Hide();
    AchievementFrameFilterDropDown:Show();
    AchievementFrameHeaderLeftDDLInset:Show();
end

local function LeftFrame_OnHide(self)
    AchievementFrameCategoriesContainer:Show();
    if not AchievementFrameAchievements:IsShown() then
        AchievementFrameFilterDropDown:Hide();
        AchievementFrameHeaderLeftDDLInset:Hide();
    end
end

local function LoadLeftFrame(tabButton)
    -- Frame
    local leftFrame = CreateFrame("Frame", "AF_LeftFrame", AchievementFrameCategories);
    leftFrame:SetPoint("TOPLEFT", AchievementFrameCategories, "TOPLEFT", 9, -5);
    leftFrame:SetPoint("TOPRIGHT", AchievementFrameCategories, "TOPRIGHT", -9, -5);
    leftFrame:SetPoint("BOTTOM", AchievementFrameCategories, "BOTTOM", 0, 8);
    tabButton.LeftFrame = leftFrame;
    -- Label
    -- local leftFrameLabel = leftFrame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
    -- leftFrameLabel:SetPoint("TOPLEFT", LeftFrame, "TOPLEFT", 1, -6);
    -- leftFrameLabel:SetText(AF_NAME);
    -- leftFrame.label = leftFrameLabel;
    -- Events
    leftFrame:SetScript("OnShow", LeftFrame_OnShow);
    leftFrame:SetScript("OnHide", LeftFrame_OnHide);

    tinsert(ACHIEVEMENTFRAME_SUBFRAMES, "AF_LeftFrame");

    return leftFrame;
end

local tabButtonLoadHelper = CreateFrame("Frame", nil, nil);
tabButtonLoadHelper:RegisterEvent("ADDON_LOADED");

function tabButtonLoadHelper:OnEvent(event, arg1)
    if arg1 == "Blizzard_AchievementUI" then
        if event == "ADDON_LOADED" then
            local tabButton = LoadTabButton();
            Debug(AF_TAB_TAB_BUTTON_LOADED);
            LoadRightFrame(tabButton);
            Debug(AF_TAB_RIGHT_FRAME_LOADED);
            LoadLeftFrame(tabButton);
            Debug(AF_TAB_LEFT_FRAME_LOADED);
            self:UnregisterEvent("ADDON_LOADED");

            -- AchievementCategoryButton_OnClick_Original = AchievementCategoryButton_OnClick;
            -- AchievementCategoryButton_OnClick = AchievementCategoryButton_OnClick_Local;
            AchievementFrameCategories_DisplayButton_Original = AchievementFrameCategories_DisplayButton;
            AchievementFrameCategories_DisplayButton = AchievementFrameCategories_DisplayButton_Extended;
        end
    end
end
tabButtonLoadHelper:SetScript("OnEvent", tabButtonLoadHelper.OnEvent);