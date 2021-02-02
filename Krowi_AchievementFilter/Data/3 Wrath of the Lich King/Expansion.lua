-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local achievementCategory = addon.Objects.AchievementCategory;
addon.WrathOfTheLichKing = {};
local wrathOfTheLichKing = addon.WrathOfTheLichKing;

function wrathOfTheLichKing.Load()
    local expansion = achievementCategory:NewCatInfo(14866);
    tinsert(addon.Data, expansion);

    wrathOfTheLichKing.Dungeons.Load(expansion);
    wrathOfTheLichKing.Raids.Load(expansion);
    diagnostics.Debug("     - Wrath of the Lich King loaded");
end