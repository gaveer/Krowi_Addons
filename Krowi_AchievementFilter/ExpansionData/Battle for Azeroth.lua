local expansion, raids, raid, dungeons, dungeon;

-- Expansion
expansion = KrowiAF.AchievementCategory:New(AF_CATEGORY_BFA);
tinsert(KrowiAF.Data, expansion);

    -- Raids
        raids = expansion:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_RAIDS));
        raids:AddAchievementIDs({12806, 13315, 13687, 14146}); -- Overarching achievements

        -- 8.0
            raid = raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_BFA_RAID_ULDIR)); -- Uldir
            raid:AddAchievementIDs({12937, 12938, 12828, 12823, 12772, 12830, 12836, 12551}); -- Glory of the Uldir Raider
            raid:AddAchievementIDs({12524, 12526, 12527, 12530, 12529, 12531, 12532, 12533}); -- Defeat X on Mythic Difficulty
            raid:AddAchievementIDs({12521, 12522, 12523}); -- Defeat the bosses in X
            raid:AddAchievement(12536, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            raid:AddAchievement(12535, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

        -- 8.1
            raid = raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_BFA_RAID_BDA)); -- Battle of Dazar'alor
            raid:AddAchievementIDs({13316}); -- Glory of the Dazar'alor Raider
            if KrowiAF.IsAlliance then
                raid:AddAchievementIDs({13431, 13383}); -- Glory of the Dazar'alor Raider
            elseif KrowiAF.IsHorde then
                raid:AddAchievementIDs({13383, 13431}); -- Glory of the Dazar'alor Raider
            end
            raid:AddAchievementIDs({13345, 13325, 13425, 13401, 13430, 13410}); -- Glory of the Dazar'alor Raider
            raid:AddAchievementIDs({13292}); -- Defeat X on Mythic Difficulty
            if KrowiAF.IsAlliance then
                raid:AddAchievementIDs({13298, 13293}); -- Defeat X on Mythic Difficulty
            elseif KrowiAF.IsHorde then
                raid:AddAchievementIDs({13293, 13295}); -- Defeat X on Mythic Difficulty
            end
            raid:AddAchievementIDs({13299, 13300, 13311, 13312, 13313, 13314}); -- Defeat X on Mythic Difficulty
            if KrowiAF.IsAlliance then
                raid:AddAchievementIDs({13286, 13287, 13288}); -- Defeat the bosses in X
            elseif KrowiAF.IsHorde then
                raid:AddAchievementIDs({13289, 13290, 13291}); -- Defeat the bosses in X
            end
            raid:AddAchievement(13322, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            raid:AddAchievement(13323, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

            raid = raids:AddChild(KrowiAF.AchievementCategory:New(13414)); -- Crucible of Storms
            raid:AddAchievementIDs({13501, 13506}); -- No Glory available
            raid:AddAchievementIDs({13416, 13417}); -- Defeat X on Mythic Difficulty
            raid:AddAchievementIDs({13414, 13415}); -- Defeat the bosses in X
            raid:AddAchievement(13418, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            raid:AddAchievement(13419, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

        -- 8.2
            raid = raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_BFA_RAID_EP)); -- Eternal Palace
            raid:AddAchievementIDs({13684, 13628, 13767, 13629, 13724, 13633, 13716, 13768}); -- Glory of the Eternal Raider
            raid:AddAchievementIDs({13726, 13728, 13727, 13729, 13730, 13731, 13732, 13733}); -- Defeat X on Mythic Difficulty
            raid:AddAchievementIDs({13718, 13719, 13725}); -- Defeat the bosses in X
            raid:AddAchievement(13784, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            raid:AddAchievement(13785, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

        -- 8.3
            raid = raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_BFA_RAID_NYA)); -- Ny'alotha, the Waking City
            raid:AddAchievementIDs({14019, 14008, 14037, 14024, 14139, 14023, 13999, 13990, 14026, 14038, 14147, 14148}); -- Glory of the Ny'alotha Raider
            raid:AddAchievementIDs({14041, 14043, 14044, 14045, 14050, 14046, 14051, 14048, 14049, 14052, 14054, 14055}); -- Defeat X on Mythic Difficulty
            raid:AddAchievementIDs({}); -- Defeat the bosses in X
            raid:AddAchievement(14068, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            raid:AddAchievement(14069, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

            
    -- Dungeons
        dungeons = expansion:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_DUNGEONS));
        dungeons:AddAchievementIDs({12812, 12807, 13075}); -- Overarching achievements

        -- 8.0
            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:New()); -- Freehold
            dungeon:AddAchievementIDs({}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:New()); -- Waycrest Manor
            dungeon:AddAchievementIDs({}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:New()); -- Shrine of the Storm
            dungeon:AddAchievementIDs({}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:New()); -- Atal'Dazar
            dungeon:AddAchievementIDs({}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:New()); -- Underrot
            dungeon:AddAchievementIDs({}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:New()); -- Temple of Sethraliss
            dungeon:AddAchievementIDs({}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:New()); -- Tol Dagor
            dungeon:AddAchievementIDs({}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:New()); -- The MOTHERLODE!!
            dungeon:AddAchievementIDs({}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:New()); -- Siege of Boralus
            dungeon:AddAchievementIDs({}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:New()); -- King's Rest
            dungeon:AddAchievementIDs({}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({}); -- Defeat the bosses in X

        -- 8.2
            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:New()); -- Operation: Mechagon
            dungeon:AddAchievementIDs({}); -- No Glory available
            dungeon:AddAchievementIDs({}); -- Defeat the bosses in X