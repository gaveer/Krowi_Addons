local _, addon = ...; -- Global addon namespace
addon.MistsOfPandaria.Scenarios = {}; -- Global expansion Raids namespace
local scenarios = addon.MistsOfPandaria.Scenarios; -- Local expansion Raids namespace
local achCat = addon.Objects.AchievementCategory; -- Local achievement category class

-- Scenarios have to be looked up through the GetLFGDungeonInfo since these have no Encounter Journal info.

scenarios.ABrewingStorm = {}; -- 5.0
function scenarios.ABrewingStorm.Load(catRaids)
    local scenario = catRaids:AddCatLFGDungeonInfo(517);
    scenario:AddAchievementIDsWithIATLink(7258, 7261, 7257); -- No Glory available
    scenario:AddAchievementIDs(7252, 8310); -- Defeat the bosses in X
end

scenarios.ArenaofAnnihilation = {} -- 5.0
function scenarios.ArenaofAnnihilation.Load(catDungeons)
	local scenario = catDungeons:AddCatLFGDungeonInfo(511);
    scenario:AddAchievementIDsWithIATLink(7273, 7272); -- No Glory available
    scenario:AddAchievementIDs(7271); -- Defeat the bosses in X
end

scenarios.BrewmoonFestival = {} -- 5.0
function scenarios.BrewmoonFestival.Load(catDungeons)
	local scenario = catDungeons:AddCatLFGDungeonInfo(539);
    scenario:AddAchievementIDsWithIATLink(6931, 6930); -- No Glory available
    scenario:AddAchievementIDs(6923); -- Defeat the bosses in X
end

scenarios.CryptOfForgottenKings = {} -- 5.0
function scenarios.CryptOfForgottenKings.Load(catDungeons)
	local scenario = catDungeons:AddCatLFGDungeonInfo(504);
    scenario:AddAchievementIDsWithIATLink(7275, 8368, 7276); -- No Glory available
    scenario:AddAchievementIDs(7522, 8311); -- Defeat the bosses in X
end

scenarios.GreenstoneVillage = {} -- 5.0
function scenarios.GreenstoneVillage.Load(catDungeons)
	local scenario = catDungeons:AddCatLFGDungeonInfo(492);
    scenario:AddAchievementIDsWithIATLink(7267, 7266); -- No Glory available
    scenario:AddAchievementIDs(7265); -- Defeat the bosses in X
end

scenarios.TheramoresFall = {} -- 5.0
function scenarios.TheramoresFall.Load(catDungeons)
    if addon.Faction.IsAlliance then
        local scenario = catDungeons:AddCatLFGDungeonInfo(566);
        scenario:AddAchievementIDsWithIATLink(7526, 7527); -- No Glory available
        scenario:AddAchievementIDs(7523); -- Defeat the bosses in X
        scenario:AddAchievementIDsUnobtainable(7467); -- Feats of Strength (Unobtainable)
    elseif addon.Faction.IsHorde then
        local scenario = catDungeons:AddCatLFGDungeonInfo(567);
        scenario:AddAchievementIDsWithIATLink(7529, 7530); -- No Glory available
        scenario:AddAchievementIDs(7524); -- Defeat the bosses in X
        scenario:AddAchievementIDsUnobtainable(7468); -- Feats of Strength (Unobtainable)
    end
end

scenarios.UngaIngoo = {} -- 5.0
function scenarios.UngaIngoo.Load(catDungeons)
	local scenario = catDungeons:AddCatLFGDungeonInfo(499);
    scenario:AddAchievementIDsWithIATLink(7231, 7232, 7239); -- No Glory available
    scenario:AddAchievementIDs(7248, 7249); -- Defeat the bosses in X
end

scenarios.AssaultOnZanvess = {} -- 5.1
function scenarios.AssaultOnZanvess.Load(catDungeons)
	local scenario = catDungeons:AddCatLFGDungeonInfo(593);
    scenario:AddAchievementIDsWithIATLink(8017); -- No Glory available
    scenario:AddAchievementIDs(8016); -- Defeat the bosses in X
end

scenarios.DaggerInTheDark = {} -- 5.1
function scenarios.DaggerInTheDark.Load(catDungeons)
	local scenario = catDungeons:AddCatLFGDungeonInfo(616);
    scenario:AddAchievementIDsWithIATLink(7984, 7987, 7986); -- No Glory available
    scenario:AddAchievementIDs(8009); -- Defeat the bosses in X
