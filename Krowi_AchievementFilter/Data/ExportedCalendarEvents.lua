-- [[ Exported at 2021-11-13 12-03-49 ]] --
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
    e[1263] = event:New(1263, 1450455); -- Legion Timewalking Dungeon Event
    e[1271] = event:New(1271, 1450455); -- Legion Timewalking Dungeon Launch Event
end

function exportedCalendarEvents.LoadCategories(e, a)
    if e[141] == nil or e[181] == nil or e[201] == nil or e[324] == nil or e[327] == nil or e[341] == nil or e[372] == nil or e[398] == nil or e[404] == nil or e[409] == nil or e[423] == nil or e[479] == nil or e[1263] == nil or e[1271] == nil then
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
    e[1263].Category = data.CategoriesEvents[3].Children[1]; -- Legion
    e[1271].Category = data.CategoriesEvents[3].Children[1]; -- Legion
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
    defaults[1263] = true;
    defaults[1271] = true;

    addon.Options.InjectDefaults(defaults, "CalendarEvents", "EventAlert");

    local optionsTable = {
        name = addon.L["Calendar Events"],
        type = "group",
        inline = true,
        args = {
            E141 = {
                type = "toggle",
                name = addon.L["Feast of Winter Veil"],
                get = function() return addon.Options.db.EventAlert.CalendarEvents[141]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[141] = not addon.Options.db.EventAlert.CalendarEvents[141];
                    addon.Options.Debug(addon.L["Feast of Winter Veil"], addon.Options.db.EventAlert.CalendarEvents[141]);
                end
            },
            E181 = {
                type = "toggle",
                name = addon.L["Noblegarden"],
                get = function() return addon.Options.db.EventAlert.CalendarEvents[181]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[181] = not addon.Options.db.EventAlert.CalendarEvents[181];
                    addon.Options.Debug(addon.L["Noblegarden"], addon.Options.db.EventAlert.CalendarEvents[181]);
                end
            },
            E201 = {
                type = "toggle",
                name = addon.L["Children's Week"],
                get = function() return addon.Options.db.EventAlert.CalendarEvents[201]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[201] = not addon.Options.db.EventAlert.CalendarEvents[201];
                    addon.Options.Debug(addon.L["Children's Week"], addon.Options.db.EventAlert.CalendarEvents[201]);
                end
            },
            E324 = {
                type = "toggle",
                name = addon.L["Hallow's End"],
                get = function() return addon.Options.db.EventAlert.CalendarEvents[324]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[324] = not addon.Options.db.EventAlert.CalendarEvents[324];
                    addon.Options.Debug(addon.L["Hallow's End"], addon.Options.db.EventAlert.CalendarEvents[324]);
                end
            },
            E327 = {
                type = "toggle",
                name = addon.L["Lunar Festival"],
                get = function() return addon.Options.db.EventAlert.CalendarEvents[327]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[327] = not addon.Options.db.EventAlert.CalendarEvents[327];
                    addon.Options.Debug(addon.L["Lunar Festival"], addon.Options.db.EventAlert.CalendarEvents[327]);
                end
            },
            E341 = {
                type = "toggle",
                name = addon.L["Midsummer Fire Festival"],
                get = function() return addon.Options.db.EventAlert.CalendarEvents[341]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[341] = not addon.Options.db.EventAlert.CalendarEvents[341];
                    addon.Options.Debug(addon.L["Midsummer Fire Festival"], addon.Options.db.EventAlert.CalendarEvents[341]);
                end
            },
            E372 = {
                type = "toggle",
                name = addon.L["Brewfest"],
                get = function() return addon.Options.db.EventAlert.CalendarEvents[372]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[372] = not addon.Options.db.EventAlert.CalendarEvents[372];
                    addon.Options.Debug(addon.L["Brewfest"], addon.Options.db.EventAlert.CalendarEvents[372]);
                end
            },
            E398 = {
                type = "toggle",
                name = addon.L["Pirates' Day"],
                get = function() return addon.Options.db.EventAlert.CalendarEvents[398]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[398] = not addon.Options.db.EventAlert.CalendarEvents[398];
                    addon.Options.Debug(addon.L["Pirates' Day"], addon.Options.db.EventAlert.CalendarEvents[398]);
                end
            },
            E404 = {
                type = "toggle",
                name = addon.L["Pilgrim's Bounty"],
                get = function() return addon.Options.db.EventAlert.CalendarEvents[404]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[404] = not addon.Options.db.EventAlert.CalendarEvents[404];
                    addon.Options.Debug(addon.L["Pilgrim's Bounty"], addon.Options.db.EventAlert.CalendarEvents[404]);
                end
            },
            E409 = {
                type = "toggle",
                name = addon.L["Day of the Dead"],
                get = function() return addon.Options.db.EventAlert.CalendarEvents[409]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[409] = not addon.Options.db.EventAlert.CalendarEvents[409];
                    addon.Options.Debug(addon.L["Day of the Dead"], addon.Options.db.EventAlert.CalendarEvents[409]);
                end
            },
            E423 = {
                type = "toggle",
                name = addon.L["Love is in the Air"],
                get = function() return addon.Options.db.EventAlert.CalendarEvents[423]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[423] = not addon.Options.db.EventAlert.CalendarEvents[423];
                    addon.Options.Debug(addon.L["Love is in the Air"], addon.Options.db.EventAlert.CalendarEvents[423]);
                end
            },
            E479 = {
                type = "toggle",
                name = addon.L["Darkmoon Faire"],
                get = function() return addon.Options.db.EventAlert.CalendarEvents[479]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[479] = not addon.Options.db.EventAlert.CalendarEvents[479];
                    addon.Options.Debug(addon.L["Darkmoon Faire"], addon.Options.db.EventAlert.CalendarEvents[479]);
                end
            },
            E1263 = {
                type = "toggle",
                name = addon.L["Legion Timewalking Dungeon Event"],
                get = function() return addon.Options.db.EventAlert.CalendarEvents[1263]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[1263] = not addon.Options.db.EventAlert.CalendarEvents[1263];
                    addon.Options.Debug(addon.L["Legion Timewalking Dungeon Event"], addon.Options.db.EventAlert.CalendarEvents[1263]);
                end
            },
            E1271 = {
                type = "toggle",
                name = addon.L["Legion Timewalking Dungeon Launch Event"],
                get = function() return addon.Options.db.EventAlert.CalendarEvents[1271]; end,
                set = function()
                    addon.Options.db.EventAlert.CalendarEvents[1271] = not addon.Options.db.EventAlert.CalendarEvents[1271];
                    addon.Options.Debug(addon.L["Legion Timewalking Dungeon Launch Event"], addon.Options.db.EventAlert.CalendarEvents[1271]);
                end
            },
        }
    };

    addon.Options.InjectOptionsTable(optionsTable, "CalendarEvents", "EventAlert", "args", "General", "args");
end

