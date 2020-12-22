local zones, zone;
local as = KrowiAF.AchievementSubsection;

zones = Xpack_SL:AddSubsection(as.Zones);
zones:AddAchievementIDs({14280, 14790, 14758}); -- Quests
zones:AddAchievementIDs({14825, 14731}); -- Exploration
zones:AddAchievementIDs({14515, 14516}); -- PvP
zones:AddAchievementIDs({14315}); -- Reputation
zones:AddAchievementIDs({14867, 14879, 14881}); -- Pet Battles

-- 9.0
    zone = zones:AddChild(KrowiAF.AchievementCategory:NewMap(1533)); -- Bastion
    zone:AddSubsection(as.Quests):AddAchievementIDs({14281, 14801, 14737, 14735, 14741, 14762});
    zone:AddSubsection(as.Exploration):AddAchievementIDs({14303, 14307, 14311, 14339, 14734, 14767, 14768});
    zone:AddSubsection(as.PvP):AddAchievementIDs({14514});
    zone:AddSubsection(as.Reputation):AddAchievementIDs({14335});

    zone = zones:AddChild(KrowiAF.AchievementCategory:NewMap(1536)); -- Maldraxxus
    zone:AddSubsection(as.Quests):AddAchievementIDs({14206, 14799});
    zone:AddSubsection(as.Exploration):AddAchievementIDs({14305, 14308, 14312, 14626, 14802, 14721, 14634, 14763});
    zone:AddSubsection(as.PvP):AddAchievementIDs({14513});
    zone:AddSubsection(as.Reputation):AddAchievementIDs({14336});

    zone = zones:AddChild(KrowiAF.AchievementCategory:NewMap(1565)); -- Ardenweald
    zone:AddSubsection(as.Quests):AddAchievementIDs({14164, 14800, 14671, 14672});
    zone:AddSubsection(as.Exploration):AddAchievementIDs({14304, 14309, 14313, 14353, 14774, 14788, 14779});
    zone:AddSubsection(as.PvP):AddAchievementIDs({14511});
    zone:AddSubsection(as.Reputation):AddAchievementIDs({14337});

    zone = zones:AddChild(KrowiAF.AchievementCategory:NewMap(1525)); -- Revendreth
    zone:AddSubsection(as.Quests):AddAchievementIDs({13878, 14798, 14233, 14765, 14766, 14772});
    zone:AddSubsection(as.Exploration):AddAchievementIDs({14306, 14310, 14314, 14277, 14274, 14272, 14276, 14769, 14771, 14770, 14273});
    zone:AddSubsection(as.PvP):AddAchievementIDs({14512});
    zone:AddSubsection(as.Reputation):AddAchievementIDs({14338});

    zone = zones:AddChild(KrowiAF.AchievementCategory:NewMap(1543)); -- The Maw
    zone:AddSubsection(as.Quests):AddAchievementIDs({14334});
    zone:AddSubsection(as.Exploration):AddAchievementIDs({14663, 14894, 14895, 14658, 14659, 14660, 14738, 14742, 14743, 14744, 14745, 14746, 14747, 14761});
    -- zone:AddSubsection(as.PvP):AddAchievementIDs({});
    zone:AddSubsection(as.Reputation):AddAchievementIDs({14656});

    -- zone = zones:AddChild(KrowiAF.AchievementCategory:NewMap(1671)); -- Oribos
    -- zone:AddSubsection(as.Quests):AddAchievementIDs({});
    -- zone:AddSubsection(as.Exploration):AddAchievementIDs({});
    -- zone:AddSubsection(as.PvP):AddAchievementIDs({});
    -- zone:AddSubsection(as.Reputation):AddAchievementIDs({});