local dungeons, dungeon;

dungeons = Xpack_WotLK:AddSubsection(KrowiAF.AchievementSubsection.Dungeons);
dungeons:AddAchievementIDs({1288, 2136}); -- Overarching achievements

-- 3.0
    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(285)); -- Utgarde Keep
    dungeon:AddAchievementIDs({1919}); -- Glory of the Hero
    dungeon:AddAchievementIDs({477, 489}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(281)); -- The Nexus
    dungeon:AddAchievementIDs({2150, 2037, 2036}); -- Glory of the Hero
    dungeon:AddAchievementIDs({478, 490}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(272)); -- Azjol-Nerub
    dungeon:AddAchievementIDs({1296, 1297, 1860}); -- Glory of the Hero
    dungeon:AddAchievementIDs({480, 491}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(271)); -- Ahn'kahet: The Old Kingdom
    dungeon:AddAchievementIDs({2038, 2056, 1862}); -- Glory of the Hero
    dungeon:AddAchievementIDs({481, 492}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(273)); -- Drak'Tharon Keep
    dungeon:AddAchievementIDs({2151, 2057, 2039}); -- Glory of the Hero
    dungeon:AddAchievementIDs({482, 493}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(283)); -- The Violet Hold
    dungeon:AddAchievementIDs({1865, 2041, 2153, 1816}); -- Glory of the Hero
    dungeon:AddAchievementIDs({483, 494}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(274)); -- Gundrak
    dungeon:AddAchievementIDs({2058, 2040, 1864, 2152}); -- Glory of the Hero
    dungeon:AddAchievementIDs({484, 495}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(277)); -- Halls of Stone
    dungeon:AddAchievementIDs({1866, 2154, 2155}); -- Glory of the Hero
    dungeon:AddAchievementIDs({485, 496}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(275)); -- Halls of Lightning
    dungeon:AddAchievementIDs({1834, 2042, 1867}); -- Glory of the Hero
    dungeon:AddAchievementIDs({486, 497}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(282)); -- The Oculus
    dungeon:AddAchievementIDs({1868, 2046, 2045, 2044, 1871}); -- Glory of the Hero
    dungeon:AddAchievementIDs({478, 498}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(286)); -- Utgarde Pinnacle
    dungeon:AddAchievementIDs({2043, 1873, 2156, 2157}); -- Glory of the Hero
    dungeon:AddAchievementIDs({488, 499}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(279)); -- The Culling of Stratholme
    dungeon:AddAchievementIDs({1872, 1817}); -- Glory of the Hero
    dungeon:AddAchievementIDs({479, 500}); -- Defeat the bosses in X

-- 3.2
    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(284)); -- Trial of the Champion
    dungeon:AddAchievementIDs({3803, 3802, 3804}); -- No Glory available
    if KrowiAF.IsAlliance then
        dungeon:AddAchievementIDs({4296, 4298}); -- Defeat the bosses in X
    elseif KrowiAF.IsHorde then
        dungeon:AddAchievementIDs({3778, 4297}); -- Defeat the bosses in X
    end

-- 3.3
    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(280)); -- The Forge of Souls
    dungeon:AddAchievementIDs({4522, 4523}); -- No Glory available
    dungeon:AddAchievementIDs({4516, 4519}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(278)); -- Pit of Saron
    dungeon:AddAchievementIDs({4524, 4525}); -- No Glory available
    dungeon:AddAchievementIDs({4517, 4520}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(276)); -- Halls of Reflection
    dungeon:AddAchievementIDs({4526}); -- No Glory available
    dungeon:AddAchievementIDs({4518, 4521}); -- Defeat the bosses in X