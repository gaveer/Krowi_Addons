-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.AchievementButton = {};
local achievementButton = gui.AchievementButton;

local OnEnter, OnLeave, OnClick;
function achievementButton:PostLoadButtons(achievementsFrame)
	-- Here we hook a lot of our own functionality to extend the default Blizzard Buttons
	diagnostics.Trace("achievementButton.PostLoadButtons");

	for _, button in next, achievementsFrame.Container.buttons do
		button:RegisterForClicks("LeftButtonUp", "RightButtonUp");
		button.Click = function(self, button, down, ignoreModifiers, anchor, offsetX, offsetY)
			OnClick(self, button, achievementsFrame, ignoreModifiers, anchor, offsetX, offsetY);
		end;
		button:SetScript("OnClick", button.Click);

		if not achievementsFrame.UIFontHeight then
			local _, fontHeight = button.description:GetFont();
			achievementsFrame.UIFontHeight = fontHeight;
		end

		-- Change display behaviour
		button.DisplayObjectives = function(button, renderOffScreen)
			return self.Display.DisplayObjectives(button, renderOffScreen, achievementsFrame);
		end;
		button.ResetMetas = self.Display.ResetMetas;
		button.ResetCriteria = self.Display.ResetCriteria;

		-- Change tooltip behaviour
		button:HookScript("OnEnter", function(self)
			OnEnter(self, achievementsFrame);
		end);
		button:HookScript("OnLeave", function(self)
			OnLeave(self, achievementsFrame);
		end);
		button.shield:EnableMouse(false);
		button.ShowTooltip = function()
			self.Tooltip.ShowTooltip(button);
		end;
	end
end

-- [[ OnEnter ]] --
function OnEnter(self, achievementsFrame)
	diagnostics.Trace("OnEnter");

	achievementsFrame.SetHighlightedButton(self);
	self.ShowTooltip();
end

-- [[ OnLeave ]] --
function OnLeave(self, achievementsFrame)
	diagnostics.Trace("OnLeave");

	achievementsFrame.ClearHighlightedButton();

	AchievementMeta_OnLeave(self);
end

-- [[ OnClick ]] --
local OnClickLeftButton, OnClickRightButton;
function OnClick(self, button, achievementsFrame, ignoreModifiers, anchor, offsetX, offsetY) -- ignoreModifiers, anchor, offsetX, offsetY are used for in code calls
	diagnostics.Trace("achievementButton.OnClick");

	if button == "LeftButton" then
		diagnostics.Debug("LeftButton");
		OnClickLeftButton(self, ignoreModifiers, achievementsFrame);
	elseif button == "RightButton" then
		diagnostics.Debug("RightButton");
		OnClickRightButton(self, anchor, offsetX, offsetY, achievementsFrame);
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

local function AddGoToLine(goTo, id, achievement, achievementsFrame)
	if id == achievement.ID then
		return;
	end

	local _, name = addon.GetAchievementInfo(id);
	local disabled = nil;
	if not addon.GetAchievement(id) then -- Catch missing achievements from the addon to prevent errors
		name = name .. " (" .. addon.L["Missing"] .. ")";
		disabled = true;
	end
	goTo:AddChildFull({ Text = name,
						Func = function()
							achievementsFrame:SelectAchievementFromID(id, nil, true);
							rightClickMenu:Close();
						end,
						Disabled = disabled
					});
end

function OnClickRightButton(self, anchor, offsetX, offsetY, achievementsFrame)
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
		rightClickMenu:AddFull({Text = addon.L["Wowhead"], Func = function() popupDialog.ShowExternalLink(externalLink); end});
	end

	-- IAT Link
	if addon.IsIATLoaded() and IAT_HasAchievement(achievement.ID) then -- and achievement.HasIATLink
		rightClickMenu:AddFull({Text = addon.L["IAT Tactics"], Func = function() IAT_DisplayAchievement(achievement.ID); end});
	end

	-- Go to
	local partOfAChainIDs = achievement:GetPartOfAChainIDs();
	local requiredForIDs = achievement:GetRequiredForIDs();
	if partOfAChainIDs or requiredForIDs then -- Others can be added here later
		local goTo = addon.Objects.MenuItem:New({Text = addon.L["Go to"]});

		if partOfAChainIDs then
			goTo:AddChildFull({ Text = addon.L["Part of a chain"], IsTitle = true});
			for _, id in next, partOfAChainIDs do
				AddGoToLine(goTo, id, achievement, achievementsFrame);
			end
		end

		if requiredForIDs then -- Add individual Go to parts
			if partOfAChainIDs then
				goTo:AddSeparator();
			end
			goTo:AddChildFull({ Text = addon.L["Required for"], IsTitle = true});
			for _, id in next, requiredForIDs do
				AddGoToLine(goTo, id, achievement, achievementsFrame);
			end
		end

		rightClickMenu:Add(goTo); -- Add Go to menu to the right click menu
	end

	-- Extra menu defined at the achievement self including pet battles
	if addon.RCMenuExtras[achievement.ID] ~= nil then
		rightClickMenu:Add(addon.RCMenuExtras[achievement.ID]);
	end

	rightClickMenu:Open(anchor, offsetX, offsetY);
end