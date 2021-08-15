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
    SavedData["Build"] = addon.MetaData.Build;
    local currBuild = SavedData["Build"];
    diagnostics.Debug("Current Build: " .. SavedData["Build"]);

    local prevVersion = SavedData["Version"];
    diagnostics.Debug("Previous Version: " .. tostring(prevVersion)); -- Can be nil
    SavedData["Version"] = addon.MetaData.Version;
    local currVersion = SavedData["Version"];
    diagnostics.Debug("Current Version: " .. SavedData["Version"]);

    Resolve(LoadSolutions(), prevBuild, currBuild, prevVersion, currVersion);

    diagnostics.Debug("SavedData loaded");
end

local FixFeaturesTutorialProgress, FixElvUISkin, FixFilters, FixEventDetails;
function LoadSolutions()
    local solutions = {
        FixFeaturesTutorialProgress, -- 1
        FixElvUISkin, -- 2
        FixFilters, -- 3
        FixEventDetails, -- 4
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
    if SavedData.FeaturesTutorial then
        diagnostics.Debug("Features Tutorial Progress already cleared from previous version");
        return;
    end

    addon.Options.db.FeaturesTutorial = nil;

    diagnostics.Debug("Cleared Features Tutorial Progress from previous version");
end

function FixElvUISkin(prevBuild, currBuild, prevVersion, currVersion)
    if SavedData.ElvUISkin then
        diagnostics.Debug("ElvUISkin already cleared from previous version");
        return;
    end

    addon.Options.db.ElvUISkin = nil;

    diagnostics.Debug("Cleared ElvUISkin from previous version");
end

function FixFilters(prevBuild, currBuild, prevVersion, currVersion)
    if Filters then
        diagnostics.Debug("Filter settings already cleared from previous location");
        return;
    end

    addon.Options.db.Filters = nil;

    diagnostics.Debug("Clear filter settings from previous location");
end

function FixEventDetails(prevBuild, currBuild, prevVersion, currVersion)
    if prevBuild == currBuild and prevVersion == currVersion then
        diagnostics.Debug("EventDetails already reset");
        return;
    end

    if prevBuild < currBuild or prevVersion < currVersion then
        if currVersion >= "28.0" then
            EventDetails = nil;
        end
        if currVersion == "28.0" then -- Only reset for this version
            SavedData.FeaturesTutorial.PageViewed[11] = false;
        end
    end

    diagnostics.Debug("EventDetails reset");
end
