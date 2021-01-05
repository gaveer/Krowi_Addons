local _, addon = ...;

KrowiAF.SelectedAchievement = nil; -- Issue #6: Fix
-- KrowiAF.TrackedAchievements = {};
-- KrowiAF.UI_AchievementsWidth = 0;
-- KrowiAF.UI_AchievementsButtonWidthOffset = 8;

-- KrowiAF.GuildMemberRequestFrame = nil;

local UI_AchievementsWidth = 504;

addon.GUI.AchievementsFrame:RegisterEvent("ADDON_LOADED");

-- [[ Blizzard_AchievementUI.lua derived OnEvent, OnShow and OnHide functions + Show and Hide the ScrollBar ]] --

	function addon.GUI.AchievementsFrame.OnEvent(self, event, ...) -- WIP - more Events to add -- AchievementFrameAchievements_OnLoad + AchievementFrameAchievements_OnEvent
		if Kiosk.IsEnabled() then -- Not sure what this does but keeping it
			return;
		end
		
		if event == "ADDON_LOADED" then
			local addonName = ...;
			addon.Diagnostics.Trace("addon.GUI.AchievementsFrame.OnEvent - " .. event .. " - " .. addonName);
			
			if addonName and addonName == "Krowi_AchievementFilter" then

				-- [[ OnLoad ]] --
					tinsert(ACHIEVEMENTFRAME_SUBFRAMES, addon.GUI.AchievementsFrame:GetName());
					self:Hide();

					addon.GUI.AchievementsFrame.Container.ScrollBar.Show = function(self)
						addon.GUI.AchievementsFrame.Container.ScrollBar.Show_Hide(self, getmetatable(self).__index.Show, 504, 8);
					end;

					addon.GUI.AchievementsFrame.Container.ScrollBar.Hide = function(self)
						addon.GUI.AchievementsFrame.Container.ScrollBar.Show_Hide(self, getmetatable(self).__index.Hide, 530, 8);
					end;
					
					addon.GUI.AchievementsFrame.Container.ScrollBar.trackBG:Show();
					addon.GUI.AchievementsFrame.Container.update = addon.GUI.AchievementsFrame.Update;
					HybridScrollFrame_CreateButtons(addon.GUI.AchievementsFrame.Container, "KrowiAF_AchievementTemplate", 0, -2);

					-- Register also right clicks to the achievements buttons
					for _, button in next, addon.GUI.AchievementsFrame.Container.buttons do
						button:RegisterForClicks("LeftButtonUp", "RightButtonUp");
					end
					
					hooksecurefunc("AchievementFrameAchievements_ForceUpdate", addon.GUI.AchievementsFrame.ForceUpdate); -- Issue #3: Fix

					if Overachiever then
						Overachiever.UI_HookAchButtons(addon.GUI.AchievementsFrame.Container.buttons, addon.GUI.AchievementsFrame.Container.ScrollBar); -- Issue #4: Fix - loaded before our addon
					end
			
				-- [[ OnEvent ]] --
					self:RegisterEvent("ACHIEVEMENT_EARNED");
					self:RegisterEvent("CRITERIA_UPDATE");
					self:RegisterEvent("TRACKED_ACHIEVEMENT_LIST_CHANGED");
					self:RegisterEvent("RECEIVED_ACHIEVEMENT_MEMBER_LIST");
					self:RegisterEvent("ACHIEVEMENT_SEARCH_UPDATED");

					-- updateTrackedAchievements(GetTrackedAchievements()); -- NOK - add back later
					
				-- self:UnregisterEvent(event);
					-- elseif event == "ACHIEVEMENT_EARNED" then -- Not sure if this is going to work ...
					-- 	local achievementID = ...;
					-- 	KrowiAF.AchievementFrameCategories_GetCategoryList(KrowiAF.Data, KrowiAF.Categories);
					-- 	addon.GUI.CategoriesFrame.Update();
					-- 	addon.GUI.CategoriesFrame.UpdateTooltip();
					-- 	-- This has to happen before AchievementFrameAchievements_ForceUpdate() in order to achieve the behavior we want, since it clears the selection for progressive achievements.
					-- 	local selection = KrowiAF.SelectedAchievement;
					-- 	KrowiAF.AchievementFrameAchievements_ForceUpdate();
					-- 	if KrowiAF_AchievementFrameAchievementsContainer:IsVisible() and selection.ID == achievementID then
					-- 		KrowiAF.AchievementFrame_SelectAchievement(selection, true);
					-- 	end
					-- 	AchievementFrameHeaderPoints:SetText(BreakUpLargeNumbers(GetTotalAchievementPoints(KrowiAF.InGuildView())));
					-- elseif event == "CRITERIA_UPDATE" then -- Not sure if this is going to work ...
					-- 	if KrowiAF.SelectedAchievement then
					-- 		local id = KrowiAF_AchievementFrameAchievementsObjectives.ID;
					-- 		local button = KrowiAF_AchievementFrameAchievementsObjectives:GetParent();
					-- 		KrowiAF_AchievementFrameAchievementsObjectives.ID = nil;
					-- 		if self:IsVisible() then
					-- 			KrowiAF.AchievementButton_DisplayObjectives(button, id, button.Achievement.Completed);
					-- 			KrowiAF.AchievementFrameAchievements_Update();
					-- 		end
					-- 	else
					-- 		KrowiAF_AchievementFrameAchievementsObjectives.ID = nil; -- Force redraw
					--     end
					-- elseif event == "TRACKED_ACHIEVEMENT_LIST_CHANGED" then -- Not sure if this is going to work ...
					-- 	for k, _ in next, KrowiAF.TrackedAchievements do
					-- 		KrowiAF.TrackedAchievements[k] = nil;
					-- 	end

					--     updateTrackedAchievements(GetTrackedAchievements());
					-- elseif event == "RECEIVED_ACHIEVEMENT_MEMBER_LIST" then -- Not sure if this is going to work ...
					-- 	local achievementID = ...;
					-- 	-- check if we initiated the request from a meta criteria and we're still over it
					-- 	if KrowiAF.GuildMemberRequestFrame and KrowiAF.GuildMemberRequestFrame.ID == achievementID then
					-- 		-- update the tooltip
					-- 		local func = KrowiAF.GuildMemberRequestFrame:GetScript("OnEnter");
					-- 		if func then
					-- 			func(KrowiAF.GuildMemberRequestFrame);
					-- 		end
					--     end
					-- elseif event == "ACHIEVEMENT_SEARCH_UPDATED" then -- Not sure if this is going to work ...
					--     -- @TODO - implement later
					-- 	-- AchievementFrame.searchBox.fullSearchFinished = true;
					-- 	-- AchievementFrame_UpdateSearch(self);
			elseif addonName and addonName == "Overachiever" then
				Overachiever.UI_HookAchButtons(addon.GUI.AchievementsFrame.Container.buttons, addon.GUI.AchievementsFrame.Container.ScrollBar); -- Issue #4: Fix - loaded after our addon
			end
		end
	end
	addon.GUI.AchievementsFrame:SetScript("OnEvent", addon.GUI.AchievementsFrame.OnEvent);


	-- local function updateTrackedAchievements (...)
	-- 	local count = select("#", ...);

	-- 	for i = 1, count do
	-- 		KrowiAF.TrackedAchievements[select(i, ...)] = true;
	-- 	end
	-- end

	function addon.GUI.AchievementsFrame.Container.ScrollBar.Show_Hide(self, func, achievementsWidth, achievementsButtonOffset) -- OK
		addon.Diagnostics.Trace("addon.GUI.AchievementsFrame.Container.ScrollBar.Show_Hide");

		UI_AchievementsWidth = achievementsWidth;
		addon.GUI.AchievementsFrame:SetWidth(achievementsWidth);
		for _, button in next, addon.GUI.AchievementsFrame.Container.buttons do
			button:SetWidth(achievementsWidth - achievementsButtonOffset);
		end
		func(self);
	end

