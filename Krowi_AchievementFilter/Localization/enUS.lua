local addonName, addon = ...;

local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "enUS", true, true);

-- Misc.
L["WOWHEAD"] = "Wowhead";
L["XUFU"] = "Xu-Fu's Pet Guides";
L["IAT"] = "Instance Achievement Tracker";
L["INSTALLED"] = "Installed";
L["NOT INSTALLED"] = "Not installed";

-- Tab
L["T_TAB_TEXT"] = "Achievement Filter";

-- Categories
L["C_ZONES"] = "Zones";
L["C_SCENARIOS"] = "Scenarios";

-- Options
L["O_INFO"] = "Info";
L["O_VERSION"] = "Version";
L["O_ICON"] = "Icon";
L["O_SHOW_MINIMAP_ICON"] = "Show minimap icon";
L["O_SHOW_MINIMAP_ICON_DESC"] = "Show / hide the minimap icon";
L["O_LAYOUT"] = "Layout";
L["O_SHOW_CATEGORIESFRAME_WIDTH_OFFSET"] = "Categories width offset";
L["O_SHOW_CATEGORIESFRAME_WIDTH_OFFSET_DESC"] = "The width that will be added to or subtracted from the default categories width";
L["O_DEBUG"] = "Debug";
L["O_ENABLE_DEBUG_INFO"] = "Enable debug info";
L["O_ENABLE_DEBUG_INFO_DESC"] = "Enable / disable debug info";
L["O_ENABLE_TRACE_INFO"] = "Enable trace info";
L["O_ENABLE_TRACE_INFO_DESC"] = "Enable / disable trace info";

-- Icon
L["I_RIGHT_CLICK"] = "Right-click " .. AF_COLOR_ADDON .. "for Options." .. AF_COLOR_END;

-- Tutorials
-- Features tutorial
L["FT_TABBUTTON_TITLE"] = "New achievements tab";
L["FT_TABBUTTON_DESC"] = "A new achievements tab is added to the achievement window to offer a new way of displaying achievements but in a familiar fashion.";
L["FT_GROUPING_TITLE"] = "New but familiar";
L["FT_GROUPING_DESC"] = "Instead of grouping achievements by type and then by expansion like the default tabs do, " ..
                        "here achievements are first grouped by expansion, then by region like different zones, dungeons, raids, ... " ..
                        "and then by type.";
L["FT_RIGHTCLICKMENU_TITLE"] = "Right-click menu";
L["FT_RIGHTCLICKMENU_DESC"] = "Each achievement in the new tab has a right click menu.\n\n" ..
                                "Features:\n" ..
                                "- Link to %s\n" ..
                                "- Link to %s if the achievement is related to Pet Battles and %s has relevant information about it\n" ..
                                "- Shortcut to %s if tactics for the achievement are available (%s is %s)";