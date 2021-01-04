local _, addon = ...;

Xpack_MoP = KrowiAF.AchievementCategory:New(GetCategoryInfo(15164)); -- Mists of Pandaria
-- Xpack_MoP:AddAchievementIDs({}); -- Overarching achievements
tinsert(addon.Data, Xpack_MoP);