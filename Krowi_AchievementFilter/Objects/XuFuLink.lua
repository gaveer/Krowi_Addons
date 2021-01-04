local _, addon = ...; -- Global addon namespace
local objects = addon.Objects; -- Local objects namespace
objects.XuFuLink = {}; -- Global XuFu Link object
local xuFuLink = objects.XuFuLink; -- Local XuFu Link object

xuFuLink.__index = xuFuLink; -- Used to support OOP like code

-- Create a new external link
function xuFuLink:New(name, url)
    local self = {};
    setmetatable(self, xuFuLink);
    self.Name = name;
    self.Url = url;
    return self;
end

function xuFuLink:AddCriteria(xuFuLinkCriteria)
    if self.Criteria == nil then
        self.Criteria = {};
    end
    tinsert(self.Criteria, xuFuLinkCriteria);
    return xuFuLinkCriteria;
end

function xuFuLink:AddCriteriaFull(achievementID, criteriaID, linkBase, linkID)
    return self:AddCriteria(addon.Objects.XuFuLink:New(GetAchievementCriteriaInfo(achievementID, criteriaID), linkBase .. linkID));
end