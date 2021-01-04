local _, addon = ...; -- Global addon namespace
addon.BattleForAzeroth.Dungeons = {}; -- Global expansion Dungeons namespace
local dungeons = addon.BattleForAzeroth.Dungeons; -- Local expansion Dungeons namespace

dungeons.Freelhold = {}; -- 8.0
function dungeons.Freelhold.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(1001);
    dungeon:AddAchievementIDsWithIATLink(12550, 12548, 12998); -- Glory of the Wartorn Hero
    dungeon:AddAchievementIDs(12831, 12832, 12833); -- Defeat the bosses in X
end

dungeons.WaycrestManor = {}; -- 8.0
function dungeons.WaycrestManor.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(1021);
    dungeon:AddAchievementIDsWithIATLink(12495, 12490, 12489); -- Glory of the Wartorn Hero
    dungeon:AddAchievementIDs(12483, 12484, 12488); -- Defeat the bosses in X
end

dungeons.ShrineOfTheStorm = {}; -- 8.0
function dungeons.ShrineOfTheStorm.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(1036);
    dungeon:AddAchievementIDsWithIATLink(12600, 12601, 12602); -- Glory of the Wartorn Hero
    dungeon:AddAchievementIDs(12835, 12837, 12838); -- Defeat the bosses in X
end

dungeons.AtalDazar = {}; -- 8.0
function dungeons.AtalDazar.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(968);
    dungeon:AddAchievementIDsWithIATLink(12270, 12272, 12273); -- Glory of the Wartorn Hero
    dungeon:AddAchievementIDs(12824, 12825, 12826); -- Defeat the bosses in X
end

dungeons.Underrot = {}; -- 8.0
function dungeons.Underrot.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(1022);
    dungeon:AddAchievementIDsWithIATLink(12498, 12549, 12499); -- Glory of the Wartorn Hero
    dungeon:AddAchievementIDs(12500, 12501, 12502); -- Defeat the bosses in X
end

dungeons.TempleOfSethraliss = {}; -- 8.0
function dungeons.TempleOfSethraliss.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(1030);
    dungeon:AddAchievementIDsWithIATLink(12507, 12503, 12508); -- Glory of the Wartorn Hero
    dungeon:AddAchievementIDs(12504, 12505, 12506); -- Defeat the bosses in X
end

dungeons.TolDagor = {}; -- 8.0
function dungeons.TolDagor.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(1002);
    dungeon:AddAchievementIDsWithIATLink(12457, 12462); -- Glory of the Wartorn Hero
    dungeon:AddAchievementIDs(12840, 12841, 12842); -- Defeat the bosses in X
end

dungeons.TheMotherlode = {}; -- 8.0
function dungeons.TheMotherlode.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(1012);
    dungeon:AddAchievementIDsWithIATLink(12855, 12854); -- Glory of the Wartorn Hero
    dungeon:AddAchievementIDs(12844, 12845, 12846); -- Defeat the bosses in X
end

dungeons.SiegeOfBoralus = {}; -- 8.0
function dungeons.SiegeOfBoralus.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(1023);
    dungeon:AddAchievementIDsWithIATLink(12727, 12726, 12489); -- Glory of the Wartorn Hero
    dungeon:AddAchievementIDs(12847); -- Defeat the bosses in X
end

dungeons.KingsRest = {}; -- 8.0
function dungeons.KingsRest.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(1041);
    dungeon:AddAchievementIDsWithIATLink(12722, 12721, 12723); -- Glory of the Wartorn Hero
    dungeon:AddAchievementIDs(12848); -- Defeat the bosses in X
end

dungeons.OperationMechagon = {}; -- 8.2
function dungeons.OperationMechagon.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(1178);
    dungeon:AddAchievementIDsWithIATLink(13706, 13698, 13723, 13545, 13624); -- No Glory available
    -- dungeon:AddAchievementIDs(); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(13789);  -- Feats of Strength (Unobtainable)
end

function dungeons.Load(expansion)
    local catDungeons = expansion:AddCatDungeons();
    catDungeons:AddAchievementIDs(12807, 12812, 13075); -- Overarching achievements

    dungeons.Freelhold.Load(catDungeons);
    dungeons.WaycrestManor.Load(catDungeons);
    dungeons.ShrineOfTheStorm.Load(catDungeons);
    dungeons.AtalDazar.Load(catDungeons);
    dungeons.Underrot.Load(catDungeons);
    dungeons.TempleOfSethraliss.Load(catDungeons);
    dungeons.TolDagor.Load(catDungeons);
    dungeons.TheMotherlode.Load(catDungeons);
    dungeons.SiegeOfBoralus.Load(catDungeons);
    dungeons.KingsRest.Load(catDungeons);
    dungeons.OperationMechagon.Load(catDungeons);
end