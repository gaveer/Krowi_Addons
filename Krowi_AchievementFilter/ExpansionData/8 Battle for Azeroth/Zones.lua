local _, addon = ...; -- Global addon namespace
addon.BattleForAzeroth.Zones = {}; -- Global expansion Zones namespace
local zones = addon.BattleForAzeroth.Zones; -- Local expansion Zones namespace

zones.KulTiras = {}; -- 8.0
function zones.KulTiras.Load(catZones)
    local zone = catZones:AddCatMapInfo(876);
    zone:AddCatQuests():AddAchievementIDs(12582, 12997, 12593, 12891, 13512, 13384, 12510, 13467, 13925, 13517, 13283, 13251, 13144, 13060, 13048, 14161, 14157);
    -- 13488 (comes after 13251) is a hidden achievement identical to 13251, not addint it for now
    zone:AddCatExploration():AddAchievementIDs(12989, 13250, 14160, 14159, 14158, 13061, 12482, 13036, 13029, 13027, 14730);
    zone:AddCatPvP():AddAchievementIDs(13429, 13317, 12572, 12571, 12573, 12605, 12856, 12857, 12858, 12860, 12863, 12859, 12861, 12862, 13387, 13402, 13623);
    zone:AddCatReputation():AddAchievementIDs(12947, 12955, 12956);
end

zones.Zandalar = {}; -- 8.0
function zones.Zandalar.Load(catZones)
    local zone = catZones:AddCatMapInfo(875);
    zone:AddCatQuests():AddAchievementIDs(12555, 12479, 13294, 13512, 12509, 13466, 13924, 13517, 13284, 13144, 13048, 13263, 14161, 14157);
    zone:AddCatExploration():AddAchievementIDs(12989, 13250, 14160, 14159, 14158, 13061, 12482, 13036, 13029, 13027, 14730);
    zone:AddCatPvP():AddAchievementIDs(13429, 13317, 12572, 12571, 12573, 12604, 12856, 12857, 12858, 12860, 12863, 12859, 12861, 12862, 13388, 13403, 13623);
    zone:AddCatReputation():AddAchievementIDs(12947, 12955, 12956);
end

-- zones.Boralus = {}; -- 8.0
-- function zones.Boralus.Load(catZones)
--     local zone = catZones:AddCatMapInfo(1161);
--     zone:AddCatQuests():AddAchievementIDs();
--     zone:AddCatExploration():AddAchievementIDs();
--     zone:AddCatPvP():AddAchievementIDs();
--     zone:AddCatReputation():AddAchievementIDs();
-- end

-- zones.Dazaralor = {}; -- 8.0
-- function zones.Dazaralor.Load(catZones)
--     local zone = catZones:AddCatMapInfo(1165);
--     zone:AddCatQuests():AddAchievementIDs();
--     zone:AddCatExploration():AddAchievementIDs();
--     zone:AddCatPvP():AddAchievementIDs();
--     zone:AddCatReputation():AddAchievementIDs();
-- end

zones.TiragardeSoundA = {}; -- 8.0
function zones.TiragardeSoundA.Load(catZones)
    local zone = catZones:AddCatMapInfo(895);
    zone:AddCatQuests():AddAchievementIDs(12473, 13059, 13050, 13049, 12087, 13285);
    zone:AddCatExploration():AddAchievementIDs(12556, 12939, 12852, 13057, 13058);
    zone:AddCatPvP():AddAchievementIDs(12577);
    zone:AddCatReputation():AddAchievementIDs(12951, 12954);
end

zones.TiragardeSoundH = {}; -- 8.0
function zones.TiragardeSoundH.Load(catZones)
    local zone = catZones:AddCatMapInfo(895);
    zone:AddCatQuests():AddAchievementIDs(13050);
    zone:AddCatExploration():AddAchievementIDs(12556, 12939, 12852, 13057, 13058);
    zone:AddCatPvP():AddAchievementIDs(12577);
    -- zone:AddCatReputation():AddAchievementIDs();
end

zones.DrustvarA = {}; -- 8.0
function zones.DrustvarA.Load(catZones)
    local zone = catZones:AddCatMapInfo(896);
    zone:AddCatQuests():AddAchievementIDs(12497);
    zone:AddCatExploration():AddAchievementIDs(12557, 12941, 12995, 13087, 13083, 13082, 13064, 13094);
    zone:AddCatPvP():AddAchievementIDs(12579);
    zone:AddCatReputation():AddAchievementIDs(12952);
end

