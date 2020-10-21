-- Raids
Xpack_MoP_Raids = Xpack_MoP:AddChild(TreeObject:New("Raids"));
-- 5.0
Xpack_Cata_Raid_MSV = Xpack_MoP_Raids:AddChild(TreeObjectWithAchievements:New("Mogu'shan Vaults"));
Xpack_Cata_Raid_MSV:AddAchievements({6823, 6674, 7056, 6687, 7933, 6686, 6455, 6458, 6844, 6719, 6720, 6721, 6722, 6723, 6724, 6954 --[[Unobtainable]], 7485 --[[Unobtainable]]});
Xpack_Cata_Raid_HoF = Xpack_MoP_Raids:AddChild(TreeObjectWithAchievements:New("Heart of Fear"));
Xpack_Cata_Raid_HoF:AddAchievements({6937, 6936, 6553, 6683, 6518, 6922, 6718, 6845, 6725, 6726, 6727, 6728, 6729, 6730, 8246 --[[Unobtainable]], 7486 --[[Unobtainable]]});
Xpack_Cata_Raid_ToES = Xpack_MoP_Raids:AddChild(TreeObjectWithAchievements:New("Terrace of Endless Spring"));
Xpack_Cata_Raid_ToES:AddAchievements({6717, 6933, 6824, 6825, 6689, 6731, 6732, 6733, 6734, 8248 --[[Unobtainable]], 7487 --[[Unobtainable]]});
-- 5.2
Xpack_Cata_Raid_ToT = Xpack_MoP_Raids:AddChild(TreeObjectWithAchievements:New("Throne of Thunder"));
Xpack_Cata_Raid_ToT:AddAchievements({8094, 8038, 8073, 8077, 8082, 8097, 8098, 8037, 8081, 8087, 8086, 8090, 8069, 8070, 8071, 8072, 8056, 8057, 8058, 8059,
8060, 8061, 8062, 8063, 8064, 8065, 8066, 8067, 8068, 8089 --[[Unobtainable]], 8249 --[[Unobtainable]], 8238 --[[Unobtainable]], 8260 --[[Unobtainable]]});
-- 5.4
Xpack_Cata_Raid_SoO = Xpack_MoP_Raids:AddChild(TreeObjectWithAchievements:New("Siege of Orgrimmar"));
Xpack_Cata_Raid_SoO:AddAchievements({8536, 8528, 8532, 8521, 8530, 8520, 8453, 8448, 8538, 8529, 8527, 8543, 8531, 8537, 8458, 8459, 8461, 8462, 8463, 8465,
8466, 8467, 8468, 8469, 8470, 8471, 8472, 8478, 8479, 8480, 8481, 8482});
if IsAlliance then
    Xpack_Cata_Raid_SoO:AddAchievements({8679});
elseif IsHorde then
    Xpack_Cata_Raid_SoO:AddAchievements({8680});
end
Xpack_Cata_Raid_SoO:AddAchievements({8398, 8399, 8400, 8401});