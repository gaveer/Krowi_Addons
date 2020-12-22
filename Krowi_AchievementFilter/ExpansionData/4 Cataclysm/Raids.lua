local raids, raid;

raids = Xpack_Cata:AddSubsection(KrowiAF.AchievementSubsection.Raids);
raids:AddAchievementIDs({4853, 5828, 6169}); -- Overarching achievements

-- 4.0
    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(75)); -- Baradin Hold
    raid:AddAchievementIDs({5416, 6045 --[[4.2]], 6108 --[[4.3]]}); -- Defeat the bosses in X

    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(72)); -- The Bastion of Twilight
    raid:AddAchievementIDs({5300, 4852, 5311, 5312}); -- Glory of the Cataclysm Raider
    raid:AddAchievementIDs({5118, 5117, 5119, 5120, 5121}); -- Defeat X on Heroic Difficulty
    raid:AddAchievementIDs({4850}); -- Defeat the bosses in X
    raid:AddAchievementFOSIDs({5313}); -- Feats of Strength (Unobtainable)

    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(74)); -- Throne of the Four Winds
    raid:AddAchievementIDs({5304, 5305}); -- Glory of the Cataclysm Raider
    raid:AddAchievementIDs({5122, 5123}); -- Defeat X on Heroic Difficulty
    raid:AddAchievementIDs({4851}); -- Defeat the bosses in X

-- 4.2
    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(78)); -- Firelands
    raid:AddAchievementIDs({5821, 5813, 5810, 5829, 5830, 5799, 5855}); -- Glory of the Firelands Raider
    raid:AddAchievementIDs({5807, 5809, 5808, 5806, 5805, 5804, 5803}); -- Defeat X on Heroic Difficulty
    raid:AddAchievementIDs({5802}); -- Defeat the bosses in X

-- 4.3
    raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(187)); -- Dragon Soul
    raid:AddAchievementIDs({6174, 6128, 6129, 6175, 6084, 6105, 6133, 6180}); -- Glory of the Dragon Soul Raider
    raid:AddAchievementIDs({6109, 6110, 6111, 6112, 6113, 6114, 6115, 6116}); -- Defeat X on Heroic Difficulty
    raid:AddAchievementIDs({6106, 6107, 6177}); -- Defeat the bosses in X