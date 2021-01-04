local _, addon = ...;

Xpack_WotLK = KrowiAF.AchievementCategory:New(GetCategoryInfo(14866)); -- Wrath of the Lich King
-- Xpack_WotLK:AddAchievementIDs({}); -- Overarching achievements
tinsert(addon.Data, Xpack_WotLK);