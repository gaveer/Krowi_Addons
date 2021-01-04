local _, addon = ...; -- Global addon namespace
addon.BattleForAzeroth = {}; -- Global expansion namespace
local battleForAzeroth = addon.BattleForAzeroth; -- Local expansion namespace
local achCat = addon.Objects.AchievementCategory; -- Local achievement category class

function battleForAzeroth.Load()
    local expansion = achCat:NewCatInfo(15305);
    tinsert(addon.Data, expansion);

    battleForAzeroth.Dungeons.Load(expansion);
    battleForAzeroth.Raids.Load(expansion);
end