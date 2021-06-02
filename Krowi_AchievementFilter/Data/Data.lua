-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
addon.Data = {};
local data = addon.Data;
addon.Categories = {};
addon.CurrentZoneCategory = {};
addon.NextPatchCategory = {};
addon.Achievements = {};
addon.RCMenuExtras = {};
addon.NextPatchAchievements = {};
addon.Maps = {};

function data.Load()
    data.ExportedAchievements.Load(addon.Achievements);
    addon.CurrentZoneCategory, addon.NextPatchCategory = data.ExportedCategories.Load(addon.Categories, addon.Achievements);
    data.ExportedPetBattles.Load(addon.RCMenuExtras);
    data.NextPatch.Load(addon.NextPatchAchievements);
    -- data.Maps.Load(addon.Maps, addon.Achievements);

    -- Get rid of the following namespaces since it's not needed anymore after loading the data and free up memory on the next garbage collection
    data.ExportedAchievements = nil;
    data.ExportedCategories = nil;

    addon.Diagnostics.Debug("Expansion data loaded");

    -- TEST = {};
    -- data.PrintCriteria(14879, nil, 0);
end

local cachedZone;
function data.GetCurrentZoneAchievements()
	diagnostics.Trace("data.GetCurrentZoneAchievements");

    if cachedZone ~= C_Map.GetBestMapForUnit("player") then
        cachedZone = C_Map.GetBestMapForUnit("player");
        addon.CurrentZoneCategory.Achievements = addon.GetAchievementsInZone(cachedZone);
        return true; -- Output that the zone has changed
    end
end

-- function data.PrintCriteria(achievementID, parentCriteriaID, criteriaNumber)
--     local id, name, points, completed, month, day, year, description, flags, icon, rewardText, isGuild, wasEarnedByMe, earnedBy = addon.GetAchievementInfo(achievementID);

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
--         if addon.GetAchievementInfo(assetID) ~= nil then -- Means the assetID was not an achievementID but something else like a quest
--             data.PrintCriteria(assetID, "A" .. tostring(id), i);
--         else
--             local record = tostring(criteriaID) .. "\t" .. tostring(nil) .. "\t" .. tostring(i) .. "\t" .. criteriaString .. "\t" .. "A" .. tostring(id) .. "\t" .. family;
--             tinsert(TEST, record);
--         end
--     end
-- end