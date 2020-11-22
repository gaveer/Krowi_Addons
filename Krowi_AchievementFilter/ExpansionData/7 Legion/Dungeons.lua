local dungeons, dungeon;

dungeons = Xpack_Legion:AddChild(KrowiAF.AchievementCategory:NewDungeons());
dungeons:AddAchievementIDs({11164, 11163}); -- Overarching achievements

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