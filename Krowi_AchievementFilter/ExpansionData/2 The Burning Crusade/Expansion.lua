local _, addon = ...;

Xpack_TBC = KrowiAF.AchievementCategory:New(GetCategoryInfo(14865)); -- The Burning Crusade
-- Xpack_TBC:AddAchievementIDs({}); -- Overarching achievements
tinsert(addon.Data, Xpack_TBC);