-- [[ Exported at 2021-07-31 23-47-26 ]] --
-- [[ This code is automatically generated as an export from ]] --
-- [[ an SQLite database and is not meant for manual edit. ]] --

-- [[ Namespaces ]] --
local _, addon = ...;
local objects = addon.Objects;
local event = objects.Event;
local data = addon.Data;
data.ExportedEvents = {};
local exportedEvents = data.ExportedEvents;

function exportedEvents.Load(e)
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

function exportedEvents.LoadCategories(e, a)
    if e[141] == nil or e[181] == nil or e[201] == nil or e[324] == nil or e[327] == nil or e[341] == nil or e[372] == nil or e[398] == nil or e[404] == nil or e[409] == nil or e[423] == nil or e[479] == nil then
        exportedEvents.Load(e);
    end

    e[141].Category = a[273].Category; -- Winter Veil
    e[181].Category = a[2676].Category; -- Noblegarden
    e[201].Category = a[1791].Category; -- Children's Week
    e[324].Category = a[972].Category; -- Hallow's End
    e[327].Category = a[605].Category; -- Lunar Festival
    e[341].Category = a[263].Category; -- Midsummer
    e[372].Category = a[1184].Category; -- Brewfest
    e[398].Category = a[3457].Category; -- Pirates' Day
    e[404].Category = a[3579].Category; -- Pilgrim's Bounty
    e[409].Category = a[3456].Category; -- Day of the Dead
    e[423].Category = a[1701].Category; -- Love is in the Air
    e[479].Category = a[6019].Category; -- Darkmoon Faire
end

