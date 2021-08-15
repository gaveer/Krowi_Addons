-- [[ Exported at 2021-08-15 23-17-45 ]] --
-- [[ This code is automatically generated as an export from ]] --
-- [[ an SQLite database and is not meant for manual edit. ]] --

-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local objects = addon.Objects;
local event = objects.Event;
local data = addon.Data;
data.ExportedWorldEvents = {};
local exportedWorldEvents = data.ExportedWorldEvents;

function exportedWorldEvents.Load(e)
    for i, _ in next, e do
        e[i] = nil;
    end

    e[5175] = event:New(5175, 1408998, addon.L["Assault on Azsuna"], 619, 21600); -- Assault on Azsuna
    e[5177] = event:New(5177, 1409000, addon.L["Assault on Highmountain"], 619, 21600); -- Assault on Highmountain
    e[5178] = event:New(5178, 1409001, addon.L["Assault on Stormheim"], 619, 21600); -- Assault on Stormheim
    e[5210] = event:New(5210, 1409010, addon.L["Assault on Val'sharah"], 619, 21600); -- Assault on Val'sharah
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
    if e[5175] == nil or e[5177] == nil or e[5178] == nil or e[5210] == nil or e[5896] == nil or e[5964] == nil or e[5966] == nil or e[5969] == nil or e[5970] == nil or e[5973] == nil or e[6486] == nil or e[6487] == nil or e[6488] == nil or e[6489] == nil or e[6490] == nil or e[6491] == nil or e[6989] == nil or e[6990] == nil or e[6991] == nil or e[6992] == nil then
        exportedWorldEvents.Load(e);
    end

    e[5175].Category = data.CategoriesEvents[3].Children[1]; -- Legion Assaults
    e[5177].Category = data.CategoriesEvents[3].Children[1]; -- Legion Assaults
    e[5178].Category = data.CategoriesEvents[3].Children[1]; -- Legion Assaults
    e[5210].Category = data.CategoriesEvents[3].Children[1]; -- Legion Assaults
    e[5896].Category = data.CategoriesEvents[4].Children[1].Children[1]; -- Assault on Tiragarde Sound
    e[5964].Category = data.CategoriesEvents[4].Children[1].Children[2]; -- Assault on Drustvar
    e[5966].Category = data.CategoriesEvents[4].Children[1].Children[3]; -- Assault on Stormsong Valley
    e[5969].Category = data.CategoriesEvents[4].Children[1].Children[5]; -- Assault on Nazmir
    e[5970].Category = data.CategoriesEvents[4].Children[1].Children[6]; -- Assault on Vol'dun
    e[5973].Category = data.CategoriesEvents[4].Children[1].Children[4]; -- Assault on Zuldazar
    e[6486].Category = data.CategoriesEvents[4].Children[2].Children[2]; -- Uldum
    e[6487].Category = data.CategoriesEvents[4].Children[2].Children[2]; -- Uldum
    e[6488].Category = data.CategoriesEvents[4].Children[2].Children[2]; -- Uldum
    e[6489].Category = data.CategoriesEvents[4].Children[2].Children[1]; -- Vale of Eternal Blossoms
    e[6490].Category = data.CategoriesEvents[4].Children[2].Children[1]; -- Vale of Eternal Blossoms
    e[6491].Category = data.CategoriesEvents[4].Children[2].Children[1]; -- Vale of Eternal Blossoms
    e[6989].Category = data.CategoriesEvents[5].Children[1].Children[2]; -- Necrolords Assault
    e[6990].Category = data.CategoriesEvents[5].Children[1].Children[4]; -- Venthyr Assault
    e[6991].Category = data.CategoriesEvents[5].Children[1].Children[1]; -- Kyrian Assault
    e[6992].Category = data.CategoriesEvents[5].Children[1].Children[3]; -- Night Fae Assault
end

