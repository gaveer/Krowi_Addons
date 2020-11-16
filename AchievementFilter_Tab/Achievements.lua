KrowiAF.SelectedAchievement = {};
KrowiAF.TrackedAchievements = {};
KrowiAF.UI_AchievementsWidth = 0;
KrowiAF.UI_AchievementsButtonWidthOffset = 8;

KrowiAF.GuildMemberRequestFrame = nil;

KrowiAF_AchievementFrameAchievements:RegisterEvent("ADDON_LOADED");

local function updateTrackedAchievements (...)
	local count = select("#", ...);

	for i = 1, count do
		KrowiAF.TrackedAchievements[select(i, ...)] = true;
	end
end

function KrowiAF.AchievementFrameAchievements_OnEvent(self, event, ...) -- Blizzard_AchievementUI.lua line 778
    if (Kiosk.IsEnabled()) then
		return;
    end
    
    if event == "ADDON_LOADED" then
        local addonName = ...;
        if addonName and addonName ~= "AchievementFilter_Tab" then
            return;
        end

	    KrowiAF.Trace("KrowiAF.AchievementFrameAchievements_OnEvent - " .. event .. " - " .. addonName);

		-- [[ OnLoad ]] --
		tinsert(ACHIEVEMENTFRAME_SUBFRAMES, "KrowiAF_AchievementFrameAchievements");
		self:Hide();

        KrowiAF_AchievementFrameAchievementsContainerScrollBar.Show =
            function (self)
                KrowiAF.UI_AchievementsWidth = 504;
                KrowiAF_AchievementFrameAchievements:SetWidth(KrowiAF.UI_AchievementsWidth);
                for _, button in next, KrowiAF_AchievementFrameAchievementsContainer.buttons do
                    button:SetWidth(KrowiAF.UI_AchievementsWidth - KrowiAF.UI_AchievementsButtonWidthOffset);
                end
                getmetatable(self).__index.Show(self);
            end

        KrowiAF_AchievementFrameAchievementsContainerScrollBar.Hide =
            function (self)
                KrowiAF.UI_AchievementsWidth = 530;
                KrowiAF_AchievementFrameAchievements:SetWidth(KrowiAF.UI_AchievementsWidth);
                for _, button in next, KrowiAF_AchievementFrameAchievementsContainer.buttons do
                    button:SetWidth(KrowiAF.UI_AchievementsWidth - KrowiAF.UI_AchievementsButtonWidthOffset);
                end
                getmetatable(self).__index.Hide(self);
            end;
        
        KrowiAF_AchievementFrameAchievementsContainerScrollBarBG:Show();
        KrowiAF_AchievementFrameAchievementsContainer.update = KrowiAF.AchievementFrameAchievements_Update;
		HybridScrollFrame_CreateButtons(KrowiAF_AchievementFrameAchievementsContainer, "KrowiAF_AchievementTemplate", 0, -2);
		for _, button in next, KrowiAF_AchievementFrameAchievementsContainer.buttons do
			KrowiAF.AchievementButton_Load(button);
		end
    
        -- [[ OnEvent ]] --
        self:RegisterEvent("ACHIEVEMENT_EARNED");
		self:RegisterEvent("CRITERIA_UPDATE");
		self:RegisterEvent("TRACKED_ACHIEVEMENT_LIST_CHANGED");
		self:RegisterEvent("RECEIVED_ACHIEVEMENT_MEMBER_LIST");
		self:RegisterEvent("ACHIEVEMENT_SEARCH_UPDATED");

        updateTrackedAchievements(GetTrackedAchievements());
		self:UnregisterEvent(event);
    elseif event == "ACHIEVEMENT_EARNED" then -- Not sure if this is going to work ...
		local achievementID = ...;
		KrowiAF.AchievementFrameCategories_GetCategoryList(KrowiAF.Data, KrowiAF.Categories);
		KrowiAF.CategoriesFrame.Update();
		KrowiAF.CategoriesFrame.UpdateTooltip();
		-- This has to happen before AchievementFrameAchievements_ForceUpdate() in order to achieve the behavior we want, since it clears the selection for progressive achievements.
		local selection = KrowiAF.SelectedAchievement;
		KrowiAF.AchievementFrameAchievements_ForceUpdate();
		if KrowiAF_AchievementFrameAchievementsContainer:IsVisible() and selection.ID == achievementID then
			KrowiAF.AchievementFrame_SelectAchievement(selection, true);
		end
		AchievementFrameHeaderPoints:SetText(BreakUpLargeNumbers(GetTotalAchievementPoints(KrowiAF.InGuildView())));
    elseif event == "CRITERIA_UPDATE" then -- Not sure if this is going to work ...
		if KrowiAF.SelectedAchievement then
			local id = KrowiAF_AchievementFrameAchievementsObjectives.ID;
			local button = KrowiAF_AchievementFrameAchievementsObjectives:GetParent();
			KrowiAF_AchievementFrameAchievementsObjectives.ID = nil;
			if self:IsVisible() then
				KrowiAF.AchievementButton_DisplayObjectives(button, id, button.Achievement.Completed);
				KrowiAF.AchievementFrameAchievements_Update();
			end
		else
			KrowiAF_AchievementFrameAchievementsObjectives.ID = nil; -- Force redraw
        end
    elseif event == "TRACKED_ACHIEVEMENT_LIST_CHANGED" then -- Not sure if this is going to work ...
		for k, _ in next, KrowiAF.TrackedAchievements do
			KrowiAF.TrackedAchievements[k] = nil;
		end

        updateTrackedAchievements(GetTrackedAchievements());
    elseif event == "RECEIVED_ACHIEVEMENT_MEMBER_LIST" then -- Not sure if this is going to work ...
		local achievementID = ...;
		-- check if we initiated the request from a meta criteria and we're still over it
		if KrowiAF.GuildMemberRequestFrame and KrowiAF.GuildMemberRequestFrame.ID == achievementID then
			-- update the tooltip
			local func = KrowiAF.GuildMemberRequestFrame:GetScript("OnEnter");
			if func then
				func(KrowiAF.GuildMemberRequestFrame);
			end
        end
    elseif event == "ACHIEVEMENT_SEARCH_UPDATED" then -- Not sure if this is going to work ...
        -- @TODO - implement later
		-- AchievementFrame.searchBox.fullSearchFinished = true;
		-- AchievementFrame_UpdateSearch(self);
    end
