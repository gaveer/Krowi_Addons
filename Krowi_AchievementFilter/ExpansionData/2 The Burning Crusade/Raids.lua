local raids, raid;

raids = Xpack_TBC:AddChild(KrowiAF.AchievementCategory:NewRaids());
raids:AddAchievementIDs({1286}); -- Overarching achievements

-- 2.0
    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(745)); -- Karazhan
    raid:AddAchievementIDs({690}); -- Defeat the bosses in X
    raid:AddAchievement(882, KrowiAF.AchievementType.FoS, true); -- Mounts (Obtainable)

    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(746)); -- Gruul's Lair
    raid:AddAchievementIDs({692}); -- Defeat the bosses in X

    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(747)); -- Magtheridon's Lair
    raid:AddAchievementIDs({693}); -- Defeat the bosses in X

    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(748)); -- Serpentshrine Cavern
    raid:AddAchievementIDs({694}); -- Defeat the bosses in X

    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(749)); -- The Eye
    raid:AddAchievementIDs({696}); -- Defeat the bosses in X
    raid:AddAchievement(885, KrowiAF.AchievementType.FoS, true); -- Mounts (Obtainable)

    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(750)); -- The Battle for Mount Hyjal
    raid:AddAchievementIDs({695}); -- Defeat the bosses in X

-- 2.1
    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(751)); -- Black Temple
    raid:AddAchievementIDs({697}); -- Defeat the bosses in X

-- 2.3
    raid = raids:AddChild(KrowiAF.AchievementCategory:New(EJ_GetInstanceInfo(77) .. " (" .. GetCategoryInfo(15234) .. ")")); -- Zul'Aman -  - revamped in Cataclysm 4.1
    raid:AddAchievementFOSIDs({691}); -- Defeat the bosses in X
    raid:AddAchievementFOSIDs({430}); -- Mounts (Unobtainable)

-- 2.4
    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(752)); -- Sunwell Plateau
    raid:AddAchievementIDs({698}); -- Defeat the bosses in X