-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local achievementCategory = addon.Objects.AchievementCategory;
addon.TheBurningCrusade = {};
local theBurningCrusade = addon.TheBurningCrusade;

function theBurningCrusade.Load()
    local expansion = achievementCategory:NewCatInfo(14865);
    tinsert(addon.Data, expansion);

    theBurningCrusade.Dungeons.Load(expansion);
    theBurningCrusade.Raids.Load(expansion);
    diagnostics.Debug("     - The Burning Crusade loaded");
end