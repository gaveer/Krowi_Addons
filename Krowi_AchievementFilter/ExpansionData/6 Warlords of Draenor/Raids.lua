local raids, raid;

raids = Xpack_WoD:AddCategory(KrowiAF.AchievementSubsection.Raids);
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