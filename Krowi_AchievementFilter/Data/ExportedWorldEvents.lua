-- [[ Exported at 2021-08-06 14-59-23 ]] --
-- [[ This code is automatically generated as an export from ]] --
-- [[ an SQLite database and is not meant for manual edit. ]] --

-- [[ Namespaces ]] --
local _, addon = ...;
local objects = addon.Objects;
local event = objects.Event;
local data = addon.Data;
data.ExportedWorldEvents = {};
local exportedWorldEvents = data.ExportedWorldEvents;

function exportedWorldEvents.Load(e)
    for i, _ in next, e do
        e[i] = nil;
    end

    e[6989] = event:New(6989, 3257749, addon.L["Necrolords Assault"], 1550, 302400); -- Necrolord Assault
    e[6990] = event:New(6990, 3257751, addon.L["Venthyr Assault"], 1550, 302400); -- Venthyr Assault
    e[6991] = event:New(6991, 3257748, addon.L["Kyrian Assault"], 1550, 302400); -- Kyrian Assault
    e[6992] = event:New(6992, 3257750, addon.L["Night Fae Assault"], 1550, 302400); -- Night Fae Assault
end

function exportedWorldEvents.LoadCategories(e, a)
    if e[6989] == nil or e[6990] == nil or e[6991] == nil or e[6992] == nil then
        exportedEvents.Load(e);
    end

    e[6989].Category = data.CategoriesEvents[3].Children[1].Children[2]; -- Necrolords Assault
    e[6990].Category = data.CategoriesEvents[3].Children[1].Children[4]; -- Venthyr Assault
    e[6991].Category = data.CategoriesEvents[3].Children[1].Children[1]; -- Kyrian Assault
    e[6992].Category = data.CategoriesEvents[3].Children[1].Children[3]; -- Night Fae Assault
end