end
KrowiAF_AchievementFrameAchievements:SetScript("OnEvent", KrowiAF.AchievementFrameAchievements_OnEvent);

function KrowiAF.AchievementFrameAchievements_OnShow(self) -- Blizzard_AchievementUI.lua line 687
    KrowiAF.Trace("KrowiAF.AchievementFrameAchievements_OnShow");
    
    if KrowiAF.InGuildView() then
		KrowiAF.AchievementFrameAchievements_ToggleView();
	end
    -- AchievementFrameFilterDropDown:Show();
    -- AchievementFrameHeaderLeftDDLInset:Show();
end
KrowiAF_AchievementFrameAchievements:SetScript("OnShow", KrowiAF.AchievementFrameAchievements_OnShow);

function KrowiAF.GetFilteredAchievements(category) -- @TODO Gets all achievements right now regardles of the filter - need to look at this on a later time
    KrowiAF.Trace("KrowiAF.GetFilteredAchievements");

	local achievements = {};
	for _, achievement in next, category.Achievements do
		-- if ACHIEVEMENTUI_SELECTEDFILTER == AchievementFrame_GetCategoryNumAchievements_All then
			tinsert(achievements, achievement.ID);
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

	return achievements;
end

function KrowiAF.AchievementFrameAchievements_Update() -- Blizzard_AchievementUI.lua line 841
    KrowiAF.Trace("KrowiAF.AchievementFrameAchievements_Update");

	local category = KrowiAF.SelectedCategory;
	local scrollFrame = KrowiAF_AchievementFrameAchievementsContainer;

	local offset = HybridScrollFrame_GetOffset(scrollFrame);
	local buttons = scrollFrame.buttons;
    local achievements = KrowiAF.GetFilteredAchievements(category);

	local selection = KrowiAF.SelectedAchievement;
	if selection then
		KrowiAF.AchievementButton_ResetObjectives();
	end

	local extraHeight = scrollFrame.largeButtonHeight or ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT;

	local achievementIndex;
	local displayedHeight = 0;
	for i = 1, #buttons do
		achievementIndex = i + offset;
		if achievementIndex > #achievements then
			buttons[i]:Hide();
		else
			KrowiAF.AchievementButton_DisplayAchievement(buttons[i], category, achievementIndex, selection);
			displayedHeight = displayedHeight + buttons[i]:GetHeight();
		end
	end

	local totalHeight = #achievements * ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT;
	totalHeight = totalHeight + (extraHeight - ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT);

	HybridScrollFrame_Update(scrollFrame, totalHeight, displayedHeight);

	if selection then
		KrowiAF.SelectedAchievement = selection;
	else
		HybridScrollFrame_CollapseButton(scrollFrame);
	end
end

function KrowiAF.AchievementFrameAchievements_ForceUpdate() -- Blizzard_AchievementUI.lua line 896
    KrowiAF.Trace("KrowiAF.AchievementFrameAchievements_ForceUpdate");

end

