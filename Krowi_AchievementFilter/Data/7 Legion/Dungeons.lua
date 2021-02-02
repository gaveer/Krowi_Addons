-- [[ Namespaces ]] --
local _, addon = ...;
addon.Legion.Dungeons = {};
local dungeons = addon.Legion.Dungeons;

dungeons.EyeOfAzshara = {} -- 7.0
function dungeons.EyeOfAzshara.Load(catDungeons)
local dungeon = catDungeons:AddCatInstanceInfo(716);
    dungeon:AddAchievementIDsWithIATLink(10456, 10457, 10458); -- Glory of the Legion Hero
    dungeon:AddAchievementIDs(10780, 10781, 10782); -- Defeat the bosses in X
end

dungeons.DarkheartThicket = {} -- 7.0
function dungeons.DarkheartThicket.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(762);
    dungeon:AddAchievementIDsWithIATLink(10766, 10769); -- Glory of the Legion Hero
    dungeon:AddAchievementIDs(10783, 10784, 10785); -- Defeat the bosses in X
end

dungeons.HallsOfValor = {} -- 7.0
function dungeons.HallsOfValor.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(721);
    dungeon:AddAchievementIDsWithIATLink(10544, 10542, 10543); -- Glory of the Legion Hero
    dungeon:AddAchievementIDs(10786, 10788, 10789); -- Defeat the bosses in X
end

dungeons.NeltharionsLair = {} -- 7.0
function dungeons.NeltharionsLair.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(767);
    dungeon:AddAchievementIDsWithIATLink(10996, 10875); -- Glory of the Legion Hero
    dungeon:AddAchievementIDs(10795, 10796, 10797); -- Defeat the bosses in X
end

dungeons.AssaultOnVioletHold = {} -- 7.0
function dungeons.AssaultOnVioletHold.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(777);
    dungeon:AddAchievementIDsWithIATLink(10554, 10553); -- Glory of the Legion Hero
    dungeon:AddAchievementIDs(10798, 10799, 10800); -- Defeat the bosses in X
end

dungeons.VaultOfTheWardens = {} -- 7.0
function dungeons.VaultOfTheWardens.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(707);
    dungeon:AddAchievementIDsWithIATLink(10679, 10680, 10707); -- Glory of the Legion Hero
    dungeon:AddAchievementIDs(10801, 10802, 10803); -- Defeat the bosses in X
end

dungeons.BlackRookHold = {} -- 7.0
function dungeons.BlackRookHold.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(740);
    dungeon:AddAchievementIDsWithIATLink(10710, 10709, 10711); -- Glory of the Legion Hero
    dungeon:AddAchievementIDs(10804, 10805, 10806); -- Defeat the bosses in X
end

dungeons.MawOfSouls = {} -- 7.0
function dungeons.MawOfSouls.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(727);
    dungeon:AddAchievementIDsWithIATLink(10413, 10411, 10412); -- Glory of the Legion Hero
    dungeon:AddAchievementIDs(10807, 10808, 10809); -- Defeat the bosses in X
end

dungeons.TheArcway = {} -- 7.0
function dungeons.TheArcway.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(726);
    dungeon:AddAchievementIDsWithIATLink(10773, 10775, 10776); -- Glory of the Legion Hero
    dungeon:AddAchievementIDs(10813); -- Defeat the bosses in X
end

dungeons.CourtOfStars = {} -- 7.0
function dungeons.CourtOfStars.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(800);
    dungeon:AddAchievementIDsWithIATLink(10610, 10611); -- Glory of the Legion Hero
    dungeon:AddAchievementIDs(10816); -- Defeat the bosses in X
end

dungeons.ReturnToKarazhan = {} -- 7.2
function dungeons.ReturnToKarazhan.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(860);
    dungeon:AddAchievementIDsWithIATLink(11430, 11335, 11338, 11432, 11433); -- No Glory available
    dungeon:AddAchievementIDs(11929, 11429); -- Defeat the bosses in X
end

dungeons.CathedralOfEternalNight = {} -- 7.2
function dungeons.CathedralOfEternalNight.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(900);
    dungeon:AddAchievementIDsWithIATLink(11768, 11769, 11703); -- No Glory available
    dungeon:AddAchievementIDs(11700, 11701, 11702); -- Defeat the bosses in X
end

dungeons.SeatOfTheTriumvirate = {} -- 7.3
function dungeons.SeatOfTheTriumvirate.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(945);
    dungeon:AddAchievementIDsWithIATLink(12004, 12005, 12009); -- No Glory available
    dungeon:AddAchievementIDs(12007, 12008); -- Defeat the bosses in X
end

function dungeons.Load(expansion)
    local catDungeons = expansion:AddCatDungeons();
    catDungeons:AddAchievementIDs(11164, 11163); -- Overarching achievements

    dungeons.EyeOfAzshara.Load(catDungeons);
    dungeons.DarkheartThicket.Load(catDungeons);
    dungeons.HallsOfValor.Load(catDungeons);
    dungeons.NeltharionsLair.Load(catDungeons);
    dungeons.AssaultOnVioletHold.Load(catDungeons);
    dungeons.VaultOfTheWardens.Load(catDungeons);
    dungeons.BlackRookHold.Load(catDungeons);
    dungeons.MawOfSouls.Load(catDungeons);
    dungeons.TheArcway.Load(catDungeons);
    dungeons.CourtOfStars.Load(catDungeons);
    dungeons.ReturnToKarazhan.Load(catDungeons);
    dungeons.CathedralOfEternalNight.Load(catDungeons);
    dungeons.SeatOfTheTriumvirate.Load(catDungeons);
end