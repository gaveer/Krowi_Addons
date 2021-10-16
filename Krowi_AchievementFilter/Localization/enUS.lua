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
L["More"] = "More";
L["Installed"] = "Installed";
L["Not installed"] = "Not installed";
L["Include"] = "Include";
L["Exclude"] = "Exclude";
L["Clear focus"] = "Clear focus";
L["Focus"] = "Focus";

-- Tabs
L["Expansions"] = "Expansions";
L["Events"] = "Events";

-- Categories
L["Current Zone"] = "Current Zone";
L["Selected Zone"] = "Selected Zone";
L["Zones"] = "Zones";
L["Buildings"] = "Buildings";
L["Stables"] = "Stables";
L["Gladiator's Sanctum"] = "Gladiator's Sanctum";
L["Shipyard"] = "Shipyard";
L["Invasions"] = "Invasions";
L["Class Hall"] = "Class Hall";
L["Dueler's Guild"] = "Dueler's Guild";
L["Excluded"] = "Excluded";
L["Glory"] = "Glory";
L["Coming in "] = "Coming in ";
L["* SPOILER WARNING *"] = "* SPOILER WARNING *";
L["Coming in Disclaimer"] = "All achievements in this category and children of this category are subject to change and might contain spoilers for the next patch!";
L["Holidays"] = "Holidays";
L["Pirates' Day"] = "Pirates' Day";
L["Day of the Dead"] = "Day of the Dead";
L["Covenant Assaults"] = "Covenant Assaults";
L["Kyrian Assault"] = "Kyrian Assault";
L["Necrolords Assault"] = "Necrolords Assault";
L["Night Fae Assault"] = "Night Fae Assault";
L["Venthyr Assault"] = "Venthyr Assault";
L["Faction Assaults"] = "Faction Assaults";
L["Assault on Tiragarde Sound"] = "Assault on Tiragarde Sound";
L["Assault on Drustvar"] = "Assault on Drustvar";
L["Assault on Stormsong Valley"] = "Assault on Stormsong Valley";
L["Assault on Zuldazar"] = "Assault on Zuldazar";
L["Assault on Nazmir"] = "Assault on Nazmir";
L["Assault on Vol'dun"] = "Assault on Vol'dun";
L["N'Zoth Assaults"] = "N'Zoth Assaults";
L["Assault: N'Zoth (Vale of Eternal Blossoms)"] = "Assault: N'Zoth (Vale of Eternal Blossoms)";
L["Assault: Mogu"] = "Assault: Mogu";
L["Assault: Mantid"] = "Assault: Mantid";
L["Assault: N'Zoth (Uldum)"] = "Assault: N'Zoth (Uldum)";
L["Assault: Amathet"] = "Assault: Amathet";
L["Legion Assaults"] = "Legion Assaults";
L["Assault on Azsuna"] = "Assault on Azsuna";
L["Assault on Val'sharah"] = "Assault on Val'sharah";
L["Assault on Highmountain"] = "Assault on Highmountain";
L["Assault on Stormheim"] = "Assault on Stormheim";
L["Focused"] = "Focused";
L["Brawler's Guild"] = "Brawler's Guild";
L["Gifts"] = "Gifts"
L["Other"] = "Other";

-- Filters
L["Obtainable"] = "Obtainable";
L["Not Obtainable"] = "Not Obtainable";
L["Covenant"] = "Covenant";
L["Select all"] = "Select all";
L["Reverse Sort"] = "Reverse Sort";
L["Collapse Chain"] = "Collapse Chain";
L["Merge Small Categories"] = "Merge Small Categories";
L["Completion"] = "Completion";
L["ID"] = "ID";

-- Tooltips
L["Part of a chain"] = "Part of a chain";
L["Required for"] = "Required for";
L["Objectives progress"] = "Objectives progress";
L["No achievements are available with the current set of filters"] = "No achievements are available with the current set of filters";
L["This achievement is no longer obtainable"] = "This achievement is no longer obtainable.";

-- Options
L["Requires a reload"] = string.format(addon.Orange, "Requires a reload to take full effect.");

