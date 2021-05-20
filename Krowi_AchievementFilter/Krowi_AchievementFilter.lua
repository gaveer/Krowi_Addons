-- [[ Namespaces ]] --
local addonName, addon = ...;

-- [[ Ace ]] --
addon.L = LibStub("AceLocale-3.0"):GetLocale(addonName);
addon.Event = {};
LibStub("AceEvent-3.0"):Embed(addon.Event);

-- [[ Binding names ]] --
BINDING_HEADER_AF_NAME = AF_NAME;
BINDING_NAME_AF_OPEN_TAB1 = addon.L["BINDING_NAME_AF_OPEN_TAB1"];

-- [[ Faction data ]] --
addon.Faction = {};
addon.Faction.IsAlliance = UnitFactionGroup("player") == "Alliance";
addon.Faction.IsHorde = UnitFactionGroup("player") == "Horde";
addon.Faction.IsNeutral = UnitFactionGroup("player") == "Neutral";

-- [[ Covenant data ]] --
function addon.GetActiveCovenant()
    return C_Covenants.GetActiveCovenantID() + 1; -- 1 offset since Covenant Enum is 1 based (lua) and Covenant Database Table 0 based
end

-- [[ IAT integration ]] --
function addon.IsIATLoaded()
    return IsAddOnLoaded("InstanceAchievementTracker") and GetAddOnMetadata("InstanceAchievementTracker", "Version") >= "3.18.0";
end

-- [[ Load addon ]] --
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
            addon.Data.Load();
            addon.Diagnostics.Debug("- Expansion data loaded");

            local gui = addon.GUI;
            local tutorials = addon.Tutorials;

            gui.SetAchievementFrameHeight(addon.Options.db.Window.AchievementFrameHeightOffset); -- Do this in order to create the correct amount of buttons based on our settings

            gui.AddFrame("AchievementsFrame", gui.AchievementsFrame:New());
            gui.AddFrame("CategoriesFrame", gui.CategoriesFrame:New(addon.Categories, gui.GetFrame("AchievementsFrame")));
            gui.AddFrame("FilterButton", gui.FilterButton:New(gui.GetFrames("CategoriesFrame", "AchievementsFrame")));
            gui.AddFrame("FullSearchResultsFrame", gui.Search.FullSearchResultsFrame:New(gui.GetFrame("AchievementsFrame")));
            gui.AddFrame("SearchPreviewFrame", gui.Search.SearchPreviewFrame:New(gui.GetFrames("FullSearchResultsFrame", "AchievementsFrame")));
            gui.AddFrame("SearchBoxFrame", gui.Search.SearchBoxFrame:New(gui.GetFrames("SearchPreviewFrame", "FullSearchResultsFrame", "AchievementsFrame")));
            gui.AddFrame("TabButton1", gui.AchievementFrameTabButton:New(addon.L["T_TAB_TEXT"], gui.GetFrames("CategoriesFrame", "AchievementsFrame", "FilterButton", "SearchBoxFrame")));

            gui.ResetAchievementFrameHeight();

            tutorials.SetFrames(gui.GetFrames("TabButton1", "CategoriesFrame", "AchievementsFrame", "FilterButton", "SearchBoxFrame", "SearchPreviewFrame", "FullSearchResultsFrame"));
            tutorials.HookTrigger(gui.GetFrame("TabButton1"));

            gui.ElvUISkin.Apply(gui.GetFrames("TabButton1", "CategoriesFrame", "AchievementsFrame", "FilterButton", "SearchBoxFrame", "SearchPreviewFrame", "FullSearchResultsFrame"));

            addon.Diagnostics.Debug("- GUI loaded");
        elseif arg1 == "ElvUI" then -- Just in case this addon loads before ElvUI
            addon.GUI.ElvUISkin.Apply(addon.GUI.GetFrames("TabButton1", "CategoriesFrame", "AchievementsFrame", "FilterButton", "SearchBoxFrame", "SearchPreviewFrame", "FullSearchResultsFrame"));
        end
    elseif event == "PLAYER_LOGIN" then
        addon.Options.SetFilters();

        if addon.Diagnostics.DebugEnabled() then
            hooksecurefunc(WorldMapFrame, "OnMapChanged", function()
                local mapID = WorldMapFrame.mapID;
                print(mapID);
            end);
        end
    end
end
loadHelper:SetScript("OnEvent", loadHelper.OnEvent);

-- [[ SCREENSHOT MODE ]] --
-- local f = CreateFrame("Frame", nil, UIParent);
-- f:SetAllPoints();
-- f:SetPoint("CENTER");
-- f:SetSize(64, 64);

-- f.tex = f:CreateTexture();
-- f.tex:SetAllPoints(f);
-- f.tex:SetTexture("Interface\\AddOns\\Krowi_AchievementFilter\\Media\\Black");