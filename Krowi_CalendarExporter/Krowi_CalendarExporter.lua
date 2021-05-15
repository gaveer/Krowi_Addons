-- [[ Namespaces ]] --
local addonName, addon = ...;

-- [[ Load addon ]] --
local loadHelper = CreateFrame("Frame");
loadHelper:RegisterEvent("PLAYER_LOGIN");

function loadHelper:OnEvent(event, arg1)
    if event == "PLAYER_LOGIN" then
        local numPrevMonths = 1; -- Options
        local numNextMonths = 2; -- Options
        local totalMonths = numPrevMonths + numNextMonths;

        local currentDate = C_DateAndTime.GetCurrentCalendarTime();
        C_Calendar.SetAbsMonth(currentDate.month, currentDate.year); -- Make sure we're starting from the correct date

        Export = {};
        C_Calendar.SetMonth(-numPrevMonths); -- Set the first month to get
        for i = 1, totalMonths, 1 do
            local monthInfo = C_Calendar.GetMonthInfo();
            local date = {year = monthInfo.year, month = monthInfo.month, monthDay = 1, weekday = monthInfo.firstWeekday, hour = 0, minute = 0}; -- First day of month
            local numDays = monthInfo.numDays; -- Days in month
            for j = 1, numDays, 1 do
                date.numDayEvents = C_Calendar.GetNumDayEvents(0, date.monthDay);
                date.Events = {};
                for k = 1, date.numDayEvents, 1 do
                    tinsert(date.Events, C_Calendar.GetDayEvent(0, date.monthDay, k));
                end
                tinsert(Export, date);
                date = C_DateAndTime.AdjustTimeByDays(date, 1);
            end
            C_Calendar.SetMonth(1);
        end
        C_Calendar.SetAbsMonth(currentDate.month, currentDate.year);
    end
end
loadHelper:SetScript("OnEvent", loadHelper.OnEvent);