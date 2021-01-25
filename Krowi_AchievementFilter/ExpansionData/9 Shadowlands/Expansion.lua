-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local achievementCategory = addon.Objects.AchievementCategory;
addon.Shadowlands = {};
local shadowlands = addon.Shadowlands;

function shadowlands.Load()
    local expansion = achievementCategory:NewCatInfo(15439);
    tinsert(addon.Data, expansion);

    shadowlands.Zones.Load(expansion);
    shadowlands.Dungeons.Load(expansion);
    shadowlands.Raids.Load(expansion);
    shadowlands.PetBattles.Load(expansion);
    diagnostics.Debug("     - Shadowlands loaded");
end