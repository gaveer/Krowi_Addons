local _, addon = ...; -- Global addon namespace
addon.MistsOfPandaria = {}; -- Global expansion namespace
local mistsOfPandaria = addon.MistsOfPandaria; -- Local expansion namespace
local achCat = addon.Objects.AchievementCategory; -- Local achievement category class

function mistsOfPandaria.Load()
    local expansion = achCat:NewCatInfo(15164);
    tinsert(addon.Data, expansion);

    mistsOfPandaria.Scenarios.Load(expansion);
    mistsOfPandaria.Dungeons.Load(expansion);
    mistsOfPandaria.Raids.Load(expansion);
end