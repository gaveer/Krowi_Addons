local dungeons, dungeon;

dungeons = Xpack_Cata:AddCategory(KrowiAF.AchievementSubsection.Dungeons);
dungeons:AddAchievementIDs({4844, 4845}); -- Overarching achievements

-- 4.0
    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(66)); -- Blackrock Caverns
    dungeon:AddAchievementIDs({5281, 5282, 5283, 5284}); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs({4833, 5060}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(65)); -- Throne of the Tides
    dungeon:AddAchievementIDs({5285, 5286}); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs({4839, 5061}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(67)); -- The Stonecore
    dungeon:AddAchievementIDs({5287}); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs({4846, 5063}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(68)); -- The Vortex Pinnacle
    dungeon:AddAchievementIDs({5289, 5288}); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs({4847, 5064}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(71)); -- Grim Batol
    dungeon:AddAchievementIDs({5297, 5298}); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs({4840, 5062}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(70)); -- Halls of Origination
    dungeon:AddAchievementIDs({5293, 5294, 5296, 5295}); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs({4841, 5065}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(69)); -- Lost City of the Tol'vir
    dungeon:AddAchievementIDs({5291, 5290, 5292}); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs({4848, 5066}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(63)); -- Deadmines
    dungeon:AddAchievementIDs({5366, 5367, 5368, 5369, 5370, 5371}); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs({628, 5083}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(64)); -- Shadowfang Keep
    dungeon:AddAchievementIDs({5503, 5504, 5505}); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs({631, 5093}); -- Defeat the bosses in X

-- 4.1
    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(76)); -- Zul'Gurub
    dungeon:AddAchievementIDs({5743, 5762, 5765, 5759, 5744}); -- No Glory available
    dungeon:AddAchievementIDs({5768}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(77)); -- Zul'Aman
    dungeon:AddAchievementIDs({5858, 5750, 5761, 5760}); -- No Glory available
    dungeon:AddAchievementIDs({5769}); -- Defeat the bosses in X

-- 4.3
    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(184)); -- End Time
    dungeon:AddAchievementIDs({5995, 6130}); -- No Glory available
    dungeon:AddAchievementIDs({6117}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(185)); -- Well of Eternity
    dungeon:AddAchievementIDs({6127, 6070}); -- No Glory available
    dungeon:AddAchievementIDs({6118}); -- Defeat the bosses in X

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(186)); -- Hour of Twilight
    dungeon:AddAchievementIDs({6132}); -- No Glory available
    dungeon:AddAchievementIDs({6119}); -- Defeat the bosses in X