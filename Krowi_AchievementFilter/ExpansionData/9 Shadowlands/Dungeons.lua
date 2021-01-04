local _, addon = ...; -- Global addon namespace
addon.Shadowlands.Dungeons = {}; -- Global expansion Dungeons namespace
local dungeons = addon.Shadowlands.Dungeons; -- Local expansion Dungeons namespace

dungeons.TheNecroticWake = {}; -- 9.0
function dungeons.TheNecroticWake.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(1182);
    dungeon:AddAchievementIDsWithIATLink(14295, 14320, 14285); -- Glory of the Shadowlands Hero
    dungeon:AddAchievementIDs(14366, 14367, 14368); -- Defeat the bosses in X
end

dungeons.Plaguefall = {}; -- 9.0
function dungeons.Plaguefall.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(1183);
    dungeon:AddAchievementIDsWithIATLink(14292, 14347, 14296); -- Glory of the Shadowlands Hero
    dungeon:AddAchievementIDs(14369, 14414, 14415); -- Defeat the bosses in X
end

dungeons.MistsOfTirnaScithe = {}; -- 9.0
function dungeons.MistsOfTirnaScithe.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(1184);
    dungeon:AddAchievementIDsWithIATLink(14503, 14291, 14375); -- Glory of the Shadowlands Hero
    dungeon:AddAchievementIDs(14371, 14412, 14413); -- Defeat the bosses in X
end

dungeons.HallsOfAtonement = {}; -- 9.0
function dungeons.HallsOfAtonement.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(1185);
    dungeon:AddAchievementIDsWithIATLink(14567, 14284, 14352); -- Glory of the Shadowlands Hero
    dungeon:AddAchievementIDs(14370, 14410, 14411); -- Defeat the bosses in X
end

dungeons.SpiresOfAscension = {}; -- 9.0
function dungeons.SpiresOfAscension.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(1186);
    dungeon:AddAchievementIDsWithIATLink(14331, 14323, 14327); -- Glory of the Shadowlands Hero
    dungeon:AddAchievementIDs(14326, 14324, 14325); -- Defeat the bosses in X
end

dungeons.TheaterOfPain = {}; -- 9.0
function dungeons.TheaterOfPain.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(1187);
    dungeon:AddAchievementIDsWithIATLink(14297, 14607, 14533); -- Glory of the Shadowlands Hero
    dungeon:AddAchievementIDs(14372, 14416, 14417); -- Defeat the bosses in X
end

dungeons.DeOtherSide = {}; -- 9.0
function dungeons.DeOtherSide.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(1188);
    dungeon:AddAchievementIDsWithIATLink(14354, 14374, 14606); -- Glory of the Shadowlands Hero
    dungeon:AddAchievementIDs(14373, 14408, 14409); -- Defeat the bosses in X
end

dungeons.SanguineDepths = {}; -- 9.0
function dungeons.SanguineDepths.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(1189);
    dungeon:AddAchievementIDsWithIATLink(14286, 14290, 14289); -- Glory of the Shadowlands Hero
    dungeon:AddAchievementIDs(14197, 14198, 14199); -- Defeat the bosses in X
end

function dungeons.Load(expansion)
    local catDungeons = expansion:AddCatDungeons();
    catDungeons:AddAchievementIDs(14418, 14322); -- Overarching achievements

    dungeons.TheNecroticWake.Load(catDungeons);
    dungeons.Plaguefall.Load(catDungeons);
    dungeons.MistsOfTirnaScithe.Load(catDungeons);
    dungeons.HallsOfAtonement.Load(catDungeons);
    dungeons.SpiresOfAscension.Load(catDungeons);
    dungeons.TheaterOfPain.Load(catDungeons);
    dungeons.DeOtherSide.Load(catDungeons);
    dungeons.SanguineDepths.Load(catDungeons);
end