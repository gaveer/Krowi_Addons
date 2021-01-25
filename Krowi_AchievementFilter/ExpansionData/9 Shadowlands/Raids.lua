-- [[ Namespaces ]] --
local _, addon = ...;
addon.Shadowlands.Raids = {};
local raids = addon.Shadowlands.Raids;

raids.CastleNathria = {}; -- 9.0
function raids.CastleNathria.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(1190);
    raid:AddAchievementIDsWithIATLink(14293, 14523, 14376, 14524, 14617, 14608, 14619, 14294, 14525, 14610); -- Glory of the Nathria Raider
    raid:AddAchievementIDs(14715, 14717, 14718); -- Defeat the bosses in X
    raid:AddAchievementIDs(14356, 14357, 14358, 14361, 14359, 14360, 14362, 14363, 14364, 14365); -- Defeat X on Mythic Difficulty
    raid:AddAchievementFull(14460, true); -- Feats of Strength (Obtainable)
    raid:AddAchievementFull(14461, true); -- Feats of Strength (Obtainable)
end

function raids.Load(expansion)
    local catRaids = expansion:AddCatRaids();
    catRaids:AddAchievementIDs(14355); -- Overarching achievements

    raids.CastleNathria.Load(catRaids);
end