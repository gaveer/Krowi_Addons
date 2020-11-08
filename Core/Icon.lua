AFSetting.Minimap = {
    hide = not AFSetting.ShowMinimapIcon,
}

Icon = LibStub("LibDBIcon-1.0");

AchievementFilterLDB = LibStub("LibDataBroker-1.1"):NewDataObject("AchievementFilterLDB", {
    type = "launcher",
    label = "Achievement Filter",
    icon = "Interface\\Icons\\achievement_dungeon_heroic_gloryoftheraider",
    OnClick = function(self, button)
        if button == "LeftButton" then
            Debug("LeftButton clicked");
            InterfaceAddOnsList_Update(); -- This way the correct category will be shown when calling InterfaceOptionsFrame_OpenToCategory
		    InterfaceOptionsFrame_OpenToCategory("Achievement Filter");
	    end
    end,
    OnTooltipShow = function(tt)
        tt:AddLine("Achievement Filter")
        tt:AddLine("|cffffffff" .. "Click for Options.")
    end,
})

local iconFrame = CreateFrame("Frame", nil, nil);
iconFrame:RegisterEvent("ADDON_LOADED");

function iconFrame:OnEvent(event, arg1)
    if arg1 == "AchievementFilter" then
        if event == "ADDON_LOADED" then
            AFSetting.Minimap.hide = not AFSetting.ShowMinimapIcon;
            Icon:Register("AchievementFilterLDB", AchievementFilterLDB, AFSetting.Minimap);
            Debug(AF_ICON_LOADED);
            Debug("     - Icon shown: " .. tostring(not AFSetting.Minimap.hide));
            self:UnregisterEvent("ADDON_LOADED");
        end
    end
end
iconFrame:SetScript("OnEvent", iconFrame.OnEvent);
