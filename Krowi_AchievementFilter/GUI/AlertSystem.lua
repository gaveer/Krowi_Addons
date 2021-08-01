-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.AlertSystem = {};
local alertSystem = gui.AlertSystem;

function alertSystem:Load()
    addon.GUI.AlertSystem = AlertFrame:AddQueuedAlertFrameSubSystem("KrowiAF_AlertFrameTemplate", self.SetUp, 2, 6);
end

function KrowiAFShowAlert(id)
    if Kiosk.IsEnabled() then
        return;
    end

    -- if not AchievementFrame then
    --     AchievementFrame_LoadUI();
    -- end

    if id == nil then
        id = 141;
    end

    addon.GUI.AlertSystem:AddAlert(addon.Data.Events[id], 60);-- maybe make 60 a setting, this is the time the alert stays on screen in seconds
end

function alertSystem.SetUp(frame, event, duration)
	-- local _, name, points, completed, month, day, year, description, flags, icon, rewardText, isGuildAch, wasEarnedByMe, earnedBy = GetAchievementInfo(achievementID);

	frame.Name:SetText(event.EventDetails.title);

    frame.Unlocked:SetText(tostring(date("%x", time(event.EventDetails.startTime))) .. " - " .. tostring(date("%x", time(event.EventDetails.endTime))));

	frame.Icon.Texture:SetTexture(event.Icon);

	frame.Event = event;

    frame.duration = duration;
end

function KrowiAF_AlertFrame_OnClick(self, button, down)
    if AlertFrame_OnClick(self, button, down) then
		return; -- Handle right-click and close the alert
	end

    if not IsAddOnLoaded("Blizzard_AchievementUI") then
        LoadAddOn("Blizzard_AchievementUI");
    end

    addon.GUI.CategoriesFrame:SelectCategory(self.Event.Category);
end