local _, addon = ...; -- Global addon namespace
addon.BattleForAzeroth.Zones = {}; -- Global expansion Zones namespace
local zones = addon.BattleForAzeroth.Zones; -- Local expansion Zones namespace

zones.Boralus = {}; -- 8.0
function zones.Boralus.Load(catZones)
    local zone = catZones:AddCatMapInfo(1161);
    zone:AddCatQuests():AddAchievementIDs();
    zone:AddCatExploration():AddAchievementIDs();
    zone:AddCatPvP():AddAchievementIDs();
    zone:AddCatReputation():AddAchievementIDs();
end

zones.Dazaralor = {}; -- 8.0
function zones.Dazaralor.Load(catZones)
    local zone = catZones:AddCatMapInfo(1165);
    zone:AddCatQuests():AddAchievementIDs();
    zone:AddCatExploration():AddAchievementIDs();
    zone:AddCatPvP():AddAchievementIDs();
    zone:AddCatReputation():AddAchievementIDs();
end

zones.TiragardeSound = {}; -- 8.0
function zones.TiragardeSound.Load(catZones)
    local zone = catZones:AddCatMapInfo(895);
    zone:AddCatQuests():AddAchievementIDs();
    zone:AddCatExploration():AddAchievementIDs();
    zone:AddCatPvP():AddAchievementIDs();
    zone:AddCatReputation():AddAchievementIDs();
end

zones.Drustvar = {}; -- 8.0
function zones.Drustvar.Load(catZones)
    local zone = catZones:AddCatMapInfo(896);
    zone:AddCatQuests():AddAchievementIDs();
    zone:AddCatExploration():AddAchievementIDs();
    zone:AddCatPvP():AddAchievementIDs();
    zone:AddCatReputation():AddAchievementIDs();
end

zones.StormsongValley = {}; -- 8.0
function zones.StormsongValley.Load(catZones)
    local zone = catZones:AddCatMapInfo(942);
    zone:AddCatQuests():AddAchievementIDs();
    zone:AddCatExploration():AddAchievementIDs();
    zone:AddCatPvP():AddAchievementIDs();
    zone:AddCatReputation():AddAchievementIDs();
end

zones.Zuldazar = {}; -- 8.0
function zones.Zuldazar.Load(catZones)
    local zone = catZones:AddCatMapInfo(862);
    zone:AddCatQuests():AddAchievementIDs();
    zone:AddCatExploration():AddAchievementIDs();
    zone:AddCatPvP():AddAchievementIDs();
    zone:AddCatReputation():AddAchievementIDs();
end

zones.Nazmir = {}; -- 8.0
function zones.Nazmir.Load(catZones)
    local zone = catZones:AddCatMapInfo(863);
    zone:AddCatQuests():AddAchievementIDs();
    zone:AddCatExploration():AddAchievementIDs();
    zone:AddCatPvP():AddAchievementIDs();
    zone:AddCatReputation():AddAchievementIDs();
end

zones.Voldun = {}; -- 8.0
function zones.Voldun.Load(catZones)
    local zone = catZones:AddCatMapInfo(864);
    zone:AddCatQuests():AddAchievementIDs();
    zone:AddCatExploration():AddAchievementIDs();
    zone:AddCatPvP():AddAchievementIDs();
    zone:AddCatReputation():AddAchievementIDs();
end

zones.MechagonIsland = {}; -- 8.2
function zones.MechagonIsland.Load(catZones)
    local zone = catZones:AddCatMapInfo(1462);
    zone:AddCatQuests():AddAchievementIDs();
    zone:AddCatExploration():AddAchievementIDs();
    zone:AddCatPvP():AddAchievementIDs();
    zone:AddCatReputation():AddAchievementIDs();
end

zones.Nazjatar = {}; -- 8.2
function zones.Nazjatar.Load(catZones)
    local zone = catZones:AddCatMapInfo(1355);
    zone:AddCatQuests():AddAchievementIDs();
    zone:AddCatExploration():AddAchievementIDs();
    zone:AddCatPvP():AddAchievementIDs();
    zone:AddCatReputation():AddAchievementIDs();
end

zones.ValeOfEternalBlossoms = {}; -- 8.3
function zones.ValeOfEternalBlossoms.Load(catZones)
    local zone = catZones:AddCatMapInfo(1530);
    zone:AddCatQuests():AddAchievementIDs();
    zone:AddCatExploration():AddAchievementIDs();
    zone:AddCatPvP():AddAchievementIDs();
    zone:AddCatReputation():AddAchievementIDs();
end

zones.Uldum = {}; -- 8.3
function zones.Uldum.Load(catZones)
    local zone = catZones:AddCatMapInfo(1527);
    zone:AddCatQuests():AddAchievementIDs();
    zone:AddCatExploration():AddAchievementIDs();
    zone:AddCatPvP():AddAchievementIDs();
    zone:AddCatReputation():AddAchievementIDs();
end

function zones.Load(expansion)
    local catZones = expansion:AddCatZones();
    catZones:AddAchievementIDs(); -- Quests
    catZones:AddAchievementIDs(); -- Exploration
    catZones:AddAchievementIDs(); -- PvP
    catZones:AddAchievementIDs(); -- Reputation

    if addon.Faction.IsAlliance then
        zones.Boralus.Load(catZones);
        zones.TiragardeSound.Load(catZones);
        zones.Drustvar.Load(catZones);
        zones.StormsongValley.Load(catZones);
        zones.Zuldazar.Load(catZones);
        zones.Nazmir.Load(catZones);
        zones.Voldun.Load(catZones);
    elseif addon.Faction.IsHorde then
        zones.Dazaralor.Load(catZones);
        zones.Zuldazar.Load(catZones);
        zones.Nazmir.Load(catZones);
        zones.Voldun.Load(catZones);
        zones.TiragardeSound.Load(catZones);
        zones.Drustvar.Load(catZones);
        zones.StormsongValley.Load(catZones);
    end
    zones.MechagonIsland.Load(catZones);
    zones.Nazjatar.Load(catZones);
    zones.ValeOfEternalBlossoms.Load(catZones);
    zones.Uldum.Load(catZones);
end