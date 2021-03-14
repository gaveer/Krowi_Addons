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

function addon.IsIATLoaded()
    return IsAddOnLoaded("InstanceAchievementTracker") and GetAddOnMetadata("InstanceAchievementTracker", "Version") >= "3.18.0";
end

function addon.ReplaceVars(str, vars)
    -- Allow replace_vars{str, vars} syntax as well as replace_vars(str, {vars})
    if not vars then
        vars = str
        str = vars[1]
    end
    return (string.gsub(str, "({([^}]+)})",
        function(whole,i)
            return vars[i] or whole
        end));
end

function addon.GetAchievement(id)
    addon.Diagnostics.Trace("addon.GetAchievement");

	for _, achievement in next, addon.Achievements do
		if achievement.ID == id then
			return achievement;
		end
	end
end

function addon.GetAchievementsWithZone(mapID)
    addon.Diagnostics.Trace("addon.GetAchievementsWithZone");

    local achievements = {};
	for _, category in next, addon.Categories do
        for _, catMapID in next, category.MapIDs do
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

function addon.InjectMetatable(tbl, meta)
    return setmetatable(tbl, setmetatable(meta, getmetatable(tbl)));
end