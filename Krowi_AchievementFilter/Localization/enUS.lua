-- [[ Namespaces ]] --
local addonName, addon = ...;
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "enUS", true, true);

-- Load strings into the localization that are already localized by Blizzard
addon.GlobalStrings.Load(L);

-- Misc.
L["Wowhead"] = "Wowhead";
L["Xu-Fu's Pet Guides"] = "Xu-Fu's Pet Guides";
L["Instance Achievement Tracker"] = "Instance Achievement Tracker";
L["IAT Tactics"] = "IAT Tactics";
L["Go to"] = "Go to";
L["Installed"] = "Installed";
L["Not installed"] = "Not installed";
L["T_TAB_TEXT"] = "Achievement Filter";

-- Categories
L["Current Zone"] = "Current Zone";
L["Zones"] = "Zones";
L["Class Hall"] = "Class Hall";
L["Coming in "] = "Coming in ";
L["* SPOILER WARNING *"] = "* SPOILER WARNING *";
L["Coming in Disclaimer"] = "All achievements in this category and children of this category are subject to change and might contain spoilers for the next patch!";

-- Filters
L["Obtainable"] = "Obtainable";
L["Not Obtainable"] = "Not Obtainable";
L["Covenant"] = "Covenant";
L["Select all"] = "Select all";
L["Reverse Sort"] = "Reverse Sort";
L["Collapse Chain"] = "Collapse Chain";
L["Merge Small Categories"] = "Merge Small Categories";

-- Tooltips
L["Part of a chain"] = "Part of a chain";
L["Required for"] = "Required for";

-- Options
L["Requires a reload"] = AF_COLOR_ORANGE .. "Requires a reload to take full effect." .. AF_COLOR_END;

-- Options General Info
L["Build"] = "Build";
L["Author"] = "Author";
L["Tutorial"] = "Tutorial";
L["Tutorial Desc"] = "Open the tutorials from the start";
L["Discord"] = "Discord";
L["Discord Desc"] = "Open a popup dialog with a link to the Krowi's Addons Discord server. Here you can post comments, reports, remarks, ideas or anything else related.";

-- Options General Icon
L["Show minimap icon"] = "Show minimap icon";
L["Show minimap icon Desc"] = "Show / hide the minimap icon";

-- Options General Key Binding
L["Reset view on open"] = "Reset view on open";
L["Reset view on open Desc"] = "Collapse all categories and select the first category or\nKeep the last selected category when last closed";

-- Options General Search
L["Search"] = "Search";
L["Clear search field on Right Click"] = "Clear search field on Right Click";
L["Clear search field on Right Click Desc"] = "Enable / disable the option to clear the search field when Right Clicking in it";
L["Exclude Next Patch"] = "Exclude Next Patch";
L["Exclude Next Patch Desc"] = "Exclude / include Next Patch achievements from / in the search results.\n\n{spoilerWarning}";
L["Exclude Next Patch Confirm"] = "Including Next Patch achievements will show achievements that are subject to change and might contain spoilers for the next patch!";
L["Minimum characters to search"] = "Minimum characters to search";
L["Minimum characters to search Desc"] = "The number of characters needed in order to start searching for achievements matching the query.\n" ..
                                            "The smaller the number, the greater the impact on the game.";
L["Number of search previews"] = "Number of search previews";
L["Number of search previews Desc"] = "The numbers of achievements shown as a preview of the full list of found achievements.\n\n{reloadRequired}";

-- Options General Debug
L["Debug"] = "Debug";
L["Enable debug info"] = "Enable debug info";
L["Enable debug info Desc"] = "Enable / disable debug info";
L["Enable trace info"] = "Enable trace info";
L["Enable trace info Desc"] = "Enable / disable trace info";

-- Options Layout
L["Layout"] = "Layout";

-- Options Layout Window
L["Window"] = "Window";
L["Categories width offset"] = "Categories width offset";
L["Categories width offset Desc"] = "The width that will be added to or subtracted from the default categories width.\n\n" ..
                                    "This value can be changed while the achievement window is open while having the {tabName} tab selected. This will however lag your game.\n\n{reloadRequired}";
L["Achievement window height offset"] = "Achievement window height offset";
L["Achievement window height offset Desc"] = "The height that will be added to or subtracted from the default achievement window height.\n\n" ..
                                                "This value can be changed while the achievement window is open while having the {tabName} tab selected. This will however lag your game.\n\n{reloadRequired}";
L["Merge small categories threshold"] = "Merge small categories threshold";
L["Merge small categories threshold Desc"] = "Categories with a number of achievements lower than this number will merge into the parent category.\n\n" ..
                                                "Only preset categories can merge (mostly child categories from zones).\n\n{reloadRequired}";