end

scenarios.LionsLanding = {} -- 5.1
function scenarios.LionsLanding.Load(catDungeons)
    if addon.Faction.IsAlliance then
        local scenario = catDungeons:AddCatLFGDungeonInfo(590);
        scenario:AddAchievementIDsWithIATLink(8011, 8012); -- No Glory available
        scenario:AddAchievementIDs(8010); -- Defeat the bosses in X
    end
end

scenarios.DominationPoint = {} -- 5.1
function scenarios.DominationPoint.Load(catDungeons)
    if addon.Faction.IsHorde then
        local scenario = catDungeons:AddCatLFGDungeonInfo(595);
        scenario:AddAchievementIDsWithIATLink(8014, 8015); -- No Glory available
        scenario:AddAchievementIDs(8013); -- Defeat the bosses in X
    end
end

scenarios.ALittlePatience = {} -- 5.2
function scenarios.ALittlePatience.Load(catDungeons)
	local scenario = catDungeons:AddCatLFGDungeonInfo(589);
    scenario:AddAchievementIDsWithIATLink(7989, 7990, 7991, 7992, 7993); -- No Glory available
    scenario:AddAchievementIDs(7988); -- Defeat the bosses in X
end

scenarios.BattleOnTheHighSeas = {} -- 5.3
function scenarios.BattleOnTheHighSeas.Load(catDungeons)
    if addon.Faction.IsAlliance then
        local scenario = catDungeons:AddCatLFGDungeonInfo(655);
        scenario:AddAchievementIDsWithIATLink(8347); -- No Glory available
        scenario:AddAchievementIDs(8314, 8364); -- Defeat the bosses in X
    elseif addon.Faction.IsHorde then
        local scenario = catDungeons:AddCatLFGDungeonInfo(654);
        scenario:AddAchievementIDsWithIATLink(8347); -- No Glory available
        scenario:AddAchievementIDs(8315, 8366); -- Defeat the bosses in X
    end
end

scenarios.BloodInTheSnow = {} -- 5.3
function scenarios.BloodInTheSnow.Load(catDungeons)
	local scenario = catDungeons:AddCatLFGDungeonInfo(646);
    scenario:AddAchievementIDsWithIATLink(8329, 8330); -- No Glory available
    scenario:AddAchievementIDs(8316, 8312); -- Defeat the bosses in X
end

scenarios.DarkHeartOfPandaria = {} -- 5.3
function scenarios.DarkHeartOfPandaria.Load(catDungeons)
	local scenario = catDungeons:AddCatLFGDungeonInfo(647);
    scenario:AddAchievementIDsWithIATLink(8319); -- No Glory available
    scenario:AddAchievementIDs(8317, 8318); -- Defeat the bosses in X
end

scenarios.TheSecretsOfRagefire = {} -- 5.3
function scenarios.TheSecretsOfRagefire.Load(catDungeons)
	local scenario = catDungeons:AddCatLFGDungeonInfo(649);
    scenario:AddAchievementIDsWithIATLink(8295); -- No Glory available
    scenario:AddAchievementIDs(8294, 8327); -- Defeat the bosses in X
end

function scenarios.Load(expansion)
    local catScenarios = expansion:AddCategory(achCat:New(addon.L["C_SCENARIOS"]));
    catScenarios:AddAchievementIDs(7385); -- Overarching achievements

    scenarios.ABrewingStorm.Load(catScenarios);
    scenarios.ArenaofAnnihilation.Load(catScenarios);
    scenarios.BrewmoonFestival.Load(catScenarios);
    scenarios.CryptOfForgottenKings.Load(catScenarios);
    scenarios.GreenstoneVillage.Load(catScenarios);
    scenarios.TheramoresFall.Load(catScenarios);
    scenarios.UngaIngoo.Load(catScenarios);
    scenarios.AssaultOnZanvess.Load(catScenarios);
    scenarios.DaggerInTheDark.Load(catScenarios);
    scenarios.LionsLanding.Load(catScenarios);
    scenarios.DominationPoint.Load(catScenarios);
    scenarios.ALittlePatience.Load(catScenarios);
    scenarios.BattleOnTheHighSeas.Load(catScenarios);
    scenarios.BloodInTheSnow.Load(catScenarios);
    scenarios.DarkHeartOfPandaria.Load(catScenarios);
    scenarios.TheSecretsOfRagefire.Load(catScenarios);
end