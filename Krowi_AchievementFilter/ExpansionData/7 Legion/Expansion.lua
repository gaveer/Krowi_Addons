-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local achievementCategory = addon.Objects.AchievementCategory;
addon.Legion = {};
local legion = addon.Legion;

function legion.Load()
    local expansion = achievementCategory:NewCatInfo(15258);
    tinsert(addon.Data, expansion);

    legion.Dungeons.Load(expansion);
    legion.Raids.Load(expansion);
    diagnostics.Debug("     - Legion loaded");
end