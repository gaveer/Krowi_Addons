-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local achievementCategory = addon.Objects.AchievementCategory;
addon.Classic = {};
local classic = addon.Classic;

function classic.Load()
    local expansion = achievementCategory:NewCatInfo(14864);
    tinsert(addon.Data, expansion);

    classic.Dungeons.Load(expansion);
    classic.Raids.Load(expansion);
    diagnostics.Debug("     - Classic loaded");
end