function KrowiAF.AchievementFrameAchievements_ClearSelection ()  -- Blizzard_AchievementUI.lua line 915
	KrowiAF.Trace("KrowiAF.AchievementFrameAchievements_ClearSelection");

	KrowiAF.AchievementButton_ResetObjectives();
	for _, button in next, KrowiAF_AchievementFrameAchievementsContainer.buttons do
		button:Collapse();
		if not button:IsMouseOver() then
			button.Highlight:Hide();
		end
		button.IsSelected = false;
		if not button.Tracked:GetChecked() then
			button.Tracked:Hide();
		end
		button.Description:Show();
		button.HiddenDescription:Hide();
	end

	KrowiAF.SelectedAchievement = nil;
end

function KrowiAF.AchievementFrameAchievements_ToggleView() -- Blizzard_AchievementUI.lua line 957
    KrowiAF.Trace("KrowiAF.AchievementFrameAchievements_ToggleView");

end

function KrowiAF.AchievementFrameAchievements_SelectButton (button) -- Blizzard_AchievementUI.lua line 1378
	KrowiAF.Trace("KrowiAF.AchievementFrameAchievements_SelectButton");
	
	KrowiAF.SelectedAchievement = button.Achievement;
	button.IsSelected = true;

	SetFocusedAchievement(button.Achievement.ID);
end


function KrowiAF.AchievementFrame_SelectAchievement(id, forceSelect, isComparison) -- Blizzard_AchievementUI.lua line 2541
    KrowiAF.Trace("KrowiAF.AchievementFrame_SelectAchievement");

end

function KrowiAF.AchievementFrameAchievements_FindSelection() -- Blizzard_AchievementUI.lua line 2677
    KrowiAF.Trace("KrowiAF.AchievementFrameAchievements_FindSelection");
	local _, maxVal = KrowiAF_AchievementFrameAchievementsContainerScrollBar:GetMinMaxValues();
	local scrollHeight = KrowiAF_AchievementFrameAchievementsContainer:GetHeight();
	local newHeight = 0;
	KrowiAF_AchievementFrameAchievementsContainerScrollBar:SetValue(0);
	while true do
		for _, button in next, KrowiAF_AchievementFrameAchievementsContainer.buttons do
			if button.IsSelected then
				newHeight = KrowiAF_AchievementFrameAchievementsContainerScrollBar:GetValue() + KrowiAF_AchievementFrameAchievementsContainer:GetTop() - button:GetTop();
				newHeight = min(newHeight, maxVal);
				KrowiAF_AchievementFrameAchievementsContainerScrollBar:SetValue(newHeight);
				return;
			end
		end
		if not KrowiAF_AchievementFrameAchievementsContainerScrollBar:IsVisible() or KrowiAF_AchievementFrameAchievementsContainerScrollBar:GetValue() == maxVal then
			return;
		else
			newHeight = newHeight + scrollHeight;
			newHeight = min(newHeight, maxVal);
			KrowiAF_AchievementFrameAchievementsContainerScrollBar:SetValue(newHeight);
		end
	end
end

function KrowiAF.AchievementFrameAchievements_AdjustSelection() -- Blizzard_AchievementUI.lua line 2701
    KrowiAF.Trace("KrowiAF.AchievementFrameAchievements_AdjustSelection");
	local selectedButton;
	-- check if selection is visible
	for _, button in next, KrowiAF_AchievementFrameAchievementsContainer.buttons do
		if button.IsSelected then
			selectedButton = button;
			break;
		end
	end

	if not selectedButton then
		KrowiAF.AchievementFrameAchievements_FindSelection();
	else
		local newHeight;
		if selectedButton:GetTop() > KrowiAF_AchievementFrameAchievementsContainer:GetTop() then
			newHeight = AchievementFrameAchievementsContainerScrollBar:GetValue() + KrowiAF_AchievementFrameAchievementsContainer:GetTop() - selectedButton:GetTop();
		elseif selectedButton:GetBottom() < KrowiAF_AchievementFrameAchievementsContainer:GetBottom() then
			if selectedButton:GetHeight() > KrowiAF_AchievementFrameAchievementsContainer:GetHeight() then
				newHeight = KrowiAF_AchievementFrameAchievementsContainerScrollBar:GetValue() + KrowiAF_AchievementFrameAchievementsContainer:GetTop() - selectedButton:GetTop();
			else
				newHeight = KrowiAF_AchievementFrameAchievementsContainerScrollBar:GetValue() + KrowiAF_AchievementFrameAchievementsContainer:GetBottom() - selectedButton:GetBottom();
			end
		end
		if newHeight then
			local _, maxVal = KrowiAF_AchievementFrameAchievementsContainerScrollBar:GetMinMaxValues();
			newHeight = min(newHeight, maxVal);
			KrowiAF_AchievementFrameAchievementsContainerScrollBar:SetValue(newHeight);
		end
	end
end

function KrowiAF.GetAchievementInfoAchievementFrameAchievements_CheckGuildMembersTooltip(requestFrame) -- Blizzard_AchievementUI.lua line 3553
    KrowiAF.Trace("KrowiAF.GetAchievementInfoAchievementFrameAchievements_CheckGuildMembersTooltip");

end