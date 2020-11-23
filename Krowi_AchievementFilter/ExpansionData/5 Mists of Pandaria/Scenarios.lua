local scenarios, scenario;

scenarios = Xpack_MoP:AddChild(KrowiAF.AchievementCategory:New(GetCategoryInfo(15302)));
scenarios:AddAchievementIDs({}); -- Overarching achievements

-- 5.0
    scenario = scenarios:AddChild(KrowiAF.AchievementCategory:NewEJ()); -- 
    scenario:AddAchievementIDs({}); -- No Glory available
    scenario:AddAchievementIDs({}); -- Defeat the bosses in X