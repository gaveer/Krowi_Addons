-- [[ Namespaces ]] --
local _, addon = ...;
addon.WarlordsOfDreanor.Raids = {};
local raids = addon.WarlordsOfDreanor.Raids;

raids.Highmaul = {}; -- 6.0
function raids.Highmaul.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(477);
    raid:AddAchievementIDsWithIATLink(8948, 8947, 8974, 8975, 8958, 8976, 8977); -- Glory of the Draenor Raider
    raid:AddAchievementIDs(8949, 8960, 8961, 8962, 8963, 8964, 8965); -- Defeat X on Mythic Difficulty
    raid:AddAchievementIDs(8986, 8987, 8988); -- Defeat the bosses in X
    raid:AddAchievementIDsUnobtainable(9441, 9442); -- Feats of Strength (Unobtainable)
end

raids.BlackrockFoundry = {}; -- 6.0
function raids.BlackrockFoundry.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(457);
    raid:AddAchievementIDsWithIATLink(8979, 8978, 8930, 8980, 8929, 8983, 8981, 8982, 8984, 8952); -- Glory of the Draenor Raider
    raid:AddAchievementIDs(8967, 8966, 8970, 8968, 8932, 8971, 8956, 8969, 8972, 8973); -- Defeat X on Mythic Difficulty
    raid:AddAchievementIDs(8989, 8990, 8991, 8992); -- Defeat the bosses in X
    raid:AddAchievementIDsUnobtainable(9444, 9443); -- Feats of Strength (Unobtainable)
end

raids.HellfireCitadel = {}; -- 6.2
function raids.HellfireCitadel.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(669);
    raid:AddAchievementIDsWithIATLink(10026, 10057, 10013, 10054, 9972, 9979, 9988, 10086, 9989, 10012, 10087, 10030, 10073); -- Glory of the Hellfire Raider
    raid:AddAchievementIDs(10027, 10032, 10033, 10034, 10035, 10253, 10037, 10040, 10041, 10038, 10039, 10042, 10043); -- Defeat X on Mythic Difficulty
    raid:AddAchievementIDs(10023, 10024, 10025, 10020, 10019); -- Defeat the bosses in X
    raid:AddAchievementIDsUnobtainable(9680, 10044, 10045); -- Feats of Strength (Unobtainable)
end

function raids.Load(expansion)
    local catRaids = expansion:AddCatRaids();
    catRaids:AddAchievementIDs(8985, 10149); -- Overarching achievements

    raids.Highmaul.Load(catRaids);
    raids.BlackrockFoundry.Load(catRaids);
    raids.HellfireCitadel.Load(catRaids);
end