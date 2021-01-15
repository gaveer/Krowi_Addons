local _, addon = ...; -- Global addon namespace
addon.Classic.Dungeons = {}; -- Global expansion Dungeons namespace
local dungeons = addon.Classic.Dungeons; -- Local expansion Dungeons namespace

dungeons.Deadmines = {} -- 1.0
function dungeons.Deadmines.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(63);
    dungeon:AddAchievementIDsWithIATLink(5366, 5367, 5368, 5369, 5370, 5371); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs(628, 5083); -- Defeat the bosses in X
end

dungeons.RagefireChasm = {} -- 1.0
function dungeons.RagefireChasm.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(226);
    dungeon:AddAchievementIDs(629); -- Defeat the bosses in X
end

dungeons.WailingCaverns = {} -- 1.0
function dungeons.WailingCaverns.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(240);
    dungeon:AddAchievementIDs(630); -- Defeat the bosses in X
end

dungeons.ShadowfangKeep = {} -- 1.0
function dungeons.ShadowfangKeep.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(64);
    dungeon:AddAchievementIDsWithIATLink(5503, 5504, 5505); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs(631, 5093); -- Defeat the bosses in X
end

dungeons.BlackfathomDeeps = {} -- 1.0
function dungeons.BlackfathomDeeps.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(227);
    dungeon:AddAchievementIDs(632); -- Defeat the bosses in X
end

dungeons.TheStockade = {} -- 1.0
function dungeons.TheStockade.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(238);
    dungeon:AddAchievementIDs(633); -- Defeat the bosses in X
end

dungeons.Gnomeregan = {} -- 1.0
function dungeons.Gnomeregan.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(231);
    dungeon:AddAchievementIDs(634); -- Defeat the bosses in X
end

dungeons.RazorfenKraul = {} -- 1.0
function dungeons.RazorfenKraul.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(233);
    dungeon:AddAchievementIDs(635); -- Defeat the bosses in X
end

dungeons.RazorfenDowns = {} -- 1.0
function dungeons.RazorfenDowns.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(234);
    dungeon:AddAchievementIDs(636); -- Defeat the bosses in X
end

dungeons.ScarletHalls = {} -- 1.0
function dungeons.ScarletHalls.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(311);
    dungeon:AddAchievementIDsWithIATLink(6684, 6427); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs(7413, 6760); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(6895, 6908, 6909, 6910, 8436); -- Challenge mode (Unobtainable)
end

dungeons.ScarletMonastery = {} -- 1.0
function dungeons.ScarletMonastery.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(316);
    dungeon:AddAchievementIDsWithIATLink(6946, 6928, 6929); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs(637, 6761); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(6896, 6911, 6912, 6913, 8437); -- Challenge mode (Unobtainable)
end

dungeons.Uldaman = {} -- 1.0
function dungeons.Uldaman.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(239);
    dungeon:AddAchievementIDs(638); -- Defeat the bosses in X
end

dungeons.ZulFarrak = {} -- 1.0
function dungeons.ZulFarrak.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(241);
    dungeon:AddAchievementIDs(639); -- Defeat the bosses in X
end

dungeons.Maraudon = {} -- 1.0
function dungeons.Maraudon.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(232);
    dungeon:AddAchievementIDs(640); -- Defeat the bosses in X
end

dungeons.TheTempleOfAtalhakkar = {} -- 1.0
function dungeons.TheTempleOfAtalhakkar.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(237);
    dungeon:AddAchievementIDs(641); -- Defeat the bosses in X
end

dungeons.BlackrockDepths = {} -- 1.0
function dungeons.BlackrockDepths.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(228);
    dungeon:AddAchievementIDs(642); -- Defeat the bosses in X
end

dungeons.LowerBlackrockSpire = {} -- 1.0
function dungeons.LowerBlackrockSpire.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(229);
    dungeon:AddAchievementIDs(643); -- Defeat the bosses in X
end

dungeons.DireMaul = {} -- 1.0
function dungeons.DireMaul.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(230);
    dungeon:AddAchievementIDs(644); -- Defeat the bosses in X
end

dungeons.Scholomance = {} -- 1.0
function dungeons.Scholomance.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(246);
    dungeon:AddAchievementIDsWithIATLink(6531, 6394, 6396, 6715, 6821); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs(645, 6762); -- Defeat the bosses in X
    dungeon:AddAchievementIDsUnobtainable(6897, 6914, 6915, 6916, 8438); -- Challenge mode (Unobtainable)
end

dungeons.Stratholme = {} -- 1.0
function dungeons.Stratholme.Load(catDungeons)
    local dungeon = catDungeons:AddCatInstanceInfo(236);
    dungeon:AddAchievementIDs(646); -- Defeat the bosses in X
end

function dungeons.Load(expansion)
    local catDungeons = expansion:AddCatDungeons();
    catDungeons:AddAchievementIDs(1283); -- Overarching achievements

    dungeons.Deadmines.Load(catDungeons);
    dungeons.RagefireChasm.Load(catDungeons);
    dungeons.WailingCaverns.Load(catDungeons);
    dungeons.ShadowfangKeep.Load(catDungeons);
    dungeons.BlackfathomDeeps.Load(catDungeons);
    dungeons.TheStockade.Load(catDungeons);
    dungeons.Gnomeregan.Load(catDungeons);
    dungeons.RazorfenKraul.Load(catDungeons);
    dungeons.RazorfenDowns.Load(catDungeons);
    dungeons.ScarletHalls.Load(catDungeons);
    dungeons.ScarletMonastery.Load(catDungeons);
    dungeons.Uldaman.Load(catDungeons);
    dungeons.ZulFarrak.Load(catDungeons);
    dungeons.Maraudon.Load(catDungeons);
    dungeons.TheTempleOfAtalhakkar.Load(catDungeons);
    dungeons.BlackrockDepths.Load(catDungeons);
    dungeons.LowerBlackrockSpire.Load(catDungeons);
    dungeons.DireMaul.Load(catDungeons);
    dungeons.Scholomance.Load(catDungeons);
    dungeons.Stratholme.Load(catDungeons);
end