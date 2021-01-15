local addonName, addon = ...;

addon.L = LibStub(addon.Libs.AceLocale):GetLocale(addonName);

addon.Faction = {}; -- Global faction data
addon.Faction.IsAlliance = UnitFactionGroup("player") == "Alliance";
addon.Faction.IsHorde = UnitFactionGroup("player") == "Horde";
addon.Faction.IsNeutral = UnitFactionGroup("player") == "Neutral";

function addon.InGuildView()
    return AchievementFrameHeaderTitle:GetText() == GUILD_ACHIEVEMENTS_TITLE;
end

local loadHelper = CreateFrame("Frame");
loadHelper:RegisterEvent("ADDON_LOADED");
loadHelper:RegisterEvent("PLAYER_LOGIN");

function loadHelper:OnEvent(event, arg1)
    if event == "ADDON_LOADED" then
        if arg1 == "Krowi_AchievementFilter" then -- This always needs to load
            addon.Diagnostics.Load();
            addon.Options.Load();
            addon.Icon.Load();
            addon.Tutorials.Load();
        elseif arg1 == "Blizzard_AchievementUI" then -- This needs the Blizzard_AchievementUI addon available to load
            addon.GUI.AchievementsFrame1 = addon.GUI.AchievementsFrame:New();
            addon.GUI.CategoriesFrame1 = addon.GUI.CategoriesFrame:New(addon.Categories, addon.GUI.AchievementsFrame1.Frame);
            addon.GUI.TabButton1 = addon.GUI.AchievementFrameTabButton:New(addon.L["T_TAB_TEXT"], addon.GUI.CategoriesFrame1.Frame, addon.GUI.AchievementsFrame1.Frame);
            addon.Tutorials.HookTrigger(addon.GUI.TabButton1);
        end
    elseif event == "PLAYER_LOGIN" then -- This needs player achievement info which is not yet available on "ADDON_LOADED"
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
    end
end
loadHelper:SetScript("OnEvent", loadHelper.OnEvent);