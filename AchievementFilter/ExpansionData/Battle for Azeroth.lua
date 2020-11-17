-- Expansion
Xpack_BfA = KrowiAF.AchievementCategory:New(AF_CATEGORY_BFA);
tinsert(KrowiAF.Data, Xpack_BfA);

    -- Raids
        Xpack_BfA_Raids = Xpack_BfA:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_RAIDS));
        Xpack_BfA_Raids:AddAchievementIDs({12806, 13315, 13687, 14146}); -- Glory of the ...

        -- 8.0
            Xpack_BfA_Raid_Uldir = Xpack_BfA_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_BFA_RAID_ULDIR));
            Xpack_BfA_Raid_Uldir:AddAchievementIDs({12937, 12938, 12828, 12823, 12772, 12830, 12836, 12551}); -- Glory of the Uldir Raider
            Xpack_BfA_Raid_Uldir:AddAchievementIDs({12524, 12526, 12527, 12530, 12529, 12531, 12532, 12533}); -- Defeat X on Mythic Difficulty
            Xpack_BfA_Raid_Uldir:AddAchievementIDs({12521, 12522, 12523}); -- Defeat the bosses in X
            Xpack_BfA_Raid_Uldir:AddAchievement(12536, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            Xpack_BfA_Raid_Uldir:AddAchievement(12535, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

        -- 8.1
            Xpack_BfA_Raid_BDA = Xpack_BfA_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_BFA_RAID_BDA));
            Xpack_BfA_Raid_BDA:AddAchievementIDs({13316}); -- Glory of the Dazar'alor Raider
            if KrowiAF.IsAlliance then
                Xpack_BfA_Raid_BDA:AddAchievementIDs({13431, 13383}); -- Glory of the Dazar'alor Raider
            elseif KrowiAF.IsHorde then
                Xpack_BfA_Raid_BDA:AddAchievementIDs({13383, 13431}); -- Glory of the Dazar'alor Raider
            end
            Xpack_BfA_Raid_BDA:AddAchievementIDs({13345, 13325, 13425, 13401, 13430, 13410}); -- Glory of the Dazar'alor Raider
            Xpack_BfA_Raid_BDA:AddAchievementIDs({13292}); -- Defeat X on Mythic Difficulty
            if KrowiAF.IsAlliance then
                Xpack_BfA_Raid_BDA:AddAchievementIDs({13298, 13293}); -- Defeat X on Mythic Difficulty
            elseif KrowiAF.IsHorde then
                Xpack_BfA_Raid_BDA:AddAchievementIDs({13293, 13295}); -- Defeat X on Mythic Difficulty
            end
            Xpack_BfA_Raid_BDA:AddAchievementIDs({13299, 13300, 13311, 13312, 13313, 13314}); -- Defeat X on Mythic Difficulty
            if KrowiAF.IsAlliance then
                Xpack_BfA_Raid_BDA:AddAchievementIDs({13286, 13287, 13288}); -- Defeat the bosses in X
            elseif KrowiAF.IsHorde then
                Xpack_BfA_Raid_BDA:AddAchievementIDs({13289, 13290, 13291}); -- Defeat the bosses in X
            end
            Xpack_BfA_Raid_BDA:AddAchievement(13322, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            Xpack_BfA_Raid_BDA:AddAchievement(13323, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

            Xpack_BfA_Raid_CoS = Xpack_BfA_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_BFA_RAID_COS));
            Xpack_BfA_Raid_CoS:AddAchievementIDs({13501, 13506}); -- No Glory available for CoS
            Xpack_BfA_Raid_CoS:AddAchievementIDs({13416, 13417}); -- Defeat X on Mythic Difficulty
            Xpack_BfA_Raid_CoS:AddAchievementIDs({13414, 13415}); -- Defeat the bosses in X
            Xpack_BfA_Raid_CoS:AddAchievement(13418, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            Xpack_BfA_Raid_CoS:AddAchievement(13419, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

        -- 8.2
            Xpack_BfA_Raid_EP = Xpack_BfA_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_BFA_RAID_EP));
            Xpack_BfA_Raid_EP:AddAchievementIDs({13684, 13628, 13767, 13629, 13724, 13633, 13716, 13768}); -- Glory of the Eternal Raider
            Xpack_BfA_Raid_EP:AddAchievementIDs({13726, 13728, 13727, 13729, 13730, 13731, 13732, 13733}); -- Defeat X on Mythic Difficulty
            Xpack_BfA_Raid_EP:AddAchievementIDs({13718, 13719, 13725}); -- Defeat the bosses in X
            Xpack_BfA_Raid_EP:AddAchievement(13784, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            Xpack_BfA_Raid_EP:AddAchievement(13785, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

        -- 8.3
            Xpack_BfA_Raid_NYA = Xpack_BfA_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_BFA_RAID_NYA));
            Xpack_BfA_Raid_NYA:AddAchievementIDs({14019, 14008, 14037, 14024, 14139, 14023, 13999, 13990, 14026, 14038, 14147, 14148}); -- Glory of the Ny'alotha Raider
            Xpack_BfA_Raid_NYA:AddAchievementIDs({14041, 14043, 14044, 14045, 14050, 14046, 14051, 14048, 14049, 14052, 14054, 14055}); -- Defeat X on Mythic Difficulty
            Xpack_BfA_Raid_NYA:AddAchievementIDs({}); -- Defeat the bosses in X
            Xpack_BfA_Raid_NYA:AddAchievement(14068, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            Xpack_BfA_Raid_NYA:AddAchievement(14069, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)