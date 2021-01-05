local _, addon = ...; -- Global addon namespace
addon.Shadowlands = {}; -- Global expansion namespace
local shadowlands = addon.Shadowlands; -- Local expansion namespace
local achCat = addon.Objects.AchievementCategory; -- Local achievement category class

function shadowlands.Load()
    local expansion = achCat:NewCatInfo(15439);
    tinsert(addon.Data, expansion);

    shadowlands.Zones.Load(expansion);
    shadowlands.Dungeons.Load(expansion);
    shadowlands.Raids.Load(expansion);
    shadowlands.PetBattles.Load(expansion);

    addon.Diagnostics.DebugTable(shadowlands.Zones, nil, true);
end