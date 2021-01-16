local _, addon = ...; -- Global addon namespace
addon.Data = {}; -- Global expansion data
local data = addon.Data; -- Local expansion data
addon.Categories = {}; -- Global categories
addon.Achievements = {}; -- Global categories
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace

local function ConvertToAchievementFrameCategory(datum, categories, achievements)
    -- diagnostics.Trace("ConvertToAchievementFrameCategory"); -- Generates a lot of messages

    if datum.Level == 0 then
        datum.NotHidden = true;
    end

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

function data:GetList()
    diagnostics.Trace("data:GetCategoryList");

    local categories = {};
    local achievements = {};

    for _, datum in next, self do
        if type(datum) == "table" then
            ConvertToAchievementFrameCategory(datum, categories, achievements);
        end
    end

    -- diagnostics.DebugTable(achievements, 1000);

    return categories, achievements;
end