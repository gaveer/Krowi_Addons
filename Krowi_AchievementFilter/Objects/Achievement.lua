-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local objects = addon.Objects;
objects.Achievement = {};
local achievement = objects.Achievement;

-- [[ Constructors ]] --
achievement.__index = achievement;
function achievement:New(id, points, faction, covenant, obtainable, hasWowheadLink) -- Creates a new achievement
    local self = {};
    setmetatable(self, achievement);

    self.ID = id or 0;
    self.Points = points or 0;
    self.Faction = faction;
    self.Covenant = covenant;
    if obtainable == false then -- We only want to set it if it's not obtainable, otherwise nil
        self.NotObtainable = true; -- By inverting this we reduce memory usage because 99% is obtainable
    end
    if hasWowheadLink == false then -- We only want to set it if it has no Wowhead link, otherwise nil
        self.HasNoWowheadLink = true; -- By inverting this we reduce memory usage because 99% has a Wowhead link
    end

    return self;
end

function achievement:GetMergedCategory() -- Gets the achievement's category, used when merging categories is enabled
    diagnostics.Trace("achievement:GetCategory");

    local categories = self.Category:GetTree(); -- Issue #43: Fix
    for _, category in next, categories do
        if category.MergedAchievements ~= nil then
            for _, ach in next, category.MergedAchievements do
                if ach.ID == self.ID then
                    -- diagnostics.Debug(category.Name);
                    return category;
                end
            end
        end
        if category.Achievements ~= nil then
            for _, ach in next, category.Achievements do
                if ach.ID == self.ID then
                    -- diagnostics.Debug(category.Name);
                    return category;
                end
            end
        end
    end

    error("The achievement with ID " .. self.ID .. " has no category."); -- Should in theory never happen, means there is a problem with the database
end

local criteriaCache;
function achievement:GetRequiredForIDs()
    if criteriaCache == nil then -- Build cache the first time
        criteriaCache = {};
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
	end

    if self.RequiredForIDs then -- Return cached list
        return self.RequiredForIDs;
    end

    local ids = {};
	for _, criteria in next, criteriaCache do
		if criteria.AchievementID == self.ID then
			tinsert(ids, criteria.RequiredForID);
		end
	end

    if #ids == 0 then
        return;
    end

    self.RequiredForIDs = {}; -- By creating the required for IDs table here we reduce memory usage because not every achievement has required for IDs

    for _, id in next, ids do
        tinsert(self.RequiredForIDs, id);
    end

    return self.RequiredForIDs;
end

function achievement:GetPartOfAChainIDs()
    if self.PartOfAChainIDs then -- Return cached list
        return self.PartOfAChainIDs;
    end

	if not GetNextAchievement(self.ID) and not GetPreviousAchievement(self.ID) then
		return;
	end

	local id;
	local tmpID = self.ID;
	while tmpID do -- Find first achievement in a chain
		id = tmpID;
		tmpID = GetPreviousAchievement(id);
	end

    self.PartOfAChainIDs = {}; -- By creating the part of a chain IDs table here we reduce memory usage because not every achievement has part of a chain IDs

	while id do
		tinsert(self.PartOfAChainIDs, id);
		id = GetNextAchievement(id);
	end

    return self.PartOfAChainIDs;
end