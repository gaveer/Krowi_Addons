-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.AchievementButton = {};
local achievementButton = gui.AchievementButton;

local OnEnter, OnLeave;

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

		-- Change tooltip behaviour
		button:HookScript("OnEnter", OnEnter);
		button:HookScript("OnLeave", OnLeave);
		button.shield:EnableMouse(false);
	end
end

-- [[ OnEnter ]] --
local AddBlizzardDefault, AddPartOfAChain;
function OnEnter(self)
	diagnostics.Trace("OnEnter");

	GameTooltip:SetOwner(self, "ANCHOR_NONE");
	GameTooltip:SetPoint("TOPLEFT", self, "TOPRIGHT");

	AddBlizzardDefault(self);
	AddPartOfAChain(self);

	-- AchievementFrameAchievements_CheckGuildMembersTooltip(self.shield); -- Guild can be ignored for now

	GameTooltip:Show();
end

function AddBlizzardDefault(self)
	diagnostics.Trace("AddBlizzardDefault");

	if ( self.accountWide ) then
		if ( self.completed ) then
			GameTooltip:AddLine(ACCOUNT_WIDE_ACHIEVEMENT_COMPLETED);
		else
			GameTooltip:AddLine(ACCOUNT_WIDE_ACHIEVEMENT);
		end
		GameTooltip:Show();
		return;
	end
	if ( self.shield.earnedBy ) then
		GameTooltip:AddLine(format(ACHIEVEMENT_EARNED_BY,self.shield.earnedBy));
		local me = UnitName("player")
		if ( not self.shield.wasEarnedByMe ) then
			GameTooltip:AddLine(format(ACHIEVEMENT_NOT_COMPLETED_BY, me));
		elseif ( me ~= self.shield.earnedBy ) then
			GameTooltip:AddLine(format(ACHIEVEMENT_COMPLETED_BY, me));
		end
		GameTooltip:Show();
		return;
	end
end

function AddPartOfAChain(self)
	if not self.Achievement or not self.Achievement.ID or (not GetNextAchievement(self.Achievement.ID) and not GetPreviousAchievement(self.Achievement.ID)) or not addon.Options.db.Tooltip.ShowPartOfAChain then
		return;
	end

	if (GameTooltip:NumLines() > 0) then
		GameTooltip:AddLine(" "); -- Empty line to seperate it from the previous block
	end
	GameTooltip:AddLine(addon.L["Part of a chain"]); -- Header
	local id;
	local tmpID = self.Achievement.ID;
	while tmpID do -- Find first achievement in a chain
		id = tmpID;
		tmpID = GetPreviousAchievement(id);
	end
	while id do
		local _, name, _, completed, _, _, _, _, _, _, _, _, wasEarnedByMe = addon.GetAchievementInfo(id);
		local r, g, b;
		if id == self.Achievement.ID then
			if completed then
				r, g, b = 0.75, 1, 0.75;
			else
				r, g, b = 0.9, 0.9, 0.9;
			end
		elseif completed then
			r, g, b = 0.25, 0.75, 0.25;
		else
			r, g, b = 0.6, 0.6, 0.6;
		end
		GameTooltip:AddLine(name, r, g, b); -- Achievement name
		local tooltipTextureInfo;
		if addon.Options.db.Tooltip.ShowPartOfAChainCurrentCharacterIcons then
			if wasEarnedByMe then
				GameTooltip:AddTexture(136814); -- Check texture
			elseif self.Achievement.NotObtainable then
				GameTooltip:AddTexture(136813); -- Fail texture
			else
				GameTooltip:AddTexture(136815); -- Dash texture
			end
			tooltipTextureInfo = {margin = { right = 24}};
		end
		if completed then
			GameTooltip:AddTexture(136814, tooltipTextureInfo); -- Check texture
		elseif self.Achievement.NotObtainable then
			GameTooltip:AddTexture(136813, tooltipTextureInfo); -- Fail texture
		else
			GameTooltip:AddTexture(136815, tooltipTextureInfo); -- Dash texture
		end
		id = GetNextAchievement(id);
	end
end

-- [[ OnLeave ]] --
function OnLeave(self)
	diagnostics.Trace("OnLeave");

	AchievementMeta_OnLeave(self);
end

-- [[ OnClick ]] --
local OnClickLeftButton, OnClickRightButton;
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

-- [[ OnClickLeftButton ]] --
function OnClickLeftButton(self, ignoreModifiers, achievementsFrame)
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

function OnClickRightButton(self, anchor, offsetX, offsetY)
	diagnostics.Trace("OnClickRightButton");

	local achievement = self.Achievement;

	-- Reset menu
	rightClickMenu:Clear();

	-- Always add header
	local _, name = addon.GetAchievementInfo(achievement.ID);
	rightClickMenu:AddFull({Text = name, IsTitle = true});

	-- Debug table
	if diagnostics.DebugEnabled() then
		rightClickMenu:AddFull({Text = "Debug Table", Func = function() diagnostics.DebugTable(self); end});
	end

	-- Wowhead link
	if not achievement.HasNoWowheadLink then
		local externalLink = "https://www.wowhead.com/achievement=" .. achievement.ID; -- .. "#comments"; -- make go to comments optional in settings
		diagnostics.Debug(externalLink);
		rightClickMenu:AddFull({Text = "Wowhead", Func = function() popupDialog.ShowExternalLink(externalLink); end});
	end

	-- IAT Link
	if addon.IsIATLoaded() and IAT_HasAchievement(achievement.ID) then -- and achievement.HasIATLink
		rightClickMenu:AddFull({Text = "IAT Tactics", Func = function() IAT_DisplayAchievement(achievement.ID); end});
	end

	-- Extra menu defined at the achievement self including pet battles
	if addon.RCMenuExtras[achievement.ID] ~= nil then
		rightClickMenu:Add(addon.RCMenuExtras[achievement.ID]);
	end

	rightClickMenu:Open(anchor, offsetX, offsetY);
end