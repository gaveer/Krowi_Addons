TreeObjectWithAchievements = setmetatable({}, {__index = TreeObject});
TreeObjectWithAchievements.__index = TreeObjectWithAchievements;
function TreeObjectWithAchievements:New(name)
    local self = setmetatable(TreeObject:New(name), TreeObjectWithAchievements);
    self.Achievements = {};
    return self;
end
function TreeObjectWithAchievements:AddAchievements(achievements)
    for k, achievement in pairs(achievements) do
        table.insert(self.Achievements, achievement);
    end
end