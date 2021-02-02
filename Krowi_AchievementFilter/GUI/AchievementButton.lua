-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.AchievementButton = {};
local achievementButton = gui.AchievementButton;

function achievementButton.PostLoadButtons(achievementsFrame)
	diagnostics.Trace("achievementButton.PostLoadButtons");

	for _, button in next, achievementsFrame.Container.buttons do
		button:RegisterForClicks("LeftButtonUp", "RightButtonUp");
		button.Click = function(self, button, down, ignoreModifiers, anchor, offsetX, offsetY)
			achievementButton.OnClick(self, button, achievementsFrame, ignoreModifiers, anchor, offsetX, offsetY);
		end;
		button:SetScript("OnClick", button.Click);

		button.shield:RegisterForClicks("LeftButtonUp", "RightButtonUp");
		button.shield:SetScript("OnClick", function(self, button, down)
			local parent = self:GetParent();
			parent.Click(parent, button, achievementsFrame);
		end);

		if not achievementsFrame.UIFontHeight then
			local _, fontHeight = button.description:GetFont();
			achievementsFrame.UIFontHeight = fontHeight;
		end
	end
end

-- [[ OnClickLeftButton ]] --
local function OnClickLeftButton(self, ignoreModifiers, achievementsFrame)
	diagnostics.Trace("OnClickLeftButton");

	if IsModifiedClick() and not ignoreModifiers then
		local handled = nil;
		if IsModifiedClick("CHATLINK") then
			local achievementLink = GetAchievementLink(self.id);
			if achievementLink then
				handled = ChatEdit_InsertLink(achievementLink);
				if not handled and SocialPostFrame and Social_IsShown() then
					Social_InsertLink(achievementLink);
					handled = true;
				end
			end
		end
		if not handled and IsModifiedClick("QUESTWATCHTOGGLE") then
			AchievementButton_ToggleTracking(self.id);
		end
		return;
	end

	if self.selected then
		if not self:IsMouseOver() then
			self.highlight:Hide();
		end
		achievementsFrame:ClearSelection();
		HybridScrollFrame_CollapseButton(achievementsFrame.Container);
		achievementsFrame:Update();
		return;
	end

	achievementsFrame:ClearSelection();
	achievementsFrame:SelectButton(self);
	achievementsFrame:DisplayAchievement(self, achievementsFrame.SelectedAchievement, self.index, self.Achievement);
	HybridScrollFrame_ExpandButton(achievementsFrame.Container, ((self.index - 1) * ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT), self:GetHeight());
	achievementsFrame:Update();
	if not ignoreModifiers then
		achievementsFrame:AdjustSelection();
	end
end

-- [[ OnClickRightButton ]] --
local rightClickMenu = LibStub("KrowiMenu-1.0");
local popupDialog = LibStub("KrowiPopopDialog-1.0");

local function OnClickRightButton(self, anchor, offsetX, offsetY)
	diagnostics.Trace("OnClickRightButton");

	local achievement = self.Achievement;

	-- Reset menu
	rightClickMenu:Clear();

	-- Always add header
	local _, name = GetAchievementInfo(achievement.ID);
	rightClickMenu:AddFull(name, nil, true);

	-- Debug table
	if diagnostics.DebugEnabled() then
		rightClickMenu:AddFull("Debug Table", function() diagnostics.DebugTable(self); end);
	end

	-- Wowhead link
	if not achievement.HasNoWowheadLink then
		local externalLink = "https://www.wowhead.com/achievement=" .. achievement.ID; -- .. "#comments"; -- make go to comments optional in settings
		diagnostics.Debug(externalLink);
		rightClickMenu:AddFull("Wowhead", function() popupDialog.ShowExternalLink(externalLink); end);
	end

	-- IAT Link
	if achievement.HasIATLink and addon.IsIATLoaded() then
		rightClickMenu:AddFull("IAT Tactics", function() diagnostics.Debug(IAT_DisplayAchievement(achievement.ID)); end);
	end

	-- Extra menu defined at the achievement self
	if achievement.RCMenExtra ~= nil then
		rightClickMenu:Add(achievement.RCMenExtra);
	end

	rightClickMenu:Open(anchor, offsetX, offsetY);
end

function achievementButton.OnClick(self, button, achievementsFrame, ignoreModifiers, anchor, offsetX, offsetY) -- ignoreModifiers, anchor, offsetX, offsetY are used for in code calls
	diagnostics.Trace("achievementButton.OnClick");

	if button == "LeftButton" then
		diagnostics.Debug("LeftButton");
		OnClickLeftButton(self, ignoreModifiers, achievementsFrame);
	elseif button == "RightButton" then
		diagnostics.Debug("RightButton");
		OnClickRightButton(self, anchor, offsetX, offsetY);
	end
end