zones.DrustvarH = {}; -- 8.0
function zones.DrustvarH.Load(catZones)
    local zone = catZones:AddCatMapInfo(896);
    zone:AddCatQuests():AddAchievementIDs(13435);
    zone:AddCatExploration():AddAchievementIDs(12557, 12941, 12995, 13087, 13083, 13064, 13094);
    zone:AddCatPvP():AddAchievementIDs(12579);
    -- zone:AddCatReputation():AddAchievementIDs();
end

zones.StormsongValleyA = {}; -- 8.0
function zones.StormsongValleyA.Load(catZones)
    local zone = catZones:AddCatMapInfo(942);
    zone:AddCatQuests():AddAchievementIDs(12496, 13054, 13053, 13047, 13046, 13045, 13042, 13062);
    zone:AddCatExploration():AddAchievementIDs(12558, 12940, 12853, 13051);
    zone:AddCatPvP():AddAchievementIDs(12578);
    zone:AddCatReputation():AddAchievementIDs(12953);
end

zones.StormsongValleyH = {}; -- 8.0
function zones.StormsongValleyH.Load(catZones)
    local zone = catZones:AddCatMapInfo(942);
    zone:AddCatQuests():AddAchievementIDs(13054, 13047, 13046, 13045, 13042);
    zone:AddCatExploration():AddAchievementIDs(12558, 12940, 12853, 13051);
    zone:AddCatPvP():AddAchievementIDs(12578);
    -- zone:AddCatReputation():AddAchievementIDs();
end

zones.ZuldazarA = {}; -- 8.0
function zones.ZuldazarA.Load(catZones)
    local zone = catZones:AddCatMapInfo(862);
    zone:AddCatQuests():AddAchievementIDs(13440, 13035);
    zone:AddCatExploration():AddAchievementIDs(12559, 12944, 12851);
    zone:AddCatPvP():AddAchievementIDs(12575, 13439);
    -- zone:AddCatReputation():AddAchievementIDs();
end

zones.ZuldazarH = {}; -- 8.0
function zones.ZuldazarH.Load(catZones)
    local zone = catZones:AddCatMapInfo(862);
    zone:AddCatQuests():AddAchievementIDs(11861, 12480, 12481, 13441, 13039, 13038, 13037, 12719, 13020, 12614, 13030, 13573, 13542, 13035);
    zone:AddCatExploration():AddAchievementIDs(12559, 12944, 12851);
    zone:AddCatPvP():AddAchievementIDs(12575, 13438);
    zone:AddCatReputation():AddAchievementIDs(12950, 12957);
end

zones.NazmirA = {}; -- 8.0
function zones.NazmirA.Load(catZones)
    local zone = catZones:AddCatMapInfo(863);
    zone:AddCatQuests():AddAchievementIDs(13426, 13026, 13023);
    zone:AddCatExploration():AddAchievementIDs(12561, 12942, 12771, 12588, 13024, 13028);
    zone:AddCatPvP():AddAchievementIDs(12574);
    -- zone:AddCatReputation():AddAchievementIDs();
end

zones.NazmirH = {}; -- 8.0
function zones.NazmirH.Load(catZones)
    local zone = catZones:AddCatMapInfo(863);
    zone:AddCatQuests():AddAchievementIDs(11868, 13025, 13023, 13022, 13021);
    zone:AddCatExploration():AddAchievementIDs(12561, 12942, 12771, 12588, 13024, 13028);
    zone:AddCatPvP():AddAchievementIDs(12574);
    zone:AddCatReputation():AddAchievementIDs(12948);
end

zones.VoldunA = {}; -- 8.0
function zones.VoldunA.Load(catZones)
    local zone = catZones:AddCatMapInfo(864);
    zone:AddCatQuests():AddAchievementIDs(13011);
    zone:AddCatExploration():AddAchievementIDs(12560, 12943, 12849, 13016, 13018);
    zone:AddCatPvP():AddAchievementIDs(12576);
    -- zone:AddCatReputation():AddAchievementIDs();
end

zones.VoldunH = {}; -- 8.0
function zones.VoldunH.Load(catZones)
    local zone = catZones:AddCatMapInfo(864);
    zone:AddCatQuests():AddAchievementIDs(12478, 13437, 13009, 13011, 13014, 13041, 13017);
    zone:AddCatExploration():AddAchievementIDs(12560, 12943, 12849, 13016, 13018);
    zone:AddCatPvP():AddAchievementIDs(12576);
    zone:AddCatReputation():AddAchievementIDs(12949);
end

