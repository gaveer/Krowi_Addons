local _, addon = ...;

Xpack_WoD = KrowiAF.AchievementCategory:New(GetCategoryInfo(15233)); -- Warlords of Draenor
-- Xpack_WoD:AddAchievementIDs({}); -- Overarching achievements
tinsert(addon.Data, Xpack_WoD);