-- Options Layout Tooltip
L["Tooltip"] = "Tooltip";
L["Show Part of a Chain"] = "Show {partOfAChain}";
L["Show Part of a Chain Desc"] = "Show / hide {partOfAChain}.\n\nWhen checked, the chain the achievment is part of will be visible in the tooltip.";
L["Show Required for"] = "Show {requiredFor}";
L["Show Required for Desc"] = "Show / hide {requiredFor}.\n\nWhen checked, the achievement that requires the selected achievement to be completed will be visible in the tooltip.";
L["Show current character icons"] = "Show current character icons";
L["Show current character icons Desc"] = "Show / hide current character icons.\n\nWhen checked, a second icon will appear in front of {partOfAChain} and {requiredFor} achievements that indicates the current character's progress.";

-- Options ElvUI Skins Status
L["ElvUI Skins Status"] = "ElvUI Skins Status";
L["ElvUI Skins Status Desc"] = "Each of the options below are controlled by ElvUI and are just informational.\n" ..
                    "To change these, go to Game Menu -> ElvUI -> Skins and check the desired options. See each option below for what to check.";
L["Skin Achievements"] = "Skin Achievements";
L["Skin Achievements Desc"] = "Applies the ElvUI skin to the Achievements Window.\n-> Blizzard + Achievements";
L["Skin Misc Frames"] = "Skin Misc Frames";
L["Skin Misc Frames Desc"] = "Applies the ElvUI skin to the Filter Menu, Right Click Menu and Popup Dialog.\n-> Blizzard + Misc Frames";
L["Skin Ace3"] = "Skin Ace3";
L["Skin Ace3 Desc"] = "Applies the ElvUI skin to the Options.\n-> Ace3";
L["Skin Tutorials"] = "Skin Tutorials";
L["Skin Tutorials Desc"] = "Applies the ElvUI skin to the Tutorials.\n-> Blizzard + Tutorials";

-- Keybindings
L["BINDING_NAME_AF_OPEN_TAB1"] = "Toggle Achievement Window";

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
                                AF_TAB .. "- Link to {wowhead}\n" ..
                                AF_TAB .. "- {goTo} shortcut to achievements that are {partOfAChain} or that {require} this achievment to be completed\n" ..
                                AF_TAB .. "- Link to {xuFuPetGuides} if the achievement is related to Pet Battles and {xuFuPetGuides} has relevant information about it\n" ..
                                AF_TAB .. "- Shortcut to {IAT} if tactics for the achievement are available ({IAT} is {installed})";
L["FT_RIGHTCLICKMENU_REQUIRE"] = "Require";
L["FT_SEARCHPREVIEW_TITLE"] = "Searching";
L["FT_SEARCHPREVIEW_DESC"] = "Like the default UI, searching achievements is possible in a similar way but it will only search achievements in this tab.\n\n" ..
                                "Features:\n" ..
                                AF_TAB .. "- Search by achievement ID by starting the search query with '#'\n\n" ..
                                "Options:\n" ..
                                AF_TAB .. "- {clearOnRightClick}\n" ..
                                AF_TAB .. "- {minCharToSearch}\n" ..
                                AF_TAB .. "- {numSearchPreviews}\n\n" ..
                                "All options can be found under Game Menu -> Interface -> AddOns -> {addonName}";
