AchievementFilter.AchievementCategory = {};
AchievementFilter.HighestAchievementCategoryID = 0;
AchievementFilter.AchievementCategory.__index = AchievementFilter.AchievementCategory;
function AchievementFilter.AchievementCategory:New(name)
    local self = {};
    setmetatable(self, AchievementFilter.AchievementCategory);
    self.Name = name or "Unknown";
    self.Level = 0;
    self.ID = AchievementFilter.HighestAchievementCategoryID;
    AchievementFilter.HighestAchievementCategoryID = AchievementFilter.HighestAchievementCategoryID + 1;
    self.Parent = nil;
    self.Children = {};
    self.Achievements = {};
    return self;
end
function AchievementFilter.AchievementCategory:AddChild(child)
    table.insert(self.Children, child);
    child.Parent = self;
    child.Level = self.Level + 1;
    print(child.ID);
    return child;
end
function AchievementFilter.AchievementCategory:AddAchievementIDs(achievementIDs)
    for k, id in pairs(achievementIDs) do
        table.insert(self.Achievements, AchievementFilter.Achievement:New(id));
    end
end
function AchievementFilter.AchievementCategory:AddAchievements(achievements)
    for k, achievement in pairs(achievements) do
        table.insert(self.Achievements, achievement);
    end
end
function AchievementFilter.AchievementCategory:AddAchievement(id, type, obtainable)
    table.insert(self.Achievements, AchievementFilter.Achievement:New(id, type, obtainable));
end