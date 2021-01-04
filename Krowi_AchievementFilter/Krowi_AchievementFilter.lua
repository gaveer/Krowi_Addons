AF_COLOR = "|cFF1D92C2";
AF_NAME = "Krowi's " .. AF_COLOR .. "Achievement Filter|r";
AF_VERSION = GetBuildInfo();
AF_BUILD = GetAddOnMetadata("Krowi_AchievementFilter", "Version");
AF_VERSION_BUILD = "v" .. AF_VERSION .. "." .. AF_BUILD;

local _, addon = ...; -- Global addon namespace
addon.Data = {}; -- Global expansion data
addon.Faction = {}; -- Global faction data
addon.Faction.IsAlliance = UnitFactionGroup("player") == "Alliance";
addon.Faction.IsHorde = UnitFactionGroup("player") == "Horde";
addon.Faction.IsNeutral = UnitFactionGroup("player") == "Neutral";

KrowiAF = {}; -- Still needed for legacy purposes, can be removed after full rewrite

local loadHelper = CreateFrame("Frame");
loadHelper:RegisterEvent("ADDON_LOADED");

function loadHelper:OnEvent(event, arg1)
    if event == "ADDON_LOADED" and arg1 == "Krowi_AchievementFilter" then
        addon.Diagnostics.Load();
        addon.Options.Load();
        addon.Icon.Load();
        addon.Legion.Load();
        addon.BattleForAzeroth.Load();
        addon.Shadowlands.Load();
        self:UnregisterEvent("ADDON_LOADED");
    end
end
loadHelper:SetScript("OnEvent", loadHelper.OnEvent);