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
function AchievementFilter.AchievementFrameCategories_SelectButton (button)
    if not button.element.more then -- This function apparently also overwrites the Blizzard ones so call the base and be done with it
        AchievementFrameCategories_SelectButton(button);
        return;
    end

    if ( button.isSelected and button.element.collapsed == false ) then -- Collapse selected categories
        button.element.collapsed = true;
        for _, category in next, ACHIEVEMENTUI_CATEGORIES do
            if category.more.Level ~= 0 then -- If 0 = highest level = ignore
                local levels = category.more.Level - button.element.more.Level;
                if levels ~= 0 then -- If 0 = same level = ignore
                    local parent = category.more.Parent;
                    while levels > 1 do
                        parent = parent.Parent;
                        levels = levels - 1;
                    end
                    if parent.ID == button.element.more.ID then
                        category.hidden = true;
                    end
                end
            end
        end
    else -- Open selected category, close other highest level categories
        for i, category in next, ACHIEVEMENTUI_CATEGORIES do
            if category.more.Level == button.element.more.Level and category.parent == button.element.id then -- Category on same level and same parent
                if next(category.more.Children) ~= nil then
                    category.collapsed = true;
                end
            end
            if category.more.Level > button.element.more.Level then -- Category on lower level
                if category.parent == button.element.id then -- Child of
                    category.hidden = false;
                else -- Not a child of
                    category.hidden = true;
                    if next(category.more.Children) ~= nil then
                        category.collapsed = true;
                    end
                end
            end
        end
        button.element.collapsed = false;
    end

    -- Rest not changed from Blizzard AchievementFrameCategories_SelectButton so far
    local id = button.element.id;

	local buttons = AchievementFrameCategoriesContainer.buttons;
	for _, button in next, buttons do
		button.isSelected = nil;
	end

	button.isSelected = true;

	if ( id == achievementFunctions.selectedCategory ) then
		-- If this category was selected already, bail after changing collapsed states
		return
	end

    AchievementFrame_ShowSubFrame(AchievementFrameAchievements);
    if id == FEAT_OF_STRENGTH_ID then
        AchievementFrameFilterDropDown:Hide();
        AchievementFrameHeaderLeftDDLInset:Hide();
    else
        AchievementFrameFilterDropDown:Show();
        AchievementFrameHeaderLeftDDLInset:Show();
    end
    achievementFunctions.selectedCategory = id;

	if ( achievementFunctions.clearFunc ) then
		achievementFunctions.clearFunc();
	end
	AchievementFrameAchievementsContainerScrollBar:SetValue(0);
	achievementFunctions.updateFunc();
end

function AchievementFilter.AchievementCategoryButton_OnClick (button)
    AchievementFilter.Debug("AchievementCategoryButton_OnClick");
	AchievementFilter.AchievementFrameCategories_SelectButton(button);
	AchievementFrameCategories_Update();
end

function AchievementFilter.AchievementFrameCategories_GetCategoryList(categories)
    AchievementFilter.Debug("AchievementFrameCategories_GetCategoryList");
    -- Clear the list so we can add our own categories, not sure how yet though
    local cats = achievementFunctions.categoryAccessor();
    -- AchievementFilter.DebugTable(cats);

    for i in next, categories do
		categories[i] = nil;
    end
    
    for _, cat in next, cats do
        if cat.more.Level ~= 0 then
            cat.hidden = true;
        end
        cat.collapsed = true;
        tinsert(categories, cat);
    end
end

function AchievementFrameCategories_DisplayButton_Extended (button, element) -- Extending the original function allows us with little work to add another level to the categories view
    -- AchievementFilter.Debug("AchievementFrameCategories_DisplayButton_Extended"); -- Creates a lot of messages!
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
        button:SetScript("OnClick", AchievementFilter.AchievementCategoryButton_OnClick);
        if element.more.Level >= 2 then
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
                noSummary = true;
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