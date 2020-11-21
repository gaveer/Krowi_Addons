local expansion, raids, raid, dungeons, dungeon;

-- Expansion
    expansion = KrowiAF.AchievementCategory:New(GetCategoryInfo(15233)); -- Warlords of Draenor
    -- expansion:AddAchievementIDs({}); -- Overarching achievements
    tinsert(KrowiAF.Data, expansion);

    -- Raids
        raids = expansion:AddChild(KrowiAF.AchievementCategory:NewRaids());
        raids:AddAchievementIDs({8985, 10149}); -- Overarching achievements

        -- 6.0
            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(477)); -- Highmaul
            raid:AddAchievementIDs({8948, 8947, 8974, 8975, 8958, 8976, 8977}); -- Glory of the Draenor Raider
            raid:AddAchievementIDs({8949, 8960, 8961, 8962, 8963, 8964, 8965}); -- Defeat X on Mythic Difficulty
            raid:AddAchievementIDs({8986, 8987, 8988}); -- Defeat the bosses in X
            raid:AddAchievementFOSIDs({9441, 9442}); -- Feats of Strength (Unobtainable)

            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(457)); -- Blackrock Foundry
            raid:AddAchievementIDs({8979, 8978, 8930, 8980, 8929, 8983, 8981, 8982, 8984, 8952}); -- Glory of the Draenor Raider
            raid:AddAchievementIDs({8967, 8966, 8970, 8968, 8932, 8971, 8956, 8969, 8972, 8973}); -- Defeat X on Mythic Difficulty
            raid:AddAchievementIDs({8989, 8990, 8991, 8992}); -- Defeat the bosses in X
            raid:AddAchievementFOSIDs({9444, 9443}); -- Feats of Strength (Unobtainable)

        -- 6.2
            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(669)); -- Hellfire Citadel
            raid:AddAchievementIDs({10026, 10057, 10013, 10054, 9972, 9979, 9988, 10086, 9989, 10012, 10087, 10030, 10073}); -- Glory of the Hellfire Raider
            raid:AddAchievementIDs({10027, 10032, 10033, 10034, 10035, 10253, 10037, 10040, 10041, 10038, 10039, 10042, 10043}); -- Defeat X on Mythic Difficulty
            raid:AddAchievementIDs({10023, 10024, 10025, 10020, 10019}); -- Defeat the bosses in X
            raid:AddAchievementFOSIDs({9680, 10044, 10045}); -- Feats of Strength (Unobtainable)

    -- Dungeons
        dungeons = expansion:AddChild(KrowiAF.AchievementCategory:NewDungeons());
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