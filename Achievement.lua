AchievementFilter.Achievement = {};
AchievementFilter.Achievement.__index = AchievementFilter.Achievement;
function AchievementFilter.Achievement:New(id, type, obtainable)
    local self = {};
    setmetatable(self, AchievementFilter.Achievement);
    self.ID = id or 0;
    self.Type = type or AchievementFilter.AchievementType.Default;
    if obtainable == nil then
        self.Obtainable = true;
    else
        self.Obtainable = obtainable;
    end
    return self;
end