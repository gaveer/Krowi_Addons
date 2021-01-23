local _, addon = ...; -- Global addon namespace
local gui = addon.GUI; -- Local GUI namespace
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace

function KrowiAF_AchievementButton_OnLoad(self) -- Used in Templates - KrowiAF_AchievementTemplate
	diagnostics.Trace("KrowiAF_AchievementButton_OnLoad");

	-- We need to overwrite the shield.OnClick so it calls the correct button OnClick
	-- Doing this in code to not have to redo the entire template
	self.shield:SetScript("OnClick", function(self)
		local parent = self:GetParent();
		KrowiAF_AchievementButton_OnClick(parent);
	end);

	AchievementButton_OnLoad(self);
end

function KrowiAF_AchievementButton_OnClick(self, button, down, ignoreModifiers, anchor, offsetX, offsetY) -- Used in Templates - KrowiAF_AchievementTemplate
	diagnostics.Trace("KrowiAF_AchievementButton_OnClick");

	if button == "LeftButton" then
		diagnostics.Debug("LeftButton");
		OnClickLeftButton(self, ignoreModifiers);
	elseif button == "RightButton" then
		diagnostics.Debug("RightButton");
		OnClickRightButton(self, anchor, offsetX, offsetY);
	end
end

-- [[ OnClickLeftButton ]] --
function OnClickLeftButton(self, ignoreModifiers)
	diagnostics.Trace("KrowiAF.AchievementsButton.OnClickLeftButton");

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

	local achievementsFrame = self.ParentContainer.ParentFrame;

	if self.selected then
		if not self:IsMouseOver() then
			self.highlight:Hide();
		end
		achievementsFrame:ClearSelection();
		HybridScrollFrame_CollapseButton(self.ParentContainer);
		achievementsFrame:Update();
		return;
	end

	achievementsFrame:ClearSelection();
	achievementsFrame:SelectButton(self);
	achievementsFrame:DisplayAchievement(self, achievementsFrame.SelectedAchievement, self.index, self.Achievement);
	HybridScrollFrame_ExpandButton(self.ParentContainer, ((self.index - 1) * ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT), self:GetHeight());
	achievementsFrame:Update();
	if not ignoreModifiers then
		achievementsFrame:AdjustSelection();
	end
end

-- [[ OnClickRightButton ]] --
local rightClickMenu = LibStub("KrowiRightClickMenu-1.0");

function OnClickRightButton(self, anchor, offsetX, offsetY)
	diagnostics.Trace("KrowiAF.AchievementsButton.OnClickRightButton");

	-- Reset menu
	rightClickMenu:Clear();

	-- Always add header
	local _, name = GetAchievementInfo(self.Achievement.ID);
	rightClickMenu:AddFull(name, nil, true);

	-- Debug table
	if diagnostics.DebugEnabled() then
		rightClickMenu:AddFull("Debug Table", function() diagnostics.DebugTable(self); end);
	end

	-- Wowhead link
	if not self.Achievement.HasNoWowheadLink then
		local externalLink = "https://www.wowhead.com/achievement=" .. self.Achievement.ID; -- .. "#comments"; -- make go to comments optional in settings
		diagnostics.Debug(externalLink);
		rightClickMenu:AddFull("Wowhead", function() gui.PopupDialog.ShowExternalLink(externalLink); end);
	end

	-- IAT Link
	if self.Achievement.HasIATLink and addon.IsIATLoaded() then
		rightClickMenu:AddFull("IAT Tactics", function() IAT_DisplayAchievement(self.Achievement.ID); end);
	end

	-- Extra menu defined at the achievement self
	if self.Achievement.RCMenExtra ~= nil then
		rightClickMenu:Add(self.Achievement.RCMenExtra);
	end

	rightClickMenu:Open(anchor, offsetX, offsetY);
end