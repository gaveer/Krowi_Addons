-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local objects = addon.Objects;
objects.AchievementCategory = {};
local category = objects.AchievementCategory; -- Locally we can use just category

-- [[ Constructors ]] --
category.__index = category;
function category:New(name, canMerge) -- Creates a new achievement category
    local self = {};
    setmetatable(self, category);

    self.Name = name or "Unknown";
    self.CanMerge = canMerge;
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
    if not self.IsTab then
        cat.NotHidden = nil; -- Has parent so initially we are hidden
    end
    return cat;
end

function category:RemoveCategory(cat)
    if self.Children == nil then
        return;
    end
    for i, _ in next, self.Children do
        if self.Children[i].Name == cat.Name and self.Children[i].Level == cat.Level then
            tremove(self.Children, i);
            return;
        end
    end
end

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
    achievement:AddCategory(self);
    tinsert(self.Achievements, achievement);
    return achievement;
end

function category:AddFocusedAchievement(achievement)
    self:AddAchievement(achievement);
    achievement.FocusedCategory = self;
    return achievement;
end

function category:AddExcludedAchievement(achievement)
    self:AddAchievement(achievement);
    achievement.ExcludedCategory = self;
    return achievement;
end

function category:RemoveAchievement(achievement) -- Removes an achievement from the achievement category
    if self.Achievements == nil then
        return;
    end
    for i, _ in next, self.Achievements do
        if self.Achievements[i].ID == achievement.ID then
            tremove(self.Achievements, i);
            return;
        end
    end
end

function category:RemoveFocusedAchievement(achievement)
    self:RemoveAchievement(achievement);
    achievement.FocusedCategory = nil;
end

function category:RemoveExcludedAchievement(achievement)
    self:RemoveAchievement(achievement);
    achievement.ExcludedCategory = nil;
end

function category:GetTree()
    -- diagnostics.Trace("category:GetTree");

	local categories = {};
    tinsert(categories, 1, self);

	local parent = self.Parent;
	while parent ~= nil do
		tinsert(categories, 1, parent);
		parent = parent.Parent;
    end

    return categories;
end

function category:GetPath()
    local categoriesTree = self:GetTree();
    local path = categoriesTree[1].Name;
    for j = 2, #categoriesTree do
        path = path .. " > " .. categoriesTree[j].Name;
    end

    return path;
end