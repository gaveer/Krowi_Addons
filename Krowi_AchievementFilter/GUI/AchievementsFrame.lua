local _, addon = ...; -- Global addon namespace
local gui = addon.GUI; -- Local GUI namespace
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace

gui.AchievementsFrame = {}; -- Global achievements frame class
local achievementsFrame = gui.AchievementsFrame; -- Local achievements frame class
achievementsFrame.ID = 0; -- Local ID for naming, starts at 0 and will increment if a new frame is added

achievementsFrame.__index = achievementsFrame; -- Used to support OOP like code

function achievementsFrame:New()
    diagnostics.Trace("achievementsFrame:New");

	local self = {};
	setmetatable(self, achievementsFrame);

	achievementsFrame.ID = achievementsFrame.ID + 1;
	self.ID = achievementsFrame.ID;

	self.SelectedCategory = nil;
	self.SelectedAchievement = nil; -- Issue #6: Fix
	self.UIFontHeight = nil;

	local frame = CreateFrame("Frame", "KrowiAF_AchievementFrameAchievements" .. self.ID, AchievementFrame);
	frame:SetWidth(504 - addon.Options.db.CategoriesFrameWidthOffset);
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
	frame:SetScript("OnEvent", self.OnEvent);
	frame:SetScript("OnShow", self.OnShow);

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
	-- Doing post Load things
	for _, button in next, container.buttons do
		button.ParentContainer = container;
		button:RegisterForClicks("LeftButtonUp", "RightButtonUp");

		if not self.UIFontHeight then
			local _, fontHeight = button.description:GetFont();
			self.UIFontHeight = fontHeight;
		end
	end

	hooksecurefunc("AchievementFrameAchievements_ForceUpdate", function()
		self:ForceUpdate();
	end); -- Issue #3: Fix

	if Overachiever then
		Overachiever.UI_HookAchButtons(self.Frame.Container.buttons, self.Frame.Container.ScrollBar); -- Issue #4: Fix - loaded before our addon
	end

	return self;
end

function achievementsFrame.OnEvent(self, event, ...)
	local addonName = ...;
	diagnostics.Trace("achievementsFrame.OnEvent - " .. event .. " - " .. addonName);

	if ( event == "ADDON_LOADED" ) then
		local addonName = ...;
		if ( addonName and addonName == "Overachiever" ) then
			Overachiever.UI_HookAchButtons(self.Container.buttons, self.Container.ScrollBar); -- Issue #4: Fix - loaded after our addon
		end
	end
end

function achievementsFrame.OnShow(self)
	diagnostics.Trace("achievementsFrame.OnShow");

	self.Parent:Update();
end

function achievementsFrame.Show_Hide(frame, self, func, achievementsWidth, achievementsButtonOffset)
	diagnostics.Trace("achievementsFrame.Show_Hide");

	achievementsWidth = achievementsWidth - addon.Options.db.CategoriesFrameWidthOffset

	frame:SetWidth(achievementsWidth);
	for _, button in next, frame.Container.buttons do
		button:SetWidth(achievementsWidth - achievementsButtonOffset);
	end
	func(self);
end

function achievementsFrame:SetSelectedCategory(category)
	self.SelectedCategory = category;
end

local function GetFilteredAchievements(category) -- @TODO Gets all achievements right now regardles of the filter - need to look at this on a later time
	diagnostics.Trace("GetFilteredAchievements");

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

function achievementsFrame:Update()
	diagnostics.Trace("achievementsFrame:Update");

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
	for i = 1, numButtons do
		achievementIndex = i + offset;
		if achievementIndex > #achievements then
			buttons[i]:Hide();
		else
			self:DisplayAchievement(buttons[i], achievements[achievementIndex], achievementIndex, selection);
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

function achievementsFrame:ForceUpdate() -- Issue #3: Fix
	diagnostics.Trace("achievementsFrame:ForceUpdate");

	if not self.Frame:IsShown() then -- Issue #8: Fix, Issue #10 : Broken
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
	AchievementFrameAchievementsObjectives:Hide();
	AchievementFrameAchievementsObjectives.id = nil;

	local buttons = self.Frame.Container.buttons;
	for _, button in next, buttons do
		button.id = nil;
	end

	self:Update();
end

function achievementsFrame:ClearSelection()
	diagnostics.Trace("achievementsFrame:ClearSelection");

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

function achievementsFrame:SelectButton(button)
	diagnostics.Trace("achievementsFrame:SelectButton");

	self.SelectedAchievement = button.Achievement;
	button.selected = true;

	SetFocusedAchievement(button.Achievement.ID);
end

