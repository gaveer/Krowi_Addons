local addonName, addon = ...;

AF_COLOR_ADDON = "|cFF1D92C2";
AF_COLOR_RED = "|cFFFF0000";
AF_COLOR_ORANGE = "|cFFFF7700";
AF_COLOR_YELLOW = "|cFFFFD100";
AF_COLOR_GREEN = "|cFF00FF00";
AF_COLOR_END = "|r";

AF_TAB = "|T:1:8|t";

AF_NAME = GetAddOnMetadata(addonName, "Title");
AF_BUILD = GetBuildInfo();
AF_VERSION = GetAddOnMetadata(addonName, "Version");
AF_BUILD_VERSION = AF_BUILD .. "." .. AF_VERSION;

function addon.GetAchievement(id)
    addon.Diagnostics.Trace("addon.GetAchievement");

	for _, achievement in next, addon.Achievements do
		if achievement.ID == id then
			return achievement;
		end
	end
end

function addon.GetAchievementsInZone(mapID)
    addon.Diagnostics.Trace("addon.GetAchievementsInZone");

    -- Maybe add a recursive feature to check parent categories for zone IDs
    local achievements = {};
	for _, category in next, addon.Categories do
        local mapIDs = {};
        if category.IgnoreParentMapIDs then
            mapIDs = category.MapIDs;
        else
            local categoryTree = category:GetTree();
            for _, cat in next, categoryTree do
                if cat.MapIDs ~= nil and not cat.IgnoreParentMapIDs then
                    for _, catMapID in next, cat.MapIDs do
                        tinsert(mapIDs, catMapID);
                    end
                end
            end
        end

        for _, catMapID in next, mapIDs do
            if catMapID == mapID then
                if category.Achievements ~= nil then
                    for _, achievement in next, category.Achievements do
                        tinsert(achievements, achievement);
                    end
                end
                break;
            end
        end
	end
    return achievements;
end