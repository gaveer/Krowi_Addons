-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
addon.Data = {};
local data = addon.Data;
addon.Categories = {};
addon.Achievements = {};

function data.Load()
    addon.Classic.Load();
    addon.TheBurningCrusade.Load();
    addon.WrathOfTheLichKing.Load();
    addon.Cataclysm.Load();
    addon.MistsOfPandaria.Load();
    addon.WarlordsOfDreanor.Load();
    addon.Legion.Load();
    addon.BattleForAzeroth.Load();
    addon.Shadowlands.Load();
    addon.Categories, addon.Achievements = addon.Data:GetLists(); -- This freezes the game if we load it outside of the loading screen
    -- LOADTEST();

    -- diagnostics.DebugTable(addon.Achievements);
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

local function tinsertR(table, value)
    tinsert(table, value);
    return value;
end

function LOADTEST()
    local categories = {};
    categories["1"] = tinsertR(addon.Categories, addon.Objects.AchievementCategory:New(GetCategoryInfo(14864)));
    categories["1"].NotHidden = true;
    categories["1.1"] = tinsertR(addon.Categories, addon.Objects.AchievementCategory:New(GetCategoryInfo(15272)));
    categories["1"]:AddCategory(categories["1.1"]);
    categories["1.1.1"] = tinsertR(addon.Categories, addon.Objects.AchievementCategory:New(EJ_GetInstanceInfo(63)));
    categories["1.1"]:AddCategory(categories["1.1.1"]);
    categories["1.1.1"]:AddAchievement(tinsertR(addon.Achievements, addon.Objects.Achievement:New(628 , nil, nil, nil)));
    categories["1.1.1"]:AddAchievement(tinsertR(addon.Achievements, addon.Objects.Achievement:New(5083, nil, nil, nil)));
    categories["1.1.1"]:AddAchievement(tinsertR(addon.Achievements, addon.Objects.Achievement:New(5366, nil, nil, true)));
    categories["1.1.1"]:AddAchievement(tinsertR(addon.Achievements, addon.Objects.Achievement:New(5367, nil, nil, true)));
    categories["1.1.1"]:AddAchievement(tinsertR(addon.Achievements, addon.Objects.Achievement:New(5368, nil, nil, true)));
    categories["1.1.1"]:AddAchievement(tinsertR(addon.Achievements, addon.Objects.Achievement:New(5369, nil, nil, true)));
    categories["1.1.1"]:AddAchievement(tinsertR(addon.Achievements, addon.Objects.Achievement:New(5370, nil, nil, true)));
    categories["1.1.1"]:AddAchievement(tinsertR(addon.Achievements, addon.Objects.Achievement:New(5371, nil, nil, true)));
    categories["1.1.2"] = tinsertR(addon.Categories, addon.Objects.AchievementCategory:New(EJ_GetInstanceInfo(226)));
    categories["1.1"]:AddCategory(categories["1.1.2"]);
    categories["1.2"] = tinsertR(addon.Categories, addon.Objects.AchievementCategory:New(GetCategoryInfo(15271)));
    categories["1"]:AddCategory(categories["1.2"]);
    
end