function achievementsFrame:FindSelection()
	diagnostics.Trace("achievementsFrame:FindSelection");

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

function achievementsFrame:AdjustSelection()
	diagnostics.Trace("achievementsFrame:AdjustSelection");

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
		if newHeight then
			local _, maxVal = self.Frame.Container.ScrollBar:GetMinMaxValues();
			newHeight = min(newHeight, maxVal);
			self.Frame.Container.ScrollBar:SetValue(newHeight);
		end
	end
end

function achievementsFrame:DisplayAchievement(button, achievement, index, selection, renderOffScreen)
	local id, name, points, completed, month, day, year, description, flags, icon, rewardText, isGuild, wasEarnedByMe, earnedBy = GetAchievementInfo(achievement.ID);
	diagnostics.Trace("achievementsFrame.DisplayAchievement for achievement " .. tostring(id));

	if not id then
		button:Hide();
		return;
	else
		button:Show();
	end

	button.index = index;
	button.Achievement = achievement;

	if button.id ~= id then
		local saturatedStyle;
		if bit.band(flags, ACHIEVEMENT_FLAGS_ACCOUNT) == ACHIEVEMENT_FLAGS_ACCOUNT then
			button.accountWide = true;
			saturatedStyle = "account";
		else
			button.accountWide = nil;
			saturatedStyle = "normal";
		end
		button.id = id;
		button.label:SetWidth(ACHIEVEMENTBUTTON_LABELWIDTH);
		button.label:SetText(name);

		if GetPreviousAchievement(id) then
			-- If this is a progressive achievement, show the total score.
			AchievementShield_SetPoints(AchievementButton_GetProgressivePoints(id), button.shield.points, AchievementPointsFont, AchievementPointsFontSmall);
		else
			AchievementShield_SetPoints(points, button.shield.points, AchievementPointsFont, AchievementPointsFontSmall);
		end

		if points > 0 then
			button.shield.icon:SetTexture([[Interface\AchievementFrame\UI-Achievement-Shields]]);
		else
			button.shield.icon:SetTexture([[Interface\AchievementFrame\UI-Achievement-Shields-NoPoints]]);
		end

		if isGuild then
			button.shield.points:Show();
			button.shield.wasEarnedByMe = nil;
			button.shield.earnedBy = nil;
		else
			button.shield.wasEarnedByMe = not (completed and not wasEarnedByMe);
			button.shield.earnedBy = earnedBy;
		end

		button.shield.id = id;
		button.description:SetText(description);
		button.hiddenDescription:SetText(description);
		button.numLines = ceil(button.hiddenDescription:GetHeight() / self.UIFontHeight);
		button.icon.texture:SetTexture(icon);
		if completed or wasEarnedByMe then
			button.completed = true;
			button.dateCompleted:SetText(FormatShortDate(day, month, year));
			button.dateCompleted:Show();
			if button.saturatedStyle ~= saturatedStyle then
				button:Saturate();
			end
		else
			button.completed = nil;
			button.dateCompleted:Hide();
			button:Desaturate();
		end

		if rewardText == "" then
			button.reward:Hide();
			button.rewardBackground:Hide();
		else
			button.reward:SetText(rewardText);
			button.reward:Show();
			button.rewardBackground:Show();
			if button.completed then
				button.rewardBackground:SetVertexColor(1, 1, 1);
			else
				button.rewardBackground:SetVertexColor(0.35, 0.35, 0.35);
			end
		end
	end

	if IsTrackedAchievement(id) then -- Issue #10 : Fix
		button.check:Show();
		button.label:SetWidth(button.label:GetStringWidth() + 4); -- This +4 here is to fudge around any string width issues that arize from resizing a string set to its string width. See bug 144418 for an example.
		button.tracked:SetChecked(true);
		button.tracked:Show();
	else
		button.check:Hide();
		button.tracked:SetChecked(false);
		button.tracked:Hide();
	end

	AchievementButton_UpdatePlusMinusTexture(button);

	if selection and id == selection.ID then
		self.SelectedAchievement = achievement;
		button.selected = true;
		button.highlight:Show();
		local height = AchievementButton_DisplayObjectives(button, button.id, button.completed, renderOffScreen);
		if height == ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT then
			button:Collapse();
		else
			button:Expand(height);
		end
		if not completed or (not wasEarnedByMe and not isGuild) then
			button.tracked:Show();
		end
	elseif button.selected then
		button.selected = nil;
		if not button:IsMouseOver() then
			button.highlight:Hide();
		end
		button:Collapse();
		button.description:Show();
		button.hiddenDescription:Hide();
	end

	return id;
end