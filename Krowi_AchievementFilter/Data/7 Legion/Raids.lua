-- [[ Namespaces ]] --
local _, addon = ...;
addon.Legion.Raids = {};
local raids = addon.Legion.Raids;

raids.EmeraldNightmare = {}; -- 7.0
function raids.EmeraldNightmare.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(768);
    raid:AddAchievementIDsWithIATLink(10555, 10830, 10771, 10753, 10663, 10772, 10755); -- Glory of the Legion Raider
    raid:AddAchievementIDs(10821, 10823, 10822, 10824, 10825, 10826, 10827); -- Defeat X on Mythic Difficulty
    raid:AddAchievementIDs(10818, 10819, 10820); -- Defeat the bosses in X
    raid:AddAchievementIDsUnobtainable(11194, 11191); -- Feats of Strength (Unobtainable)
end

raids.TheNighthold = {}; -- 7.0
function raids.TheNighthold.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(786);
    raid:AddAchievementIDsWithIATLink(10678, 10697, 10742, 10817, 10851, 10754, 10575, 10704, 10699, 10696); -- Glory of the Legion Raider
    raid:AddAchievementIDs(10840, 10842, 10843, 10844, 10845, 10846, 10848, 10847, 10849, 10850); -- Defeat X on Mythic Difficulty
    raid:AddAchievementIDs(10829, 10837, 10838, 10839); -- Defeat the bosses in X
    raid:AddAchievementIDsUnobtainable(13418, 13419); -- Feats of Strength (Unobtainable)
end

raids.TrialOfValor = {}; -- 7.1
function raids.TrialOfValor.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(861);
    raid:AddAchievementIDsWithIATLink(11337, 11386, 11377); -- No Glory available
    raid:AddAchievementIDs(11396, 11397, 11398); -- Defeat X on Mythic Difficulty
    raid:AddAchievementIDs(11394, 11426); -- Defeat the bosses in X
    raid:AddAchievementIDsUnobtainable(11387, 11581, 11580); -- Feats of Strength (Unobtainable)
end

raids.TombOfSargeras = {}; -- 7.2
function raids.TombOfSargeras.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(875);
    raid:AddAchievementIDsWithIATLink(11724, 11699, 11676, 11696, 11773, 11674, 11675, 11683, 11770); -- Glory of the Tomb Raider
    raid:AddAchievementIDs(11767, 11775, 11776, 11774, 11777, 11778, 11779, 11780, 11781); -- Defeat X on Mythic Difficulty
    raid:AddAchievementIDs(11787, 11788, 11789, 11790); -- Defeat the bosses in X
    raid:AddAchievementIDsUnobtainable(11874, 11875); -- Feats of Strength (Unobtainable)
end

raids.Antorus = {}; -- 7.3
function raids.Antorus.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(946);
    raid:AddAchievementIDsWithIATLink(11930, 12065, 12129, 11928, 12067, 11949, 12030, 11948, 12046, 11915, 12257); -- Glory of the Argus Raider
    raid:AddAchievementIDs(11992, 11993, 11994, 11995, 11996, 11997, 11998, 11999, 12000, 12001, 12002); -- Defeat X on Mythic Difficulty
    raid:AddAchievementIDs(11988, 11990, 11989, 11991); -- Defeat the bosses in X
    raid:AddAchievementIDsUnobtainable(12110, 12111); -- Feats of Strength (Unobtainable)
end

function raids.Load(expansion)
    local catRaids = expansion:AddCatRaids();
    catRaids:AddAchievementIDs(11180, 11763, 11987); -- Overarching achievements

    raids.EmeraldNightmare.Load(catRaids);
    raids.TheNighthold.Load(catRaids);
    raids.TrialOfValor.Load(catRaids);
    raids.TombOfSargeras.Load(catRaids);
    raids.Antorus.Load(catRaids);
end