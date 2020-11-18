-- Expansion
    Xpack_SL = KrowiAF.AchievementCategory:New(AF_CATEGORY_SL);
    tinsert(KrowiAF.Data, Xpack_SL);

    -- Raids
        Xpack_SL_Raids = Xpack_SL:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_RAIDS));
        Xpack_SL_Raids:AddAchievementIDs({14355}); -- Glory of the ...

        -- 9.0
            Xpack_SL_Raid_CN = Xpack_SL_Raids:AddChild(KrowiAF.AchievementCategory:New(14715));
            Xpack_SL_Raid_CN:AddAchievementIDs({14293, 14523, 14376, 14524, 14617, 14608, 14619, 14294, 14525, 14610}); -- Glory of the Nathria Raider
            Xpack_SL_Raid_CN:AddAchievementIDs({14356, 14357, 14358, 14361, 14359, 14360, 14362, 14363, 14364, 14365}); -- Defeat X on Mythic Difficulty
            Xpack_SL_Raid_CN:AddAchievementIDs({14715, 14717, 14718}); -- Defeat the bosses in X
            Xpack_SL_Raid_CN:AddAchievement(14460, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
            Xpack_SL_Raid_CN:AddAchievement(14461, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

    -- Dungeons
        Xpack_SL_Dungeons = Xpack_SL:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_DUNGEONS));
        Xpack_SL_Dungeons:AddAchievementIDs({14322}); -- Glory of the ...

        -- 9.0
            Xpack_SL_Dungeon_NW = Xpack_SL_Dungeons:AddChild(KrowiAF.AchievementCategory:New(14366));
            Xpack_SL_Dungeon_NW:AddAchievementIDs({14295, 14320, 14285}); -- Glory of the Shadowlands Hero
            Xpack_SL_Dungeon_NW:AddAchievementIDs({14366, 14367, 14368}); -- Defeat the bosses in X
            
            Xpack_SL_Dungeon_NW = Xpack_SL_Dungeons:AddChild(KrowiAF.AchievementCategory:New(14369));
            Xpack_SL_Dungeon_NW:AddAchievementIDs({14292, 14347, 14296}); -- Glory of the Shadowlands Hero
            Xpack_SL_Dungeon_NW:AddAchievementIDs({14369, 14414, 14415}); -- Defeat the bosses in X
            
            Xpack_SL_Dungeon_NW = Xpack_SL_Dungeons:AddChild(KrowiAF.AchievementCategory:New(14371));
            Xpack_SL_Dungeon_NW:AddAchievementIDs({14503, 14291, 14375}); -- Glory of the Shadowlands Hero
            Xpack_SL_Dungeon_NW:AddAchievementIDs({14371, 14412, 14413}); -- Defeat the bosses in X
            
            Xpack_SL_Dungeon_NW = Xpack_SL_Dungeons:AddChild(KrowiAF.AchievementCategory:New(14370));
            Xpack_SL_Dungeon_NW:AddAchievementIDs({14284, 14352}); -- Glory of the Shadowlands Hero
            Xpack_SL_Dungeon_NW:AddAchievementIDs({14370, 14410, 14411}); -- Defeat the bosses in X
            
            Xpack_SL_Dungeon_NW = Xpack_SL_Dungeons:AddChild(KrowiAF.AchievementCategory:New(14326));
            Xpack_SL_Dungeon_NW:AddAchievementIDs({14331, 14323, 14327}); -- Glory of the Shadowlands Hero
            Xpack_SL_Dungeon_NW:AddAchievementIDs({14326, 14324, 14325}); -- Defeat the bosses in X
            
            Xpack_SL_Dungeon_NW = Xpack_SL_Dungeons:AddChild(KrowiAF.AchievementCategory:New(14372));
            Xpack_SL_Dungeon_NW:AddAchievementIDs({14297, 14607, 14533}); -- Glory of the Shadowlands Hero
            Xpack_SL_Dungeon_NW:AddAchievementIDs({14372, 14416, 14417}); -- Defeat the bosses in X
            
            Xpack_SL_Dungeon_NW = Xpack_SL_Dungeons:AddChild(KrowiAF.AchievementCategory:New(14373));
            Xpack_SL_Dungeon_NW:AddAchievementIDs({14354, 14374, 14606}); -- Glory of the Shadowlands Hero
            Xpack_SL_Dungeon_NW:AddAchievementIDs({14373, 14408, 14409}); -- Defeat the bosses in X
            
            Xpack_SL_Dungeon_NW = Xpack_SL_Dungeons:AddChild(KrowiAF.AchievementCategory:New(14197));
            Xpack_SL_Dungeon_NW:AddAchievementIDs({14286, 14290, 14289}); -- Glory of the Shadowlands Hero
            Xpack_SL_Dungeon_NW:AddAchievementIDs({14197, 14198, 14199}); -- Defeat the bosses in X
