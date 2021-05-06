-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.AchievementButton = {};
local achievementButton = gui.AchievementButton;

local OnEnter, OnLeave, ShowTooltip;

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
		button:HookScript("OnEnter", function(self)
			OnEnter(self, achievementsFrame);
		end);
		button:HookScript("OnLeave", function(self)
			OnLeave(self, achievementsFrame);
		end);
		button.shield:EnableMouse(false);
		button.ShowTooltip = ShowTooltip;
	end
end

-- [[ OnEnter ]] --
local AddBlizzardDefault, AddPartOfAChain, AddRequiredFor;
function OnEnter(self, achievementsFrame)
	diagnostics.Trace("OnEnter");

	achievementsFrame.SetHighlightedButton(self);
	ShowTooltip(self);
end

function ShowTooltip(button)
	diagnostics.Trace("ShowTooltip");

	GameTooltip:SetOwner(button, "ANCHOR_NONE");
	GameTooltip:SetPoint("TOPLEFT", button, "TOPRIGHT");

	AddBlizzardDefault(button);
	AddPartOfAChain(button);
	AddRequiredFor(button);

	-- testing
	-- local crits = GetAchievementNumCriteria(self.Achievement.ID);
	-- for i = 1, crits do
	-- 	diagnostics.DebugTable({GetAchievementCriteriaInfo(self.Achievement.ID, i)});
	-- end
	-- end testing

	-- AchievementFrameAchievements_CheckGuildMembersTooltip(self.shield); -- Guild can be ignored for now

	GameTooltip:Show();
end

local function AddAchievementLine(self, id)
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
	if addon.Options.db.Tooltip.ShowCurrentCharacterIcons then
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
		AddAchievementLine(self, id);
		self.Achievement:AddPartOfAChainID(id);
		id = GetNextAchievement(id);
	end
end

local criteriaCache = {};
local criteriaCacheIsEmpty = true;
function AddRequiredFor(self)
	if not addon.Options.db.Tooltip.ShowRequiredFor then
		return;
	end

	if criteriaCacheIsEmpty then -- Build cache the first time
		local nils, i = 0, 1;
		while nils < 500 do -- Biggest gap is 209 in 9.0.5 as of 2021-05-03
			local id = addon.GetAchievementInfo(i);
			if id then
				local numCriteria = GetAchievementNumCriteria(id);
				if numCriteria > 0 then
					for j = 1, numCriteria do
						local _, criteriaType, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(id, j);
						if criteriaType == 8 then
							tinsert(criteriaCache, {AchievementID = assetID, RequiredForID = id});
						end
					end
				end
				nils = 0;
			else
				nils = nils + 1;
			end
			i = i + 1;
		end
		criteriaCacheIsEmpty = nil;
	end

	local ids = {};
	for _, criteria in next, criteriaCache do
		if criteria.AchievementID == self.Achievement.ID then
			-- local id = addon.GetAchievementInfo(criteria.RequiredForID);
			tinsert(ids, criteria.RequiredForID);
		end
	end

	if #ids > 0 then
		if (GameTooltip:NumLines() > 0) then
			GameTooltip:AddLine(" "); -- Empty line to seperate it from the previous block
		end
		GameTooltip:AddLine(addon.L["Required for"]); -- Header
		for _, id in next, ids do
			AddAchievementLine(self, id);
			self.Achievement:AddRequiredForID(id);
		end
	end
end

-- [[ OnLeave ]] --
function OnLeave(self, achievementsFrame)
	diagnostics.Trace("OnLeave");

	achievementsFrame.ClearHighlightedButton();

	AchievementMeta_OnLeave(self);

	self.Achievement:ClearPartOfAChainIDs();
	self.Achievement:ClearRequiredForIDs();
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