function exportedWorldEvents.InjectOptions()
    local defaults = {};
    defaults[5175] = true;
    defaults[5177] = true;
    defaults[5178] = true;
    defaults[5210] = true;
    defaults[5896] = true;
    defaults[5964] = true;
    defaults[5966] = true;
    defaults[5969] = true;
    defaults[5970] = true;
    defaults[5973] = true;
    defaults[6486] = true;
    defaults[6487] = true;
    defaults[6488] = true;
    defaults[6489] = true;
    defaults[6490] = true;
    defaults[6491] = true;
    defaults[6989] = true;
    defaults[6990] = true;
    defaults[6991] = true;
    defaults[6992] = true;

    addon.Options.InjectDefaults(defaults, "WorldEvents", "EventAlert");

    local optionsTable = {
        name = addon.L["World Events"],
        type = "group",
        inline = true,
        args = {
            E5175 = {
                name = addon.L["Assault on Azsuna"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[5175]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[5175] = not addon.Options.db.EventAlert.WorldEvents[5175];

                    diagnostics.Debug(addon.L["Assault on Azsuna"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[5175]));
                end
            },
            E5177 = {
                name = addon.L["Assault on Highmountain"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[5177]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[5177] = not addon.Options.db.EventAlert.WorldEvents[5177];

                    diagnostics.Debug(addon.L["Assault on Highmountain"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[5177]));
                end
            },
            E5178 = {
                name = addon.L["Assault on Stormheim"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[5178]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[5178] = not addon.Options.db.EventAlert.WorldEvents[5178];

                    diagnostics.Debug(addon.L["Assault on Stormheim"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[5178]));
                end
            },
            E5210 = {
                name = addon.L["Assault on Val'sharah"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[5210]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[5210] = not addon.Options.db.EventAlert.WorldEvents[5210];

                    diagnostics.Debug(addon.L["Assault on Val'sharah"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[5210]));
                end
            },
            E5896 = {
                name = addon.L["Assault on Tiragarde Sound"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[5896]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[5896] = not addon.Options.db.EventAlert.WorldEvents[5896];

                    diagnostics.Debug(addon.L["Assault on Tiragarde Sound"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[5896]));
                end
            },
            E5964 = {
                name = addon.L["Assault on Drustvar"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[5964]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[5964] = not addon.Options.db.EventAlert.WorldEvents[5964];

                    diagnostics.Debug(addon.L["Assault on Drustvar"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[5964]));
                end
            },
            E5966 = {
                name = addon.L["Assault on Stormsong Valley"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[5966]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[5966] = not addon.Options.db.EventAlert.WorldEvents[5966];

                    diagnostics.Debug(addon.L["Assault on Stormsong Valley"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[5966]));
                end
            },
            E5969 = {
                name = addon.L["Assault on Nazmir"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[5969]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[5969] = not addon.Options.db.EventAlert.WorldEvents[5969];

                    diagnostics.Debug(addon.L["Assault on Nazmir"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[5969]));
                end
            },
            E5970 = {
                name = addon.L["Assault on Vol'dun"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[5970]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[5970] = not addon.Options.db.EventAlert.WorldEvents[5970];

                    diagnostics.Debug(addon.L["Assault on Vol'dun"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[5970]));
                end
            },
            E5973 = {
                name = addon.L["Assault on Zuldazar"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[5973]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[5973] = not addon.Options.db.EventAlert.WorldEvents[5973];

                    diagnostics.Debug(addon.L["Assault on Zuldazar"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[5973]));
                end
            },
            E6486 = {
                name = addon.L["Assault: N'Zoth (Uldum)"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[6486]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[6486] = not addon.Options.db.EventAlert.WorldEvents[6486];

                    diagnostics.Debug(addon.L["Assault: N'Zoth (Uldum)"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[6486]));
                end
            },
            E6487 = {
                name = addon.L["Assault: Amathet"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[6487]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[6487] = not addon.Options.db.EventAlert.WorldEvents[6487];

                    diagnostics.Debug(addon.L["Assault: Amathet"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[6487]));
                end
            },
            E6488 = {
                name = addon.L["Assault: Aqir"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[6488]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[6488] = not addon.Options.db.EventAlert.WorldEvents[6488];

                    diagnostics.Debug(addon.L["Assault: Aqir"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[6488]));
                end
            },
            E6489 = {
                name = addon.L["Assault: N'Zoth (Vale of Eternal Blossoms)"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[6489]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[6489] = not addon.Options.db.EventAlert.WorldEvents[6489];

                    diagnostics.Debug(addon.L["Assault: N'Zoth (Vale of Eternal Blossoms)"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[6489]));
                end
            },
            E6490 = {
                name = addon.L["Assault: Mogu"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[6490]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[6490] = not addon.Options.db.EventAlert.WorldEvents[6490];

                    diagnostics.Debug(addon.L["Assault: Mogu"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[6490]));
                end
            },
            E6491 = {
                name = addon.L["Assault: Mantid"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[6491]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[6491] = not addon.Options.db.EventAlert.WorldEvents[6491];

                    diagnostics.Debug(addon.L["Assault: Mantid"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[6491]));
                end
            },
            E6989 = {
                name = addon.L["Necrolord Assault"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[6989]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[6989] = not addon.Options.db.EventAlert.WorldEvents[6989];

                    diagnostics.Debug(addon.L["Necrolord Assault"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[6989]));
                end
            },
            E6990 = {
                name = addon.L["Venthyr Assault"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[6990]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[6990] = not addon.Options.db.EventAlert.WorldEvents[6990];

                    diagnostics.Debug(addon.L["Venthyr Assault"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[6990]));
                end
            },
            E6991 = {
                name = addon.L["Kyrian Assault"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[6991]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[6991] = not addon.Options.db.EventAlert.WorldEvents[6991];

                    diagnostics.Debug(addon.L["Kyrian Assault"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[6991]));
                end
            },
            E6992 = {
                name = addon.L["Night Fae Assault"],
                type = "toggle",
                get = function() return addon.Options.db.EventAlert.WorldEvents[6992]; end,
                set = function()
                    addon.Options.db.EventAlert.WorldEvents[6992] = not addon.Options.db.EventAlert.WorldEvents[6992];

                    diagnostics.Debug(addon.L["Night Fae Assault"] .. ": " .. tostring(addon.Options.db.EventAlert.WorldEvents[6992]));
                end
            },
        }
    };

    addon.Options.InjectOptionsTable(optionsTable, "WorldEvents", "EventAlert", "args", "General", "args");
end

