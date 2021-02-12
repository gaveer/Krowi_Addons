-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
addon.Data = {};
local data = addon.Data;
addon.Categories = {};
addon.Achievements = {};

function data.Load()
    -- addon.Classic.Load();
    -- addon.TheBurningCrusade.Load();
    -- addon.WrathOfTheLichKing.Load();
    -- addon.Cataclysm.Load();
    -- addon.MistsOfPandaria.Load();
    -- addon.WarlordsOfDreanor.Load();
    -- addon.Legion.Load();
    -- addon.BattleForAzeroth.Load();
    -- addon.Shadowlands.Load();
    -- addon.Categories, addon.Achievements = addon.Data:GetLists(); -- This freezes the game if we load it outside of the loading screen
    addon.ExportedData.Load(addon.Categories, addon.Achievements);
end

local function ConvertToAchievementFrameCategory(datum, categories, achievements)
    if diagnostics.DebugEnabled() then
        datum.Name = datum.Level .. " " .. datum.Name;
    end

    tinsert(categories, datum);

    if datum.Achievements ~= nil then
        for _, achievement in next, datum.Achievements do
            tinsert(achievements, achievement);
        end
    end

    if datum.Children ~= nil then
        for _, child in next, datum.Children do
            ConvertToAchievementFrameCategory(child, categories, achievements);
        end
    end
end

function data:GetLists()
    local categories = {};
    local achievements = {};

    for _, datum in next, self do
        if type(datum) == "table" then
            ConvertToAchievementFrameCategory(datum, categories, achievements);
        end
    end

    diagnostics.Debug("     - Lists loaded");

    return categories, achievements;
end