-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
addon.Options = {}; -- Will be overwritten in Load (intended)
local options = addon.Options;

options.OptionsTable = {
    name = addon.MetaData.Title,
    type = "group",
    childGroups = "tab",
    args = {}
};

options.Debug = function(parameterName, value)
    diagnostics.Debug(parameterName .. ": " .. tostring(value));
end

options.MaxNumberOfSearchPreviews = function()
    return 17 + math.floor(addon.Options.db.Window.AchievementFrameHeightOffset / 29);
end

local function Open()
    InterfaceAddOnsList_Update(); -- This way the correct category will be shown when calling InterfaceOptionsFrame_OpenToCategory
    InterfaceOptionsFrame_OpenToCategory(addon.MetaData.Title);
end

-- Load the options
function options.Load()
    addon.Options = LibStub("AceDB-3.0"):New("Options", options.Defaults, true);
    addon.Options.Open = Open;
    addon.Options.db = addon.Options.profile;

    LibStub("AceConfig-3.0"):RegisterOptionsTable(addon.MetaData.Title, options.OptionsTable);
    LibStub("AceConfigDialog-3.0"):AddToBlizOptions(addon.MetaData.Title, nil, nil);

    -- Extra things to set in the options panel based loaded options we can't do while loading the addon files
    local numberOfSearchPreviews = LibStub("AceConfigRegistry-3.0"):GetOptionsTable(addon.MetaData.Title, "cmd", "KROWIAF-0.0").args.General.args.Search.args.NumberOfSearchPreviews; -- cmd and KROWIAF-0.0 are just to make the function work
    numberOfSearchPreviews.max = options.MaxNumberOfSearchPreviews();

    diagnostics.Debug("Options loaded");
    diagnostics.DebugTable(addon.Options.db, 1);
end

function options.InjectDefaults(table, tableName, ...)
    local destTable = options.Defaults.profile;
    for i = 1, select("#", ...), 1 do
        destTable = destTable[select(i, ...)];
    end
    destTable[tableName] = table;
end

function options.InjectOptionsTable(table, tableName, ...)
    local destTable = options.OptionsTable.args;
    for i = 1, select("#", ...), 1 do
        destTable = destTable[select(i, ...)];
    end
    destTable[tableName] = table;
end