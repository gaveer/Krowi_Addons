local _, addon = ...; -- Global addon namespace
local objects = addon.Objects; -- Local objects namespace
objects.Achievement = {}; -- Global achievement object
local achievement = objects.Achievement; -- Local achievement object

achievement.__index = achievement; -- Used to support OOP like code

function achievement:New(id, obtainable, hasWowheadLink, hasIATLink) -- Create a new achievement
    local self = {};
    setmetatable(self, achievement);
    self.ID = id or 0;
    if obtainable == nil then -- self.Obtainable = obtainable or true; would make it always true
        self.Obtainable = true;
    else
        self.Obtainable = obtainable;
    end
    if hasWowheadLink == nil then -- self.HasWowheadLink = hasWowheadLink or true; would make it always true
        self.HasWowheadLink = true;
    else
        self.HasWowheadLink = hasWowheadLink;
    end
    self.HasIATLink = hasIATLink;
    return self;
end

function achievement:AddXuFuLink(xuFuLink)
    self.XuFuLink = xuFuLink;
end