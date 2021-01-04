local _, addon = ...; -- Global addon namespace
local objects = addon.Objects; -- Local objects namespace
objects.AchievementCategory = {}; -- Global achievement category object
local achievementCategory = objects.AchievementCategory; -- Local achievement category object

achievementCategory.__index = achievementCategory; -- Used to support OOP like code

-- Create a new achievement category
function achievementCategory:New(name)
    local self = {};
    setmetatable(self, achievementCategory);
    self.Name = name or "Unknown";
    self.Level = 0;
    return self;
end

-- Create a new achievement category using GetCategoryInfo(id)
function achievementCategory:NewCatInfo(id)
    return achievementCategory:New(GetCategoryInfo(id));
end

-- Add a child achievement category to an achievement category
function achievementCategory:AddCategory(category)
    if self.Children == nil then
        self.Children = {};
    end
    tinsert(self.Children, category);
    category.Parent = self;
    category.Level = self.Level + 1;
    return category;
end

-- Add an achievement to an achievement category
function achievementCategory:AddAchievement(achievement)
    if self.Achievements == nil then
        self.Achievements = {};
    end
    tinsert(self.Achievements, achievement);
    return achievement;
end

-- Add a child Zones achievement category to an achievement category
function achievementCategory:AddCatZones()
    return self:AddCategory(achievementCategory:New(AF_CATEGORY_ZONES));
end

-- Add a child Quests achievement category to an achievement category
function achievementCategory:AddCatQuests()
    return self:AddCategory(achievementCategory:New(GetCategoryInfo(15447))); -- Achievement_Category table
end

-- Add a child Exploration achievement category to an achievement category
function achievementCategory:AddCatExploration()
    return self:AddCategory(achievementCategory:New(GetCategoryInfo(97))); -- Achievement_Category table
end

-- Add a child PvP achievement category to an achievement category
function achievementCategory:AddCatPvP()
    return self:AddCategory(achievementCategory:New(GetCategoryInfo(15270))); -- Achievement_Category table
end

-- Add a child Reputation achievement category to an achievement category
function achievementCategory:AddCatReputation()
    return self:AddCategory(achievementCategory:New(GetCategoryInfo(15273))); -- Achievement_Category table
end

-- Add a child Dungeons achievement category to an achievement category
function achievementCategory:AddCatDungeons()
    return self:AddCategory(achievementCategory:New(GetCategoryInfo(15272))); -- Achievement_Category table
end

-- Add a child Raids achievement category to an achievement category
function achievementCategory:AddCatRaids()
    return self:AddCategory(achievementCategory:New(GetCategoryInfo(15271))); -- Achievement_Category table
end

-- Add a child Pet Battles achievement category to an achievement category
function achievementCategory:AddCatPetBattles()
    return self:AddCategory(achievementCategory:New(GetCategoryInfo(15117))); -- Achievement_Category table
end

-- Add a child zone achievement category using C_Map.GetMapInfo(id).name to an achievement category
function achievementCategory:AddCatMapInfo(id)
    return self:AddCategory(achievementCategory:New(C_Map.GetMapInfo(id).name)); -- UiMap table
end

-- Add a child instance achievement category using EJ_GetInstanceInfo(id) to an achievement category
function achievementCategory:AddCatInstanceInfo(id)
    return self:AddCategory(achievementCategory:New(EJ_GetInstanceInfo(id))); -- JournalInstance table
end

-- Add an achievement to an achievement category
function achievementCategory:AddAchievementFull(id, obtainable, hasWowheadLink, hasIATLink, xuFuLink)
    return self:AddAchievement(addon.Objects.Achievement:New(id, obtainable, hasWowheadLink, hasIATLink, xuFuLink));
end

-- Add a variable number of achievements from achievement IDs to an achievement category
function achievementCategory:AddAchievementIDs(...)
    for _, id in next, {...} do
        self:AddAchievement(addon.Objects.Achievement:New(id));
    end
end

-- Add a variable number of unobtainable achievements from achievement IDs to an achievement category
function achievementCategory:AddAchievementIDsUnobtainable(...)
    for _, id in next, {...} do
        self:AddAchievement(addon.Objects.Achievement:New(id, false));
    end
end

-- Add a variable number of achievements from achievement IDs to an achievement category with IAT links active
function achievementCategory:AddAchievementIDsWithIATLink(...)
    for _, id in next, {...} do
        self:AddAchievement(addon.Objects.Achievement:New(id, nil, nil, true));
    end
end


-- Legacy code to be removed!!!!!
-- function KrowiAF.AchievementCategory:NewEJ(id)
--     return KrowiAF.AchievementCategory:New(EJ_GetInstanceInfo(id)); -- JournalInstance table
-- end

-- function KrowiAF.AchievementCategory:NewLFG(id)
--     return KrowiAF.AchievementCategory:New(GetLFGDungeonInfo(id)); -- LFGDungeons table
-- end

-- function KrowiAF.AchievementCategory:AddChild(child) -- to be removed
--     tinsert(self.Children, child);
--     child.Parent = self;
--     child.Level = self.Level + 1;
--     return child;
-- end

-- -- These need to be functions to always get a new one when asked for
-- KrowiAF.AchievementSubsection = { -- Needs a name, it's a collection of preset achievement categories
--     Zones = function() return KrowiAF.AchievementCategory:New(AF_CATEGORY_ZONES) end, -- Zones
--     Quests = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(15447)) end, -- Achievement_Category table - Quests
--     Exploration = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(97)) end, -- Achievement_Category table - Exploration
--     PvP = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(15270)) end, -- Achievement_Category table - Player vs. Player
--     Reputation = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(15273)) end, -- Achievement_Category table - Reputation
--     Raids = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(15271)) end, -- Achievement_Category table - Raids
--     Dungeons = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(15272)) end, -- Achievement_Category table - Dungeons
--     PetBattles = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(15117)) end, -- Achievement_Category table - Pet Battles
--     UiMapNameFromID = function(id) return KrowiAF.AchievementCategory:New(C_Map.GetMapInfo(id).name) end, -- UiMap table - Used for zone names
--     JournalInstanceNameFromID = function(id) return KrowiAF.AchievementCategory:New(EJ_GetInstanceInfo(id)) end, -- JournalInstance table - Used for raid and dungeon names
--     LFGDungeonsNameFromID = function(id) return KrowiAF.AchievementCategory:New(GetLFGDungeonInfo(id)) end, -- LFGDungeons table - Used for all that has no JournalInstance table record
--  };


-- function KrowiAF.AchievementCategory:AddAchievementIDs(achievementIDs)
--     for k, id in pairs(achievementIDs) do
--         tinsert(self.Achievements, addon.Objects.Achievement:New(id));
--     end
-- end

-- function KrowiAF.AchievementCategory:AddAchievementFOSIDs(achievementIDs)
--     for k, id in pairs(achievementIDs) do
--         tinsert(self.Achievements, addon.Objects.Achievement:New(id, false));
--     end
-- end

-- function KrowiAF.AchievementCategory:AddAchievements(achievements)
--     for k, achievement in pairs(achievements) do
--         tinsert(self.Achievements, achievement);
--     end
-- end