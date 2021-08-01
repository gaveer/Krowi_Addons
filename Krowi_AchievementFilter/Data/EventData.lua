-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local data = addon.Data;
addon.EventData = {};
local eventData = addon.EventData;

local GetEvents;
function eventData.Load()
    local refreshEvents = false;

    if EventDetails ~= nil then -- Check if all event end dates are in the future
        local currentDate = C_DateAndTime.GetCurrentCalendarTime();
        currentDate.day = currentDate.monthDay;
        currentDate.monthDay = nil;
        currentDate.wday = currentDate.weekday;
        currentDate.weekday = nil;
        currentDate.min = currentDate.minute;
        currentDate.minute = nil;
        currentDate = time(currentDate);
        for _, event in next, EventDetails do
            local deltaT = math.floor((time(event.endTime) - currentDate) / (3600 * 24));
            diagnostics.Debug(event.eventID .. " - " .. event.title .. " - " .. tostring(deltaT));
            if deltaT < 0 then
                refreshEvents = true;
            end
        end
    else
        EventDetails = {};
        refreshEvents = true;
    end

    if refreshEvents then -- Events are either empty or an event has elapsed so get new data
        local events = GetEvents();
        for id, event in next, data.Events do
            events[id].startTime.day = events[id].startTime.monthDay;
            events[id].startTime.monthDay = nil;
            events[id].startTime.wday = events[id].startTime.weekday;
            events[id].startTime.weekday = nil;
            events[id].startTime.min = events[id].startTime.minute;
            events[id].startTime.minute = nil;
            events[id].endTime.day = events[id].endTime.monthDay;
            events[id].endTime.monthDay = nil;
            events[id].endTime.wday = events[id].endTime.weekday;
            events[id].endTime.weekday = nil;
            events[id].endTime.min = events[id].endTime.minute;
            events[id].endTime.minute = nil;
            diagnostics.Debug(event.ID .. " - " .. event.Title .. " - " ..
                                events[id].startTime.year .. "/" .. events[id].startTime.month .. "/" .. events[id].startTime.day .. " - " ..
                                events[id].endTime.year .. "/" .. events[id].endTime.month .. "/" .. events[id].endTime.day);
            EventDetails[id] = events[id]; -- Cache for later
        end
    end

    for id, event in next, data.Events do
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