local _, addon = ...; -- Global addon namespace
addon.MistsOfPandaria.Dungeons = {}; -- Global expansion Dungeons namespace
local dungeons = addon.MistsOfPandaria.Dungeons; -- Local expansion Dungeons namespace

dungeons.TempleOfTheJadeSerpent = {} -- 5.0
function dungeons.TempleOfTheJadeSerpent.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(313);
    dungeon:AddAchievementIDsWithIATLink(6475, 6460, 6671); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs(6757, 6758); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(6884, 6885, 6886, 6887, 8430); -- Challenge mode (Unobtainable)
end

dungeons.StormstoutBrewery = {} -- 5.0
function dungeons.StormstoutBrewery.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(302);
    dungeon:AddAchievementIDsWithIATLink(6402, 6089, 6400, 6420); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs(6457, 6456); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(6888, 6889, 6890, 6891, 8431); -- Challenge mode (Unobtainable)
end

dungeons.MogushanPalace = {} -- 5.0
function dungeons.MogushanPalace.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(321);
    dungeon:AddAchievementIDsWithIATLink(6713, 6478, 6736); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs(6755, 6756); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(6892, 6899, 6900, 6901, 8433); -- Challenge mode (Unobtainable)
end

dungeons.ShadoPanMonastery = {} -- 5.0
function dungeons.ShadoPanMonastery.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(312);
    dungeon:AddAchievementIDsWithIATLink(6477, 6472, 6471); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs(6469, 6470); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(6893, 6902, 6903, 6904, 8432); -- Challenge mode (Unobtainable)
end

dungeons.GateOfTheSettingSun = {} -- 5.0
function dungeons.GateOfTheSettingSun.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(303);
    dungeon:AddAchievementIDsWithIATLink(6479, 6476, 6945); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs(10010, 6759); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(6894, 6905, 6906, 6907, 8434); -- Challenge mode (Unobtainable)
end

dungeons.SiegeOfNiuzaoTemple = {} -- 5.0
function dungeons.SiegeOfNiuzaoTemple.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(324);
    dungeon:AddAchievementIDsWithIATLink(6688, 6485, 6822); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs(10011, 6763); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(6898,  6917, 6918, 6919, 8439); -- Challenge mode (Unobtainable)
end

dungeons.ScarletHalls = {} -- 5.0
function dungeons.ScarletHalls.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(311);
    dungeon:AddAchievementIDsWithIATLink(6684, 6427); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs(7413, 6760); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(6895, 6908, 6909, 6910, 8436); -- Challenge mode (Unobtainable)
end

dungeons.ScarletMonastery = {} -- 5.0
function dungeons.ScarletMonastery.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(316);
    dungeon:AddAchievementIDsWithIATLink(6946, 6928, 6929); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs(637, 6761); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(6896, 6911, 6912, 6913, 8437); -- Challenge mode (Unobtainable)
end

dungeons.Scholomance = {} -- 5.0
function dungeons.Scholomance.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(246);
    dungeon:AddAchievementIDsWithIATLink(6531, 6394, 6396, 6715, 6821); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs(645, 6762); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(6897, 6914, 6915, 6916, 8438); -- Challenge mode (Unobtainable)
end

function dungeons.Load(expansion)
    local catDungeons = expansion:AddCatDungeons();
    catDungeons:AddAchievementIDs(6925, 6927); -- Overarching achievements

    dungeons.TempleOfTheJadeSerpent.Load(catDungeons);
    dungeons.StormstoutBrewery.Load(catDungeons);
    dungeons.MogushanPalace.Load(catDungeons);
    dungeons.ShadoPanMonastery.Load(catDungeons);
    dungeons.GateOfTheSettingSun.Load(catDungeons);
    dungeons.SiegeOfNiuzaoTemple.Load(catDungeons);
    dungeons.ScarletHalls.Load(catDungeons);
    dungeons.ScarletMonastery.Load(catDungeons);
    dungeons.Scholomance.Load(catDungeons);
end