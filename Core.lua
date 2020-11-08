-- -- Global vars
-- AchievementFilter = LibStub("AceAddon-3.0"):NewAddon("AchievementFilter");
-- IsAlliance = UnitFactionGroup("player") == "Alliance";
-- IsHorde = UnitFactionGroup("player") == "Horde";
-- IsNeutral = UnitFactionGroup("player") == "Neutral";

-- -- AceDB defaults
-- local defaults = {
--     profile = {
--         minimap = {
--             icon = {
--                 hide = false,
--             },
--         },
--         debug = {
--             output = {
--                 enabled = true,
--             },
--         },
--     }
-- }

-- -- AceAddon functions
-- function AchievementFilter:OnInitialize() -- AceAddon - Code that you want to run when the addon is first loaded goes here.
--     self.db = LibStub("AceDB-3.0"):New("AchievementFilterDB", defaults);
--     InitializeConfig();
--     InitializeIcon();
-- end

-- function AchievementFilter:OnEnable() -- AceAddon - Called when the addon is enabled
-- end

-- function AchievementFilter:OnDisable() -- AceAddon - Called when the addon is disabled
-- end

-- Debug
local debugCounter = 0;
function Debug(value)
    if AFSetting.EnableDebugInfo then
        debugCounter = debugCounter + 1;
        print(tostring(debugCounter) .. " - " .. tostring(value));
    end
end