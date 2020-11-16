KrowiAF.Categories = {};
KrowiAF.SelectedCategory = {};

local UI_CategoriesWidth = 175;

KrowiAF.CategoriesFrame:RegisterEvent("ADDON_LOADED");

-- [[ Blizzard_AchievementUI.lua derived OnEvent, OnShow and OnHide functions + Show and Hide the ScrollBar ]] --

	function KrowiAF.CategoriesFrame.OnEvent(self, event, ...) -- OK -- AchievementFrameCategories_OnLoad + AchievementFrameCategories_OnEvent
		if event == "ADDON_LOADED" then
			local addonName = ...;
			if addonName and addonName ~= "AchievementFilter_Tab" then
				return;
			end

			KrowiAF.Trace("KrowiAF.CategoriesFrame.OnEvent - " .. event .. " - " .. addonName);

			-- [[ OnLoad ]] --
				tinsert(ACHIEVEMENTFRAME_SUBFRAMES, KrowiAF.CategoriesFrame:GetName());
				self:Hide();
				self.buttons = {};

			-- [[ OnEvent ]] --
				KrowiAF.CategoriesFrame.GetCategoryList(KrowiAF.Data, KrowiAF.Categories);
				KrowiAF.SelectedCategory = KrowiAF.Categories[1];
				-- KrowiAF.DebugTable(KrowiAF.Categories);

				KrowiAF.CategoriesFrame.Container.ScrollBar.Show = function (self)
					KrowiAF.CategoriesFrame.Container.ScrollBar.Show_Hide(self, getmetatable(self).__index.Show, 175, 22, 30);
				end
				KrowiAF.CategoriesFrame.Container.ScrollBar.Hide = function (self)
					KrowiAF.CategoriesFrame.Container.ScrollBar.Show_Hide(self, getmetatable(self).__index.Hide, 197, 0, 30);
				end

				KrowiAF.CategoriesFrame.Container.ScrollBar.trackBG:Show();
				KrowiAF.CategoriesFrame.Container.update = KrowiAF.CategoriesFrame.Update;
				HybridScrollFrame_CreateButtons(KrowiAF.CategoriesFrame.Container, "KrowiAF_AchievementCategoryTemplate", -4, 0, "TOPRIGHT", "TOPRIGHT", 0, 0, "TOPRIGHT", "BOTTOMRIGHT");

				KrowiAF.CategoriesFrame.Update();
				self:UnregisterEvent(event);
		end
	end
	KrowiAF.CategoriesFrame:SetScript("OnEvent", KrowiAF.CategoriesFrame.OnEvent);

	function KrowiAF.CategoriesFrame.OnShow(self) -- OK -- AchievementFrameCategories_OnShow
		KrowiAF.Trace("KrowiAF.CategoriesFrame.OnShow");

		-- First handle the visibility of certain frames
		AchievementFrameCategoriesContainer:Hide();
		AchievementFrameCategoriesContainerScrollBar:Hide();
		AchievementFrameFilterDropDown:Hide();
		AchievementFrameHeaderLeftDDLInset:Hide();
		AchievementFrame.searchBox:Hide();
		AchievementFrameHeaderRightDDLInset:Hide();

		KrowiAF.CategoriesFrame.Update();
	end
	KrowiAF.CategoriesFrame:SetScript("OnShow", KrowiAF.CategoriesFrame.OnShow);

	function KrowiAF.CategoriesFrame.OnHide(self) -- OK
		KrowiAF.Trace("KrowiAF.CategoriesFrame.OnHide");

		-- First handle the visibility of certain frames
		AchievementFrameCategoriesContainer:Show();
		if AchievementFrameAchievements:IsShown() then
			AchievementFrameFilterDropDown:Show();
			AchievementFrameHeaderLeftDDLInset:Show();
		else
			AchievementFrameFilterDropDown:Hide();
			AchievementFrameHeaderLeftDDLInset:Hide();
		end
		AchievementFrame.searchBox:Show();
		AchievementFrameHeaderRightDDLInset:Show();
	end
	KrowiAF.CategoriesFrame:SetScript("OnHide", KrowiAF.CategoriesFrame.OnHide);

	function KrowiAF.CategoriesFrame.Container.ScrollBar.Show_Hide(self, func, categoriesWidth, achievementsOffsetX, watermarkWidthOffset) -- OK
		UI_CategoriesWidth = categoriesWidth;

		KrowiAF.CategoriesFrame:SetWidth(categoriesWidth);
		KrowiAF.CategoriesFrame.Container:GetScrollChild():SetWidth(categoriesWidth);
		KrowiAF.AchievementsFrame:SetPoint("TOPLEFT", KrowiAF.CategoriesFrame, "TOPRIGHT", achievementsOffsetX, 0);
		AchievementFrameWaterMark:SetWidth(categoriesWidth - watermarkWidthOffset);
		AchievementFrameWaterMark:SetTexCoord(0, (categoriesWidth - watermarkWidthOffset)/256, 0, 1);
		for _, button in next, KrowiAF.CategoriesFrame.Container.buttons do
			KrowiAF.CategoriesFrame.DisplayButton(button, button.Category)
		end
		func(self);
	end

