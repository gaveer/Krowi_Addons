AchievementFilter.DebugTable(GetCategoryList());

local function AchievementCategoryButton_OnClick_Local(button)
    AchievementCategoryButton_OnClick_Original(button);
    print(button);
    AchievementFilter.DebugTable(button);
    AchievementFilter.DebugTable(AchievementFrameCategoriesContainer.buttons);
end

-- [[ Tab functionality ]] --
function AchievementFilter.AchievementFrame_UpdateTabs(clickedTab) -- Overwrites the debaulft Blizzard_AchievementUI AchievementFrame_UpdateTabs
    AchievementFilter.Debug("AchievementFrame_UpdateTabs");
    AchievementFrame_UpdateTabs_Blizzard(clickedTab); -- Call Blizzard function to handle base needs and tabs 1 to 3 (default achievement tabs)
	local tab;
    for i = 4, AchievementFrame.numTabs do -- Skip default achievement tabs (1 to 3)
        AchievementFilter.Debug("Updating tab " .. tostring(i));
		tab = _G["AchievementFrameTab"..i];
		if ( i == clickedTab ) then
			tab.text:SetPoint("CENTER", 0, -5);
		else
			tab.text:SetPoint("CENTER", 0, -3);
		end
	end
end

local achievementFunctions;
function AchievementFilter.AchievementFrameTab_OnClick(id) -- Mimick Blizzard_AchievementUI AchievementFrameBaseTab_OnClick for our own buttons
    AchievementFilter.Debug("AchievementFrameTab_OnClick");
    AchievementFilter.Debug("Tab " .. tostring(id) .. " of " .. tostring(AchievementFrame.numTabs) .. " clicked.");
	AchievementFilter.AchievementFrame_UpdateTabs(id);

    if IN_GUILD_VIEW then
        AchievementFrame_ToggleView();
    end
    achievementFunctions = AF_ACHIEVEMENT_FUNCTIONS;
    AchievementFilter.AchievementFrameCategories_GetCategoryList(ACHIEVEMENTUI_CATEGORIES); -- This needs to happen before AchievementFrame_ShowSubFrame (fix for bug 157885)
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
function AchievementFilter.AchievementFrameCategories_GetCategoryList(categories)
    -- Clear the list so we can add our own categories, not sure how yet though
    local cats = achievementFunctions.categoryAccessor();

    for i in next, categories do
		categories[i] = nil;
    end
    
    for i in next, cats do
        -- if type(cats[i].parent) == "number" then
        --     cats[i].collapsed = true;
        -- end
        tinsert(categories, cats[i]);
    end
end

function AchievementFrameCategories_DisplayButton_Extended (button, element) -- Extending the original function allows us with little work to add another level to the categories view
    AchievementFrameCategories_DisplayButton_Original(button, element);
    if not element then
		return;
    end

    local buttonID = HybridScrollFrame_GetButtonIndex(AchievementFrameCategoriesContainer, button)
    if buttonID ~= 1 then -- Skip the first button to not mess up the rest, always highest level so not a problem
        button:SetPoint("TOPRIGHT", "AchievementFrameCategoriesContainerButton" .. buttonID - 1, "BOTTOMRIGHT");
    end

    if type(element.parent) == "number" then -- This applies to all buttons not on the highest level (default is -25)
        button:SetWidth(ACHIEVEMENTUI_CATEGORIESWIDTH - 15);
    end

    if element.more then -- This applies to all the custom buttons for this addon
        button.label:SetText(element.more.Name);
        if element.more.Level == 2 then
            button:SetWidth(ACHIEVEMENTUI_CATEGORIESWIDTH - 15 - (element.more.Level - 1) * 5);
        end
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
        AchievementFilter.AchievementFrameTab_OnClick(self:GetID());
        PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB);
    end);
end

local tabButtonLoadHelper = CreateFrame("Frame", nil, nil);
tabButtonLoadHelper:RegisterEvent("ADDON_LOADED");

function tabButtonLoadHelper:OnEvent(event, arg1)
    if arg1 == "Blizzard_AchievementUI" then
        if event == "ADDON_LOADED" then
            AchievementFilter.Debug("Achievement Frame");
            LoadTabButton();
            AchievementFrame_UpdateTabs_Blizzard = AchievementFrame_UpdateTabs;
            AchievementFrame_UpdateTabs = AchievementFilter.AchievementFrame_UpdateTabs;
            AchievementFilter.Debug("     - Tab Button loaded");
            AchievementFilter.LoadAchievementCategories();
            AchievementFilter.Debug("     - Achievement categories loaded");
            AF_ACHIEVEMENT_FUNCTIONS = {
                categoryAccessor = function()
                    return AchievementFilter.Categories;
                end,
                clearFunc = AchievementFrameAchievements_ClearSelection,
                updateFunc = AchievementFrameAchievements_Update,
                selectedCategory = "summary";
            };
            AchievementFilter.Debug("     - Functions linked");
            AchievementFrameCategories_DisplayButton_Original = AchievementFrameCategories_DisplayButton;
            AchievementFrameCategories_DisplayButton = AchievementFrameCategories_DisplayButton_Extended;
            AchievementFilter.Debug("     - Display button extension linked");
            self:UnregisterEvent("ADDON_LOADED");
        end
    end
end
tabButtonLoadHelper:SetScript("OnEvent", tabButtonLoadHelper.OnEvent);