KrowiAF.AchievementCategory = {};
KrowiAF.HighestAchievementCategoryID = 1; -- Start on 1 since lua has 1 based tables
KrowiAF.AchievementCategory.__index = KrowiAF.AchievementCategory;
function KrowiAF.AchievementCategory:New(name)
    local self = {};
    setmetatable(self, KrowiAF.AchievementCategory);
    self.Name = name or "Unknown";
    self.Level = 0;
    self.ID = KrowiAF.HighestAchievementCategoryID;
    KrowiAF.HighestAchievementCategoryID = KrowiAF.HighestAchievementCategoryID + 1;
    self.Parent = nil;
    self.Children = {};
    self.Achievements = {};
    return self;
end

function KrowiAF.AchievementCategory:NewEJ(id)
    return KrowiAF.AchievementCategory:New(EJ_GetInstanceInfo(id)); -- JournalInstance table
end

function KrowiAF.AchievementCategory:NewLFG(id)
    return KrowiAF.AchievementCategory:New(GetLFGDungeonInfo(id)); -- LFGDungeons table
end

function KrowiAF.AchievementCategory:AddChild(child)
    tinsert(self.Children, child);
    child.Parent = self;
    child.Level = self.Level + 1;
    return child;
end

KrowiAF.AchievementSubsection = {
    Zones = function() return KrowiAF.AchievementCategory:New(AF_CATEGORY_ZONES) end, -- Zones
    Quests = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(15447)) end, -- Achievement_Category table - Quests
    Exploration = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(97)) end, -- Achievement_Category table - Exploration
    PvP = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(15270)) end, -- Achievement_Category table - Player vs. Player
    Reputation = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(15273)) end, -- Achievement_Category table - Reputation
    Raids = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(15271)) end, -- Achievement_Category table - Raids
    Dungeons = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(15272)) end, -- Achievement_Category table - Dungeons
    PetBattles = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(15117)) end, -- Achievement_Category table - Pet Battles
    ZoneName = function(id) return KrowiAF.AchievementCategory:New(C_Map.GetMapInfo(id).name) end, -- UiMap table - Used for zone names
    InstanceName = function(id) return KrowiAF.AchievementCategory:New(EJ_GetInstanceInfo(id)) end, -- JournalInstance table - Used for raid and dungeon names
    LFGName = function(id) return KrowiAF.AchievementCategory:New(GetLFGDungeonInfo(id)) end, -- LFGDungeons table - Used for all that has no JournalInstance table record
 };

function KrowiAF.AchievementCategory:AddSubsection(subsection, ...)
    local child = subsection(...);
    self:AddChild(child);
    return child;
end

function KrowiAF.AchievementCategory:AddAchievementIDs(achievementIDs)
    for k, id in pairs(achievementIDs) do
        tinsert(self.Achievements, KrowiAF.Achievement:New(id));
    end
end

function KrowiAF.AchievementCategory:AddAchievementFOSIDs(achievementIDs)
    for k, id in pairs(achievementIDs) do
        tinsert(self.Achievements, KrowiAF.Achievement:New(id, KrowiAF.AchievementType.FoS, false));
    end
end

function KrowiAF.AchievementCategory:AddAchievements(achievements)
    for k, achievement in pairs(achievements) do
        tinsert(self.Achievements, achievement);
    end
end

function KrowiAF.AchievementCategory:AddAchievement(id, type, obtainable)
    tinsert(self.Achievements, KrowiAF.Achievement:New(id, type, obtainable));
end