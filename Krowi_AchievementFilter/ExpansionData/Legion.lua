-- Expansion
Xpack_Legion = KrowiAF.AchievementCategory:New(AF_CATEGORY_LEGION);
tinsert(KrowiAF.Data, Xpack_Legion);

    -- Raids
        Xpack_Legion_Raids = Xpack_Legion:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_RAIDS));
        Xpack_Legion_Raids:AddAchievementIDs({11180, 11763, 11987}); -- Glory of the ...

        -- 7.0
            Xpack_Legion_Raid_EN = Xpack_Legion_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_LEGION_RAID_EN));
            Xpack_Legion_Raid_EN:AddAchievementIDs({10555, 10830, 10771, 10753, 10663, 10772, 10755}); -- Glory of the Legion Raider
            Xpack_Legion_Raid_EN:AddAchievementIDs({10821, 10823, 10822, 10824, 10825, 10826, 10827}); -- Defeat X on Mythic Difficulty
            Xpack_Legion_Raid_EN:AddAchievementIDs({10818, 10819, 10820}); -- Defeat the bosses in X
            Xpack_Legion_Raid_EN:AddAchievement(11194, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            Xpack_Legion_Raid_EN:AddAchievement(11191, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

            Xpack_Legion_Raid_NH = Xpack_Legion_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_LEGION_RAID_NH));
            Xpack_Legion_Raid_NH:AddAchievementIDs({10678, 10697, 10742, 10817, 10851, 10754, 10575, 10704, 10699, 10696}); -- Glory of the Legion Raider
            Xpack_Legion_Raid_NH:AddAchievementIDs({10840, 10842, 10843, 10844, 10845, 10846, 10848, 10847, 10849, 10850}); -- Defeat X on Mythic Difficulty
            Xpack_Legion_Raid_NH:AddAchievementIDs({10829, 10837, 10838, 10839}); -- Defeat the bosses in X
            Xpack_Legion_Raid_NH:AddAchievement(11195, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            Xpack_Legion_Raid_NH:AddAchievement(11192, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

        -- 7.1
            Xpack_Legion_Raid_ToV = Xpack_Legion_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_LEGION_RAID_TOV));
            Xpack_Legion_Raid_ToV:AddAchievementIDs({11337, 11386, 11377}); -- No Glory available
            Xpack_Legion_Raid_ToV:AddAchievementIDs({11396, 11397, 11398}); -- Defeat X on Mythic Difficulty
            Xpack_Legion_Raid_ToV:AddAchievementIDs({11394, 11426}); -- Defeat the bosses in X
            Xpack_Legion_Raid_ToV:AddAchievement(11387, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            Xpack_Legion_Raid_ToV:AddAchievement(11581, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            Xpack_Legion_Raid_ToV:AddAchievement(11580, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

        -- 7.2
            Xpack_Legion_Raid_ToS = Xpack_Legion_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_LEGION_RAID_TOS));
            Xpack_Legion_Raid_ToS:AddAchievementIDs({11724, 11699, 11676, 11696, 11773, 11674, 11675, 11683, 11770}); -- Glory of the Tomb Raider
            Xpack_Legion_Raid_ToS:AddAchievementIDs({11767, 11775, 11776, 11774, 11777, 11778, 11779, 11780, 11781}); -- Defeat X on Mythic Difficulty
            Xpack_Legion_Raid_ToS:AddAchievementIDs({11787, 11788, 11789, 11790}); -- Defeat the bosses in X
            Xpack_Legion_Raid_ToS:AddAchievement(11874, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            Xpack_Legion_Raid_ToS:AddAchievement(11875, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

        -- 7.3
            Xpack_Legion_Raid_Antorus = Xpack_Legion_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_LEGION_RAID_ANTORUS));
            Xpack_Legion_Raid_Antorus:AddAchievementIDs({11930, 12065, 12129, 11928, 12067, 11949, 12030, 11948, 12046, 11915, 12257}); -- Glory of the Argus Raider
            Xpack_Legion_Raid_Antorus:AddAchievementIDs({11992, 11993, 11994, 11995, 11996, 11997, 11998, 11999, 12000, 12001, 12002}); -- Defeat X on Mythic Difficulty
            Xpack_Legion_Raid_Antorus:AddAchievementIDs({11988, 11990, 11989, 11991}); -- Defeat the bosses in X
            Xpack_Legion_Raid_Antorus:AddAchievement(12110, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            Xpack_Legion_Raid_Antorus:AddAchievement(12111, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)