-- Options General Info
L["Build"] = "Build";
L["Author"] = "Author";
L["Tutorial"] = "Tutorial";
L["Tutorial Desc"] = "Open the tutorials from the start";
L["Discord"] = "Discord";
L["Discord Desc"] = "Open a popup dialog with a link to the Krowi's Addons Discord server. Here you can post comments, reports, remarks, ideas or anything else related.";
L["CurseForge"] = "CurseForge";
L["CurseForge Desc"] = "Open a popup dialog with a link to the {addonName} {curseForge} page.";

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
L["Exclude Excluded achievements"] = "Exclude Excluded achievements";
L["Exclude Excluded achievements Desc"] = "Exclude / include excluded achievements from / in the search results.";
L["Minimum characters to search"] = "Minimum characters to search";
L["Minimum characters to search Desc"] = "The number of characters needed in order to start searching for achievements matching the query.\n" ..
                                            "The smaller the number, the greater the impact on the game.";
L["Number of search previews"] = "Number of search previews";
L["Number of search previews Desc"] = "The numbers of achievements shown as a preview of the full list of found achievements.\n\n{reloadRequired}";

-- Options General Debug
L["Debug"] = "Debug";
L["Enable debug info"] = "Enable debug info";
L["Enable debug info Desc"] = "Enable / disable debug info";
L["Screenshot Mode"] = "Screenshot Mode";
L["Screenshot Mode Desc"] = "Adds a black frame above everything. Only newly opened windows are visible. Used for taking screenshots.";
L["Enable trace info"] = "Enable trace info";
L["Enable trace info Desc"] = "Enable / disable trace info";

-- Options Event Alert
L["Event alert"] = "Event alert";

L["Time display"] = "Time display";
L["Line"] = "Line";
L["None"] = "None";
L["Start Time"] = "Start Time";
L["End Time"] = "End Time";
L["Time Left"] = "Time Left";

L["Fade delay"] = "Fade delay";
L["Fade delay Desc"] = "The time in seconds it takes for the event alert to fade when it's ignored. Right clicking will close it immidiatly.";

L["Calendar Events"] = "Calendar Events";
L["World Events"] = "World Events";

L["Date and Time format"] = "Date and Time format";
L["Presets"] = "Presets";
L["Custom"] = "Custom";

L["Date and Time formatting guide"] = "Date and Time Formatting Guide";
L["Date and Time formatting guide Desc"] =  "{a} - Abbreviated weekday name (eg. Wed)\n" ..
                                            "{A} - Full weekday name (eg. Wednesday)\n" ..
                                            "{b} - Abbreviated month name (eg. Sep)\n" ..
                                            "{B} - Full month name (eg. September)\n" ..
                                            "{c} - Date and time representation appropriate for locale (eg. 23/04/07 10:20:41)\n" ..
                                            "{C} - The century number (year/100) (eg. 20)\n" ..
                                            "{d} - Day of month as decimal number (01 - 31)\n" ..
                                            "{D} - Equivalent to %m/%d/%y (eg. 04/23/07)\n" ..
                                            "{e} - Day of month as decimal number (1 - 31)\n" ..
                                            "{H} - Hour in 24-hour format (00 - 23)\n" ..
                                            "{I} - Hour in 12-hour format (01 - 12)\n" ..
                                            "{j} - Day of year as decimal number (001 - 366)\n" ..
                                            "{k} - Hour in 24-hour format (0 - 23)\n" ..
                                            "{l} - Hour in 12-hour format (1 - 12)\n" ..
                                            "{m} - Month as decimal number (01 - 12)\n" ..
                                            "{M} - Minute as decimal number (00 - 59)\n" ..
                                            "{p} - Current locale’s A.M./P.M. indicator for 12-hour clock (eg. AM/PM)\n" ..
                                            "{P} - Current locale’s A.M./P.M. indicator for 12-hour clock (eg. am/pm)\n" ..
                                            "{R} - Equivalent to %H:%M (eg. 10:20)\n" ..
                                            "{s} - Number of second since Epoch, i.e., since 1970-01-01 00:00:00 UTC (1177323641)\n" ..
                                            "{S} - Second as decimal number (00 - 59)\n" ..
                                            "{u} - Weekday as decimal number (1 - 7; Monday is 1)\n" ..
                                            "{U} - Week of year as decimal number, with Sunday as first day of week 1 (00 - 53)\n" ..
                                            "{w} - Weekday as decimal number (0 - 6; Sunday is 0)\n" ..
                                            "{W} - Week of year as decimal number, with Monday as first day of week 1 (00 - 53)\n" ..
                                            "{x} - Date representation for current locale (Standard date string)\n" ..
                                            "{X} - Time representation for current locale (Standard time string)\n" ..
                                            "{y} - Year without century, as decimal number (00 - 99)  (eg. 07)\n" ..
                                            "{Y} - Year with century, as decimal number (eg. 2007)\n" ..
                                            "{z} - Time-zone as hour offset from GMT (eg. +0200)\n" ..
                                            "{Z} - Time-zone name or abbreviation; no characters if time zone is unknown";

