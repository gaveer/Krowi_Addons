local _, addon = ...; -- Global addon namespace
local gui = addon.GUI; -- Local GUI namespace
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace
gui.AchievementsFrame = {}; -- Global achievements frame class
local achievementsFrame = gui.AchievementsFrame; -- Local achievements frame class

achievementsFrame.__index = achievementsFrame; -- Used to support OOP like code

function achievementsFrame:New()
    diagnostics.Trace("achievementsFrame:New");

	local self = {};
    setmetatable(self, achievementsFrame);

	local frame = CreateFrame("Frame", "KrowiAF_AchievementFrameAchievements", AchievementFrame);
	frame:SetWidth(504);
	frame:SetHeight(440);
	frame:SetPoint("TOPLEFT", AchievementFrameCategories, "TOPRIGHT", 22, 0);
	frame:SetPoint("BOTTOM", AchievementFrameCategories);
	self.Frame = frame;
	frame.Parent = self;

	local frameBackground = frame:CreateTexture("$parentBackground", "BACKGROUND");
	frameBackground:SetTexture("Interface\\AchievementFrame\\UI-Achievement-AchievementBackground");
	frameBackground:SetPoint("TOPLEFT", frame, "TOPLEFT", 3, -3);
	frameBackground:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -3, 3);
	frameBackground:SetTexCoord(0, 1, 0, 0.5);

	local frameArtwork = frame:CreateTexture(nil, "ARTWORK");
	frameArtwork:SetAllPoints(frameBackground);
	frameArtwork:SetColorTexture(0, 0, 0, 0.75);

	local container = CreateFrame("ScrollFrame", "$parentContainer", frame, "HybridScrollFrameTemplate");
	container:SetHeight(AchievementFrameAchievementsContainer:GetHeight());
	container:SetWidth(AchievementFrameAchievementsContainer:GetWidth());
	container:SetPoint("TOPLEFT", 4, -3);
	container:SetPoint("BOTTOMRIGHT", 0, 5);
	frame.Container = container;
	container.ParentFrame = frame;

	local scrollBar = CreateFrame("Slider", "$parentScrollBar", container, "HybridScrollBarTemplate");
	scrollBar:SetPoint("TOPLEFT", container, "TOPRIGHT", 1, -16);
	scrollBar:SetPoint("BOTTOMLEFT", container, "BOTTOMRIGHT", 1, 12);
	container.ScrollBar = scrollBar;
	scrollBar.ParentContainer = container;

	local frameBorder = CreateFrame("Frame", nil, frame, "AchivementGoldBorderBackdrop");
	frameBorder:SetAllPoints(frame);

	frame:RegisterEvent("ADDON_LOADED");
	frame:SetScript("OnEvent", achievementsFrame.OnEvent);


	diagnostics.Debug(frame);

	-- [[ AchievementFrameCategories_OnLoad ]] --
	tinsert(ACHIEVEMENTFRAME_SUBFRAMES, frame:GetName());
	frame:Hide();

	scrollBar.Show = function()
		self.Show_Hide(frame, scrollBar, getmetatable(scrollBar).__index.Show, 504, 8);
	end;
	scrollBar.Hide = function()
		self.Show_Hide(frame, scrollBar, getmetatable(scrollBar).__index.Hide, 530, 8);
	end;

	scrollBar.trackBG:Show();
	container.update = function(container)
		container.ParentFrame.Parent:Update();
	end
	HybridScrollFrame_CreateButtons(container, "KrowiAF_AchievementTemplate", 0, -2);
	for _, button in next, container.buttons do
		button.ParentContainer = container;
		button:RegisterForClicks("LeftButtonUp", "RightButtonUp");
	end

	self.SelectedCategory = nil; -- Set in CategoryFrame
	self.SelectedAchievement = nil; -- Issue #6: Fix

	hooksecurefunc("AchievementFrameAchievements_ForceUpdate", function()
		self:ForceUpdate();
	end); -- Issue #3: Fix

	if Overachiever then
		Overachiever.UI_HookAchButtons(self.Frame.Container.buttons, self.Frame.Container.ScrollBar); -- Issue #4: Fix - loaded before our addon
	end

	return self;
end






