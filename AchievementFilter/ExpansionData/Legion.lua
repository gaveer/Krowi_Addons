-- Expansion
Xpack_Legion = KrowiAF.AchievementCategory:New(AF_CATEGORY_LEGION);
tinsert(KrowiAF.Data, Xpack_Legion);

-- Raids
Xpack_Legion_Raids = Xpack_Legion:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_RAIDS));

-- 7.0
Xpack_Legion_Raid_EN = Xpack_Legion_Raids:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_XPACK_LEGION_RAID_EN));
Xpack_Legion_Raid_EN:AddAchievementIDs({10555, 10830, 10771, 10753, 10663, 10772, 10755}); -- Glory of the Legion Raider
Xpack_Legion_Raid_EN:AddAchievementIDs({10821, 10823, 10822, 10824, 10825, 10826, 10827}); -- Defeat X on Mythic Difficulty
Xpack_Legion_Raid_EN:AddAchievementIDs({10818, 10819, 10820}); -- Defeat the bosses in X
Xpack_Legion_Raid_EN:AddAchievement(11194, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
Xpack_Legion_Raid_EN:AddAchievement(11191, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
-- Xpack_Legion_Raid_NH = Xpack_Legion_Raids:AddChild(KrowiAF.AchievementCategory:New(""));
-- Xpack_Legion_Raid_NH:AddAchievementIDs({}); -- Glory of the Legion Raider
-- Xpack_Legion_Raid_NH:AddAchievementIDs({}); -- Defeat X on Mythic Difficulty
-- Xpack_Legion_Raid_NH:AddAchievementIDs({}); -- Defeat the bosses in X
-- Xpack_Legion_Raid_NH:AddAchievement(, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
-- Xpack_Legion_Raid_NH:AddAchievement(, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

-- -- 7.1
-- Xpack_Legion_Raid_ToV = Xpack_Legion_Raids:AddChild(KrowiAF.AchievementCategory:New(""));
-- Xpack_Legion_Raid_ToV:AddAchievementIDs({}); -- No Glory available for ToV
-- Xpack_Legion_Raid_ToV:AddAchievementIDs({}); -- Defeat X on Mythic Difficulty
-- Xpack_Legion_Raid_ToV:AddAchievementIDs({}); -- Defeat the bosses in X
-- Xpack_Legion_Raid_ToV:AddAchievement(, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
-- Xpack_Legion_Raid_ToV:AddAchievement(, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

-- -- 7.2
-- Xpack_Legion_Raid_ToS = Xpack_Legion_Raids:AddChild(KrowiAF.AchievementCategory:New(""));
-- Xpack_Legion_Raid_ToS:AddAchievementIDs({}); -- Glory of the Tomb Raider
-- Xpack_Legion_Raid_ToS:AddAchievementIDs({}); -- Defeat X on Mythic Difficulty
-- Xpack_Legion_Raid_ToS:AddAchievementIDs({}); -- Defeat the bosses in X
-- Xpack_Legion_Raid_ToS:AddAchievement(, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
-- Xpack_Legion_Raid_ToS:AddAchievement(, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)

-- -- 7.3
-- Xpack_Legion_Raid_Antorus = Xpack_Legion_Raids:AddChild(KrowiAF.AchievementCategory:New(""));
-- Xpack_Legion_Raid_Antorus:AddAchievementIDs({}); -- Glory of the Argus Raider
-- Xpack_Legion_Raid_Antorus:AddAchievementIDs({}); -- Defeat X on Mythic Difficulty
-- Xpack_Legion_Raid_Antorus:AddAchievementIDs({}); -- Defeat the bosses in X
-- Xpack_Legion_Raid_Antorus:AddAchievement(, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)
-- Xpack_Legion_Raid_Antorus:AddAchievement(, KrowiAF.AchievementType.FoS, false);  -- Feats of Strength (Unobtainable)