-- Options Layout
L["Layout"] = "Layout";

-- Options Layout Window
L["Window"] = "Window";
L["Make window movable"] = "Make window movable";
L["Make window movable Desc"] = "Make windows movable/not movable.\n\nWhen checked, when keeping the left mouse button pressed, move the Achievement window. This works on the header and borders.";
L["Categories width offset"] = "Categories width offset";
L["Categories width offset Desc"] = "The width that will be added to or subtracted from the default categories width.\n\n" ..
                                    "This value can be changed while the achievement window is open while having the {tabName} tab selected. This will however lag your game.\n\n{reloadRequired}";
L["Achievement window height offset"] = "Achievement window height offset";
L["Achievement window height offset Desc"] = "The height that will be added to or subtracted from the default achievement window height.\n\n" ..
                                                "This value can be changed while the achievement window is open while having the {tabName} tab selected. This will however lag your game.\n\n{reloadRequired}";
L["Merge small categories threshold"] = "Merge small categories threshold";
L["Merge small categories threshold Desc"] = "Categories with a number of achievements lower than this number will merge into the parent category.\n\n" ..
                                                "Only preset categories can merge (mostly child categories from zones).\n\n{reloadRequired}";

-- Options Layout Categories
L["Show"] = "Show";
L["Show Sub Categories"] = "Show Sub Categories";
L["Show Sub Categories Desc"] = "Show / hide sub categories.\n\nWhen checked, the achievements will be placed under their original sub categories instead of all together under the single category.";
L["Clear all"] = "Clear all";
L["Clear all Desc"] = "Clear all focused achievements.";
L["Show Excluded Category Desc"] = "Show / hide {excluded} category.\n\nWhen checked, the category is only shown when there are actually excluded achievements and the set filters allow showing them.\n\n" ..
                                    "When not checked, the category is always hidden and the filters are hidden too.";
L["Include all"] = "Include all";
L["Include all Desc"] = "Include all excluded achievements.";

-- Options Layout Right Click Menu
L["Right Click Menu"] = "Right Click Menu";
L["Show Right Click Menu"] = "Show {rightClickMenu} button";
L["Show Right Click Menu Desc"] = "Show / hide {rightClickMenu} button on each achievement.\n\nThis serves as an alternative for right clicking the achievement.\n\n{reloadRequired}";

-- Options Layout Tooltip
L["Tooltip"] = "Tooltip";
L["Show Not Obtainable"] = "Show {notObtainable}";
L["Show Not Obtainable Desc"] = "Show / hide {notObtainable}.\n\nWhen checked, show not obtainable achievements in red on the progress bar.";
L["Show Part of a Chain"] = "Show {partOfAChain}";
L["Show Part of a Chain Desc"] = "Show / hide {partOfAChain}.\n\nWhen checked, the chain the achievment is part of will be visible in the tooltip.";
L["Show Required for"] = "Show {requiredFor}";
L["Show Required for Desc"] = "Show / hide {requiredFor}.\n\nWhen checked, the achievement that requires the selected achievement to be completed will be visible in the tooltip.";
L["Show current character icons"] = "Show current character icons";
L["Show current character icons Desc"] = "Show / hide current character icons.\n\nWhen checked, a second icon will appear in front of {partOfAChain} and {requiredFor} achievements that indicates the current character's progress.";
L["Show Objectives progress"] = "Show {objectivesProgress}";
L["Show Objectives progress Desc"] = "Show / hide {objectivesProgress}.\n\nWhen checked, the {objectivesProgress} of the achievements will be visible in the tooltip.";
L["Show Objectives progress when achievement completed"] = "Show {objectivesProgress} when achievement completed";
L["Show Objectives progress when achievement completed Desc"] = "Show / hide {objectivesProgress} when achievement is completed.\n\nWhen checked, the {objectivesProgress} of the achievements will be visible in the tooltip regardless if the achievement is completed or not.";
L["Objectives progress second column threshold"] = "Objectives progress second column threshold";
L["Objectives progress second column threshold Desc"] = "Achievements with more objectives than this number will be visible in two columns instead of one.";

