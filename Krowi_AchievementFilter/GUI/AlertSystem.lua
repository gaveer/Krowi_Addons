-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.AlertSystem = {};
local alertSystem = gui.AlertSystem;

local ShowActiveCalendarEvents, ShowActiveWorldEvents;
function alertSystem:Load()
    addon.GUI.AlertSystem = AlertFrame:AddQueuedAlertFrameSubSystem("KrowiAF_AlertFrameTemplate", self.SetUp, 5, 10);
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
	frame.Event = event;

	frame.Name:SetText(event.EventDetails.title);

    gui.UpdateEventRuntime(frame);

	frame.Icon.Texture:SetTexture(event.Icon);

    frame.duration = duration;

    frame.TimeSinceLastUpdate = 0;
    frame:SetScript("OnUpdate", function(self, elapsed)
        self.TimeSinceLastUpdate = self.TimeSinceLastUpdate + elapsed;

        if self.TimeSinceLastUpdate > 1 then
            gui.UpdateEventRuntime(frame);
            self.TimeSinceLastUpdate = 0;
        end
    end);
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