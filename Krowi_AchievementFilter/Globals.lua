local addonName, addon = ...;

AF_COLOR_ADDON = "|cFF1D92C2";
AF_COLOR_RED = "|cFFFF0000";
AF_COLOR_ORANGE = "|cFFFF7700";
AF_COLOR_YELLOW = "|cFFFFD100";
AF_COLOR_GREEN = "|cFF00FF00";
AF_COLOR_END = "|r";

AF_NAME = GetAddOnMetadata(addonName, "Title");
AF_BUILD = GetBuildInfo();
AF_VERSION = GetAddOnMetadata(addonName, "Version");
AF_BUILD_VERSION = AF_BUILD .. "." .. AF_VERSION;

function addon.IsIATLoaded()
    return IsAddOnLoaded("InstanceAchievementTracker") and GetAddOnMetadata("InstanceAchievementTracker", "Version") > "3.14.1";
end