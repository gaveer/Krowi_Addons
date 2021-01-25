local addonName, addon = ...;

AF_COLOR_ADDON = "|cFF1D92C2";
AF_COLOR_RED = "|CFFFF0000";
AF_COLOR_ORANGE = "|CFFFF7700";
AF_COLOR_YELLOW = "|CFFFFD100";
AF_COLOR_GREEN = "|CFF00FF00";
AF_COLOR_END = "|R";

AF_NAME = "Krowi's " .. AF_COLOR_ADDON .. "Achievement Filter" .. AF_COLOR_END;
AF_BUILD = GetBuildInfo();
AF_VERSION = GetAddOnMetadata(addonName, "Version");
AF_BUILD_VERSION = AF_BUILD .. "." .. AF_VERSION;

function addon.IsIATLoaded()
    return IsAddOnLoaded("InstanceAchievementTracker") and GetAddOnMetadata("InstanceAchievementTracker", "Version") > "3.14.1";
end