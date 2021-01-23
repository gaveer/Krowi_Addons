-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local objects = addon.Objects;
objects.Achievement = {};
local achievement = objects.Achievement;

-- [[ Constructors ]] --
achievement.__index = achievement;
function achievement:New(id, obtainable, hasWowheadLink, hasIATLink)
    local self = {};
    setmetatable(self, achievement);

    self.ID = id or 0;
    self.NotObtainable = obtainable == false; -- By inverting this we reduce memory usage because 99% is obtainable
    self.HasNoWowheadLink = hasWowheadLink == false; -- By inverting this we reduce memory usage because 99% has a Wowhead link
    self.HasIATLink = hasIATLink;

    return self;
end

-- [[ Other ]] --
function achievement:AddRCMenExtra(rcMenExtra)
    self.RCMenExtra = rcMenExtra;
end

function achievement:GetCategory()
    diagnostics.Trace("achievement:GetCategory");

    for _, category in next, addon.Categories do
        if category.Achievements ~= nil then
            for _, achievement in next, category.Achievements do
                if achievement.ID == self.ID then
                    return category;
                end
            end
        end
    end
end