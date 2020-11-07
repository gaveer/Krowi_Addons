-- Global vars
AchievementFilter = LibStub("AceAddon-3.0"):NewAddon("AchievementFilter");
IsAlliance = UnitFactionGroup("player") == "Alliance";
IsHorde = UnitFactionGroup("player") == "Horde";
IsNeutral = UnitFactionGroup("player") == "Neutral";

-- AceDB defaults
local defaults = {
    profile = {
        minimap = {
            icon = {
                visible = true,
            },
        },
        debug = {
            output = {
                enabled = true,
            },
        },
    }
}

-- AceConfig options table
function AchievementFilter:MinimapIconToggleSet()
    AchievementFilter.db.profile.minimap.icon.visible = not AchievementFilter.db.profile.minimap.icon.visible;
    AchievementFilter:Debug("Show minimap icon: " .. tostring(AchievementFilter.db.profile.minimap.icon.visible));
end

function AchievementFilter:DebugOutputToggleSet()
    AchievementFilter.db.profile.debug.output.enabled = not AchievementFilter.db.profile.debug.output.enabled;
    print("Enable debug info: " .. tostring(AchievementFilter.db.profile.debug.output.enabled));
end

local optionsTable = {
    type = "group",
    width = 0.1,
    name = "Achievement Filter",
    args = {
        minimapIconToggle = {
            name = "Show minimap icon",
            desc = "Show / hide the minimap icon",
            type = "toggle",
            set = AchievementFilter.MinimapIconToggleSet,
            get = function () return AchievementFilter.db.profile.minimap.icon.visible end,
        },
        debugOutputToggle = {
            name = "Enable debug info",
            desc = "Enable / disable debug info",
            type = "toggle",
            set = AchievementFilter.DebugOutputToggleSet,
            get = function () return AchievementFilter.db.profile.debug.output.enabled end,
        }
    }
}

-- AceAddon functions
function AchievementFilter:OnInitialize() -- AceAddon - Code that you want to run when the addon is first loaded goes here.
    self.db = LibStub("AceDB-3.0"):New("AchievementFilterDB", defaults);
    local config = LibStub("AceConfig-3.0");
    config:RegisterOptionsTable("AchievementFilterOptions", optionsTable);
	LibStub("AceConfigDialog-3.0"):AddToBlizOptions("AchievementFilterOptions", "Achievement Filter", "AchievementFilter");

	-- icon:Register("RaidAchieveFilter", achFiltLDB, self.db.profile.minimap)
end

function AchievementFilter:OnEnable() -- AceAddon - Called when the addon is enabled
end

function AchievementFilter:OnDisable() -- AceAddon - Called when the addon is disabled
end

-- Debug
function AchievementFilter:Debug(value)
	if AchievementFilter.db.profile.debug.output.enabled then
        print(value);
    end
end
