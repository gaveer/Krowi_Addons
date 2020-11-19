local expansion, raids, raid, dungeons, dungeon;

-- Expansion
expansion = KrowiAF.AchievementCategory:New(GetCategoryInfo(15258)); -- Legion
tinsert(KrowiAF.Data, expansion);

    -- Raids
        raids = expansion:AddChild(KrowiAF.AchievementCategory:NewRaids());
        raids:AddAchievementIDs({11180, 11763, 11987}); -- Overarching achievements

        -- 7.0
            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(768)); -- Emerald Nightmare
            raid:AddAchievementIDs({10555, 10830, 10771, 10753, 10663, 10772, 10755}); -- Glory of the Legion Raider
            raid:AddAchievementIDs({10821, 10823, 10822, 10824, 10825, 10826, 10827}); -- Defeat X on Mythic Difficulty
            raid:AddAchievementIDs({10818, 10819, 10820}); -- Defeat the bosses in X
            raid:AddAchievement(11194, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            raid:AddAchievement(11191, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(786)); -- The Nighthold
            raid:AddAchievementIDs({10678, 10697, 10742, 10817, 10851, 10754, 10575, 10704, 10699, 10696}); -- Glory of the Legion Raider
            raid:AddAchievementIDs({10840, 10842, 10843, 10844, 10845, 10846, 10848, 10847, 10849, 10850}); -- Defeat X on Mythic Difficulty
            raid:AddAchievementIDs({10829, 10837, 10838, 10839}); -- Defeat the bosses in X
            raid:AddAchievement(11195, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            raid:AddAchievement(11192, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

        -- 7.1
            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(861)); -- Trial of Valor
            raid:AddAchievementIDs({11337, 11386, 11377}); -- No Glory available
            raid:AddAchievementIDs({11396, 11397, 11398}); -- Defeat X on Mythic Difficulty
            raid:AddAchievementIDs({11394, 11426}); -- Defeat the bosses in X
            raid:AddAchievement(11387, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            raid:AddAchievement(11581, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            raid:AddAchievement(11580, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

        -- 7.2
            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(875)); -- Tomb of Sargeras
            raid:AddAchievementIDs({11724, 11699, 11676, 11696, 11773, 11674, 11675, 11683, 11770}); -- Glory of the Tomb Raider
            raid:AddAchievementIDs({11767, 11775, 11776, 11774, 11777, 11778, 11779, 11780, 11781}); -- Defeat X on Mythic Difficulty
            raid:AddAchievementIDs({11787, 11788, 11789, 11790}); -- Defeat the bosses in X
            raid:AddAchievement(11874, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            raid:AddAchievement(11875, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

        -- 7.3
            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(946)); -- Antorus, the Burning Throne
            raid:AddAchievementIDs({11930, 12065, 12129, 11928, 12067, 11949, 12030, 11948, 12046, 11915, 12257}); -- Glory of the Argus Raider
            raid:AddAchievementIDs({11992, 11993, 11994, 11995, 11996, 11997, 11998, 11999, 12000, 12001, 12002}); -- Defeat X on Mythic Difficulty
            raid:AddAchievementIDs({11988, 11990, 11989, 11991}); -- Defeat the bosses in X
            raid:AddAchievement(12110, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            raid:AddAchievement(12111, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

    -- Dungeons
        dungeons = expansion:AddChild(KrowiAF.AchievementCategory:NewDungeons());
        dungeons:AddAchievementIDs({11163}); -- Overarching achievements

        -- 7.0
            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(716)); -- Eye of Azshara
            dungeon:AddAchievementIDs({10456, 10457, 10458}); -- Glory of the Legion Hero
            dungeon:AddAchievementIDs({10780, 10781, 10782}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(762)); -- Darkheart Thicket
            dungeon:AddAchievementIDs({10766, 10769}); -- Glory of the Legion Hero
            dungeon:AddAchievementIDs({10783, 10784, 10785}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(721)); -- Halls of Valor
            dungeon:AddAchievementIDs({10544, 10542, 10543}); -- Glory of the Legion Hero
            dungeon:AddAchievementIDs({10786, 10788, 10789}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(767)); -- Neltharion's Lair
            dungeon:AddAchievementIDs({10996, 10875}); -- Glory of the Legion Hero
            dungeon:AddAchievementIDs({10795, 10796, 10797}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(777)); -- Assault on Violet Hold
            dungeon:AddAchievementIDs({10554, 10553}); -- Glory of the Legion Hero
            dungeon:AddAchievementIDs({10798, 10799, 10800}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(707)); -- Vault of the Wardens
            dungeon:AddAchievementIDs({10679, 10680, 10707}); -- Glory of the Legion Hero
            dungeon:AddAchievementIDs({10801, 10802, 10803}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(740)); -- Black Rook Hold
            dungeon:AddAchievementIDs({10710, 10709, 10711}); -- Glory of the Legion Hero
            dungeon:AddAchievementIDs({10804, 10805, 10806}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(727)); -- Maw of Souls
            dungeon:AddAchievementIDs({10413, 10411, 10412}); -- Glory of the Legion Hero
            dungeon:AddAchievementIDs({10807, 10808, 10809}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(726)); -- The Arcway
            dungeon:AddAchievementIDs({10773, 10775, 10776}); -- Glory of the Legion Hero
            dungeon:AddAchievementIDs({10813}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(800)); -- Court of Stars
            dungeon:AddAchievementIDs({10610, 10611}); -- Glory of the Legion Hero
            dungeon:AddAchievementIDs({10816}); -- Defeat the bosses in X

        -- 7.2
            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(860)); -- Return to Karazhan
            dungeon:AddAchievementIDs({11430, 11335, 11338, 11432, 11433}); -- No Glory available
            dungeon:AddAchievementIDs({11929, 11429}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(900)); -- Cathedral of Eternal Night
            dungeon:AddAchievementIDs({11768, 11769, 11703}); -- No Glory available
            dungeon:AddAchievementIDs({11700, 11701, 11702}); -- Defeat the bosses in X

        -- 7.3
            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(945)); -- Seat of the Triumvirate
            dungeon:AddAchievementIDs({12004, 12005, 12009}); -- No Glory available
            dungeon:AddAchievementIDs({12007, 12008}); -- Defeat the bosses in X