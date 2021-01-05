local _, addon = ...; -- Global addon namespace
addon.BattleForAzeroth.Raids = {}; -- Global expansion Raids namespace
local raids = addon.BattleForAzeroth.Raids; -- Local expansion Raids namespace

raids.Uldir = {}; -- 8.0
function raids.Uldir.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(1031);
    raid:AddAchievementIDsWithIATLink(12937, 12938, 12828, 12823, 12772, 12830, 12836, 12551); -- Glory of the Uldir Raider
    raid:AddAchievementIDs(12521, 12522, 12523); -- Defeat the bosses in X
    raid:AddAchievementIDs(12524, 12526, 12527, 12530, 12529, 12531, 12532, 12533); -- Defeat X on Mythic Difficulty
    raid:AddAchievementIDsUnobtainable(12536, 12535); -- Feats of Strength (Unobtainable)
end

raids.BattleOfDazaralor = {}; -- 8.1
function raids.BattleOfDazaralor.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(1176);
    raid:AddAchievementIDsWithIATLink(13316); -- Glory of the Dazar'alor Raider
    if addon.Faction.IsAlliance then
        raid:AddAchievementIDsWithIATLink(13431, 13383); -- Glory of the Dazar'alor Raider
    elseif addon.Faction.IsHorde then
        raid:AddAchievementIDsWithIATLink(13383, 13431); -- Glory of the Dazar'alor Raider
    end
    raid:AddAchievementIDsWithIATLink(13345, 13325, 13425, 13401, 13430, 13410); -- Glory of the Dazar'alor Raider
    if addon.Faction.IsAlliance then
        raid:AddAchievementIDs(13286, 13287, 13288); -- Defeat the bosses in X
    elseif addon.Faction.IsHorde then
        raid:AddAchievementIDs(13289, 13290, 13291); -- Defeat the bosses in X
    end
    raid:AddAchievementIDs(13292); -- Defeat X on Mythic Difficulty
    if addon.Faction.IsAlliance then
        raid:AddAchievementIDs(13298, 13293); -- Defeat X on Mythic Difficulty
    elseif addon.Faction.IsHorde then
        raid:AddAchievementIDs(13293, 13295); -- Defeat X on Mythic Difficulty
    end
    raid:AddAchievementIDs(13299, 13300, 13311, 13312, 13313, 13314); -- Defeat X on Mythic Difficulty
    raid:AddAchievementIDsUnobtainable(13322, 13323); -- Feats of Strength (Unobtainable)
end

raids.CrucibleOfStorms = {}; -- 8.1
function raids.CrucibleOfStorms.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(1177);
    raid:AddAchievementIDsWithIATLink(13501, 13506); -- No Glory available
    raid:AddAchievementIDs(13414, 13415); -- Defeat the bosses in X
    raid:AddAchievementIDs(13416, 13417); -- Defeat X on Mythic Difficulty
    raid:AddAchievementIDsUnobtainable(13418, 13419); -- Feats of Strength (Unobtainable)
end

raids.EternalPalace = {}; -- 8.2
function raids.EternalPalace.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(1179);
    raid:AddAchievementIDsWithIATLink(13684, 13628, 13767, 13629, 13724, 13633, 13716, 13768); -- Glory of the Eternal Raider
    raid:AddAchievementIDs(13718, 13719, 13725); -- Defeat the bosses in X
    raid:AddAchievementIDs(13726, 13728, 13727, 13729, 13730, 13731, 13732, 13733); -- Defeat X on Mythic Difficulty
    raid:AddAchievementIDsUnobtainable(13784, 13785); -- Feats of Strength (Unobtainable)
end

raids.Nyalotha = {}; -- 8.3
function raids.Nyalotha.Load(catRaids)
    local raid = catRaids:AddCatInstanceInfo(1180);
    raid:AddAchievementIDsWithIATLink(14019, 14008, 14037, 14024, 14139, 14023, 13999, 13990, 14026, 14038, 14147, 14148); -- Glory of the Ny'alotha Raider
    raid:AddAchievementIDs(14193, 14194, 14195, 14196); -- Defeat the bosses in X
    raid:AddAchievementIDs(14041, 14043, 14044, 14045, 14050, 14046, 14051, 14048, 14049, 14052, 14054, 14055); -- Defeat X on Mythic Difficulty
    raid:AddAchievementIDsUnobtainable(14068, 14069); -- Feats of Strength (Unobtainable)
end

function raids.Load(expansion)
    local catRaids = expansion:AddCatRaids();
    catRaids:AddAchievementIDs(12806, 13315, 13687, 14146); -- Overarching achievements

    raids.Uldir.Load(catRaids);
    raids.BattleOfDazaralor.Load(catRaids);
    raids.CrucibleOfStorms.Load(catRaids);
    raids.EternalPalace.Load(catRaids);
    raids.Nyalotha.Load(catRaids);
end