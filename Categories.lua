local achievementFunctions;

-- [[ Category functionality ]] --
-- local blizzGetAchievementInfo;
-- function KrowiAF.GetAchievementInfo(...)
--     KrowiAF.Debug("GetAchievementInfo");
--     local args = {...}
--     local category, achievementID;
--     if #args == 1 then
--         achievementID = args[1];
--         KrowiAF.Debug("GetAchievementInfo for '" .. tostring(achievementID) .. "'");
--     elseif #args == 2 then
--         achievementID = KrowiAF.Categories[args[1]].more.Achievements[args[2]].ID;
--         KrowiAF.Debug("GetAchievementInfo for '" .. tostring(achievementID) .. "' (" .. tostring(args[1]) .. ", " .. tostring(args[2]) .. ")");
--     else
--         KrowiAF.Debug("GetAchievementInfo was called with a not defined number of parameters!");
--         return;
--     end

--     return blizzGetAchievementInfo(achievementID);
-- end

-- function KrowiAF.GetCategoryNumAchievements(categoryID)
--     KrowiAF.Debug("GetCategoryNumAchievements");
--     local numAchievements = 0;
--     local numCompleted = 0;
--     local completedOffset = 0;
--     for _, child in next, KrowiAF.Categories[categoryID].more.Achievements do
--         local _, _, _, completed = GetAchievementInfo(child.ID);
--         numAchievements = numAchievements + 1;
--         if completed then
--             numCompleted = numCompleted + 1;
--         end
--     end
--     KrowiAF.Debug(numAchievements);
--     KrowiAF.Debug(numCompleted);
--     KrowiAF.Debug(0);
--     -- if ACHIEVEMENTUI_SELECTEDFILTER == AchievementFrame_GetCategoryNumAchievements_All then
--         return numAchievements, numCompleted, 0;
--     -- elseif ACHIEVEMENTUI_SELECTEDFILTER == AchievementFrame_GetCategoryNumAchievements_Complete then
--     --     return numCompleted, numCompleted, 0;
--     -- elseif ACHIEVEMENTUI_SELECTEDFILTER == AchievementFrame_GetCategoryNumAchievements_Incomplete then
--     --     return numAchievements - numCompleted, 0, numAchievements - numCompleted; -- need to check !!!
--     -- end
-- end

-- function KrowiAF.AchievementFrameAchievements_Update ()
--     KrowiAF.Debug("AchievementFrameAchievements_Update");
--     AchievementFrameAchievements_Update();

--     -- local temp = GetCategoryNumAchievements;
--     -- GetCategoryNumAchievements = KrowiAF.GetCategoryNumAchievements;
--     -- GetAchievementInfo = KrowiAF.GetAchievementInfo;
--     -- GetAchievementInfo = blizzGetAchievementInfo;
--     -- GetCategoryNumAchievements = temp;

--     -- KrowiAF.Debug("AchievementFrameAchievements_Update");
--     -- local category = achievementFunctions.selectedCategory;
--     -- KrowiAF.Debug("Selected category is '" .. tostring(category) .. "' with name '" .. KrowiAF.Categories[category].more.Name .. "'");

-- 	-- local scrollFrame = AchievementFrameAchievementsContainer;

-- 	-- local offset = HybridScrollFrame_GetOffset(scrollFrame);
--     -- local buttons = scrollFrame.buttons;
--     -- local numAchievements, numCompleted, completedOffset = KrowiAF.GetCategoryNumAchievements(category);
--     -- KrowiAF.Debug(numAchievements);
--     -- KrowiAF.Debug(numCompleted);
--     -- KrowiAF.Debug(completedOffset);
-- 	-- -- local numButtons = #buttons;

