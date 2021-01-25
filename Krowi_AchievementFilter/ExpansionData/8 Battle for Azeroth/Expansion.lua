-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local achievementCategory = addon.Objects.AchievementCategory;
addon.BattleForAzeroth = {};
local battleForAzeroth = addon.BattleForAzeroth;

function battleForAzeroth.Load()
    local expansion = achievementCategory:NewCatInfo(15305);
    tinsert(addon.Data, expansion);

    battleForAzeroth.Zones.Load(expansion);
    battleForAzeroth.Dungeons.Load(expansion);
    battleForAzeroth.Raids.Load(expansion);
    battleForAzeroth.PetBattles.Load(expansion);
    diagnostics.Debug("     - Battle for Azeroth loaded");
end