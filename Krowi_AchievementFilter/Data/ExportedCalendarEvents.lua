-- [[ Exported at 2021-08-15 23-17-44 ]] --
-- [[ This code is automatically generated as an export from ]] --
-- [[ an SQLite database and is not meant for manual edit. ]] --

-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local objects = addon.Objects;
local event = objects.Event;
local data = addon.Data;
data.ExportedCalendarEvents = {};
local exportedCalendarEvents = data.ExportedCalendarEvents;

function exportedCalendarEvents.Load(e)
    for i, _ in next, e do
        e[i] = nil;
    end

    e[141] = event:New(141, 236705); -- Feast of Winter Veil
    e[181] = event:New(181, 237000); -- Noblegarden
    e[201] = event:New(201, 134508); -- Children's Week
    e[324] = event:New(324, 236552); -- Hallow's End
    e[327] = event:New(327, 236704); -- Lunar Festival
    e[341] = event:New(341, 135268); -- Midsummer Fire Festival
    e[372] = event:New(372, 236701); -- Brewfest
    e[398] = event:New(398, 133168); -- Pirates' Day
    e[404] = event:New(404, 250626); -- Pilgrim's Bounty
    e[409] = event:New(409, 237272); -- Day of the Dead
    e[423] = event:New(423, 236709); -- Love is in the Air
    e[479] = event:New(479, 134481); -- Darkmoon Faire
end

function exportedCalendarEvents.LoadCategories(e, a)
    if e[141] == nil or e[181] == nil or e[201] == nil or e[324] == nil or e[327] == nil or e[341] == nil or e[372] == nil or e[398] == nil or e[404] == nil or e[409] == nil or e[423] == nil or e[479] == nil then
        exportedCalendarEvents.Load(e);
    end

    e[141].Category = data.CategoriesEvents[1].Children[11]; -- Winter Veil
    e[181].Category = data.CategoriesEvents[1].Children[3]; -- Noblegarden
    e[201].Category = data.CategoriesEvents[1].Children[4]; -- Children's Week
    e[324].Category = data.CategoriesEvents[1].Children[8]; -- Hallow's End
    e[327].Category = data.CategoriesEvents[1].Children[1]; -- Lunar Festival
    e[341].Category = data.CategoriesEvents[1].Children[5]; -- Midsummer
    e[372].Category = data.CategoriesEvents[1].Children[7]; -- Brewfest
    e[398].Category = data.CategoriesEvents[1].Children[6]; -- Pirates' Day
    e[404].Category = data.CategoriesEvents[1].Children[10]; -- Pilgrim's Bounty
    e[409].Category = data.CategoriesEvents[1].Children[9]; -- Day of the Dead
    e[423].Category = data.CategoriesEvents[1].Children[2]; -- Love is in the Air
    e[479].Category = data.CategoriesEvents[2]; -- Darkmoon Faire
end

function exportedCalendarEvents.InjectOptions()
    local defaults = {};
    defaults[141] = true;
    defaults[181] = true;
    defaults[201] = true;
    defaults[324] = true;
    defaults[327] = true;
    defaults[341] = true;
    defaults[372] = true;
    defaults[398] = true;
    defaults[404] = true;
    defaults[409] = true;
    defaults[423] = true;
    defaults[479] = true;

    addon.Options.InjectDefaults(defaults, "CalendarEvents", "EventAlert");

    local optionsTable = {
        name = addon.L["Calendar Events"],
        type = "group",
        inline = true,
        args = {
            E141 = {
                name = addon.L["Feast of Winter Veil"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.CalendarEvents[141]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[141] = not addon.Options.db.EventAlert.CalendarEvents[141];

                    diagnostics.Debug(addon.L["Feast of Winter Veil"] .. ": " .. tostring(addon.Options.db.EventAlert.CalendarEvents[141]));
                end
            },
            E181 = {
                name = addon.L["Noblegarden"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.CalendarEvents[181]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[181] = not addon.Options.db.EventAlert.CalendarEvents[181];

                    diagnostics.Debug(addon.L["Noblegarden"] .. ": " .. tostring(addon.Options.db.EventAlert.CalendarEvents[181]));
                end
            },
            E201 = {
                name = addon.L["Children's Week"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.CalendarEvents[201]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[201] = not addon.Options.db.EventAlert.CalendarEvents[201];

                    diagnostics.Debug(addon.L["Children's Week"] .. ": " .. tostring(addon.Options.db.EventAlert.CalendarEvents[201]));
                end
            },
            E324 = {
                name = addon.L["Hallow's End"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.CalendarEvents[324]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[324] = not addon.Options.db.EventAlert.CalendarEvents[324];

                    diagnostics.Debug(addon.L["Hallow's End"] .. ": " .. tostring(addon.Options.db.EventAlert.CalendarEvents[324]));
                end
            },
            E327 = {
                name = addon.L["Lunar Festival"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.CalendarEvents[327]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[327] = not addon.Options.db.EventAlert.CalendarEvents[327];

                    diagnostics.Debug(addon.L["Lunar Festival"] .. ": " .. tostring(addon.Options.db.EventAlert.CalendarEvents[327]));
                end
            },
            E341 = {
                name = addon.L["Midsummer Fire Festival"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.CalendarEvents[341]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[341] = not addon.Options.db.EventAlert.CalendarEvents[341];

                    diagnostics.Debug(addon.L["Midsummer Fire Festival"] .. ": " .. tostring(addon.Options.db.EventAlert.CalendarEvents[341]));
                end
            },
            E372 = {
                name = addon.L["Brewfest"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.CalendarEvents[372]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[372] = not addon.Options.db.EventAlert.CalendarEvents[372];

                    diagnostics.Debug(addon.L["Brewfest"] .. ": " .. tostring(addon.Options.db.EventAlert.CalendarEvents[372]));
                end
            },
            E398 = {
                name = addon.L["Pirates' Day"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.CalendarEvents[398]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[398] = not addon.Options.db.EventAlert.CalendarEvents[398];

                    diagnostics.Debug(addon.L["Pirates' Day"] .. ": " .. tostring(addon.Options.db.EventAlert.CalendarEvents[398]));
                end
            },
            E404 = {
                name = addon.L["Pilgrim's Bounty"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.CalendarEvents[404]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[404] = not addon.Options.db.EventAlert.CalendarEvents[404];

                    diagnostics.Debug(addon.L["Pilgrim's Bounty"] .. ": " .. tostring(addon.Options.db.EventAlert.CalendarEvents[404]));
                end
            },
            E409 = {
                name = addon.L["Day of the Dead"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.CalendarEvents[409]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[409] = not addon.Options.db.EventAlert.CalendarEvents[409];

                    diagnostics.Debug(addon.L["Day of the Dead"] .. ": " .. tostring(addon.Options.db.EventAlert.CalendarEvents[409]));
                end
            },
            E423 = {
                name = addon.L["Love is in the Air"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.CalendarEvents[423]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[423] = not addon.Options.db.EventAlert.CalendarEvents[423];

                    diagnostics.Debug(addon.L["Love is in the Air"] .. ": " .. tostring(addon.Options.db.EventAlert.CalendarEvents[423]));
                end
            },
            E479 = {
                name = addon.L["Darkmoon Faire"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.CalendarEvents[479]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[479] = not addon.Options.db.EventAlert.CalendarEvents[479];

                    diagnostics.Debug(addon.L["Darkmoon Faire"] .. ": " .. tostring(addon.Options.db.EventAlert.CalendarEvents[479]));
                end
            },
        }
    };

    addon.Options.InjectOptionsTable(optionsTable, "CalendarEvents", "EventAlert", "args", "General", "args");
end

