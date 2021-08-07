-- [[ Exported at 2021-08-06 14-59-22 ]] --
-- [[ This code is automatically generated as an export from ]] --
-- [[ an SQLite database and is not meant for manual edit. ]] --

-- [[ Namespaces ]] --
local _, addon = ...;
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
        exportedEvents.Load(e);
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

