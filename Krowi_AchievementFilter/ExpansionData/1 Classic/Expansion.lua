local _, addon = ...; -- Global addon namespace
addon.Classic = {}; -- Global expansion namespace
local classic = addon.Classic; -- Local expansion namespace
local achCat = addon.Objects.AchievementCategory; -- Local achievement category class

function classic.Load()
    local expansion = achCat:NewCatInfo(14864);
    tinsert(addon.Data, expansion);

    classic.Dungeons.Load(expansion);
    classic.Raids.Load(expansion);
end