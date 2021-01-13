local _, addon = ...; -- Global addon namespace
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace

-- Using LibDBIcon instead of creating the icon from scratch is the automatic integration with other addons that also use LibDataBroker
addon.Icon = LibStub("LibDBIcon-1.0"); -- Global icon object
local icon = addon.Icon; -- Local icon object

local function CreateIcon()
    -- Extra options needed for default LibDBIcon behaviour
    Krowi_AchievementFilterOptions.Minimap = {
        hide = not Krowi_AchievementFilterOptions.ShowMinimapIcon,
    };


    icon.AchievementFilterLDB = LibStub("LibDataBroker-1.1"):NewDataObject("Krowi_AchievementFilterLDB", {
        type = "launcher",
        label = AF_NAME,
        icon = "Interface\\Icons\\achievement_dungeon_heroic_gloryoftheraider",
        OnClick = function(self, button)
            diagnostics.Debug("Icon clicked with " .. button);
            if button == "RightButton" then
                diagnostics.Trace("icon.AchievementFilterLDB.OnClick with RightButton");
                InterfaceAddOnsList_Update(); -- This way the correct category will be shown when calling InterfaceOptionsFrame_OpenToCategory
                InterfaceOptionsFrame_OpenToCategory(AF_NAME);
            end
        end,
        OnTooltipShow = function(tt)
            tt:ClearLines();
            tt:AddDoubleLine(AF_NAME, AF_VERSION_BUILD);
            tt:AddLine(" "); -- Empty line
            tt:AddLine(AF_ICON_TOOLTIP_RIGHT_CLICK);
        end,
    });
end

-- Load the icon
function icon.Load()
    CreateIcon();

    Krowi_AchievementFilterOptions.Minimap.hide = not Krowi_AchievementFilterOptions.ShowMinimapIcon;
    icon:Register("Krowi_AchievementFilterLDB", icon.AchievementFilterLDB, Krowi_AchievementFilterOptions.Minimap);
    diagnostics.Debug("- Icon loaded");
    diagnostics.Debug("     - " .. AF_OPTIONS_MINIMAP_ICON_TOGGLE .. ": " .. tostring(not Krowi_AchievementFilterOptions.Minimap.hide));
end