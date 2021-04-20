-- [[ Namespaces ]] --
local _, addon = ...;
addon.GlobalStrings = {};
local globalStrings = addon.GlobalStrings;

function globalStrings.Load(L)
    -- Categories
    L["Scenarios"] = SCENARIOS;
    L["Garrison"] = GARRISON_LOCATION_TOOLTIP;

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

    -- Options
    L["Info"] = INFO;
    L["Version"] = GAME_VERSION_LABEL;
    L["Icon"] = EMBLEM_SYMBOL;
end