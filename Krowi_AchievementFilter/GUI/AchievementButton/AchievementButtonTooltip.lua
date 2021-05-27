-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local achievementButton = addon.GUI.AchievementButton;
achievementButton.Tooltip = {};
local tooltip = achievementButton.Tooltip;

local AddBlizzardDefault, AddPartOfAChain, AddRequiredFor, AddObjectives;
function tooltip.ShowTooltip(button)
	diagnostics.Trace("ShowTooltip");

	GameTooltip:SetOwner(button, "ANCHOR_NONE");
	GameTooltip:SetPoint("TOPLEFT", button, "TOPRIGHT");

	AddBlizzardDefault(button);
	AddPartOfAChain(button);
	AddRequiredFor(button);
	AddObjectives(button);

	-- AchievementFrameAchievements_CheckGuildMembersTooltip(self.shield); -- Guild can be ignored for now

	GameTooltip:Show();
end

local function AddAchievementLine(currentAchievement, otherAchievementID)
	local _, name, _, completed, _, _, _, _, _, _, _, _, wasEarnedByMe = addon.GetAchievementInfo(otherAchievementID);
	local icon, currentCharacterIcon, color = nil, "", nil;

	if completed then
		icon = "|T136814:0|t";
		color = otherAchievementID == currentAchievement.ID and addon.LightGreenRGB or addon.GreenRGB;
	elseif currentAchievement.NotObtainable then
		icon = "|T136813:0|t";
		color = otherAchievementID == currentAchievement.ID and addon.LightRedRGB or addon.RedRGB;
	else
		icon = "|T136815:0|t";
		color = otherAchievementID == currentAchievement.ID and addon.LightGreyRGB or addon.GreyRGB;
	end

	if addon.Options.db.Tooltip.Achievements.ShowCurrentCharacterIcons then
		if wasEarnedByMe then
			currentCharacterIcon = "|T136814:0|t";
		elseif currentAchievement.NotObtainable then
			currentCharacterIcon = "|T136813:0|t";
		else
			currentCharacterIcon = "|T136815:0|t";
		end
		currentCharacterIcon = currentCharacterIcon .. AF_TAB;
	end

	GameTooltip:AddLine(icon .. AF_TAB .. currentCharacterIcon .. name, color.R, color.G, color.B); -- Achievement name
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
	diagnostics.Trace("AddPartOfAChain");

	if not self.Achievement or not self.Achievement.ID or (not GetNextAchievement(self.Achievement.ID) and not GetPreviousAchievement(self.Achievement.ID)) or not addon.Options.db.Tooltip.Achievements.ShowPartOfAChain then
		return;
	end

	local id;
	local tmpID = self.Achievement.ID;
	while tmpID do -- Find first achievement in a chain
		id = tmpID;
		tmpID = GetPreviousAchievement(id);
	end

	if (GameTooltip:NumLines() > 0) then
		GameTooltip:AddLine(" "); -- Empty line to seperate it from the previous block
	end
	GameTooltip:AddLine(addon.L["Part of a chain"]); -- Header

	self.Achievement:ClearPartOfAChainIDs(); -- Make sure it's empty before adding new stuff
	while id do
		AddAchievementLine(self.Achievement, id);
		self.Achievement:AddPartOfAChainID(id);
		id = GetNextAchievement(id);
	end
end

local criteriaCache = {};
local criteriaCacheIsEmpty = true;
function AddRequiredFor(self)
	diagnostics.Trace("AddRequiredFor");

	if not addon.Options.db.Tooltip.Achievements.ShowRequiredFor then
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

		self.Achievement:ClearRequiredForIDs(); -- Make sure it's empty before adding new stuff
		for _, id in next, ids do
			AddAchievementLine(self.Achievement, id);
			self.Achievement:AddRequiredForID(id);
		end
	end
end

local function GetCriteriaTextAndColor(achievementID, criteriaIndex)
	local criteriaString, _, completed, quantity, reqQuantity, _, _, _, _, _, _ = GetAchievementCriteriaInfo(achievementID, criteriaIndex);
	local icon, color;
	if completed then
		icon = "|T136814:0|t";
		color = addon.GreenRGB;
	else
		icon = "|T136815:0|t";
		color = addon.GreyRGB;
	end
	local text = criteriaString;
	if not completed then
		text = text .. " (" .. tostring(quantity) .. "/" .. tostring(reqQuantity) .. ")";
	end
	text = icon .. AF_TAB .. text;

	return text, color;
end

local function AddCriteriaLine(achievementID, criteriaIndex)
	local text, color = GetCriteriaTextAndColor(achievementID, criteriaIndex);
	GameTooltip:AddLine(text, color.R, color.G, color.B);
end

local function AddDoubleCriteriaLine(achievementID, criteriaIndex1, criteriaIndex2)
	local texts = {"", ""};
	local colors = {addon.WhiteRGB, addon.WhiteRGB};
	for i, criteriaIndex in next, {criteriaIndex1, criteriaIndex2} do
		texts[i], colors[i] = GetCriteriaTextAndColor(achievementID, criteriaIndex);
	end
	GameTooltip:AddDoubleLine(texts[1], texts[2], colors[1].R, colors[1].G, colors[1].B, colors[2].R, colors[2].G, colors[2].B);
end

function AddObjectives(self)
	diagnostics.Trace("AddObjectives");

	if not addon.Options.db.Tooltip.Achievements.ObjectivesProgress.Show or self.Achievement.NotObtainable then
		return;
	end

	if self.completed and not addon.Options.db.Tooltip.Achievements.ObjectivesProgress.ShowWhenAchievementCompleted then
		return;
	end

	local id = self.Achievement.ID;
	local numCriteria = GetAchievementNumCriteria(id);
	if numCriteria > 0 then
		if (GameTooltip:NumLines() > 0) then
			GameTooltip:AddLine(" "); -- Empty line to seperate it from the previous block
		end
		GameTooltip:AddLine(addon.L["Objectives progress"]); -- Header

		if numCriteria < addon.Options.db.Tooltip.Achievements.ObjectivesProgress.SecondColumnThreshold then
			for i = 1, numCriteria do
				AddCriteriaLine(id, i);
			end
		else
			for i = 1, numCriteria, 2 do
				AddDoubleCriteriaLine(id, i, i + 1 <= numCriteria and i + 1 or nil);
			end
		end
	end
end