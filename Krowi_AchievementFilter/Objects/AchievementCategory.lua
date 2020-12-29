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
    return KrowiAF.AchievementCategory:New(EJ_GetInstanceInfo(id));
end

function KrowiAF.AchievementCategory:NewLFG(id)
    return KrowiAF.AchievementCategory:New(GetLFGDungeonInfo(id));
end

function KrowiAF.AchievementCategory:NewMap(id)
    return KrowiAF.AchievementCategory:New(C_Map.GetMapInfo(id).name);
end

function KrowiAF.AchievementCategory:AddChild(child)
    tinsert(self.Children, child);
    child.Parent = self;
    child.Level = self.Level + 1;
    return child;
end

KrowiAF.AchievementSubsection = {
    Zones = function() return KrowiAF.AchievementCategory:New(AF_CATEGORY_ZONES) end, -- Zones
    Quests = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(15447)) end, -- Quests
    Exploration = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(97)) end, -- Exploration
    PvP = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(15270)) end, -- Player vs. Player
    Reputation = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(15273)) end, -- Reputation
    Raids = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(15271)) end, -- Raids
    Dungeons = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(15272)) end, -- Dungeons
    PetBattles = function() return KrowiAF.AchievementCategory:New(GetCategoryInfo(15117)) end, -- Pet Battles
 };

function KrowiAF.AchievementCategory:AddSubsection(subsection, ...)
    local child = subsection();
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