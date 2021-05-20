-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local achievementButton = addon.GUI.AchievementButton;
achievementButton.Tooltip = {};
local tooltip = achievementButton.Tooltip;

local AddBlizzardDefault, AddPartOfAChain, AddRequiredFor;
function tooltip.ShowTooltip(button)
	diagnostics.Trace("ShowTooltip");

	GameTooltip:SetOwner(button, "ANCHOR_NONE");
	GameTooltip:SetPoint("TOPLEFT", button, "TOPRIGHT");

	AddBlizzardDefault(button);
	AddPartOfAChain(button);
	AddRequiredFor(button);

	-- AchievementFrameAchievements_CheckGuildMembersTooltip(self.shield); -- Guild can be ignored for now

	GameTooltip:Show();
end

local function AddAchievementLine(self, id)
	local _, name, _, completed, _, _, _, _, _, _, _, _, wasEarnedByMe = addon.GetAchievementInfo(id);
	local color;
	if id == self.Achievement.ID then
		if completed then -- add self.Achievement.NotObtainable here
			color = addon.LightGreenRGB;
		elseif self.Achievement.NotObtainable then
			color = addon.LightRedRGB;
		else
			color = addon.LightGreyRGB;
		end
	elseif completed then
		color = addon.GreenRGB;
	elseif self.Achievement.NotObtainable then
		color = addon.RedRGB;
	else
		color = addon.GreyRGB;
	end
	GameTooltip:AddLine(name, color.R, color.G, color.B); -- Achievement name
	local tooltipTextureInfo;
	if addon.Options.db.Tooltip.Achievements.ShowCurrentCharacterIcons then
		if wasEarnedByMe then
			GameTooltip:AddTexture(136814); -- interface/raidframe/readycheck-ready.blp
		elseif self.Achievement.NotObtainable then
			GameTooltip:AddTexture(136813); -- interface/raidframe/readycheck-notready.blp
		else
			GameTooltip:AddTexture(136815); -- interface/raidframe/readycheck-waiting.blp
		end
		tooltipTextureInfo = {margin = { right = 24}};
	end
	if completed then
		GameTooltip:AddTexture(136814, tooltipTextureInfo); -- interface/raidframe/readycheck-ready.blp
	elseif self.Achievement.NotObtainable then
		GameTooltip:AddTexture(136813, tooltipTextureInfo); -- interface/raidframe/readycheck-notready.blp
	else
		GameTooltip:AddTexture(136815, tooltipTextureInfo); -- interface/raidframe/readycheck-waiting.blp
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
		AddAchievementLine(self, id);
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
			AddAchievementLine(self, id);
			self.Achievement:AddRequiredForID(id);
		end
	end
end