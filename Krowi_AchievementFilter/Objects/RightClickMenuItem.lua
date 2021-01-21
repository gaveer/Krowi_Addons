-- [[ Namespaces ]] --
local _, addon = ...;
local objects = addon.Objects;
objects.RightClickMenuItem = LibStub("KrowiRightClickMenuItem-1.0");
local rightClickMenuItem = objects.RightClickMenuItem;

-- -- [[ Constructors ]] --
-- rightClickMenuItem.__index = rightClickMenuItem;
-- function rightClickMenuItem:New(name, func, isTitle)
--     local self = {};
--     setmetatable(self, rightClickMenuItem);

--     self.Name = name;
--     self.Func = func;
--     self.IsTitle = isTitle;

--     return self;
-- end

-- function rightClickMenuItem:NewExtLink(name, externalLink)
--     return rightClickMenuItem:New(name, function() addon.GUI.PopupDialog.ShowExternalLink(externalLink); end);
-- end

-- -- [[ Other ]] --
-- function rightClickMenuItem:AddChild(item)
--     if self.Children == nil then
--         self.Children = {}; -- By creating the children table here we reduce memory usage because not every category has children
--     end

--     tinsert(self.Children, item);

--     return item;
-- end

-- function rightClickMenuItem:AddChildFull(name, func, isTitle)
--     return self:AddChild(rightClickMenuItem:New(name, func, isTitle));
-- end

-- function rightClickMenuItem:AddChildExtLinkFull(name, externalLink)
--     return self:AddChild(rightClickMenuItem:NewExtLink(name, externalLink));
-- end

function rightClickMenuItem:AddChildCritExtLinkFull(achievementID, criteriaNum, externalLink)
    local criteriaString = GetAchievementCriteriaInfo(achievementID, criteriaNum)
    return self:AddChildExtLinkFull(criteriaString, externalLink);
end