-- Raids
Xpack_Cata_Raids = Xpack_Cata:AddChild(TreeObject:New("Raids"));
-- 4.0
Xpack_Cata_Raid_BH = Xpack_Cata_Raids:AddChild(TreeObjectWithAchievements:New("Baradin Hold"));
Xpack_Cata_Raid_BH:AddAchievements({5416, 6045 --[[4.2.2]], 6108 --[[4.3.0]]});
Xpack_Cata_Raid_BWD = Xpack_Cata_Raids:AddChild(TreeObjectWithAchievements:New("Blackwing Descent"));
Xpack_Cata_Raid_BWD:AddAchievements({5306, 5307, 5309, 5308, 5310, 4849, 4842, 5094, 5107, 5115, 5109, 5108, 5116});
Xpack_Cata_Raid_BoT = Xpack_Cata_Raids:AddChild(TreeObjectWithAchievements:New("Bastion of Twilight"));
Xpack_Cata_Raid_BoT:AddAchievements({5300, 4852, 5311, 5312, 4850, 5118, 5117, 5119, 5120, 5121, 5313 --[[Unobtainable]]});
Xpack_Cata_Raid_TotFW = Xpack_Cata_Raids:AddChild(TreeObjectWithAchievements:New("Throne of the Four Winds"));
Xpack_Cata_Raid_TotFW:AddAchievements({5304, 5305, 4851, 5122, 5123});
-- 4.2
Xpack_Cata_Raid_FL = Xpack_Cata_Raids:AddChild(TreeObjectWithAchievements:New("Firelands"));
Xpack_Cata_Raid_FL:AddAchievements({5821, 5813, 5810, 5829, 5830, 5799, 5855, 5802, 5807, 5809, 5808, 5806, 5805, 5804, 5803});
-- 4.3
Xpack_Cata_Raid_DS = Xpack_Cata_Raids:AddChild(TreeObjectWithAchievements:New("Dragon Soul"));
Xpack_Cata_Raid_DS:AddAchievements({6174, 6128, 6129, 6175, 6084, 6105, 6133, 6180, 6106, 6107, 6177, 6109, 6110, 6111, 6112, 6113, 6114, 6115, 6116});