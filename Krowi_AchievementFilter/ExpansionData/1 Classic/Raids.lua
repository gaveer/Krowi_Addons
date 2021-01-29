-- [[ Namespaces ]] --
local _, addon = ...;
addon.Classic.Raids = {};
local raids = addon.Classic.Raids;

raids.MoltenCore = {}; -- 1.1
function raids.MoltenCore.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(741);
    raid:AddAchievementIDs(686); -- Defeat the bosses in X
end

raids.OnyxiasLair = {}; -- 1.1
function raids.OnyxiasLair.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(760);
    raid.Name = raid.Name .. " (" .. GetCategoryInfo(15234) .. ")";
    raid:AddAchievementIDsUnobtainable(684); -- Defeat the bosses in X
end

raids.BlackwingLair = {}; -- 1.6
function raids.BlackwingLair.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(742);
    raid:AddAchievementIDs(685); -- Defeat the bosses in X
end

raids.ZulGurub = {}; -- 1.7
function raids.ZulGurub.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(76);
    raid.Name = raid.Name .. " (" .. GetCategoryInfo(15234) .. ")";
    raid:AddAchievementIDsUnobtainable(560, 688); -- Defeat the bosses in X (Unobtainable)
    raid:AddAchievementIDsUnobtainable(880, 881); -- Mounts (Unobtainable)
end

raids.RuinsOfAhnQiraj = {}; -- 1.9
function raids.RuinsOfAhnQiraj.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(743);
    raid:AddAchievementIDs(689); -- Defeat the bosses in X
end

raids.TempleOfAhnQiraj = {}; -- 1.9
function raids.TempleOfAhnQiraj.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(744);
    raid:AddAchievementIDs(687); -- Defeat the bosses in X
    raid:AddNewAchievement(424, true); -- Mounts (Obtainable)
end

function raids.Load(expansion)
    local catRaids = expansion:AddCatRaids();
    catRaids:AddAchievementIDs(1285); -- Overarching achievements

    raids.MoltenCore.Load(catRaids);
    raids.OnyxiasLair.Load(catRaids);
    raids.BlackwingLair.Load(catRaids);
    raids.ZulGurub.Load(catRaids);
    raids.RuinsOfAhnQiraj.Load(catRaids);
    raids.TempleOfAhnQiraj.Load(catRaids);
end