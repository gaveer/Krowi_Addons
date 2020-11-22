local expansion, raids, raid, dungeons, dungeon;

-- Expansion
expansion = KrowiAF.AchievementCategory:New(GetCategoryInfo(14865)); -- The Burning Crusade
-- expansion:AddAchievementIDs({}); -- Overarching achievements
tinsert(KrowiAF.Data, expansion);

    -- Raids
        raids = expansion:AddChild(KrowiAF.AchievementCategory:NewRaids());
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
            raid = raids:AddChild(KrowiAF.AchievementCategory:New(EJ_GetInstanceInfo(77) .. " (" .. GetCategoryInfo(15234) .. ")")); -- Zul'Aman
            raid:AddAchievementIDs({691}); -- Defeat the bosses in X

        -- 2.4
            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(752)); -- Sunwell Plateau
            raid:AddAchievementIDs({698}); -- Defeat the bosses in X

    -- Dungeons
        dungeons = expansion:AddChild(KrowiAF.AchievementCategory:NewDungeons());
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
            dungeon:AddAchievement(883, KrowiAF.AchievementType.FoS, true); -- Mounts (Obtainable)

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
            dungeon:AddAchievement(884, KrowiAF.AchievementType.FoS, true); -- Mounts (Obtainable)