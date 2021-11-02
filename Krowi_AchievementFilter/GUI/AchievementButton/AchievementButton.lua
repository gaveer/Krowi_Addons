-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.AchievementButton = {};
local achievementButton = gui.AchievementButton;

local media = "Interface\\AddOns\\Krowi_AchievementFilter\\Media\\";

local Saturate, Desaturate, OnEnter, OnLeave, OnClick;
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

		if addon.Options.db.RightClickMenu.ShowButtonOnAchievement then
			local rightClickMenuButton = CreateFrame("Button", "$parentRightClickMenuButton", button);
			rightClickMenuButton:SetWidth(15);
			rightClickMenuButton:SetHeight(15);
			rightClickMenuButton:SetPoint("TOPLEFT", 72, -9);
			rightClickMenuButton:SetNormalTexture("Interface/Buttons/QuestTrackerButtons");
			rightClickMenuButton:SetPushedTexture("Interface/Buttons/QuestTrackerButtons");
			rightClickMenuButton:SetHighlightTexture("Interface/Buttons/QuestTrackerButtons", "ADD");
			rightClickMenuButton:GetNormalTexture():SetTexCoord(0.40625, 0.53125, 0.25, 0.5);
			rightClickMenuButton:GetPushedTexture():SetTexCoord(0.40625, 0.53125, 0, 0.25);
			rightClickMenuButton:GetHighlightTexture():SetTexCoord(0, 0.265625, 0, 0.53125);
			rightClickMenuButton.Click = function()
				OnClick(button, "RightButton", achievementsFrame, nil, rightClickMenuButton);
			end;
			rightClickMenuButton:SetScript("OnClick", rightClickMenuButton.Click);
			button.RightClickMenuButton = rightClickMenuButton;
			button.plusMinus:ClearAllPoints();
			button.plusMinus:SetPoint("TOPLEFT", rightClickMenuButton, "BOTTOMLEFT", 0, -3);
		end

		-- Change display behaviour
		button.DisplayObjectives = function(button, renderOffScreen)
			return self.Display.DisplayObjectives(button, renderOffScreen, achievementsFrame);
		end;
		button.ResetMetas = self.Display.ResetMetas;
		button.ResetCriteria = self.Display.ResetCriteria;

		-- Change tooltip behaviour
		button.Enter = function(self)
			OnEnter(self, achievementsFrame);
		end;
		button:HookScript("OnEnter", button.Enter);
		button.Leave = function(self)
			OnLeave(self, achievementsFrame);
		end;
		button:HookScript("OnLeave", button.Leave);
		button.shield:EnableMouse(false);
		button.ShowTooltip = function()
			self.Tooltip.ShowTooltip(button);
		end;
		
		local name = button:GetName();
		button.BottomTsunami1 = _G[name.."BottomTsunami1"];
		button.TopTsunami1 = _G[name.."TopTsunami1"];

		hooksecurefunc(button, "Saturate", Saturate);
		hooksecurefunc(button, "Desaturate", Desaturate);
	end
end

local function SetTsunamis(self)
	if self.Achievement.NotObtainable then
		self.BottomTsunami1:SetTexture(media .. "NotObtainableAchievementBorders");
		self.BottomTsunami1:SetTexCoord(0, 0.72265, 0.51953125, 0.58203125);
		self.BottomTsunami1:SetAlpha(0.35);
		self.TopTsunami1:SetTexture(media .. "NotObtainableAchievementBorders");
		self.TopTsunami1:SetTexCoord(0.72265, 0, 0.58203125, 0.51953125);
		self.TopTsunami1:SetAlpha(0.3);
	else
		self.BottomTsunami1:SetTexture("Interface\\AchievementFrame\\UI-Achievement-Borders");
		self.BottomTsunami1:SetTexCoord(0, 0.72265, 0.51953125, 0.58203125);
		self.BottomTsunami1:SetAlpha(0.35);
		self.TopTsunami1:SetTexture("Interface\\AchievementFrame\\UI-Achievement-Borders");
		self.TopTsunami1:SetTexCoord(0.72265, 0, 0.58203125, 0.51953125);
		self.TopTsunami1:SetAlpha(0.3);
	end
end

-- [[ Saturate ]] --
function Saturate(self)
	if self.Achievement.NotObtainable then
		self.titleBar:SetTexture(media .. "NotObtainableAchievementBorders");
		self.titleBar:SetTexCoord(0, 1, 0.66015625, 0.73828125);
		self:SetBackdropBorderColor(ACHIEVEMENT_RED_BORDER_COLOR:GetRGB());
		self.saturatedStyle = "NotObtainable";
		SetTsunamis(self);
	else
		if not addon.InGuildView() and not self.accountWide then
			self:SetBackdropBorderColor(ACHIEVEMENT_GOLD_BORDER_COLOR:GetRGB());
		end
		SetTsunamis(self);
	end
end

-- [[ Desaturate ]] --
function Desaturate(self)
	if self.Achievement.NotObtainable then
		self.titleBar:SetTexture(media .. "NotObtainableAchievementBorders");
		self.titleBar:SetTexCoord(0, 1, 0.91796875, 0.99609375);
		SetTsunamis(self);
	else
		SetTsunamis(self);
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
	achievementsFrame:DisplayAchievement(self, gui.SelectedTab.SelectedAchievement, self.index, self.Achievement);
	HybridScrollFrame_ExpandButton(achievementsFrame.Container, ((self.index - 1) * ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT), self:GetHeight());
	achievementsFrame:Update();
	if not ignoreModifiers then
		achievementsFrame:AdjustSelection();
	end
