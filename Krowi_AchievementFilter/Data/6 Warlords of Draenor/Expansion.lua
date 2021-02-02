-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local achievementCategory = addon.Objects.AchievementCategory;
addon.WarlordsOfDreanor = {};
local warlordsOfDreanor = addon.WarlordsOfDreanor;

function warlordsOfDreanor.Load()
    local expansion = achievementCategory:NewCatInfo(15233);
    tinsert(addon.Data, expansion);

    warlordsOfDreanor.Dungeons.Load(expansion);
    warlordsOfDreanor.Raids.Load(expansion);
    diagnostics.Debug("     - Warlords of Dreanor loaded");
end