-- Scenarios have to be looked up through the GetLFGDungeonInfo since these have to Encounter Journal info.

local scenarios, scenario;

scenarios = Xpack_MoP:AddChild(KrowiAF.AchievementCategory:New(GetCategoryInfo(15302))); -- Would like to find a name with just "Scenarios"
scenarios:AddAchievementIDs({7385}); -- Overarching achievements

-- 5.0
    scenario = scenarios:AddChild(KrowiAF.AchievementCategory:NewLFG(517)); -- A Brewing Storm
    scenario:AddAchievementIDs({7258, 7261, 7257}); -- No Glory available
    scenario:AddAchievementIDs({7252, 8310}); -- Defeat the bosses in X

    scenario = scenarios:AddChild(KrowiAF.AchievementCategory:NewLFG(511)); -- Arena of Annihilation
    scenario:AddAchievementIDs({7273, 7272}); -- No Glory available
    scenario:AddAchievementIDs({7271}); -- Defeat the bosses in X

    scenario = scenarios:AddChild(KrowiAF.AchievementCategory:NewLFG(539)); -- Brewmoon Festival
    scenario:AddAchievementIDs({6931, 6930}); -- No Glory available
    scenario:AddAchievementIDs({6923}); -- Defeat the bosses in X

    scenario = scenarios:AddChild(KrowiAF.AchievementCategory:NewLFG(504)); -- Crypt of Forgotten Kings
    scenario:AddAchievementIDs({7275, 8368, 7276}); -- No Glory available
    scenario:AddAchievementIDs({7522, 8311}); -- Defeat the bosses in X

    scenario = scenarios:AddChild(KrowiAF.AchievementCategory:NewLFG(492)); -- Greenstone Village
    scenario:AddAchievementIDs({7267, 7266}); -- No Glory available
    scenario:AddAchievementIDs({7265}); -- Defeat the bosses in X

    if KrowiAF.IsAlliance then -- Theramore's Fall
        scenario = scenarios:AddChild(KrowiAF.AchievementCategory:NewLFG(566));
        scenario:AddAchievementIDs({7526, 7527}); -- No Glory available
        scenario:AddAchievementIDs({7523}); -- Defeat the bosses in X
        scenario:AddAchievementFOSIDs({7467}); -- Feats of Strength (Unobtainable)
    elseif KrowiAF.IsHorde then
        scenario = scenarios:AddChild(KrowiAF.AchievementCategory:NewLFG(567));
        scenario:AddAchievementIDs({7529, 7530}); -- No Glory available
        scenario:AddAchievementIDs({7524}); -- Defeat the bosses in X
        scenario:AddAchievementFOSIDs({7468}); -- Feats of Strength (Unobtainable)
    end

    scenario = scenarios:AddChild(KrowiAF.AchievementCategory:NewLFG(499)); -- Unga Ingoo
    scenario:AddAchievementIDs({7231, 7232, 7239}); -- No Glory available
    scenario:AddAchievementIDs({7248, 7249}); -- Defeat the bosses in X

-- 5.1
    scenario = scenarios:AddChild(KrowiAF.AchievementCategory:NewLFG(593)); -- Assault on Zan'vess
    scenario:AddAchievementIDs({8017}); -- No Glory available
    scenario:AddAchievementIDs({8016}); -- Defeat the bosses in X

    scenario = scenarios:AddChild(KrowiAF.AchievementCategory:NewLFG(616)); -- Dagger in the Dark
    scenario:AddAchievementIDs({7984, 7987, 7986}); -- No Glory available
    scenario:AddAchievementIDs({8009}); -- Defeat the bosses in X

    if KrowiAF.IsAlliance then
        scenario = scenarios:AddChild(KrowiAF.AchievementCategory:NewLFG(590)); -- Lion's Landing
        scenario:AddAchievementIDs({8011, 8012}); -- No Glory available
        scenario:AddAchievementIDs({8010}); -- Defeat the bosses in X
    elseif KrowiAF.IsHorde then
        scenario = scenarios:AddChild(KrowiAF.AchievementCategory:NewLFG(595)); -- Domination Point
        scenario:AddAchievementIDs({8014, 8015}); -- No Glory available
        scenario:AddAchievementIDs({8013}); -- Defeat the bosses in X
    end

-- 5.2
    scenario = scenarios:AddChild(KrowiAF.AchievementCategory:NewLFG(589)); -- A Little Patience
    scenario:AddAchievementIDs({7989, 7990, 7991, 7992, 7993}); -- No Glory available
    scenario:AddAchievementIDs({7988}); -- Defeat the bosses in X

-- 5.3
    if KrowiAF.IsAlliance then -- Battle on the High Seas
        scenario = scenarios:AddChild(KrowiAF.AchievementCategory:NewLFG(655));
        scenario:AddAchievementIDs({8347}); -- No Glory available
        scenario:AddAchievementIDs({8314, 8364}); -- Defeat the bosses in X
    elseif KrowiAF.IsHorde then
        scenario = scenarios:AddChild(KrowiAF.AchievementCategory:NewLFG(654));
        scenario:AddAchievementIDs({8347}); -- No Glory available
        scenario:AddAchievementIDs({8315, 8366}); -- Defeat the bosses in X
    end

    scenario = scenarios:AddChild(KrowiAF.AchievementCategory:NewLFG(646)); -- Blood in the Snow
    scenario:AddAchievementIDs({8329, 8330}); -- No Glory available
    scenario:AddAchievementIDs({8316, 8312}); -- Defeat the bosses in X

    scenario = scenarios:AddChild(KrowiAF.AchievementCategory:NewLFG(647)); -- Dark Heart of Pandaria
    scenario:AddAchievementIDs({8319}); -- No Glory available
    scenario:AddAchievementIDs({8317, 8318}); -- Defeat the bosses in X

    scenario = scenarios:AddChild(KrowiAF.AchievementCategory:NewLFG(649)); -- The Secrets of Ragefire
    scenario:AddAchievementIDs({8295}); -- No Glory available
    scenario:AddAchievementIDs({8294, 8327}); -- Defeat the bosses in X