L["FT_FULLSEARCH_TITLE"] = "Viewing all search results";
L["FT_FULLSEARCH_DESC"] = "By selecting \"Show All X Results\" (see image previous page) you're able to view all search results.";
L["FT_FILTER_TITLE"] = "Enhanced filtering and sorting";
L["FT_FILTER_DESC"] = "The default filtering of achievements is quite basic with only the option to select All, Earned or Incomplete achievements. Here it's enhanced with\n\n" ..
                        "Filtering (multiple filters can be selected at the same time):\n" ..
                        AF_TAB .. "- {mergeSmallCategories}: Merge categories with less than 10 achievements\n" ..
                        AF_TAB .. "- {completed}: Show completed achievements\n" ..
                        AF_TAB .. "- {notCompleted}: Show not completed achievements\n" ..
                        AF_TAB .. "- {obtainable}: Show obtainable achievements\n" ..
                        AF_TAB .. "- {notObtainable}: Show not obtainable achievements\n" ..
                        AF_TAB .. "- {faction}\n" ..
                        AF_TAB .. AF_TAB .. "- {neutral}: Show achievements that both {alliance_wc} and {horde_wc} can earn\n" ..
                        AF_TAB .. AF_TAB .. "- {alliance}: Show achievements only {alliance_wc} can earn\n" ..
                        AF_TAB .. AF_TAB .. "- {horde}: Show achievements only {horde_wc} can earn\n" ..
                        AF_TAB .. "- {covenant}\n" ..
                        AF_TAB .. AF_TAB .. "- {neutral}: Show achievements that all covenants can earn\n" ..
                        AF_TAB .. AF_TAB .. "- {kyrian}: Show achievements only {kyrian_wc} can earn\n" ..
                        AF_TAB .. AF_TAB .. "- {venthyr}: Show achievements only {venthyr_wc} can earn\n" ..
                        AF_TAB .. AF_TAB .. "- {nightfae}: Show achievements only {nightfae_wc} can earn\n" ..
                        AF_TAB .. AF_TAB .. "- {necrolord}: Show achievements only {necrolord_wc} can earn\n" ..
                        AF_TAB .. "- {collapseChain}: Show only the last completed and first not completed achievement in a chain\n\n" ..
                        "Sorting:\n" ..
                        AF_TAB .. "- {noSorting}: No sorting applied\n" ..
                        AF_TAB .. "- {sortByName}: Sort achievements based on their names\n" ..
                        AF_TAB .. "- {reverseSort}: When this is selected, invert the order of the sorted achievements\n\n" ..
                        "More filter and sorting options will be added in later versions. Requests possible.";
L["FT_TOOLTIP_TITLE"] = "Tooltip";
L["FT_TOOLTIP_DESC"] = "To make it more clear for the user how achievements relate to each other, several new sections are added to it.\n\n" ..
                        "Features:\n" ..
                        AF_TAB .. "- {partOfAChain}: Shows the list of achievements the hovered achievement is part of\n" ..
                        AF_TAB .. "- {requiredFor}: Shows a list of achievements that require the hovered achievement to be completed in order to earn it\n\n" ..
                        "Icons:\n" ..
                        AF_TAB .. "- {ready}: The achievement is completed\n" ..
                        AF_TAB .. "- {waiting}: The achievement is not completed\n" ..
                        AF_TAB .. "- {notready}: The achievement is not possible to obtain anymore\n\n" ..
                        "Optionally, two icons can be displayed per line. The first icon is the default one, the second one is for the current character.\n\n" ..
                        "Colors:\n" ..
                        AF_TAB .. "- {green}: The achievement is completed\n" ..
                        AF_TAB .. "- {grey}: The achievement is not completed\n" ..
                        AF_TAB .. "- {light}: The hovered achievement\n\n" ..
                        "The information provided by these is also added in the Right Click Menu (part 3 of this tutorial). " ..
                        "A new {goTo} line and menu is added to eligible achievements which will take you to the related achievement when clicked.";
L["FT_TOOLTIP_GREEN"] = "Green";
L["FT_TOOLTIP_GREY"] = "Grey";
L["FT_TOOLTIP_LIGHTER"] = "Lighter";
L["FT_TOOLTIP_OR"] = "or";

-- NPC Names
L["Andurs"] = "Andurs"; -- Wowhead npc=105387
L["Rydyr"] = "Rydyr"; -- Wowhead npc=105386
L["Aki the Chosen"] = "Aki the Chosen"; -- Wowhead npc=66741
L["Burning Pandaren Spirit"] = "Burning Pandaren Spirit"; -- Wowhead npc=68463
L["Flowing Pandaren Spirit"] = "Flowing Pandaren Spirit"; -- Wowhead npc=68462
L["Thundering Pandaren Spirit"] = "Thundering Pandaren Spirit"; -- Wowhead npc=68465
L["Whispering Pandaren Spirit"] = "Whispering Pandaren Spirit"; -- Wowhead npc=68464
L["Dos-Ryga"] = "Dos-Ryga"; -- Wowhead npc=68564
L["Kafi"] = "Kafi"; -- Wowhead npc=68563
L["Ti'un the Wanderer"] = "Ti'un the Wanderer"; -- Wowhead npc=68562
L["No-No"] = "No-No"; -- Wowhead npc=68559
L["Gorespine"] = "Gorespine"; -- Wowhead npc=68558
L["Skitterer Xi'a"] = "Skitterer Xi'a"; -- Wowhead npc=68566
L["Greyhoof"] = "Greyhoof"; -- Wowhead npc=68560
L["Lucky Yi"] = "Lucky Yi"; -- Wowhead npc=68561
L["Ka'wi the Gorger"] = "Ka'wi the Gorger"; -- Wowhead npc=68555
L["Nitun"] = "Nitun"; -- Wowhead npc=68565