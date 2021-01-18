local _, addon = ...; -- Global addon namespace
local objects = addon.Objects; -- Local objects namespace
objects.Achievement = {}; -- Global achievement class
local achievement = objects.Achievement; -- Local achievement class

achievement.__index = achievement; -- Used to support OOP like code

function achievement:New(id, obtainable, hasWowheadLink, hasIATLink) -- Create a new achievement
    local self = {};
    setmetatable(self, achievement);
    self.ID = id or 0;
    if obtainable == false then -- We only want this variable present if the achievement is not obtainable anymore to reduce memory usage
        self.NotObtainable = true;
    end
    if hasWowheadLink == false then -- We only want this variable present if there is no Wowhead link to reduce memory usage
        self.HasNoWowheadLink = true;
    end
    self.HasIATLink = hasIATLink;
    return self;
end

function achievement:AddRCMenExtra(rcMenExtra)
    self.RCMenExtra = rcMenExtra;
end

function achievement:GetCategory()
    addon.Diagnostics.Trace("achievement:GetCategory");

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