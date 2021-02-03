-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;

-- Using LibDBIcon instead of creating the icon from scratch is the automatic integration with other addons that also use LibDataBroker
addon.Icon = LibStub("LibDBIcon-1.0"); -- Global icon object
local icon = addon.Icon; -- Local icon object

local function CreateIcon()
    icon.AchievementFilterLDB = LibStub("LibDataBroker-1.1"):NewDataObject("Krowi_AchievementFilterLDB", {
        type = "launcher",
        label = AF_NAME,
        icon = "Interface\\Icons\\achievement_dungeon_heroic_gloryoftheraider",
        OnClick = function(self, button)
            diagnostics.Debug("Icon clicked with " .. button);
            if button == "LeftButton" then
                diagnostics.Trace("icon.AchievementFilterLDB.OnClick with LeftButton");
                addon.GUI.ToggleAchievementFrameAtTab1();
            elseif button == "RightButton" then
                diagnostics.Trace("icon.AchievementFilterLDB.OnClick with RightButton");
                InterfaceAddOnsList_Update(); -- This way the correct category will be shown when calling InterfaceOptionsFrame_OpenToCategory
                InterfaceOptionsFrame_OpenToCategory(AF_NAME);
            end
        end,
        OnTooltipShow = function(tt)
            tt:ClearLines();
            tt:AddDoubleLine(AF_NAME, AF_BUILD_VERSION);
            tt:AddLine(" "); -- Empty line
            tt:AddLine(addon.L["I_LEFT_CLICK"]);
            tt:AddLine(addon.L["I_RIGHT_CLICK"]);
        end,
    });
end

-- Load the icon
function icon.Load()
    CreateIcon();

    local db = addon.Options.db;
    db.Minimap.hide = not db.ShowMinimapIcon;
    icon:Register("Krowi_AchievementFilterLDB", icon.AchievementFilterLDB, db.Minimap);
    diagnostics.Debug("- Icon loaded");
    diagnostics.Debug("     - " .. addon.L["O_SHOW_MINIMAP_ICON"] .. ": " .. tostring(not db.Minimap.hide));
end