-- [[ Helper functions ]] --

	local function GetFilteredAchievements(category) -- @TODO Gets all achievements right now regardles of the filter - need to look at this on a later time
		addon.Diagnostics.Trace("KrowiAF.GetFilteredAchievements");

		local achievements = {};
		if category.Achievements ~= nil then
			for _, achievement in next, category.Achievements do
				-- if ACHIEVEMENTUI_SELECTEDFILTER == AchievementFrame_GetCategoryNumAchievements_All then
					tinsert(achievements, achievement);
				-- elseif ACHIEVEMENTUI_SELECTEDFILTER == AchievementFrame_GetCategoryNumAchievements_Complete then
				-- 	local _, _, _, completed = GetAchievementInfo(achievement.ID);
				-- 	if completed then
				-- 		tinsert(achievements, achievement.ID);
				-- 	end
				-- elseif ACHIEVEMENTUI_SELECTEDFILTER == AchievementFrame_GetCategoryNumAchievements_Incomplete then
				-- 	local _, _, _, completed = GetAchievementInfo(achievement.ID);
				-- 	if not completed then
				-- 		tinsert(achievements, achievement.ID);
				-- 	end
				-- end
			end
		end

		return achievements;
	end

-- [[ Blizzard_AchievementUI.lua derived ]] --

	function addon.GUI.AchievementsFrame.Update() -- OK -- AchievementFrameAchievements_Update
		addon.Diagnostics.Trace("addon.GUI.AchievementsFrame.Update");

		local category = KrowiAF.SelectedCategory;
		local scrollFrame = addon.GUI.AchievementsFrame.Container;

		local offset = HybridScrollFrame_GetOffset(scrollFrame);
		local buttons = scrollFrame.buttons;
		local achievements = GetFilteredAchievements(category);
		local numButtons = #buttons;

		local selection = KrowiAF.SelectedAchievement;
		if selection then
			AchievementFrameAchievementsObjectives:Hide();
		end

		local extraHeight = scrollFrame.largeButtonHeight or ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT

		local achievementIndex;
		local displayedHeight = 0;
		for i = 1, numButtons do
			achievementIndex = i + offset;
			if achievementIndex > #achievements then
				buttons[i]:Hide();
			else
				KrowiAF.AchievementsButton.DisplayAchievement(buttons[i], achievements[achievementIndex], achievementIndex, selection);
				displayedHeight = displayedHeight + buttons[i]:GetHeight();
			end
		end

		local totalHeight = #achievements * ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT;
		totalHeight = totalHeight + extraHeight - ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT;

		HybridScrollFrame_Update(scrollFrame, totalHeight, displayedHeight);

		if selection then
			KrowiAF.SelectedAchievement = selection;
		else
			HybridScrollFrame_CollapseButton(scrollFrame);
		end
	end

	function addon.GUI.AchievementsFrame.ForceUpdate() -- OK -- AchievementFrameAchievements_ForceUpdate -- Issue #3: Fix
		addon.Diagnostics.Trace("addon.GUI.AchievementsFrame.ForceUpdate");
		
		if not addon.GUI.AchievementsFrame:IsShown() then -- Issue #8: Fix
			return;
		end

		-- Issue #8: Broken
		if KrowiAF.SelectedAchievement then
			local nextID = GetNextAchievement(KrowiAF.SelectedAchievement.ID);
			local id, _, _, completed = GetAchievementInfo(KrowiAF.SelectedAchievement.ID);
			if nextID and completed then
				KrowiAF.SelectedAchievement = nil;
			end
		end
		AchievementFrameAchievementsObjectives:Hide();
		AchievementFrameAchievementsObjectives.id = nil;
	
		local buttons = addon.GUI.AchievementsFrame.Container.buttons;
		for i, button in next, buttons do
			button.id = nil;
		end
	
		addon.GUI.AchievementsFrame.Update();
	end

	function addon.GUI.AchievementsFrame.ClearSelection()  -- OK -- AchievementFrameAchievements_ClearSelection
		addon.Diagnostics.Trace("addon.GUI.AchievementsFrame.ClearSelection");

		AchievementFrameAchievementsObjectives:Hide();
		for _, button in next, addon.GUI.AchievementsFrame.Container.buttons do
			button:Collapse();
			if not button:IsMouseOver() then
				button.highlight:Hide();
			end
			button.selected = nil;
			if not button.tracked:GetChecked() then
				button.tracked:Hide();
			end
			button.description:Show();
			button.hiddenDescription:Hide();
		end

		KrowiAF.SelectedAchievement = nil;
	end

	function addon.GUI.AchievementsFrame.SelectButton (button) -- OK -- AchievementFrameAchievements_SelectButton
		addon.Diagnostics.Trace("addon.GUI.AchievementsFrame.SelectButton");
		
		KrowiAF.SelectedAchievement = button.Achievement;
		button.selected = true;

		SetFocusedAchievement(button.Achievement.ID);
	end

	function addon.GUI.AchievementsFrame.FindSelection()  -- OK -- AchievementFrameAchievements_FindSelection
		addon.Diagnostics.Trace("addon.GUI.AchievementsFrame.FindSelection");

		local _, maxVal = addon.GUI.AchievementsFrame.Container.ScrollBar:GetMinMaxValues();
		local scrollHeight = addon.GUI.AchievementsFrame.Container:GetHeight();
		local newHeight = 0;
		addon.GUI.AchievementsFrame.Container.ScrollBar:SetValue(0);
		while true do
			for _, button in next, addon.GUI.AchievementsFrame.Container.buttons do
				if button.selected then
					newHeight = addon.GUI.AchievementsFrame.Container.ScrollBar:GetValue() + addon.GUI.AchievementsFrame.Container:GetTop() - button:GetTop();
					newHeight = min(newHeight, maxVal);
					addon.GUI.AchievementsFrame.Container.ScrollBar:SetValue(newHeight);
					return;
				end
			end
			if not addon.GUI.AchievementsFrame.Container.ScrollBar:IsVisible() or addon.GUI.AchievementsFrame.Container.ScrollBar:GetValue() == maxVal then
				return;
			else
				newHeight = newHeight + scrollHeight;
				newHeight = min(newHeight, maxVal);
				addon.GUI.AchievementsFrame.Container.ScrollBar:SetValue(newHeight);
			end
		end
	end

	function addon.GUI.AchievementsFrame.AdjustSelection()  -- OK -- AchievementFrameAchievements_AdjustSelection
		addon.Diagnostics.Trace("addon.GUI.AchievementsFrame.AdjustSelection");

		local selectedButton;
		-- check if selection is visible
		for _, button in next, addon.GUI.AchievementsFrame.Container.buttons do
			if button.selected then
				selectedButton = button;
				break;
			end
		end

		if not selectedButton then
			AchievementFrameAchievements_FindSelection();
		else
			local newHeight;
			if ( selectedButton:GetTop() > addon.GUI.AchievementsFrame.Container:GetTop() ) then
				newHeight = addon.GUI.AchievementsFrame.Container.ScrollBar:GetValue() + addon.GUI.AchievementsFrame.Container:GetTop() - selectedButton:GetTop();
			elseif ( selectedButton:GetBottom() < addon.GUI.AchievementsFrame.Container:GetBottom() ) then
				if ( selectedButton:GetHeight() > addon.GUI.AchievementsFrame.Container:GetHeight() ) then
					newHeight = addon.GUI.AchievementsFrame.Container.ScrollBar:GetValue() + addon.GUI.AchievementsFrame.Container:GetTop() - selectedButton:GetTop();
				else
					newHeight = addon.GUI.AchievementsFrame.Container.ScrollBar:GetValue() + addon.GUI.AchievementsFrame.Container:GetBottom() - selectedButton:GetBottom();
				end
			end
			if ( newHeight ) then
				local _, maxVal = addon.GUI.AchievementsFrame.Container.ScrollBar:GetMinMaxValues();
				newHeight = min(newHeight, maxVal);
				addon.GUI.AchievementsFrame.Container.ScrollBar:SetValue(newHeight);
			end
		end
	end