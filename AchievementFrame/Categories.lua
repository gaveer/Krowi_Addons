function KrowiAF.AchievementFrameCategories_GetCategoryList(categories)
    KrowiAF.Debug("AchievementFrameCategories_GetCategoryList");
    -- Clear the list so we can add our own categories, not sure how yet though
    local cats = KrowiAF.AchievementFunctions.categoryAccessor();
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

function KrowiAF.AchievementFrameCategories_Update()
    KrowiAF.Debug("AchievementFrameCategories_Update");
    local displayCategories = AchievementFrameCategories_Update();

    -- For some reason, only calling AchievementFrameCategories_Update does not highlight the selected category
    local scrollFrame = AchievementFrameCategoriesContainer
	local offset = HybridScrollFrame_GetOffset(scrollFrame);
	local buttons = scrollFrame.buttons;

    local selection = KrowiAF.AchievementFunctions.selectedCategory;

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

	if ( id == KrowiAF.AchievementFunctions.selectedCategory ) then
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
    KrowiAF.AchievementFunctions.selectedCategory = id;

	if ( KrowiAF.AchievementFunctions.clearFunc ) then
		KrowiAF.AchievementFunctions.clearFunc(); -- Resets the achievement frame (For the Alliance!)
	end
	AchievementFrameAchievementsContainerScrollBar:SetValue(0);
    KrowiAF.AchievementFunctions.updateFunc();
end

function KrowiAF.AchievementCategoryButton_OnClick (button)
    KrowiAF.Debug("AchievementCategoryButton_OnClick for " .. button.element.more.Name);
	KrowiAF.AchievementFrameCategories_SelectButton(button);
    KrowiAF.AchievementFrameCategories_Update();
end

-- Extending the original function allows us with little work to add another level to the categories view
function KrowiAF.AchievementFrameCategories_DisplayButton (button, element)
    -- AchievementFilter.Debug("AchievementFrameCategories_DisplayButton"); -- Creates a lot of messages!
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

function KrowiAF.LoadCategories()
    KrowiAF.Debug("- Achievement Frame - Categories");
    KrowiAF.LoadAchievementCategories();
    KrowiAF.Debug("     - Achievement categories loaded");
    hooksecurefunc("AchievementFrameCategories_DisplayButton", KrowiAF.AchievementFrameCategories_DisplayButton);
    KrowiAF.Debug("     - DisplayButton extended");
end