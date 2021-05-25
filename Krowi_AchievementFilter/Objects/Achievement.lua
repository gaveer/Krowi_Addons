-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local objects = addon.Objects;
objects.Achievement = {};
local achievement = objects.Achievement;

-- [[ Constructors ]] --
achievement.__index = achievement;
function achievement:New(id, faction, covenant, obtainable, hasWowheadLink) -- Creates a new achievement
    local self = {};
    setmetatable(self, achievement);

    self.ID = id or 0;
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

    for _, category in next, addon.Categories do
        if category ~= addon.CurrentZoneCategory then -- Issue #43: Fix
            if category.MergedAchievements ~= nil then
                for _, ach in next, category.MergedAchievements do
                    if ach.ID == self.ID then
                        -- diagnostics.Debug(category.Name);
                        return category;
                    end
                end
            end
            if category.Achievements ~= nil then -- exclude current zone here but in a proper way
                for _, ach in next, category.Achievements do
                    if ach.ID == self.ID then
                        -- diagnostics.Debug(category.Name);
                        return category;
                    end
                end
            end
        end
    end

    error("The achievement with ID " .. self.ID .. " has no category."); -- Should in theory never happen, means there is a problem with the database
end

function achievement:AddRequiredForID(id)
    if self.RequiredForIDs == nil then
        self.RequiredForIDs = {}; -- By creating the required for IDs table here we reduce memory usage because not every achievement has required for IDs
    end
    tinsert(self.RequiredForIDs, id);
end

function achievement:ClearRequiredForIDs()
    self.RequiredForIDs = nil;
end

function achievement:GetRequiredForIDs()
    return self.RequiredForIDs;
end

function achievement:AddPartOfAChainID(id)
    if self.PartOfAChainIDs == nil then
        self.PartOfAChainIDs = {}; -- By creating the part of a chain IDs table here we reduce memory usage because not every achievement has part of a chain IDs
    end
    tinsert(self.PartOfAChainIDs, id);
end

function achievement:ClearPartOfAChainIDs()
    self.PartOfAChainIDs = nil;
end

function achievement:GetPartOfAChainIDs()
    return self.PartOfAChainIDs;
end