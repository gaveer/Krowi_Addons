-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local objects = addon.Objects;
objects.Achievement = {};
local achievement = objects.Achievement;

-- [[ Constructors ]] --
achievement.__index = achievement;
function achievement:New(id, --[[category,]] faction, covenant, obtainable, hasWowheadLink) -- Creates a new achievement
    local self = {};
    setmetatable(self, achievement);

    self.ID = id or 0;
    -- self.Category = category;
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

function achievement:GetCategory() -- Gets the achievement's category, used when merging categories is enabled
    diagnostics.Trace("achievement:GetCategory");

    for _, category in next, addon.Categories do
        if category.Achievements ~= nil then
            for _, ach in next, category.Achievements do
                if ach.ID == self.ID then
                    diagnostics.Debug(category.Name);
                    return category;
                end
            end
        end
    end

    error("The achievement with ID " .. self.ID .. " has no category."); -- Should in theory never happen, means there is a problem with the database
end