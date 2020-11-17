-- Expansion
Xpack_Cata = KrowiAF.AchievementCategory:New(AF_CATEGORY_CATA);
tinsert(KrowiAF.Data, Xpack_Cata);

-- Raids
Xpack_Cata_Raids = Xpack_Cata:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_RAIDS));
Xpack_Cata_Raids:AddAchievementIDs({4853, 5828, 6169}); -- Glory of the ...

-- 4.0
Xpack_Cata_Raid_BH = Xpack_Cata_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_CATA_RAID_BH));
Xpack_Cata_Raid_BH:AddAchievementIDs({5416}); -- Defeat X
Xpack_Cata_Raid_BWD = Xpack_Cata_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_CATA_RAID_BWD));
Xpack_Cata_Raid_BWD:AddAchievementIDs({5306, 5307, 5309, 5308, 5310, 4849}); -- Glory of the Cataclysm Raider
Xpack_Cata_Raid_BWD:AddAchievementIDs({5094, 5107, 5115, 5109, 5108, 5116}); -- Defeat X on Heroic Difficulty
Xpack_Cata_Raid_BWD:AddAchievementIDs({4842}); -- Defeat the bosses in X
Xpack_Cata_Raid_BoT = Xpack_Cata_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_CATA_RAID_BOT));
Xpack_Cata_Raid_BoT:AddAchievementIDs({5300, 4852, 5311, 5312}); -- Glory of the Cataclysm Raider
Xpack_Cata_Raid_BoT:AddAchievementIDs({5118, 5117, 5119, 5120, 5121}); -- Defeat X on Heroic Difficulty
Xpack_Cata_Raid_BoT:AddAchievementIDs({4850}); -- Defeat the bosses in X
Xpack_Cata_Raid_BoT:AddAchievement(5313, KrowiAF.AchievementType.FoS, false); -- Feats of Strength (Unobtainable)
Xpack_Cata_Raid_TotFW = Xpack_Cata_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_CATA_RAID_TOTFW));
Xpack_Cata_Raid_TotFW:AddAchievementIDs({5304, 5305}); -- Glory of the Cataclysm Raider
Xpack_Cata_Raid_TotFW:AddAchievementIDs({5122, 5123}); -- Defeat X on Heroic Difficulty
Xpack_Cata_Raid_TotFW:AddAchievementIDs({4851}); -- Defeat the bosses in X

-- 4.2
Xpack_Cata_Raid_BH:AddAchievementIDs({6045}); -- Defeat X
Xpack_Cata_Raid_FL = Xpack_Cata_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_CATA_RAID_FL));
Xpack_Cata_Raid_FL:AddAchievementIDs({5821, 5813, 5810, 5829, 5830, 5799, 5855}); -- Glory of the Firelands Raider
Xpack_Cata_Raid_FL:AddAchievementIDs({5807, 5809, 5808, 5806, 5805, 5804, 5803}); -- Defeat X on Heroic Difficulty
Xpack_Cata_Raid_FL:AddAchievementIDs({5802}); -- Defeat the bosses in X

-- 4.3
Xpack_Cata_Raid_BH:AddAchievementIDs({6108}); -- Defeat X
Xpack_Cata_Raid_DS = Xpack_Cata_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_CATA_RAID_DS));
Xpack_Cata_Raid_DS:AddAchievementIDs({6174, 6128, 6129, 6175, 6084, 6105, 6133, 6180}); -- Glory of the Dragon Soul Raider
Xpack_Cata_Raid_DS:AddAchievementIDs({6109, 6110, 6111, 6112, 6113, 6114, 6115, 6116}); -- Defeat X on Heroic Difficulty
Xpack_Cata_Raid_DS:AddAchievementIDs({6106, 6107, 6177}); -- Defeat the bosses in X

-- Dungeons
-- Xpack_Cata_Dungeons = Xpack_Cata:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_DUNGEONS));