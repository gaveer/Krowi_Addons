local _, addon = ...;

Xpack_Cata = KrowiAF.AchievementCategory:New(GetCategoryInfo(15072)); -- Cataclysm
Xpack_Cata:AddAchievementTest(5506,nil,nil,false); -- Overarching achievements
tinsert(addon.Data, Xpack_Cata);