-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local objects = addon.Objects;
objects.AchievementCategory = {};
local category = objects.AchievementCategory; -- Locally we can use just category

-- [[ Constructors ]] --
category.__index = category;
function category:New(name, mapIDs, ignoreParentMapIDs, canMergeChildren) -- Creates a new achievement category
    local self = {};
    setmetatable(self, category);

    self.Name = name or "Unknown";
    self.MapIDs = mapIDs or {};
    self.IgnoreParentMapIDs = ignoreParentMapIDs;
    self.CanMergeChildren = canMergeChildren;
    self.Level = 0;
    self.NotHidden = true;

    return self;
end

-- [[ Methods ]] --
function category:AddCategory(cat) -- Adds a child achievement category to the achievement category
    if self.Children == nil then
        self.Children = {}; -- By creating the children table here we reduce memory usage because not every category has children
    end
    tinsert(self.Children, cat);
    cat.Parent = self;
    cat.Level = self.Level + 1;
    cat.NotHidden = nil; -- Has parent so initially we are hidden
    return cat;
end

-- local function RemoveCategory(self, cat)
--     for i, cat2 in next, self.Children do
--         if cat.Name == cat2.Name then
--             tremove(self.Children, i);
--             return;
--         end
--     end
-- end

-- function category:RemoveCategory(cat)
--     RemoveCategory(self, cat);
--     if #self.Children == 0 then
--         self.Children = nil;
--     end
-- end

function category:MergeAchievement(achievement)
    if self.MergedAchievements == nil then
        self.MergedAchievements = {}; -- By creating the achievements table here we reduce memory usage because not every category has achievements
    end
    tinsert(self.MergedAchievements, achievement);
    return achievement;
end

function category:UnMergeAchievements()
    self.MergedAchievements = nil;
end

function category:AddAchievement(achievement) -- Adds an achievement to the achievement category
    if self.Achievements == nil then
        self.Achievements = {}; -- By creating the achievements table here we reduce memory usage because not every category has achievements
    end
    achievement.Category = self;
    tinsert(self.Achievements, achievement);
    return achievement;
end

function category:GetTree()
    diagnostics.Trace("category:GetTree");

	local categories = {};
    tinsert(categories, 1, self);

	local parent = self.Parent;
	while parent ~= nil do
		tinsert(categories, 1, parent);
		parent = parent.Parent;
    end

    return categories;
end