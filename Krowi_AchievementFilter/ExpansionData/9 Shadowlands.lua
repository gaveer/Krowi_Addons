local expansion, raids, raid, dungeons, dungeon;

-- Expansion
    expansion = KrowiAF.AchievementCategory:New(GetCategoryInfo(15439)); -- Shadowlands
    tinsert(KrowiAF.Data, expansion);

    -- Raids
        raids = expansion:AddChild(KrowiAF.AchievementCategory:NewRaids());
        raids:AddAchievementIDs({14355}); -- Overarching achievements

        -- 9.0
            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(1190)); -- Castle Nathria
            raid:AddAchievementIDs({14293, 14523, 14376, 14524, 14617, 14608, 14619, 14294, 14525, 14610}); -- Glory of the Nathria Raider
            raid:AddAchievementIDs({14715, 14717, 14718}); -- Defeat the bosses in X
            raid:AddAchievementIDs({14356, 14357, 14358, 14361, 14359, 14360, 14362, 14363, 14364, 14365}); -- Defeat X on Mythic Difficulty
            raid:AddAchievement(14460, KrowiAF.AchievementType.FoS, true);  -- Feats of Strength (Unobtainable)
            raid:AddAchievement(14461, KrowiAF.AchievementType.FoS, true);  -- Feats of Strength (Unobtainable)

    -- Dungeons
        dungeons = expansion:AddChild(KrowiAF.AchievementCategory:NewDungeons());
        dungeons:AddAchievementIDs({14418, 14322}); -- Overarching achievements

        -- 9.0
            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(1182)); -- The Necrotic Wake
            dungeon:AddAchievementIDs({14295, 14320, 14285}); -- Glory of the Shadowlands Hero
            dungeon:AddAchievementIDs({14366, 14367, 14368}); -- Defeat the bosses in X
            
            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(1183)); -- Plaguefall
            dungeon:AddAchievementIDs({14292, 14347, 14296}); -- Glory of the Shadowlands Hero
            dungeon:AddAchievementIDs({14369, 14414, 14415}); -- Defeat the bosses in X
            
            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(1184)); -- Mists of Tirna Scithe
            dungeon:AddAchievementIDs({14503, 14291, 14375}); -- Glory of the Shadowlands Hero
            dungeon:AddAchievementIDs({14371, 14412, 14413}); -- Defeat the bosses in X
            
            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(1185)); -- Halls of Atonement
            dungeon:AddAchievementIDs({14567, 14284, 14352}); -- Glory of the Shadowlands Hero
            dungeon:AddAchievementIDs({14370, 14410, 14411}); -- Defeat the bosses in X
            
            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(1186)); -- Spires of Ascension
            dungeon:AddAchievementIDs({14331, 14323, 14327}); -- Glory of the Shadowlands Hero
            dungeon:AddAchievementIDs({14326, 14324, 14325}); -- Defeat the bosses in X
            
            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(1187)); -- Theater of Pain
            dungeon:AddAchievementIDs({14297, 14607, 14533}); -- Glory of the Shadowlands Hero
            dungeon:AddAchievementIDs({14372, 14416, 14417}); -- Defeat the bosses in X
            
            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(1188)); -- De Other Side
            dungeon:AddAchievementIDs({14354, 14374, 14606}); -- Glory of the Shadowlands Hero
            dungeon:AddAchievementIDs({14373, 14408, 14409}); -- Defeat the bosses in X
            
            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(1189)); -- Sanguine Depths
            dungeon:AddAchievementIDs({14286, 14290, 14289}); -- Glory of the Shadowlands Hero
            dungeon:AddAchievementIDs({14197, 14198, 14199}); -- Defeat the bosses in X