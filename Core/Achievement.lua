Achievement = {};
Achievement.__index = Achievement;
function Achievement:New(id, type, obtainable)
    local self = {};
    setmetatable(self, Achievement);
    self.ID = id or 0;
    self.Type = type or AchievementType.Default;
    if obtainable == nil then
        self.Obtainable = true;
    else
        self.Obtainable = obtainable;
    end
    return self;
end