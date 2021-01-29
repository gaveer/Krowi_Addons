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
L["O_REQUIRES_RELOAD"] = AF_COLOR_ORANGE .. "Requires a reload to take full effect." .. AF_COLOR_END;
L["O_INFO"] = "Info";
L["O_VERSION"] = "Version";
L["O_BUILD"] = "Build";
L["O_AUTHOR"] = "Author";
L["O_ICON"] = "Icon";
L["O_SHOW_MINIMAP_ICON"] = "Show minimap icon";
L["O_SHOW_MINIMAP_ICON_DESC"] = "Show / hide the minimap icon";
L["O_LAYOUT"] = "Layout";
L["O_CATEGORIESFRAME_WIDTH_OFFSET"] = "Categories width offset";
L["O_CATEGORIESFRAME_WIDTH_OFFSET_DESC"] = "The width that will be added to or subtracted from the default categories width.\n\n" .. 
                                            "This value can be changed while the achievement window is open while having the %s tab selected. This will however lag your game.\n\n%s";
L["O_ACHIEVEMENTFRAME_HEIGHT_OFFSET"] = "Achievement window height offset";
L["O_ACHIEVEMENTFRAME_HEIGHT_OFFSET_DESC"] = "The height that will be added to or subtracted from the default achievement window height.\n\n" .. 
                                                "This value can be changed while the achievement window is open while having the %s tab selected. This will however lag your game.\n\n%s";
L["O_SEARCH"] = "Search";
L["O_MIN_CHAR_TO_SEARCH"] = "Minimum characters to search";
L["O_MIN_CHAR_TO_SEARCH_DESC"] = "The number of characters needed in order to start searching for achievements matching the query.\n" ..
                                    "The smaller the number, the greater the impact on the game.";
L["O_NUM_OF_SEARCH_PREVIEWS"] = "Number of search previews";
L["O_NUM_OF_SEARCH_PREVIEWS_DESC"] = "The numbers of achievements shown as a preview of the full list of found achievements.\n\n%s";
L["O_DEBUG"] = "Debug";
L["O_ENABLE_DEBUG_INFO"] = "Enable debug info";
L["O_ENABLE_DEBUG_INFO_DESC"] = "Enable / disable debug info";
L["O_ENABLE_TRACE_INFO"] = "Enable trace info";
L["O_ENABLE_TRACE_INFO_DESC"] = "Enable / disable trace info";

-- Icon
L["I_LEFT_CLICK"] = "Left-click " .. AF_COLOR_ADDON .. "to open the Achievement window." .. AF_COLOR_END;
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
L["FT_SEARCHPREVIEW_TITLE"] = "Searching";
L["FT_SEARCHPREVIEW_DESC"] = "Like the default UI, searching achievements is possible in a similar way with the only difference that it will only search achievements in this tab.";
L["FT_FULLSEARCH_TITLE"] = "Viewing all search results";
L["FT_FULLSEARCH_DESC"] = "By selecting \"Show All X Results\" (see image previous page) you're able to view all search results.";