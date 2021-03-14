-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
addon.Data = {};
local data = addon.Data;
addon.Categories = {};
addon.CurrentZoneCategory = {};
addon.Achievements = {};
addon.RCMenuExtras = {};

function data.Load()
    addon.CurrentZoneCategory = addon.ExportedData.Load(addon.Categories, addon.Achievements);
    addon.ExportedPetBattles.Load(addon.RCMenuExtras);
    -- addon.CurrentZoneCategory.Achievements = addon.GetAchievementsWithZone(C_Map.GetBestMapForUnit("player"));

    -- TEST = {};
    -- data.PrintCriteria(14881, nil, 0);
end

local cachedZone;
function data.GetCurrentZoneAchievements()
	diagnostics.Trace("data.GetCurrentZoneAchievements");
    if cachedZone ~= C_Map.GetBestMapForUnit("player") then
        cachedZone = C_Map.GetBestMapForUnit("player");
        addon.CurrentZoneCategory.Achievements = addon.GetAchievementsWithZone(cachedZone);
    end
end

-- local function ConvertToAchievementFrameCategory(datum, categories, achievements)
--     if diagnostics.DebugEnabled() then
--         datum.Name = datum.Level .. " " .. datum.Name;
--     end

--     tinsert(categories, datum);

--     if datum.Achievements ~= nil then
--         for _, achievement in next, datum.Achievements do
--             tinsert(achievements, achievement);
--         end
--     end

--     if datum.Children ~= nil then
--         for _, child in next, datum.Children do
--             ConvertToAchievementFrameCategory(child, categories, achievements);
--         end
--     end
-- end

-- function data:GetLists()
--     local categories = {};
--     local achievements = {};

--     for _, datum in next, self do
--         if type(datum) == "table" then
--             ConvertToAchievementFrameCategory(datum, categories, achievements);
--         end
--     end

--     diagnostics.Debug("     - Lists loaded");

--     return categories, achievements;
-- end

-- function data.PrintCriteria(achievementID, parentCriteriaID, criteriaNumber)
--     local id, name, points, completed, month, day, year, description, flags, icon, rewardText, isGuild, wasEarnedByMe, earnedBy = GetAchievementInfo(achievementID);

--     local record = "A" .. tostring(id) .. "\t" .. tostring(achievementID) .. "\t" .. tostring(criteriaNumber) .. "\t" .. name .. "\t" .. tostring(parentCriteriaID) .. "\t" .. 0;
--     tinsert(TEST, record);

--     if parentCriteriaID == nil then
--         parentCriteriaID = "A" .. tostring(id);
--     end

--     for i = 1, GetAchievementNumCriteria(achievementID) do
--         local family = "nil";
--         if string.match(description:lower(), "aquatic") then
--             family = "Aquatic";
--         elseif string.match(description:lower(), "beast") then
--             family = "Beast";
--         elseif string.match(description:lower(), "critter") then
--             family = "Critter";
--         elseif string.match(description:lower(), "dragonkin") then
--             family = "Dragonkin";
--         elseif string.match(description:lower(), "elemental") then
--             family = "Elemental";
--         elseif string.match(description:lower(), "flying") then
--             family = "Flying";
--         elseif string.match(description:lower(), "humanoid") then
--             family = "Humanoid";
--         elseif string.match(description:lower(), "magic") then
--             family = "Magic";
--         elseif string.match(description:lower(), "mechanical") then
--             family = "Mechanical";
--         elseif string.match(description:lower(), "undead") then
--             family = "Undead";
--         end
--         local criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString, criteriaID = GetAchievementCriteriaInfo(achievementID, i);
--         if GetAchievementInfo(assetID) ~= nil then -- Means the assetID was not an achievementID but something else like a quest
--             data.PrintCriteria(assetID, "A" .. tostring(id), i);
--         else
--             local record = tostring(criteriaID) .. "\t" .. tostring(nil) .. "\t" .. tostring(i) .. "\t" .. criteriaString .. "\t" .. "A" .. tostring(id) .. "\t" .. family;
--             tinsert(TEST, record);
--         end
--     end
-- end