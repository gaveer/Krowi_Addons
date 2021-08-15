-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local objects = addon.Objects;
objects.Event = {};
local event = objects.Event;

-- [[ Constructors ]] --
event.__index = event;
function event:New(id, icon, title, mapID, totalDuration) -- Creates a new event
    local self = {};
    setmetatable(self, event);

    self.ID = id or 0;
    self.Icon = icon or 0;
    self.Title = title;
    self.MapID = mapID; -- Can be nil
    self.TotalDuration = totalDuration; -- Can be nil

    return self;
end

function event:AddAchievement(achievement) -- Adds an achievement to the achievement category
    if self.Achievements == nil then
        self.Achievements = {}; -- By creating the achievements table here we reduce memory usage because not every category has achievements
    end
    tinsert(self.Achievements, achievement);
    return achievement;
end