-- Options ElvUI Skins Status
L["ElvUI Skins Status"] = "ElvUI Skins Status";
L["ElvUI Skins Status Desc"] = "Each of the options below are controlled by ElvUI and are just informational.\n\n" ..
                    "To change these, go to Game Menu -> ElvUI -> Skins and check the desired options. See each option below for what to check.\n ";
L["Skin Achievements"] = "Skin Achievements";
L["Skin Achievements Desc"] = "Applies the ElvUI skin to the Achievements Window.\n-> Blizzard + Achievements";
L["Skin Misc Frames"] = "Skin Misc Frames";
L["Skin Misc Frames Desc"] = "Applies the ElvUI skin to the Filter Menu, Right Click Menu and Popup Dialog.\n-> Blizzard + Misc Frames";
L["Skin Tooltip"] = "Skin Tooltip";
L["Skin Tooltip Desc"] = "Applies the ElvUI skin to the Tooltip.\n-> Blizzard + Tooltip";
L["Skin Tutorials"] = "Skin Tutorials";
L["Skin Tutorials Desc"] = "Applies the ElvUI skin to the Tutorials.\n-> Blizzard + Tutorials";
L["Skin Alert Frames"] = "Skin Alert Frames";
L["Skin Alert Frames Desc"] = "Applies the ElvUI skin to the Alert Frames.\n-> Blizzard + Alert Frames";
L["Skin Ace3"] = "Skin Ace3";
L["Skin Ace3 Desc"] = "Applies the ElvUI skin to the Options.\n-> Ace3";

-- Options Donations
L["Credits"] = "Credits";
L["Special thanks"] = "Special thanks";
L["Special thanks Desc"] = "Special thanks to {bur} ";
L["Donations"] = "Donations";

-- Keybindings
L["Toggle Achievement Window to "] = "Toggle Achievement Window to ";

-- Icon
L["Left click"] = "Left click";
L["Right click"] = "Right click";

L["Icon Left click"] = "to open the Achievement window.";
L["Icon Right click"] = "for Options.";

-- Tutorials
-- Features tutorial
L["New achievement window tabs"] = "New achievement window tabs";
L["New achievement window tabs Desc"] = "New tabs are added to the achievement window to offer a new way of displaying achievements " ..
                                        "in a familiar fashion without interfering with the default tabs.";

L["Categories per expansion"] = "Categories per expansion";
L["Categories per expansion Desc"] = "Achievements are put in categories per expansion compared to the default. " ..
                                        "The hierarchy is as follow:\n\n" ..
                                        AF_TAB .. "- {expansion}\n" ..
                                        AF_TAB .. AF_TAB .. "- {zones}\n" ..
                                        AF_TAB .. AF_TAB .. AF_TAB .. "- {quests}\n" ..
                                        AF_TAB .. AF_TAB .. AF_TAB .. "- {exploration}\n" ..
                                        AF_TAB .. AF_TAB .. AF_TAB .. "- {pvp}\n" ..
                                        AF_TAB .. AF_TAB .. AF_TAB .. "- {reputation}\n" ..
                                        AF_TAB .. AF_TAB .. "- {dungeons}\n" ..
                                        AF_TAB .. AF_TAB .. "- {raids}\n" ..
                                        AF_TAB .. AF_TAB .. "- {petBattles}\n" ..
                                        AF_TAB .. AF_TAB .. "- {expansionFeatures}\n\n" ..
                                        "Special categories:\n" ..
                                        AF_TAB .. "- {currentZone}: Shows the achievements linked to the current zone you're in\n" ..
                                        AF_TAB .. "- {selectedZone}: Shows the achievements linked to the selected zone from the world map\n" ..
                                        AF_TAB .. "- {excludedCategory}: Shows the excluded achievements. Can be permanently hidden in the options.\n" ..
                                        AF_TAB .. "- {comingIn}: {spoiler}\n" ..
                                        AF_TAB .. AF_TAB .. "If available, achievements that might be added in the next patch (subject to change)\n\n" ..
                                        "All options can be found under Game Menu -> Interface -> AddOns -> {addonName}";

