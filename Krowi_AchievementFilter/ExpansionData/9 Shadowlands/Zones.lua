local _, addon = ...; -- Global addon namespace
addon.Shadowlands.Zones = {}; -- Global expansion Zones namespace
local zones = addon.Shadowlands.Zones; -- Local expansion Zones namespace

zones.Oribos = {}; -- 9.0
function zones.Oribos.Load(catZones)
    local zone = catZones:AddCatMapInfo(1671);
    zone:AddCatQuests():AddAchievementIDs();
    zone:AddCatExploration():AddAchievementIDs();
    zone:AddCatPvP():AddAchievementIDs();
    zone:AddCatReputation():AddAchievementIDs();
end

zones.Bastion = {}; -- 9.0
function zones.Bastion.Load(catZones)
    local zone = catZones:AddCatMapInfo(1533);
    zone:AddCatQuests():AddAchievementIDs(14281, 14801, 14737, 14735, 14741, 14762);
    zone:AddCatExploration():AddAchievementIDs(14303, 14307, 14311, 14339, 14734, 14767, 14768, 14733);
    zone:AddCatPvP():AddAchievementIDs(14514);
    zone:AddCatReputation():AddAchievementIDs(14335);
end

zones.Maldraxxus = {}; -- 9.0
function zones.Maldraxxus.Load(catZones)
    local zone = catZones:AddCatMapInfo(1536);
    zone:AddCatQuests():AddAchievementIDs(14206, 14799);
    zone:AddCatExploration():AddAchievementIDs(14305, 14308, 14312, 14626, 14802, 14721, 14634, 14763);
    zone:AddCatPvP():AddAchievementIDs(14513);
    zone:AddCatReputation():AddAchievementIDs(14336);
end

zones.Ardenweald = {}; -- 9.0
function zones.Ardenweald.Load(catZones)
    local zone = catZones:AddCatMapInfo(1565);
    zone:AddCatQuests():AddAchievementIDs(14164, 14800, 14671, 14672);
    local exploration = zone:AddCatExploration();
    exploration:AddAchievementIDs(14304, 14309, 14313, 14353, 14791, 14774, 14788, 14779);
    exploration:AddAchievementIDs(14504, 14505, 14506, 14507, 14508, 14509, 14510); -- Obtainable but do not reward points and are gained silently, related to meta 14353
    zone:AddCatPvP():AddAchievementIDs(14511);
    zone:AddCatReputation():AddAchievementIDs(14337);
end

zones.Revendreth = {}; -- 9.0
function zones.Revendreth.Load(catZones)
    local zone = catZones:AddCatMapInfo(1525);
    zone:AddCatQuests():AddAchievementIDs(13878, 14798, 14233, 14765, 14766, 14772);
    zone:AddCatExploration():AddAchievementIDs(14306, 14310, 14314, 14277, 14274, 14272, 14276, 14769, 14771, 14770, 14273);
    zone:AddCatPvP():AddAchievementIDs(14512);
    zone:AddCatReputation():AddAchievementIDs(14338);
end

zones.TheMaw = {}; -- 9.0
function zones.TheMaw.Load(catZones)
    local zone = catZones:AddCatMapInfo(1543);
    zone:AddCatQuests():AddAchievementIDs(14334);
    zone:AddCatExploration():AddAchievementIDs(14663, 14658, 14659, 14660, 14738, 14742, 14743, 14744, 14745, 14746, 14747, 14761, 14894, 14895);
    -- zone:AddCatPvP():AddAchievementIDs();
    zone:AddCatReputation():AddAchievementIDs(14656);
end

function zones.Load(expansion)
    local catZones = expansion:AddCatZones();
    catZones:AddAchievementIDs(14280, 14790, 14758); -- Quests
    catZones:AddAchievementIDs(14825, 14731); -- Exploration
    catZones:AddAchievementIDs(14515, 14516, 14517, 14518, 14519, 14520); -- PvP
    catZones:AddAchievementIDs(14315); -- Reputation

    -- zones.Oribos.Load(zones);
    zones.Bastion.Load(catZones);
    zones.Maldraxxus.Load(catZones);
    zones.Ardenweald.Load(catZones);
    zones.Revendreth.Load(catZones);
    zones.TheMaw.Load(catZones);
end