-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local data = addon.Data;
data.SavedData = {};
local savedData = data.SavedData;

function savedData.Load()
    if SavedData == nil then
        SavedData = {};
    end

    SavedData["Build"] = AF_BUILD;
    diagnostics.Debug("Current Build: " .. SavedData["Build"]);
    SavedData["Version"] = AF_VERSION;
    diagnostics.Debug("Current Version: " .. SavedData["Version"]);
end