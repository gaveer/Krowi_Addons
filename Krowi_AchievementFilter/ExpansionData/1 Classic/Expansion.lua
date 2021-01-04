local _, addon = ...;

Xpack_Classic = KrowiAF.AchievementCategory:New(GetCategoryInfo(14864)); -- Classic
-- Xpack_Classic:AddAchievementIDs({}); -- Overarching achievements
tinsert(addon.Data, Xpack_Classic);