-- [[ Namespaces ]] --
local _, addon = ...;
addon.Objects = {};
local objects = addon.Objects;

-- [[ KrowiMenuItem ]] --

objects.MenuItem = LibStub("KrowiMenuItem-1.0");
local menuItem = objects.MenuItem;

function menuItem:AddChildCritExtLinkFull(achievementID, criteriaNum, externalLink)
    local criteriaString = GetAchievementCriteriaInfo(achievementID, criteriaNum)
    return self:AddChildExtLinkFull(criteriaString, externalLink);
end