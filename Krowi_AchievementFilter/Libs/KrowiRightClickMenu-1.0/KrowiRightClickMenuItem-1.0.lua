local lib = LibStub:NewLibrary("KrowiRightClickMenuItem-1.0", 1);

if not lib then
	return;
end

local popupDialog = LibStub("KrowiPopopDialog-1.0");

-- [[ Constructors ]] --
lib.__index = lib;
function lib:New(name, func, isTitle)
    local self = {};
    setmetatable(self, lib);

    self.Name = name;
    self.Func = func;
    self.IsTitle = isTitle;

    return self;
end

function lib:NewExtLink(name, externalLink)
    return lib:New(name, function() popupDialog.ShowExternalLink(externalLink); end);
end

-- [[ Other ]] --
function lib:AddChild(item)
    if self.Children == nil then
        self.Children = {}; -- By creating the children table here we reduce memory usage because not every category has children
    end

    tinsert(self.Children, item);

    return item;
end

function lib:AddChildFull(name, func, isTitle)
    return self:AddChild(lib:New(name, func, isTitle));
end

function lib:AddChildExtLinkFull(name, externalLink)
    return self:AddChild(lib:NewExtLink(name, externalLink));
end

-- function lib:AddChildCritExtLinkFull(achievementID, criteriaNum, externalLink)
--     local criteriaString = GetAchievementCriteriaInfo(achievementID, criteriaNum)
--     return self:AddChildExtLinkFull(criteriaString, externalLink);
-- end