-- KrowiAF.SelectedAchievement = nil; -- Issue #6: Fix
-- KrowiAF.TrackedAchievements = {};
-- KrowiAF.UI_AchievementsWidth = 0;
-- KrowiAF.UI_AchievementsButtonWidthOffset = 8;

-- KrowiAF.GuildMemberRequestFrame = nil;

local UI_AchievementsWidth = 504;

-- addon.GUI.AchievementsFrame:RegisterEvent("ADDON_LOADED");

-- [[ Blizzard_AchievementUI.lua derived OnEvent, OnShow and OnHide functions + Show and Hide the ScrollBar ]] --

	function achievementsFrame.OnEvent(self, event, ...) -- WIP - more Events to add -- AchievementFrameAchievements_OnLoad + AchievementFrameAchievements_OnEvent
		if Kiosk.IsEnabled() then -- Not sure what this does but keeping it
			return;
		end
		
		if event == "ADDON_LOADED" then
			local addonName = ...;
			addon.Diagnostics.Trace("addon.GUI.AchievementsFrame.OnEvent - " .. event .. " - " .. addonName);
			
			if addonName and addonName == "Blizzard_AchievementUI" then

				-- [[ OnLoad ]] --
					-- tinsert(ACHIEVEMENTFRAME_SUBFRAMES, self.Frame:GetName());
					-- self:Hide();

					-- self.Frame.Container.ScrollBar.Show = function(self)
					-- 	addon.GUI.AchievementsFrame.Show_Hide(self, getmetatable(self).__index.Show, 504, 8);
					-- end;

					-- self.Frame.Container.ScrollBar.Hide = function(self)
					-- 	addon.GUI.AchievementsFrame.Show_Hide(self, getmetatable(self).__index.Hide, 530, 8);
					-- end;
					
					-- self.Frame.Container.ScrollBar.trackBG:Show();
					-- self.Frame.Container.update = addon.GUI.AchievementsFrame.Update;
					-- HybridScrollFrame_CreateButtons(self.Frame.Container, "KrowiAF_AchievementTemplate", 0, -2);

					-- Register also right clicks to the achievements buttons
					-- for _, button in next, self.Frame.Container.buttons do
					-- 	button:RegisterForClicks("LeftButtonUp", "RightButtonUp");
					-- end
					
					-- hooksecurefunc("AchievementFrameAchievements_ForceUpdate", addon.GUI.AchievementsFrame.ForceUpdate); -- Issue #3: Fix

					-- if Overachiever then
					-- 	Overachiever.UI_HookAchButtons(self.Frame.Container.buttons, self.Frame.Container.ScrollBar); -- Issue #4: Fix - loaded before our addon
					-- end
			
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
				Overachiever.UI_HookAchButtons(self.Frame.Container.buttons, self.Frame.Container.ScrollBar); -- Issue #4: Fix - loaded after our addon
			end
		end
	end


	-- local function updateTrackedAchievements (...)
	-- 	local count = select("#", ...);

	-- 	for i = 1, count do
	-- 		KrowiAF.TrackedAchievements[select(i, ...)] = true;
	-- 	end
	-- end

	function achievementsFrame.Show_Hide(frame, self, func, achievementsWidth, achievementsButtonOffset) -- OK
		addon.Diagnostics.Trace("addon.GUI.AchievementsFrame.Container.ScrollBar.Show_Hide");

		UI_AchievementsWidth = achievementsWidth;
		frame:SetWidth(achievementsWidth);
		for _, button in next, frame.Container.buttons do
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

	function achievementsFrame:Update() -- OK -- AchievementFrameAchievements_Update
		addon.Diagnostics.Trace("addon.GUI.AchievementsFrame.Update");

		local category = self.SelectedCategory;
		local scrollFrame = self.Frame.Container;

		local offset = HybridScrollFrame_GetOffset(scrollFrame);
		local buttons = scrollFrame.buttons;
		local achievements = GetFilteredAchievements(category);
		local numButtons = #buttons;

		local selection = self.SelectedAchievement;
		if selection then
			AchievementFrameAchievementsObjectives:Hide();
		end

		local extraHeight = scrollFrame.largeButtonHeight or ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT

		local achievementIndex;
		local displayedHeight = 0;
		diagnostics.Debug(numButtons);
		diagnostics.Debug(#achievements);
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
			self.SelectedAchievement = selection;
		else
			HybridScrollFrame_CollapseButton(scrollFrame);
		end
	end

	function achievementsFrame:ForceUpdate() -- OK -- AchievementFrameAchievements_ForceUpdate -- Issue #3: Fix
		addon.Diagnostics.Trace("addon.GUI.AchievementsFrame.ForceUpdate");

		if not self.Frame:IsShown() then -- Issue #8: Fix
			return;
		end

		-- Issue #8: Broken
		if self.SelectedAchievement then
			local nextID = GetNextAchievement(self.SelectedAchievement.ID);
			local id, _, _, completed = GetAchievementInfo(self.SelectedAchievement.ID);
			if nextID and completed then
				self.SelectedAchievement = nil;
			end
		end
		AchievementFrameAchievementsObjectives:Hide(); --  of hier nog iets aanpassen
		AchievementFrameAchievementsObjectives.id = nil;

		local buttons = self.Frame.Container.buttons;
		for i, button in next, buttons do
			button.id = nil;
		end

		self:Update(); -- mss deze toch altijd doen?
	end

	function achievementsFrame:ClearSelection()  -- OK -- AchievementFrameAchievements_ClearSelection
		addon.Diagnostics.Trace("addon.GUI.AchievementsFrame.ClearSelection");

		AchievementFrameAchievementsObjectives:Hide();
		for _, button in next, self.Frame.Container.buttons do
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

		self.SelectedAchievement = nil;
	end

	function achievementsFrame:SelectButton(button) -- OK -- AchievementFrameAchievements_SelectButton
		addon.Diagnostics.Trace("addon.GUI.AchievementsFrame.SelectButton");

		self.SelectedAchievement = button.Achievement;
		button.selected = true;

		SetFocusedAchievement(button.Achievement.ID);
	end

	function achievementsFrame:FindSelection()  -- OK -- AchievementFrameAchievements_FindSelection
		addon.Diagnostics.Trace("addon.GUI.AchievementsFrame.FindSelection");

		local _, maxVal = self.Frame.Container.ScrollBar:GetMinMaxValues();
		local scrollHeight = self.Frame.Container:GetHeight();
		local newHeight = 0;
		self.Frame.Container.ScrollBar:SetValue(0);
		while true do
			for _, button in next, self.Frame.Container.buttons do
				if button.selected then
					newHeight = self.Frame.Container.ScrollBar:GetValue() + self.Frame.Container:GetTop() - button:GetTop();
					newHeight = min(newHeight, maxVal);
					self.Frame.Container.ScrollBar:SetValue(newHeight);
					return;
				end
			end
			if not self.Frame.Container.ScrollBar:IsVisible() or self.Frame.Container.ScrollBar:GetValue() == maxVal then
				return;
			else
				newHeight = newHeight + scrollHeight;
				newHeight = min(newHeight, maxVal);
				self.Frame.Container.ScrollBar:SetValue(newHeight);
			end
		end
	end

	function achievementsFrame:AdjustSelection()  -- OK -- AchievementFrameAchievements_AdjustSelection
		addon.Diagnostics.Trace("addon.GUI.AchievementsFrame.AdjustSelection");

		local selectedButton;
		-- check if selection is visible
		for _, button in next, self.Frame.Container.buttons do
			if button.selected then
				selectedButton = button;
				break;
			end
		end

		if not selectedButton then
			AchievementFrameAchievements_FindSelection();
		else
			local newHeight;
			if ( selectedButton:GetTop() > self.Frame.Container:GetTop() ) then
				newHeight = self.Frame.Container.ScrollBar:GetValue() + self.Frame.Container:GetTop() - selectedButton:GetTop();
			elseif ( selectedButton:GetBottom() < self.Frame.Container:GetBottom() ) then
				if ( selectedButton:GetHeight() > self.Frame.Container:GetHeight() ) then
					newHeight = self.Frame.Container.ScrollBar:GetValue() + self.Frame.Container:GetTop() - selectedButton:GetTop();
				else
					newHeight = self.Frame.Container.ScrollBar:GetValue() + self.Frame.Container:GetBottom() - selectedButton:GetBottom();
				end
			end
			if ( newHeight ) then
				local _, maxVal = self.Frame.Container.ScrollBar:GetMinMaxValues();
				newHeight = min(newHeight, maxVal);
				self.Frame.Container.ScrollBar:SetValue(newHeight);
			end
		end
	end