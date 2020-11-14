-- Expansion
Xpack_MoP = Root:AddChild(TreeObject:New("Mists of Pandaria"));

-- Raids
Xpack_MoP_Raids = Xpack_MoP:AddChild(TreeObject:New("Raids"));

-- 5.0
Xpack_Cata_Raid_MSV = Xpack_MoP_Raids:AddChild(TreeObjectWithAchievements:New("Mogu'shan Vaults"));
Xpack_Cata_Raid_MSV:AddAchievementIDs({6823, 6674, 7056, 7933, 6687, 6686, 6455}); -- Glory of the Pandaria Raider
Xpack_Cata_Raid_MSV:AddAchievementIDs({6719, 6720, 6721, 6722, 6723, 6724}); -- Defeat X on Heroic Difficulty
Xpack_Cata_Raid_MSV:AddAchievementIDs({6458, 6844}); -- Defeat the bosses in X
Xpack_Cata_Raid_MSV:AddAchievement(6954, AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
Xpack_Cata_Raid_MSV:AddAchievement(7485, AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
Xpack_Cata_Raid_HoF = Xpack_MoP_Raids:AddChild(TreeObjectWithAchievements:New("Heart of Fear"));
Xpack_Cata_Raid_HoF:AddAchievementIDs({6937, 6936, 6553, 6683, 6518, 6922}); -- Glory of the Pandaria Raider
Xpack_Cata_Raid_HoF:AddAchievementIDs({6725, 6726, 6727, 6728, 6729, 6730}); -- Defeat X on Heroic Difficulty
Xpack_Cata_Raid_HoF:AddAchievementIDs({6718, 6845}); -- Defeat the bosses in X
Xpack_Cata_Raid_HoF:AddAchievement(8246, AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
Xpack_Cata_Raid_HoF:AddAchievement(7486, AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
Xpack_Cata_Raid_ToES = Xpack_MoP_Raids:AddChild(TreeObjectWithAchievements:New("Terrace of Endless Spring"));
Xpack_Cata_Raid_ToES:AddAchievementIDs({6717, 6933, 6824, 6825}); -- Glory of the Pandaria Raider
Xpack_Cata_Raid_ToES:AddAchievementIDs({6731, 6732, 6733, 6734}); -- Defeat X on Heroic Difficulty
Xpack_Cata_Raid_ToES:AddAchievementIDs({6689}); -- Defeat the bosses in X
Xpack_Cata_Raid_ToES:AddAchievement(8248, AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
Xpack_Cata_Raid_ToES:AddAchievement(7487, AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

-- 5.2
Xpack_Cata_Raid_ToT = Xpack_MoP_Raids:AddChild(TreeObjectWithAchievements:New("Throne of Thunder"));
Xpack_Cata_Raid_ToT:AddAchievementIDs({8094, 8038, 8073, 8077, 8082, 8097, 8098, 8037, 8081, 8087, 8086, 8090}); -- Glory of the Thundering Raider
Xpack_Cata_Raid_ToT:AddAchievementIDs({8056, 8057, 8058, 8059, 8060, 8061, 8062, 8063, 8064, 8065, 8066, 8067, 8068}); -- Defeat X on Heroic Difficulty
Xpack_Cata_Raid_ToT:AddAchievementIDs({8069, 8070, 8071, 8072}); -- Defeat the bosses in X
Xpack_Cata_Raid_ToT:AddAchievement(8089, AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
Xpack_Cata_Raid_ToT:AddAchievement(8249, AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
Xpack_Cata_Raid_ToT:AddAchievement(8238, AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
Xpack_Cata_Raid_ToT:AddAchievement(8260, AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

-- 5.4
Xpack_Cata_Raid_SoO = Xpack_MoP_Raids:AddChild(TreeObjectWithAchievements:New("Siege of Orgrimmar"));
Xpack_Cata_Raid_SoO:AddAchievementIDs({8536, 8528, 8532, 8521, 8530, 8520, 8453, 8448, 8538, 8529, 8527, 8543, 8531, 8537}); -- Glory of the Orgrimmar Raider
Xpack_Cata_Raid_SoO:AddAchievementIDs({8463, 8465, 8466, 8467, 8468, 8469, 8470, 8471, 8472, 8478, 8479, 8480, 8481, 8482}); -- Defeat X on Mythic Difficulty
Xpack_Cata_Raid_SoO:AddAchievementIDs({8458, 8459, 8461, 8462}); -- Defeat the bosses in X
if IsAlliance then
    Xpack_Cata_Raid_SoO:AddAchievementIDs({8679}); -- Defeat X
elseif IsHorde then
    Xpack_Cata_Raid_SoO:AddAchievementIDs({8680}); -- Defeat X
end
Xpack_Cata_Raid_SoO:AddAchievement(8398, AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
Xpack_Cata_Raid_SoO:AddAchievement(8399, AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
Xpack_Cata_Raid_SoO:AddAchievement(8400, AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
Xpack_Cata_Raid_SoO:AddAchievement(8401, AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)