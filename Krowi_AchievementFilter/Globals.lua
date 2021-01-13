local addonName, addon = ...;

AF_COLOR_ADDON = "|cFF1D92C2";
AF_COLOR_YELLOW = "|CFFFFD100";
AF_COLOR_RED = "|CFFFF0000";
AF_COLOR_GREEN = "|CFF00FF00";
AF_COLOR_END = "|R";

AF_NAME = "Krowi's " .. AF_COLOR_ADDON .. "Achievement Filter" .. AF_COLOR_END;
AF_VERSION = GetBuildInfo();
AF_BUILD = GetAddOnMetadata(addonName, "Version");
AF_VERSION_BUILD = AF_VERSION .. "." .. AF_BUILD;

function addon.IsIATLoaded()
    return IsAddOnLoaded("InstanceAchievementTracker") and GetAddOnMetadata("InstanceAchievementTracker", "Version") > "3.14.1";
end