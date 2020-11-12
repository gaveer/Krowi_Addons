KrowiAF.Achievement = {};
KrowiAF.Achievement.__index = KrowiAF.Achievement;
function KrowiAF.Achievement:New(id, type, obtainable)
    local self = {};
    setmetatable(self, KrowiAF.Achievement);
    self.ID = id or 0;
    self.Type = type or KrowiAF.AchievementType.Default;
    if obtainable == nil then
        self.Obtainable = true;
    else
        self.Obtainable = obtainable;
    end
    return self;
end