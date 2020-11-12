AFSetting.Minimap = {
    hide = not AFSetting.ShowMinimapIcon,
};

Icon = LibStub("LibDBIcon-1.0"); -- Using this instead of creating the icon from scratch is the automatic integration with addons like Titan Panel

AchievementFilterLDB = LibStub("LibDataBroker-1.1"):NewDataObject("AchievementFilterLDB", {
    type = "launcher",
    label = AF_NAME,
    icon = "Interface\\Icons\\achievement_dungeon_heroic_gloryoftheraider",
    OnClick = function(self, button)
        KrowiAF.Debug("Icon clicked ...");
        if button == "RightButton" then
            KrowiAF.Debug("... with RightButton");
            InterfaceAddOnsList_Update(); -- This way the correct category will be shown when calling InterfaceOptionsFrame_OpenToCategory
		    InterfaceOptionsFrame_OpenToCategory(AF_NAME);
	    end
    end,
    OnTooltipShow = function(tt)
        tt:AddLine("|cffffffff" .. AF_NAME_COLORED);
        tt:AddLine(AF_ICON_TOOLTIP_LINE2);
    end,
});

function KrowiAF.LoadIcon()
    AFSetting.Minimap.hide = not AFSetting.ShowMinimapIcon;
    Icon:Register("AchievementFilterLDB", AchievementFilterLDB, AFSetting.Minimap);
    KrowiAF.Debug("- Icon loaded");
    KrowiAF.Debug("     - " .. AF_OPTIONS_MINIMAP_ICON_TOGGLE .. ": " .. tostring(not AFSetting.Minimap.hide));
end