-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.AlertSystem = {};
local alertSystem = gui.AlertSystem;

local ShowActiveCalendarEvents, ShowActiveWorldEvents;
function alertSystem:Load()
    addon.GUI.AlertSystem = AlertFrame:AddQueuedAlertFrameSubSystem("KrowiAF_AlertFrameTemplate", self.SetUp, 4, 6);
    addon.GUI.AlertSystem.ShowActiveCalendarEvents = ShowActiveCalendarEvents;
    addon.GUI.AlertSystem.ShowActiveWorldEvents = ShowActiveWorldEvents;
end

function ShowActiveCalendarEvents()
    diagnostics.Trace("ShowActiveCalendarEvents");

    local activeEvents = addon.EventData.GetActiveCalendarEvents();

    for _, activeEvent in next, activeEvents do
        addon.GUI.AlertSystem:AddAlert(activeEvent, addon.Options.db.EventAlert.FadeDelay);
    end
end

function ShowActiveWorldEvents()
    diagnostics.Trace("ShowActiveWorldEvents");

    local activeEvents = addon.EventData.GetActiveWorldEvents();

    for _, activeEvent in next, activeEvents do
        addon.GUI.AlertSystem:AddAlert(activeEvent, addon.Options.db.EventAlert.FadeDelay);
    end
end

-- function KrowiAFShowAlert(id)
--     if Kiosk.IsEnabled() then
--         return;
--     end

--     -- if not AchievementFrame then
--     --     AchievementFrame_LoadUI();
--     -- end

--     if id == nil then
--         id = 141;
--     end

--     addon.GUI.AlertSystem:AddAlert(addon.Data.Events[id], addon.Options.db.EventAlert.FadeDelay);
-- end

function alertSystem.SetUp(frame, event, duration)
    -- frame.Background = frame:CreateTexture(nil, "BACKGROUND");
    -- frame.Background:SetPoint("LEFT");
    -- frame.Background:SetWidth(256);
    -- frame.Background:SetHeight(84);
    -- frame.Background:SetTexture("Media/AlertFrame");
    -- frame.Background:SetTexCoord(imageTexCoord[1], imageTexCoord[2], imageTexCoord[3], imageTexCoord[4]);

	frame.Name:SetText(event.EventDetails.title);

    frame.Unlocked:SetText(tostring(date(addon.Options.db.EventAlert.DateTimeFormat, event.EventDetails.startTime)) .. "\n" .. tostring(date(addon.Options.db.EventAlert.DateTimeFormat, event.EventDetails.endTime)));

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

    diagnostics.Debug(self.Event.Category);
    addon.GUI.CategoriesFrame:SelectCategory(self.Event.Category);
end