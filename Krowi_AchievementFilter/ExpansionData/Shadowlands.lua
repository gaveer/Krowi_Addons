-- Expansion
    Xpack_SL = KrowiAF.AchievementCategory:New(AF_CATEGORY_SL);
    tinsert(KrowiAF.Data, Xpack_SL);

    -- Raids
        Xpack_SL_Raids = Xpack_SL:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_RAIDS));
        Xpack_SL_Raids:AddAchievementIDs({14355}); -- Glory of the ...

        -- 9.0
            Xpack_SL_Raid_HM = Xpack_SL_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_SL_RAID_CN));
            Xpack_SL_Raid_HM:AddAchievementIDs({14293, 14523, 14376, 14524, 14617, 14608, 14619, 14294, 14525, 14610}); -- Glory of the Draenor Raider
            Xpack_SL_Raid_HM:AddAchievementIDs({14356, 14357, 14358, 14361, 14359, 14360, 14362, 14363, 14364, 14365}); -- Defeat X on Mythic Difficulty
            Xpack_SL_Raid_HM:AddAchievementIDs({14715, 14717, 14718}); -- Defeat the bosses in X
            Xpack_SL_Raid_HM:AddAchievement(14460, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            Xpack_SL_Raid_HM:AddAchievement(14461, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

    -- Dungeons
        Xpack_SL_Dungeons = Xpack_SL:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_DUNGEONS));
        Xpack_SL_Raids:AddAchievementIDs({14322}); -- Glory of the ...

        -- 9.0
            