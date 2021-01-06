AF_COLOR = "|cFF1D92C2";
AF_NAME = "Krowi's " .. AF_COLOR .. "Achievement Filter|r";
AF_VERSION = GetBuildInfo();
AF_BUILD = GetAddOnMetadata("Krowi_AchievementFilter", "Version");
AF_VERSION_BUILD = "v" .. AF_VERSION .. "." .. AF_BUILD;

local _, addon = ...; -- Global addon namespace
addon.Faction = {}; -- Global faction data
addon.Faction.IsAlliance = UnitFactionGroup("player") == "Alliance";
addon.Faction.IsHorde = UnitFactionGroup("player") == "Horde";
addon.Faction.IsNeutral = UnitFactionGroup("player") == "Neutral";

KrowiAF = {}; -- Still needed for legacy purposes, can be removed after full rewrite

function addon.InGuildView()
    return AchievementFrameHeaderTitle:GetText() == GUILD_ACHIEVEMENTS_TITLE;
end

local loadHelper = CreateFrame("Frame");
loadHelper:RegisterEvent("ADDON_LOADED");

function loadHelper:OnEvent(event, arg1)
    if event == "ADDON_LOADED" then
        if arg1 == "Krowi_AchievementFilter" then
            addon.Diagnostics.Load();
            addon.Options.Load();
            addon.Icon.Load();

            addon.Classic.Load();
            addon.TheBurningCrusade.Load();
            addon.WrathOfTheLichKing.Load();
            addon.Cataclysm.Load();
            addon.MistsOfPandaria.Load();
            addon.WarlordsOfDreanor.Load();
            addon.Legion.Load();
            addon.BattleForAzeroth.Load();
            addon.Shadowlands.Load();
            addon.Categories = addon.Data:GetCategoryList(); -- This freezes the game if we load it outside of the loading screen

        elseif arg1 == "Blizzard_AchievementUI" then
            local achievementsFrame = addon.GUI.AchievementsFrame:New();
            local categoriesFrame = addon.GUI.CategoriesFrame:New(addon.Categories, achievementsFrame.Frame);
            addon.GUI.AchievementFrameTabButton:New(AF_TAB_BUTTON_TEXT, categoriesFrame.Frame, achievementsFrame.Frame);
        end
    end
end
loadHelper:SetScript("OnEvent", loadHelper.OnEvent);