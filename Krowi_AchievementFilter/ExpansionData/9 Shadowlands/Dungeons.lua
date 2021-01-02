local dungeons, dungeon;
local as = KrowiAF.AchievementSubsection;

dungeons = Xpack_SL:AddSubsection(as.Dungeons);
dungeons:AddAchievementIDs({14418, 14322}); -- Overarching achievements

-- 9.0
    dungeon = dungeons:AddSubsection(as.InstanceName, 1182); -- The Necrotic Wake
    dungeon:AddAchievementIDs({14295, 14320, 14285}); -- Glory of the Shadowlands Hero
    dungeon:AddAchievementIDs({14366, 14367, 14368}); -- Defeat the bosses in X
    
    dungeon = dungeons:AddSubsection(as.InstanceName, 1183); -- Plaguefall
    dungeon:AddAchievementIDs({14292, 14347, 14296}); -- Glory of the Shadowlands Hero
    dungeon:AddAchievementIDs({14369, 14414, 14415}); -- Defeat the bosses in X
    
    dungeon = dungeons:AddSubsection(as.InstanceName, 1184); -- Mists of Tirna Scithe
    dungeon:AddAchievementIDs({14503, 14291, 14375}); -- Glory of the Shadowlands Hero
    dungeon:AddAchievementIDs({14371, 14412, 14413}); -- Defeat the bosses in X
    
    dungeon = dungeons:AddSubsection(as.InstanceName, 1185); -- Halls of Atonement
    dungeon:AddAchievementIDs({14567, 14284, 14352}); -- Glory of the Shadowlands Hero
    dungeon:AddAchievementIDs({14370, 14410, 14411}); -- Defeat the bosses in X
    
    dungeon = dungeons:AddSubsection(as.InstanceName, 1186); -- Spires of Ascension
    dungeon:AddAchievementIDs({14331, 14323, 14327}); -- Glory of the Shadowlands Hero
    dungeon:AddAchievementIDs({14326, 14324, 14325}); -- Defeat the bosses in X
    
    dungeon = dungeons:AddSubsection(as.InstanceName, 1187); -- Theater of Pain
    dungeon:AddAchievementIDs({14297, 14607, 14533}); -- Glory of the Shadowlands Hero
    dungeon:AddAchievementIDs({14372, 14416, 14417}); -- Defeat the bosses in X
    
    dungeon = dungeons:AddSubsection(as.InstanceName, 1188); -- De Other Side
    dungeon:AddAchievementIDs({14354, 14374, 14606}); -- Glory of the Shadowlands Hero
    dungeon:AddAchievementIDs({14373, 14408, 14409}); -- Defeat the bosses in X
    
    dungeon = dungeons:AddSubsection(as.InstanceName, 1189); -- Sanguine Depths
    dungeon:AddAchievementIDs({14286, 14290, 14289}); -- Glory of the Shadowlands Hero
    dungeon:AddAchievementIDs({14197, 14198, 14199}); -- Defeat the bosses in X