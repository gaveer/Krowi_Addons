-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local data = addon.Data;
data.SavedData = {};
local savedData = data.SavedData;

local LoadSolutions, Resolve;
function savedData.Load()
    if SavedData == nil then
        SavedData = {};
    end

    local prevBuild = SavedData["Build"];
    diagnostics.Debug("Previous Build: " .. tostring(prevBuild)); -- Can be nil
    SavedData["Build"] = AF_BUILD;
    local currBuild = SavedData["Build"];
    diagnostics.Debug("Current Build: " .. SavedData["Build"]);

    local prevVersion = SavedData["Version"];
    diagnostics.Debug("Previous Version: " .. tostring(prevVersion)); -- Can be nil
    SavedData["Version"] = AF_VERSION;
    local currVersion = SavedData["Version"];
    diagnostics.Debug("Current Version: " .. SavedData["Version"]);

    Resolve(LoadSolutions(), prevBuild, currBuild, prevVersion, currVersion);
end

local FixFeaturesTutorialProgress;
function LoadSolutions()
    local solutions = {
        FixFeaturesTutorialProgress, -- 1
    };

    return solutions;
end

function Resolve(solutions, prevBuild, currBuild, prevVersion, currVersion)
    if not (prevBuild == nil or prevVersion == nil or prevBuild .. "." .. prevVersion < currBuild .. "." .. currVersion) then
        diagnostics.Debug("Nothing to resolve, same build and version");
        return;
    end

    for _, solution in next, solutions do
        solution(prevBuild, currBuild, prevVersion, currVersion);
    end
    diagnostics.Debug("Resolved all");
end

function FixFeaturesTutorialProgress(prevBuild, currBuild, prevVersion, currVersion)
    if prevBuild ~= nil and currBuild ~= nil then
        return;
    end

    -- SavedData["FeaturesTutorial"] = addon.Options.db.FeaturesTutorial;
    addon.Options.db.FeaturesTutorial = nil;

    diagnostics.Debug("Moved Features Tutorial Progress from previous version to new location");
end