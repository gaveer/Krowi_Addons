local _, addon = ...;

local raids, raid;

raids = Xpack_MoP:AddCategory(KrowiAF.AchievementSubsection.Raids);
raids:AddAchievementIDs({6932, 8124, 8454}); -- Overarching achievements

-- 5.0
    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(317)); -- Mogu'shan Vaults
    raid:AddAchievementIDs({6823, 6674, 7056, 7933, 6687, 6686, 6455}); -- Glory of the Pandaria Raider
    raid:AddAchievementIDs({6719, 6720, 6721, 6722, 6723, 6724}); -- Defeat X on Heroic Difficulty
    raid:AddAchievementIDs({6458, 6844}); -- Defeat the bosses in X
    raid:AddAchievementFOSIDs({6954, 7485}); -- Feats of Strength (Unobtainable)

    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(330)); -- Heart of Fear
    raid:AddAchievementIDs({6937, 6936, 6553, 6683, 6518, 6922}); -- Glory of the Pandaria Raider
    raid:AddAchievementIDs({6725, 6726, 6727, 6728, 6729, 6730}); -- Defeat X on Heroic Difficulty
    raid:AddAchievementIDs({6718, 6845}); -- Defeat the bosses in X
    raid:AddAchievementFOSIDs({8246, 7486}); -- Feats of Strength (Unobtainable)

    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(320)); -- Terrace of Endless Spring
    raid:AddAchievementIDs({6717, 6933, 6824, 6825}); -- Glory of the Pandaria Raider
    raid:AddAchievementIDs({6731, 6732, 6733, 6734}); -- Defeat X on Heroic Difficulty
    raid:AddAchievementIDs({6689}); -- Defeat the bosses in X
    raid:AddAchievementFOSIDs({8248, 7487}); -- Feats of Strength (Unobtainable)

-- 5.2
    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(362)); -- Throne of Thunder
    raid:AddAchievementIDs({8094, 8038, 8073, 8077, 8082, 8097, 8098, 8037, 8081, 8087, 8086, 8090}); -- Glory of the Thundering Raider
    raid:AddAchievementIDs({8056, 8057, 8058, 8059, 8060, 8061, 8062, 8063, 8064, 8065, 8066, 8067, 8068}); -- Defeat X on Heroic Difficulty
    raid:AddAchievementIDs({8069, 8070, 8071, 8072}); -- Defeat the bosses in X
    raid:AddAchievementFOSIDs({8089, 8249, 8238, 8260}); -- Feats of Strength (Unobtainable)

-- 5.4
    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(369)); -- Siege of Orgrimmar
    raid:AddAchievementIDs({8536, 8528, 8532, 8521, 8530, 8520, 8453, 8448, 8538, 8529, 8527, 8543, 8531, 8537}); -- Glory of the Orgrimmar Raider
    raid:AddAchievementIDs({8463, 8465, 8466, 8467, 8468, 8469, 8470, 8471, 8472, 8478, 8479, 8480, 8481, 8482}); -- Defeat X on Mythic Difficulty
    raid:AddAchievementIDs({8458, 8459, 8461, 8462}); -- Defeat the bosses in X
    if addon.Faction.IsAlliance then
        raid:AddAchievementIDs({8679}); -- Defeat X
    elseif addon.Faction.IsHorde then
        raid:AddAchievementIDs({8680}); -- Defeat X
    end
    raid:AddAchievementFOSIDs({8398, 8399, 8400, 8401}); -- Feats of Strength (Unobtainable)