Krowi_AF.DebugTable(GetCategoryList());

local function AchievementCategoryButton_OnClick_Local(button)
    AchievementCategoryButton_OnClick_Original(button);
    print(button);
    Krowi_AF.DebugTable(button);
    Krowi_AF.DebugTable(AchievementFrameCategoriesContainer.buttons);
end

function Krowi_AF.GetCategoryName(id)
    if id == 500 then
        return AF_CATEGORY_SHADOWLANDS;
    end
end

-- Extending the original function allows us with little work to add another level to the categories view
function AchievementFrameCategories_DisplayButton_Extended (button, element)
    Blizzard_AchievementFrameCategories_DisplayButton(button, element);
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
    -- AchievementFilter.Debug(AchievementFilter.GetCategoryName(element.id));
    if element.more then
        -- AchievementFilter.Debug(element.text);
        button.label:SetText(element.more.Name);
    end
end

-- [[ Tab functionality ]] --
function Krowi_AF.AchievementFrame_UpdateTabs(clickedTab) -- Overwrites the debaulft Blizzard_AchievementUI AchievementFrame_UpdateTabs
    Krowi_AF.Debug("AchievementFrame_UpdateTabs");
    Blizzard_AchievementFrame_UpdateTabs(clickedTab); -- Call Blizzard function to handle base needs and tabs 1 to 3 (default achievement tabs)
	local tab;
    for i = 4, AchievementFrame.numTabs do -- Skip default achievement tabs (1 to 3)
        Krowi_AF.Debug("Updating tab " .. tostring(i));
		tab = _G["AchievementFrameTab"..i];
		if ( i == clickedTab ) then
			tab.text:SetPoint("CENTER", 0, -5);
		else
			tab.text:SetPoint("CENTER", 0, -3);
		end
	end
end

local achievementFunctions;
function Krowi_AF.AchievementFrameTab_OnClick(id) -- Mimick Blizzard_AchievementUI AchievementFrameBaseTab_OnClick for our own buttons
    Krowi_AF.Debug("AchievementFrameTab_OnClick");
    Krowi_AF.Debug("Tab " .. tostring(id) .. " of " .. tostring(AchievementFrame.numTabs) .. " clicked.");
	Krowi_AF.AchievementFrame_UpdateTabs(id);

    if IN_GUILD_VIEW then
        AchievementFrame_ToggleView();
    end
    achievementFunctions = AF_ACHIEVEMENT_FUNCTIONS;
    Krowi_AF.AchievementFrameCategories_GetCategoryList(ACHIEVEMENTUI_CATEGORIES); -- This needs to happen before AchievementFrame_ShowSubFrame (fix for bug 157885)
    AchievementFrame_ShowSubFrame(AchievementFrameAchievements);
    AchievementFrameWaterMark:SetTexture("Interface\\AchievementFrame\\UI-Achievement-AchievementWatermark");
    AchievementFrameCategoriesBG:SetTexCoord(0, 0.5, 0, 1);
    AchievementFrameGuildEmblemLeft:Hide();
    AchievementFrameGuildEmblemRight:Hide();

	AchievementFrameCategories_Update();
	achievementFunctions.updateFunc();

	-- SwitchAchievementSearchTab(tab:GetID()); -- Does not work yet
end

-- [[ Category functionality ]] --
function Krowi_AF.AchievementFrameCategories_GetCategoryList(categories)
    -- Clear the list so we can add our own categories, not sure how yet though
    local cats = achievementFunctions.categoryAccessor();

    for i in next, categories do
		categories[i] = nil;
    end
    -- might need to add option so only parents are shown and rest hidden initially but show/hide is not working yet
    for i in next, cats do
        tinsert(categories, cats[i]);
    end
end

-- [[ UI loading ]] --
local function LoadTabButton() -- Do this in code instead of an xml template since we're not sure if other addons will also add tabs to the AchievementFrame
    local tabID = 0;
    repeat
        tabID = tabID + 1;
    until not _G["AchievementFrameTab" .. tabID];
    PanelTemplates_SetNumTabs(AchievementFrame, tabID);
    local tabButton = CreateFrame("Button", "AchievementFrameTab" .. tabID, AchievementFrame, "AchievementFrameTabButtonTemplate");
    tabButton:SetID(tabID);
    tabButton:SetText(AF_TAB_BUTTON_TEXT);
    tabButton:SetPoint("LEFT", "AchievementFrameTab" .. tabID - 1, "RIGHT", -5, 0);
    tabButton:SetScript("OnClick", function(self)
        Krowi_AF.AchievementFrameTab_OnClick(self:GetID());
        PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB);
    end);
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
            Krowi_AF.Debug("Achievement Frame");
            LoadTabButton();
            Blizzard_AchievementFrame_UpdateTabs = AchievementFrame_UpdateTabs;
            AchievementFrame_UpdateTabs = Krowi_AF.AchievementFrame_UpdateTabs;
            Krowi_AF.Debug("     - Tab Button loaded");
            Krowi_AF.LoadAchievementCategories();
            Krowi_AF.Debug("     - Achievement categories loaded");
            AF_ACHIEVEMENT_FUNCTIONS = ACHIEVEMENT_FUNCTIONS;
            AF_ACHIEVEMENT_FUNCTIONS.categoryAccessor = function()
                return Krowi_AF.Categories;
            end;
            Krowi_AF.Debug("     - Function links loaded");
            -- LoadRightFrame(tabButton);
            -- Debug(AF_TAB_RIGHT_FRAME_LOADED);
            -- LoadLeftFrame(tabButton);
            -- Debug(AF_TAB_LEFT_FRAME_LOADED);
            Krowi_AF.DebugTable(GetCategoryList());
            Krowi_AF.DebugTable(categoriesTable, 1);
            self:UnregisterEvent("ADDON_LOADED");

            -- AchievementCategoryButton_OnClick_Original = AchievementCategoryButton_OnClick;
            -- AchievementCategoryButton_OnClick = AchievementCategoryButton_OnClick_Local;
            Blizzard_AchievementFrameCategories_DisplayButton = AchievementFrameCategories_DisplayButton;
            AchievementFrameCategories_DisplayButton = AchievementFrameCategories_DisplayButton_Extended;
        end
    end
end
tabButtonLoadHelper:SetScript("OnEvent", tabButtonLoadHelper.OnEvent);