local _, addon = ...; -- Global addon namespace
addon.WarlordsOfDreanor.Dungeons = {}; -- Global expansion Dungeons namespace
local dungeons = addon.WarlordsOfDreanor.Dungeons; -- Local expansion Dungeons namespace

dungeons.BloodmaulSlagMines = {} -- 6.0
function dungeons.BloodmaulSlagMines.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(385);
    dungeon:AddAchievementIDsWithIATLink(9005, 8993, 9008); -- Glory of the Draenor Hero
    dungeon:AddAchievementIDs(9037, 9046, 10076); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(8875, 8876, 8877, 8878, 9620); -- Challenge mode (Unobtainable)
end

dungeons.IronDocks = {} -- 6.0
function dungeons.IronDocks.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(558);
    dungeon:AddAchievementIDsWithIATLink(9081, 9083, 9082); -- Glory of the Draenor Hero
    dungeon:AddAchievementIDs(9038, 9047, 10079); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(8997, 8998, 8999, 9000, 9621); -- Challenge mode (Unobtainable)
end

dungeons.Auchindoun = {} -- 6.0
function dungeons.Auchindoun.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(547);
    dungeon:AddAchievementIDsWithIATLink(9023, 9551, 9552); -- Glory of the Draenor Hero
    dungeon:AddAchievementIDs(9039, 9049, 10080); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(8879, 8880, 8881, 8882, 9622); -- Challenge mode (Unobtainable)
end

dungeons.Skyreach = {} -- 6.0
function dungeons.Skyreach.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(476);
    dungeon:AddAchievementIDsWithIATLink(9033, 9035, 9034, 9036); -- Glory of the Draenor Hero
    dungeon:AddAchievementIDs(8843, 8844, 10081); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(8871, 8872, 8873, 8874, 9623); -- Challenge mode (Unobtainable)
end

dungeons.GrimrailDepot = {} -- 6.0
function dungeons.GrimrailDepot.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(536);
    dungeon:AddAchievementIDsWithIATLink(9024, 9007); -- Glory of the Draenor Hero
    dungeon:AddAchievementIDs(9043, 9052, 10082); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(8887, 8888, 8889, 8890, 9625); -- Challenge mode (Unobtainable)
end

dungeons.TheEverbloom = {} -- 6.0
function dungeons.TheEverbloom.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(556);
    dungeon:AddAchievementIDsWithIATLink(9017, 9493, 9223); -- Glory of the Draenor Hero
    dungeon:AddAchievementIDs(9044, 9053, 10083); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(9001, 9002, 9003, 9004, 9624); -- Challenge mode (Unobtainable)
end

dungeons.ShadowmoonBurialGrounds = {} -- 6.0
function dungeons.ShadowmoonBurialGrounds.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(537);
    dungeon:AddAchievementIDsWithIATLink(9018, 9025, 9026); -- Glory of the Draenor Hero
    dungeon:AddAchievementIDs(9041, 9054, 10084); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(8883, 8884, 8885, 8886, 9626); -- Challenge mode (Unobtainable)
end

dungeons.UpperBlackrockSpire = {} -- 6.0
function dungeons.UpperBlackrockSpire.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(559);
    dungeon:AddAchievementIDsWithIATLink(9045, 9058, 9056, 9057); -- Glory of the Draenor Hero
    dungeon:AddAchievementIDs(9042, 9055, 10085); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(8891, 8892, 8893, 8894, 9627); -- Challenge mode (Unobtainable)
end

function dungeons.Load(expansion)
    local catDungeons = expansion:AddCatDungeons();
    catDungeons:AddAchievementIDs(9391, 9396); -- Overarching achievements

    dungeons.BloodmaulSlagMines.Load(catDungeons);
    dungeons.IronDocks.Load(catDungeons);
    dungeons.Auchindoun.Load(catDungeons);
    dungeons.Skyreach.Load(catDungeons);
    dungeons.GrimrailDepot.Load(catDungeons);
    dungeons.TheEverbloom.Load(catDungeons);
    dungeons.ShadowmoonBurialGrounds.Load(catDungeons);
    dungeons.UpperBlackrockSpire.Load(catDungeons);
end