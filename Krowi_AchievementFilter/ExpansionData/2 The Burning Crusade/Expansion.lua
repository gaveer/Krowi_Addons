local _, addon = ...; -- Global addon namespace
addon.TheBurningCrusade = {}; -- Global expansion namespace
local theBurningCrusade = addon.TheBurningCrusade; -- Local expansion namespace
local achCat = addon.Objects.AchievementCategory; -- Local achievement category class

function theBurningCrusade.Load()
    local expansion = achCat:NewCatInfo(14865);
    tinsert(addon.Data, expansion);

    theBurningCrusade.Dungeons.Load(expansion);
    theBurningCrusade.Raids.Load(expansion);
end