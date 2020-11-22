local dungeons, dungeon;

dungeons = Xpack_WoD:AddChild(KrowiAF.AchievementCategory:NewDungeons());
dungeons:AddAchievementIDs({9391, 9396}); -- Overarching achievements

-- 6.0
    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(385)); -- Bloodmaul Slag Mines
    dungeon:AddAchievementIDs({9005, 8993, 9008}); -- Glory of the Draenor Hero
    dungeon:AddAchievementIDs({9037, 9046, 10076}); -- Defeat the bosses in X
    dungeon:AddAchievementFOSIDs({8875, 8876, 8877, 8878, 9620}); -- Challenge mode

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(558)); -- Iron Docks
    dungeon:AddAchievementIDs({9081, 9083, 9082}); -- Glory of the Draenor Hero
    dungeon:AddAchievementIDs({9038, 9047, 10079}); -- Defeat the bosses in X
    dungeon:AddAchievementFOSIDs({8997, 8998, 8999, 9000, 9621}); -- Challenge mode

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(547)); -- Auchindoun
    dungeon:AddAchievementIDs({9023, 9551, 9552}); -- Glory of the Draenor Hero
    dungeon:AddAchievementIDs({9039, 9049, 10080}); -- Defeat the bosses in X
    dungeon:AddAchievementFOSIDs({8879, 8880, 8881, 8882, 9622}); -- Challenge mode

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(476)); -- Skyreach
    dungeon:AddAchievementIDs({9033, 9035, 9034, 9036}); -- Glory of the Draenor Hero
    dungeon:AddAchievementIDs({8843, 8844, 10081}); -- Defeat the bosses in X
    dungeon:AddAchievementFOSIDs({8871, 8872, 8873, 8874, 9623}); -- Challenge mode

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(536)); -- Grimrail Depot
    dungeon:AddAchievementIDs({9024, 9007}); -- Glory of the Draenor Hero
    dungeon:AddAchievementIDs({9043, 9052, 10082}); -- Defeat the bosses in X
    dungeon:AddAchievementFOSIDs({8887, 8888, 8889, 8890, 9625}); -- Challenge mode

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(556)); -- The Everbloom
    dungeon:AddAchievementIDs({9017, 9493, 9223}); -- Glory of the Draenor Hero
    dungeon:AddAchievementIDs({9044, 9053, 10083}); -- Defeat the bosses in X
    dungeon:AddAchievementFOSIDs({9001, 9002, 9003, 9004, 9624}); -- Challenge mode

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(537)); -- Shadowmoon Burial Grounds
    dungeon:AddAchievementIDs({9018, 9025, 9026}); -- Glory of the Draenor Hero
    dungeon:AddAchievementIDs({9041, 9054, 10084}); -- Defeat the bosses in X
    dungeon:AddAchievementFOSIDs({8883, 8884, 8885, 8886, 9626}); -- Challenge mode

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(559)); -- Upper Blackrock Spire
    dungeon:AddAchievementIDs({9045, 9058, 9056, 9057}); -- Glory of the Draenor Hero
    dungeon:AddAchievementIDs({9042, 9055, 10085}); -- Defeat the bosses in X
    dungeon:AddAchievementFOSIDs({8891, 8892, 8893, 8894, 9627}); -- Challenge mode