local _, addon = ...; -- Global addon namespace
addon.Data = {}; -- Global expansion data
local data = addon.Data; -- Local expansion data
addon.Categories = {}; -- Global categories
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace

local function ConvertToAchievementFrameCategory(datum, categories)
    -- diagnostics.Trace("ConvertToAchievementFrameCategory"); -- Generates a lot of messages

    datum.Hidden = datum.Level ~= 0;
    datum.Collapsed = true;
    tinsert(categories, datum);
    if datum.Children ~= nil then
        for i, child in next, datum.Children do
            ConvertToAchievementFrameCategory(child, categories);
        end
    end
end

function data:GetCategoryList()
    diagnostics.Trace("data:GetCategoryList");

    -- diagnostics.DebugTable(self);

    local categories = {};
    for _, datum in next, self do
        if type(datum) == "table" then
            ConvertToAchievementFrameCategory(datum, categories);
        end
    end

    -- diagnostics.DebugTable(categories);
    return categories;
end