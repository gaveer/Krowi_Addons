local raids, raid;

raids = Xpack_Classic:AddCategory(KrowiAF.AchievementSubsection.Raids);
raids:AddAchievementIDs({1285}); -- Overarching achievements

-- 1.1
    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(741)); -- Molten Core
    raid:AddAchievementIDs({686}); -- Defeat the bosses in X

    raid = raids:AddChild(KrowiAF.AchievementCategory:New(EJ_GetInstanceInfo(760) .. " (" .. GetCategoryInfo(15234) .. ")")); -- Onyxia's Lair - revamped in Wrath of the Lish King 3.2
    raid:AddAchievementFOSIDs({684}); -- Defeat the bosses in X

-- 1.6
    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(742)); -- Blackwing Lair
    raid:AddAchievementIDs({685}); -- Defeat the bosses in X

-- 1.7
    raid = raids:AddChild(KrowiAF.AchievementCategory:New(EJ_GetInstanceInfo(76) .. " (" .. GetCategoryInfo(15234) .. ")")); -- Zul'Gurub - revamped in Cataclysm 4.1
    raid:AddAchievementFOSIDs({560, 688}); -- Defeat the bosses in X (Unobtainable)
    raid:AddAchievementFOSIDs({880, 881}); -- Mounts (Unobtainable)

-- 1.9
    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(743)); -- Ruins of Ahn'Qiraj
    raid:AddAchievementIDs({689}); -- Defeat the bosses in X

    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(744)); -- Temple of Ahn'Qiraj
    raid:AddAchievementIDs({687}); -- Defeat the bosses in X
    raid:AddAchievement(424, true); -- Mounts (Obtainable)