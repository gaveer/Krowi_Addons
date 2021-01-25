-- [[ Namespaces ]] --
local _, addon = ...;
addon.Objects = {};
local objects = addon.Objects;

-- [[ KrowiRightClickMenuItem ]] --
objects.RightClickMenuItem = LibStub("KrowiRightClickMenuItem-1.0");
local rightClickMenuItem = objects.RightClickMenuItem;

function rightClickMenuItem:AddChildCritExtLinkFull(achievementID, criteriaNum, externalLink)
    local criteriaString = GetAchievementCriteriaInfo(achievementID, criteriaNum)
    return self:AddChildExtLinkFull(criteriaString, externalLink);
end