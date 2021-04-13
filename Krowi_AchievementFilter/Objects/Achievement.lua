-- [[ Namespaces ]] --
local _, addon = ...;
local objects = addon.Objects;
objects.Achievement = {};
local achievement = objects.Achievement;

-- [[ Constructors ]] --
achievement.__index = achievement;
function achievement:New(id, category, faction, covenant, obtainable, hasWowheadLink) -- Creates a new achievement
    local self = {};
    setmetatable(self, achievement);

    self.ID = id or 0;
    self.Category = category;
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