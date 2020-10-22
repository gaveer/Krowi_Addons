-- Raids
Xpack_WoD_Raids = Xpack_WoD:AddChild(TreeObject:New("Raids"));
-- 6.0
Xpack_WoD_Raid_HM = Xpack_WoD_Raids:AddChild(TreeObjectWithAchievements:New("Highmaul"));
Xpack_WoD_Raid_HM:AddAchievementIDs({8948, 8947, 8974, 8975, 8958, 8976, 8977}); -- Glory of the Draenor Raider
Xpack_WoD_Raid_HM:AddAchievementIDs({8949, 8960, 8961, 8962, 8963, 8964, 8965}); -- Defeat X on Mythic Difficulty
Xpack_WoD_Raid_HM:AddAchievementIDs({8986, 8987, 8988}); -- Defeat the bosses in X
Xpack_WoD_Raid_HM:AddAchievement(9441, AddAchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
Xpack_WoD_Raid_HM:AddAchievement(9442, AddAchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
Xpack_WoD_Raid_BRF = Xpack_WoD_Raids:AddChild(TreeObjectWithAchievements:New("Blackrock Foundry"));
Xpack_WoD_Raid_BRF:AddAchievementIDs({});
-- 6.2
Xpack_WoD_Raid_HFC = Xpack_WoD_Raids:AddChild(TreeObjectWithAchievements:New("Hellfire Citadel"));
Xpack_WoD_Raid_HFC:AddAchievementIDs({});