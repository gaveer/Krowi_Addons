TreeObjectWithAchievements = setmetatable({}, {__index = TreeObject});
TreeObjectWithAchievements.__index = TreeObjectWithAchievements;
function TreeObjectWithAchievements:New(name)
    local self = setmetatable(TreeObject:New(name), TreeObjectWithAchievements);
    self.Achievements = {};
    return self;
end
function TreeObjectWithAchievements:AddAchievementIDs(achievementIDs)
    for k, id in pairs(achievementIDs) do
        table.insert(self.Achievements, Achievement:New(id));
    end
end
function TreeObjectWithAchievements:AddAchievements(achievements)
    for k, achievement in pairs(achievements) do
        table.insert(self.Achievements, achievement);
    end
end
function TreeObjectWithAchievements:AddAchievement(id, type, obtainable)
    table.insert(self.Achievements, Achievement:New(id, type, obtainable));
end