-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local achievementCategory = addon.Objects.AchievementCategory;
addon.MistsOfPandaria = {};
local mistsOfPandaria = addon.MistsOfPandaria;

function mistsOfPandaria.Load()
    local expansion = achievementCategory:NewCatInfo(15164);
    tinsert(addon.Data, expansion);

    mistsOfPandaria.Scenarios.Load(expansion);
    mistsOfPandaria.Dungeons.Load(expansion);
    mistsOfPandaria.Raids.Load(expansion);
    diagnostics.Debug("     - Mists of Pandaria loaded");
end