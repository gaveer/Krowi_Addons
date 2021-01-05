local _, addon = ...; -- Global addon namespace
addon.Cataclysm = {}; -- Global expansion namespace
local cataclysm = addon.Cataclysm; -- Local expansion namespace
local achCat = addon.Objects.AchievementCategory; -- Local achievement category class

function cataclysm.Load()
    local expansion = achCat:NewCatInfo(15072);
    tinsert(addon.Data, expansion);

    cataclysm.Dungeons.Load(expansion);
    cataclysm.Raids.Load(expansion);
end