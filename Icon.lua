AFSetting.Minimap = {
    hide = not AFSetting.ShowMinimapIcon,
};

Icon = LibStub("LibDBIcon-1.0"); -- Using this instead of creating the icon from scratch is the automatic integration with addons like Titan Panel

AchievementFilterLDB = LibStub("LibDataBroker-1.1"):NewDataObject("AchievementFilterLDB", {
    type = "launcher",
    label = AF_NAME,
    icon = "Interface\\Icons\\achievement_dungeon_heroic_gloryoftheraider",
    OnClick = function(self, button)
        AchievementFilter.Debug("Icon clicked ...");
        if button == "RightButton" then
            AchievementFilter.Debug("... with RightButton");
            InterfaceAddOnsList_Update(); -- This way the correct category will be shown when calling InterfaceOptionsFrame_OpenToCategory
		    InterfaceOptionsFrame_OpenToCategory(AF_NAME);
	    end
    end,
    OnTooltipShow = function(tt)
        tt:AddLine("|cffffffff" .. AF_NAME);
        tt:AddLine(AF_ICON_TOOLTIP_LINE2);
    end,
});

local iconLoadHelper = CreateFrame("Frame", nil, nil);
iconLoadHelper:RegisterEvent("ADDON_LOADED");

function iconLoadHelper:OnEvent(event, arg1)
    if arg1 == "AchievementFilter" then
        if event == "ADDON_LOADED" then
            AFSetting.Minimap.hide = not AFSetting.ShowMinimapIcon;
            Icon:Register("AchievementFilterLDB", AchievementFilterLDB, AFSetting.Minimap);
            AchievementFilter.Debug("Icon loaded");
            AchievementFilter.Debug("     - " .. AF_OPTIONS_MINIMAP_ICON_TOGGLE .. ": " .. tostring(not AFSetting.Minimap.hide));
            self:UnregisterEvent("ADDON_LOADED");
        end
    end
end
iconLoadHelper:SetScript("OnEvent", iconLoadHelper.OnEvent);