-- L["Right Click Menu"] = "Right Click Menu"; -- See at Options Layout Right Click Menu
L["Right Click Menu Desc"] = "Each achievement in the new tab has a {rightClickMenu}.\n\n" ..
                                "Features:\n" ..
                                AF_TAB .. "- Link to {wowhead}\n" ..
                                AF_TAB .. "- {goTo} shortcut to achievements that are {partOfAChain} or that are {require} this achievment to be completed. " ..
                                "Achievements in the {currentZone} category have a shortcut to their proper location in the categories tree.\n" ..
                                AF_TAB .. "- Link to {xuFuPetGuides} if the achievement is related to {petBattles} and {xuFuPetGuides} has relevant information about it\n" ..
                                AF_TAB .. "- Shortcut to {IAT} if tactics for the achievement are available ({IAT} is {installed})\n" ..
                                AF_TAB .. "- {more}: Groups misc. items to not clutter the main menu\n" ..
                                AF_TAB .. AF_TAB .. "- {include}: Includes the achievement back into the normal view. (Only available on excluded achievements)\n" ..
                                AF_TAB .. AF_TAB .. "- {exclude}: Excludes the achievement from the normal view. (Only available on included achievements)\n\n" ..
                                "Options:\n" ..
                                AF_TAB .. "- A button can be shown on each achievement that opens the {rightClickMenu}. (Button is {enabled})\n\n" ..
                                "All options can be found under Game Menu -> Interface -> AddOns -> {addonName}";

L["Quick Search"] = "Quick Search";
L["Quick Search Desc"] = "Searches for achievements in the new tab.\n\n" ..
                            "Features:\n" ..
                            AF_TAB .. "- Search by achievement title and description\n" ..
                            AF_TAB .. "- Search by achievement ID by starting the search query with '#'\n\n" ..
                            "Options:\n" ..
                            AF_TAB .. "- {clearOnRightClick} ({clearOnRightClickEnabled})\n" ..
                            -- AF_TAB .. "- {excludeNextPatch} ({excludeNextPatchEnabled} next patch achievements)\n" ..
                            AF_TAB .. "- {excludedCategory} ({excludedCategoryEnabled} excluded achievements)\n" ..
                            AF_TAB .. "- {minCharToSearch} ({minCharToSearchNumber})\n" ..
                            AF_TAB .. "- {numSearchPreviews} ({numSearchPreviewsNumber})\n\n" ..
                            "All options can be found under Game Menu -> Interface -> AddOns -> {addonName}";

L["Full Search"] = "Full Search";
L["Full Search Desc"] = "By selecting \"{showAllResults}\" (see {quickSearch}) you're able to view all search results.";

L["Enhanced filtering and sorting"] = "Enhanced filtering and sorting";
L["Enhanced filtering and sorting Desc"] = "Filtering and sorting of achievements is enhanced with following features.\n\n" ..
                                            "Categories:\n" ..
                                            AF_TAB .. "- {mergeSmallCategories}: Merge categories if allowed with less than {mergeSmallCategoriesNumber} achievements\n\n" ..
                                            "Filtering (multiple filters can be selected at the same time):\n" ..
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
                                            AF_TAB .. "- {sortByCompletion}: Sort achievements based on if they are completed\n" ..
                                            AF_TAB .. "- {sortByID}: Sort achievements based on their ID\n" ..
                                            AF_TAB .. "- {reverseSort}: When this is selected, invert the order of the sorted achievements\n\n" ..
                                            "{currentZone}, {selectedZone} and {excludedCategory} category:\n" ..
                                            AF_TAB .. "- These have all the filtering and sorting features mentioned above but can be changed independent from the others\n\n" ..
                                            "Other:\n" ..
                                            AF_TAB .. "- {help}: Start the tutorial from the start and reset what you've viewed\n" ..
                                            AF_TAB .. AF_TAB .. "- Shows the specific tutorial page without resetting what you've viewed\n" ..
                                            AF_TAB .. "- {options}: Open the addon options (Game Menu -> Interface -> AddOns -> {addonName})\n\n" ..
                                            "More filters and sorting options can be requested on {discord} or {curseForge} (links in the options).";

