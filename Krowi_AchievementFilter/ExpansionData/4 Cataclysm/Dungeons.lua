-- [[ Namespaces ]] --
local _, addon = ...;
addon.Cataclysm.Dungeons = {};
local dungeons = addon.Cataclysm.Dungeons;

dungeons.BlackrockCaverns = {} -- 4.0
function dungeons.BlackrockCaverns.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(66);
    dungeon:AddAchievementIDsWithIATLink(5281, 5282, 5283, 5284); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs(4833, 5060); -- Defeat the bosses in X
end

dungeons.ThroneOfTheTides = {} -- 4.0
function dungeons.ThroneOfTheTides.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(65);
    dungeon:AddAchievementIDsWithIATLink(5285, 5286); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs(4839, 5061); -- Defeat the bosses in X
end

dungeons.TheStonecore = {} -- 4.0
function dungeons.TheStonecore.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(67);
    dungeon:AddAchievementIDsWithIATLink(5287); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs(4846, 5063); -- Defeat the bosses in X
end

dungeons.TheVortexPinnacle = {} -- 4.0
function dungeons.TheVortexPinnacle.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(68);
    dungeon:AddAchievementIDsWithIATLink(5289, 5288); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs(4847, 5064); -- Defeat the bosses in X
end

dungeons.GrimBatol = {} -- 4.0
function dungeons.GrimBatol.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(71);
    dungeon:AddAchievementIDsWithIATLink(5297, 5298); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs(4840, 5062); -- Defeat the bosses in X
end

dungeons.HallsOfOrigination = {} -- 4.0
function dungeons.HallsOfOrigination.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(70);
    dungeon:AddAchievementIDsWithIATLink(5293, 5294, 5296, 5295); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs(4841, 5065); -- Defeat the bosses in X
end

dungeons.LostCityOfTheTolvir = {} -- 4.0
function dungeons.LostCityOfTheTolvir.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(69);
    dungeon:AddAchievementIDsWithIATLink(5291, 5290, 5292); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs(4848, 5066); -- Defeat the bosses in X
end

dungeons.Deadmines = {} -- 4.0
function dungeons.Deadmines.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(63);
    dungeon:AddAchievementIDsWithIATLink(5366, 5367, 5368, 5369, 5370, 5371); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs(628, 5083); -- Defeat the bosses in X
end

dungeons.ShadowfangKeep = {} -- 4.0
function dungeons.ShadowfangKeep.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(64);
    dungeon:AddAchievementIDsWithIATLink(5503, 5504, 5505); -- Glory of the Cataclysm Hero
    dungeon:AddAchievementIDs(631, 5093); -- Defeat the bosses in X
end

dungeons.ZulGurub = {} -- 4.1
function dungeons.ZulGurub.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(76);
    dungeon:AddAchievementIDsWithIATLink(5743, 5762, 5765, 5759, 5744); -- No Glory available
    dungeon:AddAchievementIDs(5768); -- Defeat the bosses in X
end

dungeons.ZulAman = {} -- 4.1
function dungeons.ZulAman.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(77);
    dungeon:AddAchievementIDsWithIATLink(5858, 5750, 5761, 5760); -- No Glory available
    dungeon:AddAchievementIDs(5769); -- Defeat the bosses in X
end

dungeons.EndTime = {} -- 4.3
function dungeons.EndTime.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(184);
    dungeon:AddAchievementIDsWithIATLink(5995, 6130); -- No Glory available
    dungeon:AddAchievementIDs(6117); -- Defeat the bosses in X
end

dungeons.WellOfEternity = {} -- 4.3
function dungeons.WellOfEternity.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(185);
    dungeon:AddAchievementIDsWithIATLink(6127, 6070); -- No Glory available
    dungeon:AddAchievementIDs(6118); -- Defeat the bosses in X
end

dungeons.HourOfTwilight = {} -- 4.3
function dungeons.HourOfTwilight.Load(catDungeons)
	local dungeon = catDungeons:AddCatInstanceInfo(186);
    dungeon:AddAchievementIDsWithIATLink(6132); -- No Glory available
    dungeon:AddAchievementIDs(6119); -- Defeat the bosses in X
end

function dungeons.Load(expansion)
    local catDungeons = expansion:AddCatDungeons();
    catDungeons:AddAchievementIDs(4844, 4845); -- Overarching achievements

    dungeons.BlackrockCaverns.Load(catDungeons);
    dungeons.ThroneOfTheTides.Load(catDungeons);
    dungeons.TheStonecore.Load(catDungeons);
    dungeons.TheVortexPinnacle.Load(catDungeons);
    dungeons.GrimBatol.Load(catDungeons);
    dungeons.HallsOfOrigination.Load(catDungeons);
    dungeons.LostCityOfTheTolvir.Load(catDungeons);
    dungeons.Deadmines.Load(catDungeons);
    dungeons.ShadowfangKeep.Load(catDungeons);
    dungeons.ZulGurub.Load(catDungeons);
    dungeons.ZulAman.Load(catDungeons);
    dungeons.EndTime.Load(catDungeons);
    dungeons.WellOfEternity.Load(catDungeons);
    dungeons.HourOfTwilight.Load(catDungeons);
end