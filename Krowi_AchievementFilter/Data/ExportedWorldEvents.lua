-- [[ Exported at 2021-08-10 00-03-23 ]] --
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

    e[5896] = event:New(5896, 2065630, addon.L["Assault on Tiragarde Sound"], 876, 25200); -- Assault on Tiragarde Sound
    e[5964] = event:New(5964, 2065567, addon.L["Assault on Drustvar"], 876, 25200); -- Assault on Drustvar
    e[5966] = event:New(5966, 2065627, addon.L["Assault on Stormsong Valley"], 876, 25200); -- Assault on Stormsong Valley
    e[5969] = event:New(5969, 2032229, addon.L["Assault on Nazmir"], 875, 25200); -- Assault on Nazmir
    e[5970] = event:New(5970, 2065632, addon.L["Assault on Vol'dun"], 875, 25200); -- Assault on Vol'dun
    e[5973] = event:New(5973, 2065640, addon.L["Assault on Zuldazar"], 875, 25200); -- Assault on Zuldazar
    e[6486] = event:New(6486, 3196264, addon.L["Assault: N'Zoth (Uldum)"], 12, 604800); -- Assault: N'Zoth (Uldum)
    e[6487] = event:New(6487, 415054, addon.L["Assault: Amathet"], 12, 302400); -- Assault: Amathet
    e[6488] = event:New(6488, 458247, addon.L["Assault: Aqir"], 12, 302400); -- Assault: Aqir
    e[6489] = event:New(6489, 3196265, addon.L["Assault: N'Zoth (Vale of Eternal Blossoms)"], 424, 604800); -- Assault: N'Zoth (Vale of Eternal Blossoms)
    e[6490] = event:New(6490, 801016, addon.L["Assault: Mogu"], 424, 302400); -- Assault: Mogu
    e[6491] = event:New(6491, 615301, addon.L["Assault: Mantid"], 424, 302400); -- Assault: Mantid
    e[6989] = event:New(6989, 3257749, addon.L["Necrolord Assault"], 1550, 302400); -- Necrolord Assault
    e[6990] = event:New(6990, 3257751, addon.L["Venthyr Assault"], 1550, 302400); -- Venthyr Assault
    e[6991] = event:New(6991, 3257748, addon.L["Kyrian Assault"], 1550, 302400); -- Kyrian Assault
    e[6992] = event:New(6992, 3257750, addon.L["Night Fae Assault"], 1550, 302400); -- Night Fae Assault
end

function exportedWorldEvents.LoadCategories(e, a)
    if e[5896] == nil or e[5964] == nil or e[5966] == nil or e[5969] == nil or e[5970] == nil or e[5973] == nil or e[6486] == nil or e[6487] == nil or e[6488] == nil or e[6489] == nil or e[6490] == nil or e[6491] == nil or e[6989] == nil or e[6990] == nil or e[6991] == nil or e[6992] == nil then
        exportedEvents.Load(e);
    end

    e[5896].Category = data.CategoriesEvents[1].Children[1].Children[1]; -- Assault on Tiragarde Sound
    e[5964].Category = data.CategoriesEvents[1].Children[1].Children[2]; -- Assault on Drustvar
    e[5966].Category = data.CategoriesEvents[1].Children[1].Children[3]; -- Assault on Stormsong Valley
    e[5969].Category = data.CategoriesEvents[1].Children[1].Children[5]; -- Assault on Nazmir
    e[5970].Category = data.CategoriesEvents[1].Children[1].Children[6]; -- Assault on Vol'dun
    e[5973].Category = data.CategoriesEvents[1].Children[1].Children[4]; -- Assault on Zuldazar
    e[6486].Category = data.CategoriesEvents[1].Children[2].Children[2]; -- Uldum
    e[6487].Category = data.CategoriesEvents[1].Children[2].Children[2]; -- Uldum
    e[6488].Category = data.CategoriesEvents[1].Children[2].Children[2]; -- Uldum
    e[6489].Category = data.CategoriesEvents[1].Children[2].Children[1]; -- Vale of Eternal Blossoms
    e[6490].Category = data.CategoriesEvents[1].Children[2].Children[1]; -- Vale of Eternal Blossoms
    e[6491].Category = data.CategoriesEvents[1].Children[2].Children[1]; -- Vale of Eternal Blossoms
    e[6989].Category = data.CategoriesEvents[2].Children[1].Children[2]; -- Necrolords Assault
    e[6990].Category = data.CategoriesEvents[2].Children[1].Children[4]; -- Venthyr Assault
    e[6991].Category = data.CategoriesEvents[2].Children[1].Children[1]; -- Kyrian Assault
    e[6992].Category = data.CategoriesEvents[2].Children[1].Children[3]; -- Night Fae Assault
end

