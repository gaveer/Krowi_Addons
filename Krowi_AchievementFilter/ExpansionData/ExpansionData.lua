local _, addon = ...; -- Global addon namespace
addon.Data = {}; -- Global expansion data
local data = addon.Data; -- Local expansion data
addon.Categories = {}; -- Global categories

local function ConvertToAchievementFrameCategory(datum, categories)
    -- addon.Diagnostics.Trace("ConvertToAchievementFrameCategory"); -- Generates a lot of messages

    datum.Hidden = datum.Level ~= 0;
    datum.Collapsed = true;
    tinsert(categories, datum);
    if datum.Children ~= nil then
        for _, child in next, datum.Children do
            ConvertToAchievementFrameCategory(child, categories);
        end
    end
end

function data:GetCategoryList()
    addon.Diagnostics.Trace("data:GetCategoryList");

    -- addon.Diagnostics.DebugTable(self);

    local categories = {};
    for _, datum in next, self do
        if type(datum) == "table" then
            ConvertToAchievementFrameCategory(datum, categories);
        end
    end

    -- addon.Diagnostics.DebugTable(categories);
    return categories;
end