-- [[ Helper functions ]] --

	local function ConvertToAchievementFrameCategory(datum, categories) -- OK
		-- KrowiAF.Trace("ConvertToAchievementFrameCategory"); -- Generates a lot of messages

		datum.Hidden = datum.Level ~= 0;
		datum.Collapsed = true;
		tinsert(categories, datum);
		for _, child in next, datum.Children do
			ConvertToAchievementFrameCategory(child, categories);
		end
	end

	function KrowiAF.CategoriesFrame.GetCategoryList(data, categories) -- OK -- AchievementFrameCategories_GetCategoryList
		KrowiAF.Trace("KrowiAF.CategoriesFrame.GetCategoryList");

		for i in next, categories do -- Make sure the list is empty
			categories[i] = nil;
		end

		for _, datum in next, data do
			ConvertToAchievementFrameCategory(datum, categories);
		end
	end
	
	local function GetAchievementNumbers(category) -- OK -- AchievementFrame_GetCategoryTotalNumAchievements
		-- KrowiAF.Trace("GetAchievementNumbers"); -- Generates a lot of messages

		local numOfAch, numOfCompAch, numOfIncompAch = 0, 0, 0;

		for _, achievement in next, category.Achievements do
			numOfAch = numOfAch + 1;
			local _, _, _, completed = GetAchievementInfo(achievement.ID);
			if completed then
				numOfCompAch = numOfCompAch + 1;
			else
				numOfIncompAch = numOfIncompAch + 1;
			end
		end

		for _, child in next, category.Children do
			local childNumOfAch, childNumOfCompAch, childNumOfIncompAch = GetAchievementNumbers(child);
			numOfAch = numOfAch + childNumOfAch;
			numOfCompAch = numOfCompAch + childNumOfCompAch;
			numOfIncompAch = numOfIncompAch + childNumOfIncompAch;
		end

		return numOfAch, numOfCompAch, numOfIncompAch;
	end