L["Enhanced tooltip"] = "Enhanced tooltip"; -- Used for categories and achievements
L["Enhanced tooltip Categories Desc"] = "Each tooltip has additional information on how many achievements are (not) obtainable and (not) completed.\n\n" ..
                                        "The numbers in the progress bar are in the following format:\n" ..
                                        AF_TAB .. "OC (+NONC) / T\n" ..
                                        AF_TAB .. AF_TAB .. "- {oc}: The (not) obtainable completed achievements\n" ..
                                        AF_TAB .. AF_TAB .. "- {nonc}: The not obtainable not completed achievements\n" ..
                                        AF_TAB .. AF_TAB .. "- T: Total number of achievements\n\n" ..
                                        "Colors:\n" ..
                                        AF_TAB .. "- {green}: The (not) obtainable completed achievements\n" ..
                                        AF_TAB .. "- {red}: The not obtainable not completed achievements\n" ..
                                        AF_TAB .. "- Empty: The obtainable not completed achievements\n\n" ..
                                        "The {red} part of the progress bar and number in brackets can either be disbled in options ({showNotObtainable}) or by unchecking the {notObtainable} filter.";
L["Enhanced tooltip Achievements Desc"] = "Each tooltip has additional information on how achievements relate to each other (if they do). Several new sections are added to it.\n\n" ..
                                            "Features:\n" ..
                                            AF_TAB .. "- {notObtainable}: Shows the text \"{noLongerObtainable}\" if the achievement is no longer obtainable\n" ..
                                            AF_TAB .. "- {partOfAChain}: Shows the list of achievements the hovered achievement is part of (1) ({partOfAChainEnabled})\n" ..
                                            AF_TAB .. "- {requiredFor}: Shows a list of achievements that require the hovered achievement to be completed in order to earn it (1) ({requiredForEnabled})\n" ..
                                            AF_TAB .. "- {objectivesProgress}: Shows the list of objectives with progress ({objectivesProgressEnabled})\n\n" ..
                                            "Icons:\n" ..
                                            AF_TAB .. "- {ready}: The achievement is completed\n" ..
                                            AF_TAB .. "- {waiting}: The achievement is not completed\n" ..
                                            AF_TAB .. "- {notready}: The achievement is not possible to obtain anymore\n\n" ..
                                            "(1) Optionally, two icons can be displayed per line. The first icon is the default one, the second one is for the current character. ({currentCharacterIconEnabled})\n\n" ..
                                            "Colors:\n" ..
                                            AF_TAB .. "- {green}: The achievement/objective is completed\n" ..
                                            AF_TAB .. "- {grey}: The achievement/objective is not completed\n" ..
                                            AF_TAB .. "- {red}: The achievement is not possible to obtain anymore\n" ..
                                            AF_TAB .. "- Lighter {lightGreen}, {lightGrey} or {lightRed}: The hovered achievement";

L["World Map Button"] = "World Map Button";
L["World Map Button Desc"] = "Hover:\n" ..
                                AF_TAB .. "- Shows how many achievements are (not) obtainable and (not) completed like the {enhancedTooltipCategories} based on the filters set for the {selectedZone}.\n" ..
                                AF_TAB .. "- See {enhancedTooltipCategories} and {enhancedFilteringAndSorting} for more information.\n\n" ..
                                "Click:\n" ..
                                AF_TAB .. "- Opens the achievements window to the {selectedZone} category.";


L["New Achievement Colors"] = "New Achievement Colors";
L["New Achievement Colors Desc"] = "- The default gold Blizzard achievement of an obtained achievement. The border is changed from red to gold.\n" ..
                                    "- The new red achievement of a not obtained not obtainable achievement with default grey Blizzard border.\n" ..
                                    "- The new red achievement and red border of an obtained not obtainable achievement\n" ..
                                    "- The default blue Blizzard achievement and border of an obtained account-wide achievement.\n";
                                    
L["Event Reminder"] = "Event Reminder";
L["Event Reminder Desc"] = "Events are added to the new tab and a reminder will pop up when one of the events is active.\n\n" ..
                            "Clicking it will open the category with the obtainable achievements while the event is active.\n" ..
                            "It will dissapear when right clicked or after {EventAlertFadeDelay} seconds when ignored.\n\n" ..
                            "The reminder is also present on the right side of the achievement window.\n\n" ..
                            "All options can be found under Game Menu -> Interface -> AddOns -> {addonName}";

L["OC"] = "OC";
L["NONC"] = "NONC";
L["Green"] = "Green";
L["Grey"] = "Grey";
L["Red"] = "Red";

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