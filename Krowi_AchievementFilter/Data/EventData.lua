-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local data = addon.Data;
addon.EventData = {};
local eventData = addon.EventData;

local GetEvents;
function eventData.Load()
    local refreshEvents = false;

    if type(EventDetails) == "table" then -- Check if all event end dates are in the future
        if next(EventDetails) == nil then
            refreshEvents = true;
        else
            local currentDate = addon.GetCurrentCalendarTimeSecondsSince();
            for _, event in next, EventDetails do
                local deltaT = math.floor((event.endTime - currentDate) / (3600 * 24));
                diagnostics.Debug(event.eventID .. " - " .. event.title .. " - " .. tostring(deltaT));
                if deltaT < 0 then
                    refreshEvents = true;
                end
            end
        end
    else
        EventDetails = {};
        refreshEvents = true;
    end

    diagnostics.Debug("refreshEvents: " .. tostring(refreshEvents));
    if refreshEvents then -- Events are either empty or an event has elapsed so get new data
        local events = GetEvents();
        for id, event in next, data.CalendarEvents do
            if events[id] then -- At this time we only handle calendar events, POI's are handeled later
                events[id].startTime = addon.GetSecondsSince(events[id].startTime);
                events[id].endTime = addon.GetSecondsSince(events[id].endTime);
                diagnostics.Debug(event.ID .. " - " .. events[id].title .. " - " ..
                                    -- events[id].startTime.year .. "/" .. events[id].startTime.month .. "/" .. events[id].startTime.day .. " - " ..
                                    -- events[id].endTime.year .. "/" .. events[id].endTime.month .. "/" .. events[id].endTime.day);
                                    date("%Y/%m/%d %H:%M", events[id].startTime) .. " - " .. date("%Y/%m/%d %H:%M", events[id].endTime));
                EventDetails[id] = events[id]; -- Cache for later
            end
        end
    end

    for id, event in next, data.CalendarEvents do
        event.EventDetails = EventDetails[id];
    end
end

function GetEvents()
    -- Make sure we're starting from the correct date
    local currentDate = C_DateAndTime.GetCurrentCalendarTime();
    C_Calendar.SetAbsMonth(currentDate.month, currentDate.year);

    local events = {};
    local date = currentDate;
    for i = 1, 12, 1 do
        local monthInfo = C_Calendar.GetMonthInfo();
        if i > 1 then
            date = {year = monthInfo.year, month = monthInfo.month, monthDay = 1, weekday = monthInfo.firstWeekday, hour = 0, minute = 0}; -- First day of month
        end
        local numDays = monthInfo.numDays; -- Days in month
        for j = date.monthDay, numDays, 1 do
            date.numDayEvents = C_Calendar.GetNumDayEvents(0, date.monthDay);
            for k = 1, date.numDayEvents, 1 do
                local event = C_Calendar.GetDayEvent(0, date.monthDay, k);
                if events[event.eventID] == nil then
                    events[event.eventID] = event;
                end
            end
            date = C_DateAndTime.AdjustTimeByDays(date, 1);
        end
        C_Calendar.SetMonth(1);
    end

    -- Set the date back to the current date
    C_Calendar.SetAbsMonth(currentDate.month, currentDate.year);

    return events;
end

-- local activeCalendarEvents;
function eventData.GetActiveCalendarEvents()
    diagnostics.Trace("eventData.GetActiveCalendarEvents");
    -- if activeCalendarEvents == nil then
        local activeCalendarEvents = {};

        local currentDate = addon.GetCurrentCalendarTimeSecondsSince();
        for _, event in next, data.CalendarEvents do
            if event.EventDetails ~= nil then
                local deltaT = math.floor((event.EventDetails.startTime - currentDate) / (3600 * 24));
                if deltaT < 0 then
                    diagnostics.Debug("Event active:" .. event.EventDetails.eventID .. " - " .. event.EventDetails.title .. " - " .. tostring(deltaT));
                    tinsert(activeCalendarEvents, event);
                else
                    diagnostics.Debug("Event not active:" .. event.EventDetails.eventID .. " - " .. event.EventDetails.title .. " - " .. tostring(deltaT));
                end
            end
        end
    -- end

    return activeCalendarEvents;
end

local GetStartAndEndTime;
-- local activeWorldEvents;
function eventData.GetActiveWorldEvents()
    diagnostics.Trace("eventData.GetActiveWorldEvents");
    -- if activeWorldEvents == nil then
        local activeWorldEvents = {};

        local currentDate = addon.GetCurrentCalendarTimeSecondsSince();
        for _, event in next, data.WorldEvents do
            local poiInfo = C_AreaPoiInfo.GetAreaPOIInfo(event.MapID, event.ID);
            if poiInfo then -- The event is active
                local secondsLeft = C_AreaPoiInfo.GetAreaPOISecondsLeft(event.ID);
                diagnostics.Debug(secondsLeft);
                if secondsLeft == nil or secondsLeft == 0 then
                    return; -- C_AreaPoiInfo is not yet properly loaded
                end

                local startTime, endTime = GetStartAndEndTime(secondsLeft, event.TotalDuration or 0);
                diagnostics.Debug(startTime);
                diagnostics.Debug(endTime);

                event.EventDetails = {startTime = startTime, endTime = endTime, eventID = event.ID, title = event.Title};
                diagnostics.Debug(event.ID .. " - " .. event.EventDetails.title .. " - " ..
                                    date("%Y/%m/%d %H:%M", event.EventDetails.startTime) .. " - " .. date("%Y/%m/%d %H:%M", event.EventDetails.endTime));

                if event.EventDetails ~= nil then
                    local deltaT = math.floor((event.EventDetails.startTime - currentDate) / (3600 * 24));
                    if deltaT < 0 then
                        diagnostics.Debug("Event active:" .. event.EventDetails.eventID .. " - " .. event.EventDetails.title .. " - " .. tostring(deltaT));
                        tinsert(activeWorldEvents, event);
                    end
                end
            end
        end
    -- end

    return activeWorldEvents;
end

function GetStartAndEndTime(secondsLeft, totalDuration) -- both in seconds

    local currentDate = addon.GetCurrentCalendarTimeSecondsSince();
    local endTime = floor((currentDate + secondsLeft) / 3600 + 0.5) * 3600;
    local startTime = endTime - totalDuration;

    return startTime, endTime;
end