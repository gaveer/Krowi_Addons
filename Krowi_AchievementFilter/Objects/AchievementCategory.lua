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

function KrowiAF.AchievementCategory:NewRaids()
    return KrowiAF.AchievementCategory:New(GetCategoryInfo(15271)); -- Raids
end

function KrowiAF.AchievementCategory:NewDungeons()
    return KrowiAF.AchievementCategory:New(GetCategoryInfo(15272)); -- Dungeons
end

function KrowiAF.AchievementCategory:NewEJ(id)
    return KrowiAF.AchievementCategory:New(EJ_GetInstanceInfo(id));
end

function KrowiAF.AchievementCategory:AddChild(child)
    tinsert(self.Children, child);
    child.Parent = self;
    child.Level = self.Level + 1;
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