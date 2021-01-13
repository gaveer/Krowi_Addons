local addonName, addon = ...;

local L = LibStub(addon.Libs.AceLocale):NewLocale(addonName, "enUS", true, true);

-- [[ Localization ]] --

-- Options
AF_OPTIONS_GENERAL = "General";
AF_OPTIONS_MINIMAP_ICON_TOGGLE = "Show minimap icon";
AF_OPTIONS_MINIMAP_ICON_TOGGLE_TOOLTIP = "Show / hide the minimap icon";
AF_OPTIONS_DEBUG = "Debug";
AF_OPTIONS_DEBUG_INFO_TOGGLE = "Enable debug info";
AF_OPTIONS_DEBUG_INFO_TOGGLE_TOOLTIP = "Enable / disable debug info";
AF_OPTIONS_TRACE_INFO_TOGGLE = "Enable trace info";
AF_OPTIONS_TRACE_INFO_TOGGLE_TOOLTIP = "Enable / disable trace info";
AF_OPTIONS_CATEGORIESFRAMEWIDTHOFFSET = "Categories width offset";
AF_OPTIONS_CATEGORIESFRAMEWIDTHOFFSET_TOOLTIP = "Categories width offset tooltip";

-- Icon
AF_ICON_TOOLTIP_RIGHT_CLICK = "Right-click " .. AF_COLOR_ADDON .. "for Options.|r";

-- Tab
AF_TAB_BUTTON_TEXT = "Achievement Filter";

AF_CATEGORY_ZONES = "Zones";
AF_CATEGORY_SCENARIOS = "Scenarios";
AF_VERSION = "Version";
AF_INFO = "Info";

-- Misc.
L["WOWHEAD"] = "Wowhead";
L["XUFU"] = "Xu-Fu's Pet Guides";
L["IAT"] = "Instance Achievement Tracker";
L["INSTALLED"] = "Installed";
L["NOT INSTALLED"] = "Not installed";

-- Tutorials
-- Features tutorial
L["FT_TABBUTTON_TITLE"] = "New achievements tab";
L["FT_TABBUTTON_DESC"] = "A new achievements tab is added to the achievement window to offer a new way of displaying achievements but in a familiar fashion.";
L["FT_RIGHTCLICKMENU_TITLE"] = "Right-click menu";
L["FT_RIGHTCLICKMENU_DESC"] = "Each achievement in the new tab has a right click menu.\n\n" ..
                                "Features:\n" ..
                                "- Link to %s\n" ..
                                "- Link to %s if the achievement is related to Pet Battles and %s has relevant information about it\n" ..
                                "- Shortcut to %s if tactics for the achievement are available (%s is %s)";