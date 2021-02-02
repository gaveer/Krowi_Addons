-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local achievementCategory = addon.Objects.AchievementCategory;
addon.Cataclysm = {};
local cataclysm = addon.Cataclysm;

function cataclysm.Load()
    local expansion = achievementCategory:NewCatInfo(15072);
    tinsert(addon.Data, expansion);

    cataclysm.Dungeons.Load(expansion);
    cataclysm.Raids.Load(expansion);
    diagnostics.Debug("     - Cataclysm loaded");
end