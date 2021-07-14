-- [[ Namespaces ]] --
local _, addon = ...;
addon.GlobalStrings = {};
local globalStrings = addon.GlobalStrings;

function globalStrings.Load(L)
    -- Categories
    L["Expansion"] = EXPANSION_FILTER_TEXT;
    L["Classic"] = EXPANSION_NAME0;
    L["The Burning Crusade"] = EXPANSION_NAME1;
    L["Wrath of the Lich King"] = EXPANSION_NAME2;
    L["Mists of Pandaria"] = EXPANSION_NAME3;
    L["Warlords of Draenor"] = EXPANSION_NAME4;
    L["Legion"] = EXPANSION_NAME5;
    L["Battle for Azeroth"] = EXPANSION_NAME6;
    L["Shadowlands"] = EXPANSION_NAME7;
    L["Scenarios"] = SCENARIOS;
    L["Garrison"] = GARRISON_LOCATION_TOOLTIP;
    L["Cities"] = BUG_CATEGORY4;
    L["Mythic"] = PLAYER_DIFFICULTY6;

    -- Filters
    L["Completed"] = CRITERIA_COMPLETED;
    L["Not Completed"] = CRITERIA_NOT_COMPLETED;
    L["Faction"] = FACTION;
    L["Neutral"] = FACTION_NEUTRAL;
    L["Alliance"] = FACTION_ALLIANCE;
    L["Horde"] = FACTION_HORDE;
    L["Kyrian"] = C_Covenants.GetCovenantData(1).name;
    L["Venthyr"] = C_Covenants.GetCovenantData(2).name;
    L["Night Fae"] = C_Covenants.GetCovenantData(3).name;
    L["Necrolord"] = C_Covenants.GetCovenantData(4).name;
    L["Sort By"] = RAID_FRAME_SORT_LABEL;
    L["Default"] = CHAT_DEFAULT;
    L["Name"] = NAME;
    L["Achievements"] = ACHIEVEMENTS;
    L["Categories"] = CATEGORIES;
    L["Help"] = GAMEMENU_HELP;
    L["Options"] = GAMEOPTIONS_MENU;
    L["Missing"] = ADDON_MISSING;

    -- Options
    L["General"] = GENERAL;
    L["Info"] = INFO;
    L["Version"] = GAME_VERSION_LABEL;
    L["Icon"] = EMBLEM_SYMBOL;
    L["Key Binding"] = KEY_BINDING;

    -- Tutorial
    L["Enabled"] = PVP_WAR_MODE_ENABLED;
    L["Disabled"] = ADDON_DISABLED;
    L["Show All %d Results"] = ENCOUNTER_JOURNAL_SHOW_SEARCH_RESULTS;
end