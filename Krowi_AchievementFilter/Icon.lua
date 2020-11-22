AFSetting.Minimap = {
    hide = not AFSetting.ShowMinimapIcon,
};

KrowiAF.Icon = LibStub("LibDBIcon-1.0"); -- Using this instead of creating the icon from scratch is the automatic integration with addons like Titan Panel

KrowiAF.AchievementFilterLDB = LibStub("LibDataBroker-1.1"):NewDataObject("KrowiAFAchievementFilterLDB", {
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
        tt:ClearLines();
        tt:AddDoubleLine(AF_NAME, AF_VERSION_BUILD);
        tt:AddLine(" ");
        tt:AddLine(AF_ICON_TOOLTIP_RIGHT_CLICK);
    end,
});

function KrowiAF.LoadIcon()
    AFSetting.Minimap.hide = not AFSetting.ShowMinimapIcon;
    KrowiAF.Icon:Register("KrowiAFAchievementFilterLDB", KrowiAF.AchievementFilterLDB, AFSetting.Minimap);
    KrowiAF.Debug("- Icon loaded");
    KrowiAF.Debug("     - " .. AF_OPTIONS_MINIMAP_ICON_TOGGLE .. ": " .. tostring(not AFSetting.Minimap.hide));
end