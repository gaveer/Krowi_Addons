-- [[ Namespaces ]] --
local _, addon = ...;
addon.WrathOfTheLichKing.Dungeons = {};
local dungeons = addon.WrathOfTheLichKing.Dungeons;

dungeons.UtgardeKeep = {} -- 3.0
function dungeons.UtgardeKeep.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(285);
    dungeon:AddAchievementIDsWithIATLink(1919); -- Glory of the Hero
    dungeon:AddAchievementIDs(477, 489); -- Defeat the bosses in X
end

dungeons.TheNexus = {} -- 3.0
function dungeons.TheNexus.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(281);
    dungeon:AddAchievementIDsWithIATLink(2150, 2037, 2036); -- Glory of the Hero
    dungeon:AddAchievementIDs(478, 490); -- Defeat the bosses in X
end

dungeons.AzjolNerub = {} -- 3.0
function dungeons.AzjolNerub.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(272);
    dungeon:AddAchievementIDsWithIATLink(1296, 1297, 1860); -- Glory of the Hero
    dungeon:AddAchievementIDs(480, 491); -- Defeat the bosses in X
end

dungeons.Ahnkahet = {} -- 3.0
function dungeons.Ahnkahet.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(271);
    dungeon:AddAchievementIDsWithIATLink(2038, 2056, 1862); -- Glory of the Hero
    dungeon:AddAchievementIDs(481, 492); -- Defeat the bosses in X
end

dungeons.DrakTharonKeep = {} -- 3.0
function dungeons.DrakTharonKeep.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(273);
    dungeon:AddAchievementIDsWithIATLink(2151, 2057, 2039); -- Glory of the Hero
    dungeon:AddAchievementIDs(482, 493); -- Defeat the bosses in X
end

dungeons.TheVioletHold = {} -- 3.0
function dungeons.TheVioletHold.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(283);
    dungeon:AddAchievementIDsWithIATLink(1865, 2041, 2153, 1816); -- Glory of the Hero
    dungeon:AddAchievementIDs(483, 494); -- Defeat the bosses in X
end

dungeons.Gundrak = {} -- 3.0
function dungeons.Gundrak.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(274);
    dungeon:AddAchievementIDsWithIATLink(2058, 2040, 1864, 2152); -- Glory of the Hero
    dungeon:AddAchievementIDs(484, 495); -- Defeat the bosses in X
end

dungeons.HallsOfStone = {} -- 3.0
function dungeons.HallsOfStone.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(277);
    dungeon:AddAchievementIDsWithIATLink(1866, 2154, 2155); -- Glory of the Hero
    dungeon:AddAchievementIDs(485, 496); -- Defeat the bosses in X
end

dungeons.HallsOfLightning = {} -- 3.0
function dungeons.HallsOfLightning.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(275);
    dungeon:AddAchievementIDsWithIATLink(1834, 2042, 1867); -- Glory of the Hero
    dungeon:AddAchievementIDs(486, 497); -- Defeat the bosses in X
end

dungeons.TheOculus = {} -- 3.0
function dungeons.TheOculus.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(282);
    dungeon:AddAchievementIDsWithIATLink(1868, 2046, 2045, 2044, 1871); -- Glory of the Hero
    dungeon:AddAchievementIDs(487, 498); -- Defeat the bosses in X
end

dungeons.UtgardePinnacle = {} -- 3.0
function dungeons.UtgardePinnacle.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(286);
    dungeon:AddAchievementIDsWithIATLink(2043, 1873, 2156, 2157); -- Glory of the Hero
    dungeon:AddAchievementIDs(488, 499); -- Defeat the bosses in X
end

dungeons.TheCullingOfStratholme = {} -- 3.0
function dungeons.TheCullingOfStratholme.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(279);
    dungeon:AddAchievementIDsWithIATLink(1872, 1817); -- Glory of the Hero
    dungeon:AddAchievementIDs(479, 500); -- Defeat the bosses in X
end

dungeons.TrialOfTheChampion = {} -- 3.2
function dungeons.TrialOfTheChampion.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(284);
    dungeon:AddAchievementIDsWithIATLink(3803, 3802, 3804); -- No Glory available
    if addon.Faction.IsAlliance then
        dungeon:AddAchievementIDs(4296, 4298); -- Defeat the bosses in X
    elseif addon.Faction.IsHorde then
        dungeon:AddAchievementIDs(3778, 4297); -- Defeat the bosses in X
    end
end

dungeons.TheForgeOfSouls = {} -- 3.3
function dungeons.TheForgeOfSouls.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(280);
    dungeon:AddAchievementIDsWithIATLink(4522, 4523); -- No Glory available
    dungeon:AddAchievementIDs(4516, 4519); -- Defeat the bosses in X
end

dungeons.PitOfSaron = {} -- 3.3
function dungeons.PitOfSaron.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(278);
    dungeon:AddAchievementIDsWithIATLink(4524, 4525); -- No Glory available
    dungeon:AddAchievementIDs(4517, 4520); -- Defeat the bosses in X
end

dungeons.HallsOfReflection = {} -- 3.3
function dungeons.HallsOfReflection.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(276);
    dungeon:AddAchievementIDsWithIATLink(4526); -- No Glory available
    dungeon:AddAchievementIDs(4518, 4521); -- Defeat the bosses in X
end

    
function dungeons.Load(expansion)
    local catDungeons = expansion:AddCatDungeons();
    catDungeons:AddAchievementIDs(1288, 2136); -- Overarching achievements

    dungeons.UtgardeKeep.Load(catDungeons);
    dungeons.TheNexus.Load(catDungeons);
    dungeons.AzjolNerub.Load(catDungeons);
    dungeons.Ahnkahet.Load(catDungeons);
    dungeons.DrakTharonKeep.Load(catDungeons);
    dungeons.TheVioletHold.Load(catDungeons);
    dungeons.Gundrak.Load(catDungeons);
    dungeons.HallsOfStone.Load(catDungeons);
    dungeons.HallsOfLightning.Load(catDungeons);
    dungeons.TheOculus.Load(catDungeons);
    dungeons.UtgardePinnacle.Load(catDungeons);
    dungeons.TheCullingOfStratholme.Load(catDungeons);
    dungeons.TrialOfTheChampion.Load(catDungeons);
    dungeons.TheForgeOfSouls.Load(catDungeons);
    dungeons.PitOfSaron.Load(catDungeons);
    dungeons.HallsOfReflection.Load(catDungeons);
end