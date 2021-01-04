-- [[ Namespaces ]] --
local _, addon = ...;
local objects = addon.Objects;
local achievementCategory = objects.AchievementCategory;

-- [[ Variables ]] --
objects.AchievementCategoryFunction = {
    Zones = function() return achievementCategory:New(AF_CATEGORY_ZONES) end, -- Zones
    Quests = function() return achievementCategory:New(GetCategoryInfo(15447)) end, -- Achievement_Category table - Quests
    Exploration = function() return achievementCategory:New(GetCategoryInfo(97)) end, -- Achievement_Category table - Exploration
    PvP = function() return achievementCategory:New(GetCategoryInfo(15270)) end, -- Achievement_Category table - Player vs. Player
    Reputation = function() return achievementCategory:New(GetCategoryInfo(15273)) end, -- Achievement_Category table - Reputation
    Raids = function() return achievementCategory:New(GetCategoryInfo(15271)) end, -- Achievement_Category table - Raids
    Dungeons = function() return achievementCategory:New(GetCategoryInfo(15272)) end, -- Achievement_Category table - Dungeons
    PetBattles = function() return achievementCategory:New(GetCategoryInfo(15117)) end, -- Achievement_Category table - Pet Battles
    UiMapName = function(id) return achievementCategory:New(C_Map.GetMapInfo(id).name) end, -- UiMap table - Used for zone names
    JournalInstanceName = function(id) return achievementCategory:New(EJ_GetInstanceInfo(id)) end, -- JournalInstance table - Used for raid and dungeon names
    LFGDungeonsName = function(id) return achievementCategory:New(GetLFGDungeonInfo(id)) end, -- LFGDungeons table - Used for all that has no JournalInstance table record
    AchievementCategory = function(id) return achievementCategory:New(GetCategoryInfo(id)) end, -- Achievement_Category table
 };