-- [[ Blizzard_AchievementUI.lua derived ]] --

	function KrowiAF.CategoriesFrame.Update() -- OK -- AchievementFrameCategories_Update
		KrowiAF.Trace("KrowiAF.CategoriesFrame.Update");
		
		local scrollFrame = KrowiAF.CategoriesFrame.Container;
		local offset = HybridScrollFrame_GetOffset(scrollFrame);
		local buttons = scrollFrame.buttons;

		local displayCategories = {};
		for _, category in next, KrowiAF.Categories do
			if not category.Hidden then -- If already visible, keep visible
				tinsert(displayCategories, category);
			end
		end

		local totalHeight = #displayCategories * buttons[1]:GetHeight();
		local displayedHeight = 0;

		local category;
		for i = 1, #buttons do
			category = displayCategories[i + offset];
			displayedHeight = displayedHeight + buttons[i]:GetHeight();
			if category then
				KrowiAF.CategoriesFrame.DisplayButton(buttons[i], category);
				if category == KrowiAF.SelectedCategory then
					buttons[i]:LockHighlight();
				else
					buttons[i]:UnlockHighlight();
				end
				buttons[i]:Show();
			else
				buttons[i].Category = nil;
				buttons[i]:Hide();
			end
		end

		HybridScrollFrame_Update(scrollFrame, totalHeight, displayedHeight);
	end

	function KrowiAF.CategoriesFrame.DisplayButton(button, category) -- OK -- AchievementFrameCategories_DisplayButton
		-- KrowiAF.Trace("KrowiAF.CategoriesFrame.DisplayButton"); -- Generates a lot of messages
		
		if not category then
			button.Category = nil;
			button:Hide();
			return;
		end

		button:Show();
		if category.Parent then -- Not top level category has parent
			button:SetWidth(UI_CategoriesWidth - 15 - (category.Level - 1) * 5);
			button.label:SetFontObject("GameFontHighlight");
			button.background:SetVertexColor(0.6, 0.6, 0.6);
		else -- Top level category has no parent
			button:SetWidth(UI_CategoriesWidth - 10);
			button.label:SetFontObject("GameFontNormal");
			button.background:SetVertexColor(1, 1, 1);
		end

		button.label:SetText(category.Name);
		button.Category = category;

		-- For the tooltip
		local numOfAch, numOfCompAch = GetAchievementNumbers(category);
		button.name = category.Name;
		button.text = nil;
		button.numAchievements = numOfAch;
		button.numCompleted = numOfCompAch;
		button.numCompletedText = numOfCompAch.."/"..numOfAch;
		button.showTooltipFunc = AchievementFrameCategory_StatusBarTooltip;
	end

	-- This one is called when you earn an achievement so when you're hovering over a category, the tooltip is updated
	function KrowiAF.CategoriesFrame.UpdateTooltip() -- OK -- AchievementFrameCategories_UpdateTooltip
		KrowiAF.Trace("KrowiAF.CategoriesFrame.UpdateTooltip");

		local container = KrowiAF.CategoriesFrame.Container;
		if not container:IsVisible() or not container.buttons then
			return;
		end

		for _, button in next, KrowiAF.CategoriesFrame.Container.buttons do
			if button:IsMouseOver() and button.showTooltipFunc then
				button:showTooltipFunc();
				break;
			end
		end
	end

	function KrowiAF.CategoriesFrame.SelectButton(button) -- NOK, LAST 3 LINES RENAME -- AchievementFrameCategories_SelectButton
		KrowiAF.Trace("KrowiAF.CategoriesFrame.SelectButton");

		if button.IsSelected and not button.Category.Collapsed then -- Collapse selected categories
			button.Category.Collapsed = true;
			for _, category in next, KrowiAF.Categories do
				if category.Level ~= 0 then -- If 0 = highest level = ignore
					local levels = category.Level - button.Category.Level;
					if levels ~= 0 then -- If 0 = same level = ignore
						local parent = category.Parent;
						while levels > 1 do
							parent = parent.Parent;
							levels = levels - 1;
						end
						if parent == button.Category then
							category.Hidden = true;
						end
					end
				end
			end
		else -- Open selected category, close other highest level categories
			for i, category in next, KrowiAF.Categories do
				if category.Level == button.Category.Level and category.Parent == button.Category then -- Category on same level and same parent
					category.Collapsed = true;
				end
				if category.Level > button.Category.Level then -- Category on lower level
					if category.Parent == button.Category then -- Child of
						category.Hidden = false;
					else -- Not a child of
						category.Hidden = true;
						category.Collapsed = true;
					end
				end
			end
			button.Category.Collapsed = false;
		end

		local buttons = KrowiAF.CategoriesFrame.Container.buttons;
		for _, button in next, buttons do
			button.IsSelected = nil;
		end

		button.IsSelected = true;

		if button.Category == KrowiAF.SelectedCategory then
			-- If this category was selected already, bail after changing collapsed states
			return
		end

		AchievementFrame_ShowSubFrame(KrowiAF.CategoriesFrame, KrowiAF.AchievementsFrame);
		KrowiAF.SelectedCategory = button.Category;

		KrowiAF.AchievementFrameAchievements_ClearSelection();
		KrowiAF_AchievementFrameAchievementsContainerScrollBar:SetValue(0);
		KrowiAF.AchievementFrameAchievements_Update();
	end