end

-- [[ OnClickRightButton ]] --
local rightClickMenu = LibStub("Krowi_Menu-1.0");
local popupDialog = LibStub("Krowi_PopopDialog-1.0");

local function AddWowheadLink(achievement)
	if not achievement.HasNoWowheadLink then
		local externalLink = "https://www.wowhead.com/achievement=" .. achievement.ID; -- .. "#comments"; -- make go to comments optional in settings
		diagnostics.Debug(externalLink);
		rightClickMenu:AddFull({Text = addon.L["Wowhead"], Func = function() popupDialog.ShowExternalLink(externalLink); end});
	end
end

local function AddIATLink(achievement)
	if addon.IsIATLoaded() and IAT_HasAchievement(achievement.ID) then -- and achievement.HasIATLink
		rightClickMenu:AddFull({Text = addon.L["IAT Tactics"], Func = function() IAT_DisplayAchievement(achievement.ID); end});
	end
end

local function AddGoToLine(goTo, id, achievementsFrame)
	local _, name = addon.GetAchievementInfo(id);
	local disabled;
	if not addon.Data.Achievements[id] then -- Catch missing achievements from the addon to prevent errors
		name = name .. " (" .. addon.L["Missing"] .. ")";
		disabled = true;
	end
	goTo:AddFull({ Text = name,
					Func = function()
						achievementsFrame:SelectAchievementFromID(id, nil, true);
						rightClickMenu:Close();
					end,
					Disabled = disabled
				});
end

local function AddGoTo(achievementsFrame, achievement)
	local partOfAChainIDs = achievement:GetPartOfAChainIDs(gui.FilterButton.Validate, gui.FilterButton:GetFilters());
	local requiredForIDs = achievement:GetRequiredForIDs(gui.FilterButton.Validate, gui.FilterButton:GetFilters());
	if partOfAChainIDs or requiredForIDs or gui.SelectedTab.SelectedCategory == addon.Data.CurrentZoneCategory or gui.SelectedTab.SelectedCategory == addon.Data.SelectedZoneCategory then -- Others can be added here later
		local goTo = addon.Objects.MenuItem:New({Text = addon.L["Go to"]});
		local addSeparator = nil;

		if partOfAChainIDs then
			goTo:AddFull({Text = addon.L["Part of a chain"], IsTitle = true});
			for _, id in next, partOfAChainIDs do
				if id ~= achievement.ID then
					AddGoToLine(goTo, id, achievementsFrame);
				end
			end
			addSeparator = true;
		end

		if requiredForIDs then -- Add individual Go to parts
			if addSeparator then
				goTo:AddSeparator();
				addSeparator = nil;
			end
			goTo:AddFull({Text = addon.L["Required for"], IsTitle = true});
			for _, id in next, requiredForIDs do
				if id ~= achievement.ID then
					AddGoToLine(goTo, id, achievementsFrame);
				end
			end
			addSeparator = true;
		end

		if gui.SelectedTab.SelectedCategory == addon.Data.CurrentZoneCategory or
			gui.SelectedTab.SelectedCategory == addon.Data.SelectedZoneCategory then

			if addSeparator then
				goTo:AddSeparator();
				addSeparator = nil;
			end
			goTo:AddFull({Text = achievement.Category:GetPath(), IsTitle = true});
			AddGoToLine(goTo, achievement.ID, achievementsFrame);
			addSeparator = true;
		end

		rightClickMenu:Add(goTo); -- Add Go to menu to the right click menu
	end
end

local function AddClearFocusFocus(menu, achievement)
	if achievement.Focused then
		menu:AddFull({Text = addon.L["Clear focus"], Func = function()
			addon.ClearFocusAchievement(achievement);
			rightClickMenu:Close();
		end});
	else
		menu:AddFull({Text = addon.L["Focus"], Func = function()
			addon.FocusAchievement(achievement);
			rightClickMenu:Close();
		end});
	end
end

local function AddIncludeExclude(menu, achievement)
	if achievement.Excluded then
		menu:AddFull({Text = addon.L["Include"], Func = function()
			addon.IncludeAchievement(achievement);
			rightClickMenu:Close();
		end});
	else
		menu:AddFull({Text = addon.L["Exclude"], Func = function()
			addon.ExcludeAchievement(achievement);
			rightClickMenu:Close();
		end});
	end
end

local function AddMore(achievement)
	local more = addon.Objects.MenuItem:New({Text = addon.L["More"]});

	AddClearFocusFocus(more, achievement);
	AddIncludeExclude(more, achievement);

	rightClickMenu:Add(more);
end

function OnClickRightButton(self, anchor, offsetX, offsetY, achievementsFrame)
	diagnostics.Trace("OnClickRightButton");

	local achievement = self.Achievement;

	-- Reset menu
	rightClickMenu:Clear();

	-- Always add header
	local _, name = addon.GetAchievementInfo(achievement.ID);
	rightClickMenu:AddFull({Text = name, IsTitle = true});

	AddWowheadLink(achievement);
	AddIATLink(achievement);
	AddGoTo(achievementsFrame, achievement);

	-- Extra menu defined at the achievement self including pet battles
	if addon.Data.RCMenuExtras[achievement.ID] ~= nil then
		rightClickMenu:Add(addon.Data.RCMenuExtras[achievement.ID]);
	end
	
	AddMore(achievement);

	rightClickMenu:Open(anchor, offsetX, offsetY);
end