zones.MechagonIslandA = {}; -- 8.2
function zones.MechagonIslandA.Load(catZones)
    local zone = catZones:AddCatMapInfo(1462);
    zone:AddCatQuests():AddAchievementIDs(13553, 13790, 13791);
    zone:AddCatExploration():AddAchievementIDs(13776, 13470, 13472, 13482, 13473, 13474, 13696, 13686, 13475, 13477, 13476, 13555, 13478, 13479, 13556, 13541);
    zone:AddCatPvP():AddAchievementIDs(13570);
    zone:AddCatReputation():AddAchievementIDs(13557);
end

zones.MechagonIslandH = {}; -- 8.2
function zones.MechagonIslandH.Load(catZones)
    local zone = catZones:AddCatMapInfo(1462);
    zone:AddCatQuests():AddAchievementIDs(13700, 13790, 13791);
    zone:AddCatExploration():AddAchievementIDs(13776, 13470, 13472, 13482, 13473, 13474, 13696, 13686, 13475, 13477, 13476, 13555, 13478, 13479, 13556, 13541);
    zone:AddCatPvP():AddAchievementIDs(13570);
    zone:AddCatReputation():AddAchievementIDs(13557);
end

zones.NazjatarA = {}; -- 8.2
function zones.NazjatarA.Load(catZones)
    local zone = catZones:AddCatMapInfo(1355);
    zone:AddCatQuests():AddAchievementIDs(13710);
    zone:AddCatExploration():AddAchievementIDs(13712, 13635, 13690, 13691, 13692, 13743, 13753, 13758, 13744, 13754, 13759, 13745, 13755, 13760, 13704, 13762, 13711, 13765, 13549, 13722, 13699, 13713, 13707, 13763, 13764, 13836, 13638);
    zone:AddCatPvP():AddAchievementIDs(13569, 13568, 13720);
    zone:AddCatReputation():AddAchievementIDs(13558);
end

zones.NazjatarH = {}; -- 8.2
function zones.NazjatarH.Load(catZones)
    local zone = catZones:AddCatMapInfo(1355);
    zone:AddCatQuests():AddAchievementIDs(13709);
    zone:AddCatExploration():AddAchievementIDs(13712, 13635, 13690, 13691, 13692, 13746, 13749, 13750, 13747, 13751, 13756, 13748, 13752, 13757, 13645, 13761, 13711, 13765, 13549, 13722, 13699, 13713, 13707, 13763, 13764, 13836, 13638);
    zone:AddCatPvP():AddAchievementIDs(13569, 13568, 13720);
    zone:AddCatReputation():AddAchievementIDs(13559);
end

zones.ValeOfEternalBlossoms = {}; -- 8.3
function zones.ValeOfEternalBlossoms.Load(catZones)
    local zone = catZones:AddCatMapInfo(1530);
    zone:AddCatQuests():AddAchievementIDs(14154);
    -- zone:AddCatExploration():AddAchievementIDs();
    -- zone:AddCatPvP():AddAchievementIDs();
    zone:AddCatReputation():AddAchievementIDs(14156);
end

zones.Uldum = {}; -- 8.3
function zones.Uldum.Load(catZones)
    local zone = catZones:AddCatMapInfo(1527);
    zone:AddCatQuests():AddAchievementIDs(14153);
    -- zone:AddCatExploration():AddAchievementIDs();
    -- zone:AddCatPvP():AddAchievementIDs();
    zone:AddCatReputation():AddAchievementIDs(14155);
end

function zones.Load(expansion)
    local catZones = expansion:AddCatZones();

    if addon.Faction.IsAlliance then
        zones.KulTiras.Load(catZones);
        -- zones.Boralus.Load(catZones);
        zones.TiragardeSoundA.Load(catZones);
        zones.DrustvarA.Load(catZones);
        zones.StormsongValleyA.Load(catZones);
        zones.ZuldazarA.Load(catZones);
        zones.NazmirA.Load(catZones);
        zones.VoldunA.Load(catZones);
        zones.MechagonIslandA.Load(catZones);
        zones.NazjatarA.Load(catZones);
    elseif addon.Faction.IsHorde then
        zones.Zandalar.Load(catZones);
        -- zones.Dazaralor.Load(catZones);
        zones.ZuldazarH.Load(catZones);
        zones.NazmirH.Load(catZones);
        zones.VoldunH.Load(catZones);
        zones.TiragardeSoundH.Load(catZones);
        zones.DrustvarH.Load(catZones);
        zones.StormsongValleyH.Load(catZones);
        zones.MechagonIslandH.Load(catZones);
        zones.NazjatarH.Load(catZones);
    end
    zones.ValeOfEternalBlossoms.Load(catZones);
    zones.Uldum.Load(catZones);
end