-- [[ Namespaces ]] --
local _, addon = ...;
addon.TheBurningCrusade.Dungeons = {};
local dungeons = addon.TheBurningCrusade.Dungeons;

dungeons.HellfireRamparts = {} -- 2.0
function dungeons.HellfireRamparts.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(248);
    dungeon:AddAchievementIDs(647, 667); -- Defeat the bosses in X
end

dungeons.TheBloodFurnace = {} -- 2.0
function dungeons.TheBloodFurnace.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(256);
    dungeon:AddAchievementIDs(648, 668); -- Defeat the bosses in X
end

dungeons.TheShatteredHalls = {} -- 2.0
function dungeons.TheShatteredHalls.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(259);
    dungeon:AddAchievementIDs(657, 678); -- Defeat the bosses in X
end

dungeons.TheSlavePens = {} -- 2.0
function dungeons.TheSlavePens.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(260);
    dungeon:AddAchievementIDs(649, 669); -- Defeat the bosses in X
end

dungeons.TheUnderbog = {} -- 2.0
function dungeons.TheUnderbog.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(262);
    dungeon:AddAchievementIDs(650, 670); -- Defeat the bosses in X
end

dungeons.TheSteamvault = {} -- 2.0
function dungeons.TheSteamvault.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(261);
    dungeon:AddAchievementIDs(656, 677); -- Defeat the bosses in X
end

dungeons.ManaTombs = {} -- 2.0
function dungeons.ManaTombs.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(250);
    dungeon:AddAchievementIDs(651, 671); -- Defeat the bosses in X
end

dungeons.AuchenaiCrypts = {} -- 2.0
function dungeons.AuchenaiCrypts.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(247);
    dungeon:AddAchievementIDs(666, 672); -- Defeat the bosses in X
end

dungeons.SethekkHalls = {} -- 2.0
function dungeons.SethekkHalls.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(252);
    dungeon:AddAchievementIDs(653, 674); -- Defeat the bosses in X
    dungeon:AddNewAchievement(883, true); -- Mounts (Obtainable)
end

dungeons.ShadowLabyrinth = {} -- 2.0
function dungeons.ShadowLabyrinth.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(253);
    dungeon:AddAchievementIDs(654, 675); -- Defeat the bosses in X
end

dungeons.OldHillsbradFoothills = {} -- 2.0
function dungeons.OldHillsbradFoothills.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(251);
    dungeon:AddAchievementIDs(652, 673); -- Defeat the bosses in X
end

dungeons.TheBlackMorass = {} -- 2.0
function dungeons.TheBlackMorass.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(255);
    dungeon:AddAchievementIDs(655, 676); -- Defeat the bosses in X
end

dungeons.TheMechanar = {} -- 2.0
function dungeons.TheMechanar.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(258);
    dungeon:AddAchievementIDs(658, 679); -- Defeat the bosses in X
end

dungeons.TheBotanica = {} -- 2.0
function dungeons.TheBotanica.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(257);
    dungeon:AddAchievementIDs(659, 680); -- Defeat the bosses in X
end

dungeons.TheArcatraz = {} -- 2.0
function dungeons.TheArcatraz.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(254);
    dungeon:AddAchievementIDs(660, 681); -- Defeat the bosses in X
end

dungeons.MagistersTerrace = {} -- 2.4
function dungeons.MagistersTerrace.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(249);
    dungeon:AddAchievementIDs(661, 682); -- Defeat the bosses in X
    dungeon:AddNewAchievement(884, true); -- Mounts (Obtainable)
end

function dungeons.Load(expansion)
    local catDungeons = expansion:AddCatDungeons();
    catDungeons:AddAchievementIDs(1284, 1287); -- Overarching achievements

    dungeons.HellfireRamparts.Load(catDungeons);
    dungeons.TheBloodFurnace.Load(catDungeons);
    dungeons.TheShatteredHalls.Load(catDungeons);
    dungeons.TheSlavePens.Load(catDungeons);
    dungeons.TheUnderbog.Load(catDungeons);
    dungeons.TheSteamvault.Load(catDungeons);
    dungeons.ManaTombs.Load(catDungeons);
    dungeons.AuchenaiCrypts.Load(catDungeons);
    dungeons.SethekkHalls.Load(catDungeons);
    dungeons.ShadowLabyrinth.Load(catDungeons);
    dungeons.OldHillsbradFoothills.Load(catDungeons);
    dungeons.TheBlackMorass.Load(catDungeons);
    dungeons.TheMechanar.Load(catDungeons);
    dungeons.TheBotanica.Load(catDungeons);
    dungeons.TheArcatraz.Load(catDungeons);
    dungeons.MagistersTerrace.Load(catDungeons);
end