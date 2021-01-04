local dungeons, dungeon;

dungeons = Xpack_TBC:AddCategory(KrowiAF.AchievementSubsection.Dungeons);
dungeons:AddAchievementIDs({1284, 1287}); -- Overarching achievements

-- 2.0
    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(248)); -- Hellfire Ramparts
    dungeon:AddAchievementIDs({647, 667}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(256)); -- The Blood Furnace
    dungeon:AddAchievementIDs({648, 668}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(259)); -- The Shattered Halls
    dungeon:AddAchievementIDs({657, 678}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(260)); -- The Slave Pens
    dungeon:AddAchievementIDs({649, 669}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(262)); -- The Underbog
    dungeon:AddAchievementIDs({650, 670}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(261)); -- The Steamvault
    dungeon:AddAchievementIDs({656, 677}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(250)); -- Mana-Tombs
    dungeon:AddAchievementIDs({651, 671}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(247)); -- Auchenai Crypts
    dungeon:AddAchievementIDs({666, 672}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(252)); -- Sethekk Halls
    dungeon:AddAchievementIDs({653, 674}); -- Defeat the bosses in X
    dungeon:AddAchievement(883, true); -- Mounts (Obtainable)

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(253)); -- Shadow Labyrinth
    dungeon:AddAchievementIDs({654, 675}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(251)); -- Old Hillsbrad Foothills
    dungeon:AddAchievementIDs({652, 673}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(255)); -- The Black Morass
    dungeon:AddAchievementIDs({655, 676}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(258)); -- The Mechanar
    dungeon:AddAchievementIDs({658, 679}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(257)); -- The Botanica
    dungeon:AddAchievementIDs({659, 680}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(254)); -- The Arcatraz
    dungeon:AddAchievementIDs({660, 681}); -- Defeat the bosses in X

-- 2.4
    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(249)); -- Magisters' Terrace
    dungeon:AddAchievementIDs({661, 682}); -- Defeat the bosses in X
    dungeon:AddAchievement(884, true); -- Mounts (Obtainable)