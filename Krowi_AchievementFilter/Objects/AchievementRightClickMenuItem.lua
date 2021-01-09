local _, addon = ...; -- Global addon namespace
local objects = addon.Objects; -- Local objects namespace
objects.AchievementRightClickMenuItem = {}; -- Global Achievement Right Click Menu Item class
local achRCMenItem = objects.AchievementRightClickMenuItem; -- Local Achievement Right Click Menu Item class

achRCMenItem.__index = achRCMenItem; -- Used to support OOP like code

-- Create a new external link
function achRCMenItem:New(name, func, isTitle)
    local self = {};
    setmetatable(self, achRCMenItem);
    self.Name = name;
    self.Func = func;
    self.IsTitle = isTitle;
    return self;
end

function achRCMenItem:AddChild(achievementRightClickMenuItem)
    if self.Children == nil then
        self.Children = {};
    end
    tinsert(self.Children, achievementRightClickMenuItem);
    return achievementRightClickMenuItem;
end

function achRCMenItem:AddChildFull(name, func)
    return self:AddChild(achRCMenItem:New(name, func));
end

-- [[ Specific calls that are used a lot to simplify other code ]] --

function achRCMenItem:NewExtLink(name, externalLink)
    return achRCMenItem:New(name, function() addon.GUI.ShowExternalLinkPopupDialog(externalLink); end);
end

function achRCMenItem:AddChildExtLinkFull(name, externalLink)
    return self:AddChild(achRCMenItem:New(name, function() addon.GUI.ShowExternalLinkPopupDialog(externalLink); end));
end

function achRCMenItem:AddChildAchCritInfoExtLinkFull(achievementID, criteriaID, externalLink)
    return self:AddChildExtLinkFull(GetAchievementCriteriaInfo(achievementID, criteriaID), externalLink);
end