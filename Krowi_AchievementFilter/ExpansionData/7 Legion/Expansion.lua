local _, addon = ...; -- Global addon namespace
addon.Legion = {}; -- Global expansion namespace
local legion = addon.Legion; -- Local expansion namespace
local achCat = addon.Objects.AchievementCategory; -- Local achievement category class

function legion.Load()
    local expansion = achCat:NewCatInfo(15258);
    tinsert(addon.Data, expansion);

    legion.Dungeons.Load(expansion);
    legion.Raids.Load(expansion);
end