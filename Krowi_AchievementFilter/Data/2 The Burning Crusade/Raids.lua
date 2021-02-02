-- [[ Namespaces ]] --
local _, addon = ...;
addon.TheBurningCrusade.Raids = {};
local raids = addon.TheBurningCrusade.Raids;

raids.Karazhan = {}; -- 2.0
function raids.Karazhan.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(745);
    raid:AddAchievementIDs(690); -- Defeat the bosses in X
    raid:AddNewAchievement(882, true); -- Mounts (Obtainable)
end

raids.GruulsLair = {}; -- 2.0
function raids.GruulsLair.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(746);
    raid:AddAchievementIDs(692); -- Defeat the bosses in X
end

raids.MagtheridonsLair = {}; -- 2.0
function raids.MagtheridonsLair.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(747);
    raid:AddAchievementIDs(693); -- Defeat the bosses in X
end

raids.SerpentshrineCavern = {}; -- 2.0
function raids.SerpentshrineCavern.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(748);
    raid:AddAchievementIDs(694); -- Defeat the bosses in X
end

raids.TheEye = {}; -- 2.0
function raids.TheEye.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(749);
    raid:AddAchievementIDs(696); -- Defeat the bosses in X
    raid:AddNewAchievement(885, true); -- Mounts (Obtainable)
end

raids.TheBattleForMountHyjal = {}; -- 2.0
function raids.TheBattleForMountHyjal.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(750);
    raid:AddAchievementIDs(695); -- Defeat the bosses in X
end

raids.BlackTemple = {}; -- 2.1
function raids.BlackTemple.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(751);
    raid:AddAchievementIDs(697); -- Defeat the bosses in X
end

raids.ZulAman = {}; -- 2.3
function raids.ZulAman.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(77);
    raid.Name = raid.Name .. " (" .. GetCategoryInfo(15234) .. ")";
    raid:AddAchievementIDsUnobtainable(691); -- Defeat the bosses in X (Unobtainable)
    raid:AddAchievementIDsUnobtainable(430); -- Mounts (Unobtainable)
end

raids.SunwellPlateau = {}; -- 2.4
function raids.SunwellPlateau.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(752);
    raid:AddAchievementIDs(698); -- Defeat the bosses in X
end

function raids.Load(expansion)
    local catRaids = expansion:AddCatRaids();
    catRaids:AddAchievementIDs(1286); -- Overarching achievements

    raids.Karazhan.Load(catRaids);
    raids.GruulsLair.Load(catRaids);
    raids.MagtheridonsLair.Load(catRaids);
    raids.SerpentshrineCavern.Load(catRaids);
    raids.TheEye.Load(catRaids);
    raids.TheBattleForMountHyjal.Load(catRaids);
    raids.BlackTemple.Load(catRaids);
    raids.ZulAman.Load(catRaids);
    raids.SunwellPlateau.Load(catRaids);
end