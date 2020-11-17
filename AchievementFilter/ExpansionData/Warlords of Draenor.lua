-- Expansion
    Xpack_WoD = KrowiAF.AchievementCategory:New(AF_CATEGORY_WOD);
    tinsert(KrowiAF.Data, Xpack_WoD);

    -- Raids
        Xpack_WoD_Raids = Xpack_WoD:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_RAIDS));
        Xpack_WoD_Raids:AddAchievementIDs({8985, 10149}); -- Glory of the ...

        -- 6.0
            Xpack_WoD_Raid_HM = Xpack_WoD_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_WOD_RAID_HM));
            Xpack_WoD_Raid_HM:AddAchievementIDs({8948, 8947, 8974, 8975, 8958, 8976, 8977}); -- Glory of the Draenor Raider
            Xpack_WoD_Raid_HM:AddAchievementIDs({8949, 8960, 8961, 8962, 8963, 8964, 8965}); -- Defeat X on Mythic Difficulty
            Xpack_WoD_Raid_HM:AddAchievementIDs({8986, 8987, 8988}); -- Defeat the bosses in X
            Xpack_WoD_Raid_HM:AddAchievement(9441, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            Xpack_WoD_Raid_HM:AddAchievement(9442, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

            Xpack_WoD_Raid_BRF = Xpack_WoD_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_WOD_RAID_BRF));
            Xpack_WoD_Raid_BRF:AddAchievementIDs({8979, 8978, 8930, 8980, 8929, 8983, 8981, 8982, 8984, 8952}); -- Glory of the Draenor Raider
            Xpack_WoD_Raid_BRF:AddAchievementIDs({8967, 8966, 8970, 8968, 8932, 8971, 8956, 8969, 8972, 8973}); -- Defeat X on Mythic Difficulty
            Xpack_WoD_Raid_BRF:AddAchievementIDs({8989, 8990, 8991, 8992}); -- Defeat the bosses in X
            Xpack_WoD_Raid_BRF:AddAchievement(9444, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            Xpack_WoD_Raid_BRF:AddAchievement(9443, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

        -- 6.2
            Xpack_WoD_Raid_HFC = Xpack_WoD_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_WOD_RAID_HFC));
            Xpack_WoD_Raid_HFC:AddAchievementIDs({10026, 10057, 10013, 10054, 9972, 9979, 9988, 10086, 9989, 10012, 10087, 10030, 10073}); -- Glory of the Hellfire Raider
            Xpack_WoD_Raid_HFC:AddAchievementIDs({10027, 10032, 10033, 10034, 10035, 10253, 10037, 10040, 10041, 10038, 10039, 10042, 10043}); -- Defeat X on Mythic Difficulty
            Xpack_WoD_Raid_HFC:AddAchievementIDs({10023, 10024, 10025, 10020, 10019}); -- Defeat the bosses in X
            Xpack_WoD_Raid_HFC:AddAchievement(9680, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            Xpack_WoD_Raid_HFC:AddAchievement(10044, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            Xpack_WoD_Raid_HFC:AddAchievement(10045, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)