-- 	-- -- If the current category is feats of strength and there are no entries then show the explanation text
-- 	-- if ( AchievementFrame_IsFeatOfStrength() and #KrowiAF.Categories[category].more.Achievements == 0 ) then
-- 	-- 	if ( AchievementFrame.selectedTab == 1 ) then
-- 	-- 		AchievementFrameAchievementsFeatOfStrengthText:SetText(FEAT_OF_STRENGTH_DESCRIPTION);
-- 	-- 	else
-- 	-- 		AchievementFrameAchievementsFeatOfStrengthText:SetText(GUILD_FEAT_OF_STRENGTH_DESCRIPTION);
-- 	-- 	end
-- 	-- 	AchievementFrameAchievementsFeatOfStrengthText:Show();
-- 	-- else
-- 	-- 	AchievementFrameAchievementsFeatOfStrengthText:Hide();
-- 	-- end

-- 	-- local selection = AchievementFrameAchievements.selection;
-- 	-- if selection then
-- 	-- 	AchievementButton_ResetObjectives();
-- 	-- end

-- 	-- local extraHeight = scrollFrame.largeButtonHeight or ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT

-- 	-- local achievementIndex;
-- 	-- local displayedHeight = 0;
-- 	-- for i = 1, #buttons do
-- 	-- 	achievementIndex = i + offset + completedOffset;
-- 	-- 	if ( achievementIndex > numAchievements + completedOffset ) then
-- 	-- 		buttons[i]:Hide();
--     --     else
--     --         -- some workaround to not have to overwrite the entire AchievementButton_DisplayAchievement function
--     --         GetAchievementInfo = KrowiAF.GetAchievementInfo;
-- 	-- 		AchievementButton_DisplayAchievement(buttons[i], category, achievementIndex, selection);
--     --         GetAchievementInfo = blizzGetAchievementInfo;
-- 	-- 		displayedHeight = displayedHeight + buttons[i]:GetHeight();
-- 	-- 	end
-- 	-- end

-- 	-- local totalHeight = numAchievements * ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT;
-- 	-- totalHeight = totalHeight + (extraHeight - ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT);

-- 	-- HybridScrollFrame_Update(scrollFrame, totalHeight, displayedHeight);

-- 	-- if ( selection ) then
-- 	-- 	AchievementFrameAchievements.selection = selection;
-- 	-- else
-- 	-- 	HybridScrollFrame_CollapseButton(scrollFrame);
--     -- end
-- end

function KrowiAF.AchievementFrameCategories_SelectButton (button)
    KrowiAF.Debug("AchievementFrameCategories_SelectButton");
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
    if id == FEAT_OF_STRENGTH_ID then -- Leaving it in for now
        AchievementFrameFilterDropDown:Hide();
        AchievementFrameHeaderLeftDDLInset:Hide();
    else
        AchievementFrameFilterDropDown:Show();
        AchievementFrameHeaderLeftDDLInset:Show();
    end
    achievementFunctions.selectedCategory = id;

	if ( achievementFunctions.clearFunc ) then
		achievementFunctions.clearFunc(); -- Resets the achievement frame (For the Alliance!)
	end
	AchievementFrameAchievementsContainerScrollBar:SetValue(0);
    achievementFunctions.updateFunc();
end

function KrowiAF.AchievementFrameCategories_Update()
    local displayCategories = AchievementFrameCategories_Update();

    -- For some reason, only calling AchievementFrameCategories_Update does not highlight the selected category
    local scrollFrame = AchievementFrameCategoriesContainer
	local offset = HybridScrollFrame_GetOffset(scrollFrame);
	local buttons = scrollFrame.buttons;

    local selection = achievementFunctions.selectedCategory;

	local element
	for i = 1, #buttons do
		element = displayCategories[i + offset];
		if element then
            if selection and element.id == selection then
				buttons[i]:LockHighlight();
			end
		end
	end
end

function KrowiAF.AchievementCategoryButton_OnClick (button)
    KrowiAF.Debug("AchievementCategoryButton_OnClick");
	KrowiAF.AchievementFrameCategories_SelectButton(button);
    KrowiAF.AchievementFrameCategories_Update();
end

-- Extending the original function allows us with little work to add another level to the categories view
function KrowiAF.AchievementFrameCategories_DisplayButton (button, element)
    -- AchievementFilter.Debug("AchievementFrameCategories_DisplayButton"); -- Creates a lot of messages!
    Blizzard_AchievementFrameCategories_DisplayButton(button, element);
    if not element then
		return;
    end

    local buttonID = HybridScrollFrame_GetButtonIndex(AchievementFrameCategoriesContainer, button)
    if buttonID ~= 1 then -- Skip the first button to not mess up the rest, always highest level so not a problem
        button:SetPoint("TOPRIGHT", "AchievementFrameCategoriesContainerButton" .. buttonID - 1, "BOTTOMRIGHT");
    else
        button:SetPoint("TOPRIGHT", AchievementFrameCategoriesContainer:GetScrollChild(), "TOPRIGHT", -4, 0);
    end

    if type(element.parent) == "number" then -- This applies to all buttons not on the highest level (default is -25)
        button:SetWidth(ACHIEVEMENTUI_CATEGORIESWIDTH - 15);
    end

    if element.more then -- This applies to all the custom buttons for this addon
        button.label:SetText(element.more.Name);
        button:SetScript("OnClick", KrowiAF.AchievementCategoryButton_OnClick);
        if element.more.Level >= 2 then
            button:SetWidth(ACHIEVEMENTUI_CATEGORIESWIDTH - 15 - (element.more.Level - 1) * 5);
        end
    else
        button:SetScript("OnClick", AchievementCategoryButton_OnClick);
    end
end

function KrowiAF.AchievementFrameCategories_GetCategoryList(categories)
    KrowiAF.Debug("AchievementFrameCategories_GetCategoryList");
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

local tabButtonLoadHelper = CreateFrame("Frame", nil, nil);
tabButtonLoadHelper:RegisterEvent("ADDON_LOADED");

function tabButtonLoadHelper:OnEvent(event, arg1)
    if arg1 == "Blizzard_AchievementUI" then
        if event == "ADDON_LOADED" then
            KrowiAF.Debug("Achievement Frame - Categories");
            KrowiAF.LoadAchievementCategories();
            KrowiAF.Debug("     - Achievement categories loaded");
            achievementFunctions = {
                categoryAccessor = function()
                    return KrowiAF.Categories;
                end,
                getCategoryList = KrowiAF.AchievementFrameCategories_GetCategoryList,
                clearFunc = AchievementFrameAchievements_ClearSelection,
                updateFunc = AchievementFrameAchievements_Update,
                selectedCategory = KrowiAF.Categories[1].more.ID;
                noSummary = true;
            };
            KrowiAF.Debug("     - Functions linked");
            KrowiAF.AddNewTabButton(AF_TAB_BUTTON_TEXT, achievementFunctions);
            KrowiAF.Debug("     - Tab Buttons loaded");
            Blizzard_AchievementFrameCategories_DisplayButton = AchievementFrameCategories_DisplayButton;
            AchievementFrameCategories_DisplayButton = KrowiAF.AchievementFrameCategories_DisplayButton;
            -- KrowiAF.Debug("     - Display button extension linked");
            -- blizzGetAchievementInfo = GetAchievementInfo;
            -- KrowiAF.Debug("     - Default blizz GetAchievementInfo saved");
            self:UnregisterEvent("ADDON_LOADED");
        end
    end
end
tabButtonLoadHelper:SetScript("OnEvent", tabButtonLoadHelper.OnEvent);