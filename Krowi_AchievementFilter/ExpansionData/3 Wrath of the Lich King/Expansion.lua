local _, addon = ...; -- Global addon namespace
addon.WrathOfTheLichKing = {}; -- Global expansion namespace
local wrathOfTheLichKing = addon.WrathOfTheLichKing; -- Local expansion namespace
local achCat = addon.Objects.AchievementCategory; -- Local achievement category class

function wrathOfTheLichKing.Load()
    local expansion = achCat:NewCatInfo(14866);
    tinsert(addon.Data, expansion);

    wrathOfTheLichKing.Dungeons.Load(expansion);
    wrathOfTheLichKing.Raids.Load(expansion);
end