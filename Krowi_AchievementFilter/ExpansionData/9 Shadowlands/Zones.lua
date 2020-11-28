local zones, zone;

zones = Xpack_SL:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_ZONES));
zones:AddAchievementIDs({14280, 14790, 14758}); -- Quests
zones:AddAchievementIDs({14825, 14731}); -- Exploration
zones:AddAchievementIDs({14515, 14516}); -- PvP
zones:AddAchievementIDs({14315}); -- Reputation
zones:AddAchievementIDs({14867, 14879, 14881}); -- Pet Battles

-- 9.0
    zone = zones:AddChild(KrowiAF.AchievementCategory:NewMap(1533)); -- Bastion
    zone:AddAchievementIDs({14281, 14801, 14737, 14735, 14741, 14762}); -- Quests
    zone:AddAchievementIDs({14303, 14307, 14311, 14339, 14734, 14767, 14768}); -- Exploration
    zone:AddAchievementIDs({14514}); -- PvP
    zone:AddAchievementIDs({14335}); -- Reputation

    zone = zones:AddChild(KrowiAF.AchievementCategory:NewMap(1536)); -- Maldraxxus
    zone:AddAchievementIDs({14206, 14799}); -- Quests
    zone:AddAchievementIDs({14305, 14308, 14312, 14626, 14802, 14721, 14634, 14763}); -- Exploration
    zone:AddAchievementIDs({14513}); -- PvP
    zone:AddAchievementIDs({14336}); -- Reputation

    zone = zones:AddChild(KrowiAF.AchievementCategory:NewMap(1565)); -- Ardenweald
    zone:AddAchievementIDs({14164, 14800, 14671, 14672}); -- Quests
    zone:AddAchievementIDs({14304, 14309, 14313, 14353, 14774, 14788, 14779}); -- Exploration
    zone:AddAchievementIDs({14511}); -- PvP
    zone:AddAchievementIDs({14337}); -- Reputation

    zone = zones:AddChild(KrowiAF.AchievementCategory:NewMap(1525)); -- Revendreth
    zone:AddAchievementIDs({13878, 14798, 14233, 14765, 14766, 14772}); -- Quests
    zone:AddAchievementIDs({14306, 14310, 14314, 14277, 14274, 14272, 14276, 14769, 14771, 14770, 14273}); -- Exploration
    zone:AddAchievementIDs({14512}); -- PvP
    zone:AddAchievementIDs({14338}); -- Reputation

    zone = zones:AddChild(KrowiAF.AchievementCategory:NewMap(1543)); -- The Maw
    zone:AddAchievementIDs({14334}); -- Quests
    zone:AddAchievementIDs({14663, 14894, 14895, 14658, 14659, 14660, 14738, 14742, 14743, 14744, 14745, 14746, 14747, 14761}); -- Exploration
    -- zone:AddAchievementIDs({}); -- PvP
    zone:AddAchievementIDs({14656}); -- Reputation

    -- zone = zones:AddChild(KrowiAF.AchievementCategory:NewMap(1671)); -- Oribos
    -- zone:AddAchievementIDs({}); -- Quests
    -- zone:AddAchievementIDs({}); -- Exploration
    -- zone:AddAchievementIDs({}); -- PvP
    -- zone:AddAchievementIDs({}); -- Reputation