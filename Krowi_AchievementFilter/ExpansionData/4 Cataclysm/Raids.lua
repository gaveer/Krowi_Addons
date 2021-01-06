local _, addon = ...; -- Global addon namespace
addon.Cataclysm.Raids = {}; -- Global expansion Raids namespace
local raids = addon.Cataclysm.Raids; -- Local expansion Raids namespace

raids.BaradinHold = {}; -- 4.0
function raids.BaradinHold.Load(catRaids)
	local raid = catRaids:AddCatInstanceInfo(75);
    raid:AddAchievementIDs(5416, 6045 --[[4.2]], 6108 --[[4.3]]); -- Defeat the bosses in X
end

raids.BlackwingDescent = {}; -- 4.0  -- Issue #9 : Fix
function raids.BlackwingDescent.Load(catRaids)
	local raid = catRaids:AddCatInstanceInfo(73);
    raid:AddAchievementIDsWithIATLink(5306, 5307, 5309, 5308, 5310, 4849); -- Glory of the Cataclysm Raider
    raid:AddAchievementIDs(4842); -- Defeat X on Heroic Difficulty
    raid:AddAchievementIDs(5094, 5107, 5115, 5109, 5108, 5116); -- Defeat the bosses in X
end

raids.TheBastionOfTwilight = {}; -- 4.0
function raids.TheBastionOfTwilight.Load(catRaids)
	local raid = catRaids:AddCatInstanceInfo(72);
    raid:AddAchievementIDsWithIATLink(5300, 4852, 5311, 5312); -- Glory of the Cataclysm Raider
    raid:AddAchievementIDs(5118, 5117, 5119, 5120, 5121); -- Defeat X on Heroic Difficulty
    raid:AddAchievementIDs(4850); -- Defeat the bosses in X
    raid:AddAchievementIDsUnobtainable(5313); -- Feats of Strength (Unobtainable)
end

raids.ThroneOfTheFourWinds = {}; -- 4.0
function raids.ThroneOfTheFourWinds.Load(catRaids)
	local raid = catRaids:AddCatInstanceInfo(74);
    raid:AddAchievementIDsWithIATLink(5304, 5305); -- Glory of the Cataclysm Raider
    raid:AddAchievementIDs(5122, 5123); -- Defeat X on Heroic Difficulty
    raid:AddAchievementIDs(4851); -- Defeat the bosses in X
end

raids.Firelands = {}; -- 4.2
function raids.Firelands.Load(catRaids)
	local raid = catRaids:AddCatInstanceInfo(78);
    raid:AddAchievementIDsWithIATLink(5821, 5813, 5810, 5829, 5830, 5799, 5855); -- Glory of the Firelands Raider
    raid:AddAchievementIDs(5807, 5809, 5808, 5806, 5805, 5804, 5803); -- Defeat X on Heroic Difficulty
    raid:AddAchievementIDs(5802); -- Defeat the bosses in X
end

raids.DragonSoul = {}; -- 4.3
function raids.DragonSoul.Load(catRaids)
	local raid = catRaids:AddCatInstanceInfo(187);
    raid:AddAchievementIDsWithIATLink(6174, 6128, 6129, 6175, 6084, 6105, 6133, 6180); -- Glory of the Dragon Soul Raider
    raid:AddAchievementIDs(6109, 6110, 6111, 6112, 6113, 6114, 6115, 6116); -- Defeat X on Heroic Difficulty
    raid:AddAchievementIDs(6106, 6107, 6177); -- Defeat the bosses in X
end

function raids.Load(expansion)
    local catRaids = expansion:AddCatRaids();
    catRaids:AddAchievementIDs(4853, 5828, 6169); -- Overarching achievements

    raids.BaradinHold.Load(catRaids);
    raids.BlackwingDescent.Load(catRaids);  -- Issue #9 : Fix
    raids.TheBastionOfTwilight.Load(catRaids);
    raids.ThroneOfTheFourWinds.Load(catRaids);
    raids.Firelands.Load(catRaids);
    raids.DragonSoul.Load(catRaids);
end