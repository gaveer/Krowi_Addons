local _, addon = ...; -- Global addon namespace
addon.WarlordsOfDreanor = {}; -- Global expansion namespace
local warlordsOfDreanor = addon.WarlordsOfDreanor; -- Local expansion namespace
local achCat = addon.Objects.AchievementCategory; -- Local achievement category class

function warlordsOfDreanor.Load()
    local expansion = achCat:NewCatInfo(15233);
    tinsert(addon.Data, expansion);

    warlordsOfDreanor.Dungeons.Load(expansion);
    warlordsOfDreanor.Raids.Load(expansion);
end