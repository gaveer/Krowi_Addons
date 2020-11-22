local raids, raid;

raids = Xpack_SL:AddChild(KrowiAF.AchievementCategory:NewRaids());
raids:AddAchievementIDs({14355}); -- Overarching achievements

-- 9.0
    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(1190)); -- Castle Nathria
    raid:AddAchievementIDs({14293, 14523, 14376, 14524, 14617, 14608, 14619, 14294, 14525, 14610}); -- Glory of the Nathria Raider
    raid:AddAchievementIDs({14715, 14717, 14718}); -- Defeat the bosses in X
    raid:AddAchievementIDs({14356, 14357, 14358, 14361, 14359, 14360, 14362, 14363, 14364, 14365}); -- Defeat X on Mythic Difficulty
    raid:AddAchievement(14460, KrowiAF.AchievementType.FoS, true); -- Feats of Strength (Obtainable)
    raid:AddAchievement(14461, KrowiAF.AchievementType.FoS, true); -- Feats of Strength (Obtainable)