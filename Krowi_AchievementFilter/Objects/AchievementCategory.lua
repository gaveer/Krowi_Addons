-- [[ Namespaces ]] --
local _, addon = ...;
local objects = addon.Objects;
objects.AchievementCategory = {};
local achievementCategory = objects.AchievementCategory;

achievementCategory.__index = achievementCategory; -- Used to support OOP like code

function achievementCategory:New(name) -- Create a new achievement category
    local self = {};
    setmetatable(self, achievementCategory);
    self.Name = name or "Unknown";
    self.Level = 0;
    return self;
end

function achievementCategory:NewCatInfo(id) -- Create a new achievement category using GetCategoryInfo(id)
    return achievementCategory:New(addon.GetCategoryInfoTitle(id));
end

function achievementCategory:AddCategory(category) -- Add a child achievement category to an achievement category
    if self.Children == nil then
        self.Children = {};
    end
    tinsert(self.Children, category);
    category.Parent = self;
    category.Level = self.Level + 1;
    return category;
end

function achievementCategory:AddAchievement(achievement) -- Add an achievement to an achievement category
    if self.Achievements == nil then
        self.Achievements = {};
    end
    tinsert(self.Achievements, achievement);
    return achievement;
end

function achievementCategory:AddCatZones() -- Add a child Zones achievement category to an achievement category
    return self:AddCategory(achievementCategory:New(addon.L["C_ZONES"]));
end

function achievementCategory:AddCatQuests() -- Add a child Quests achievement category to an achievement category
    return self:AddCategory(achievementCategory:New(addon.GetCategoryInfoTitle(15447))); -- Achievement_Category table
end

function achievementCategory:AddCatExploration() -- Add a child Exploration achievement category to an achievement category
    return self:AddCategory(achievementCategory:New(addon.GetCategoryInfoTitle(97))); -- Achievement_Category table
end

function achievementCategory:AddCatPvP() -- Add a child PvP achievement category to an achievement category
    return self:AddCategory(achievementCategory:New(addon.GetCategoryInfoTitle(15270))); -- Achievement_Category table
end

function achievementCategory:AddCatReputation() -- Add a child Reputation achievement category to an achievement category
    return self:AddCategory(achievementCategory:New(addon.GetCategoryInfoTitle(15273))); -- Achievement_Category table
end

function achievementCategory:AddCatDungeons() -- Add a child Dungeons achievement category to an achievement category
    return self:AddCategory(achievementCategory:New(addon.GetCategoryInfoTitle(15272))); -- Achievement_Category table
end

function achievementCategory:AddCatRaids() -- Add a child Raids achievement category to an achievement category
    return self:AddCategory(achievementCategory:New(addon.GetCategoryInfoTitle(15271))); -- Achievement_Category table
end

function achievementCategory:AddCatPetBattles() -- Add a child Pet Battles achievement category to an achievement category
    return self:AddCategory(achievementCategory:New(addon.GetCategoryInfoTitle(15117))); -- Achievement_Category table
end

function achievementCategory:AddCatMapInfo(id) -- Add a child zone achievement category using C_Map.GetMapInfo(id).name to an achievement category
    return self:AddCategory(achievementCategory:New(C_Map.GetMapInfo(id).name)); -- UiMap table
end

function achievementCategory:AddCatInstanceInfo(id) -- Add a child instance achievement category using EJ_GetInstanceInfo(id) to an achievement category
    return self:AddCategory(achievementCategory:New(EJ_GetInstanceInfo(id))); -- JournalInstance table
end

function achievementCategory:AddCatDifficulty10() -- Add a child difficulty achievement category using GetDifficultyInfo(3) to an achievement category
    return self:AddCategory(achievementCategory:New(GetDifficultyInfo(3))); -- Difficulty table
end

function achievementCategory:AddCatDifficulty25() -- Add a child difficulty achievement category using GetDifficultyInfo(4) to an achievement category
    return self:AddCategory(achievementCategory:New(GetDifficultyInfo(4))); -- Difficulty table
end

function achievementCategory:AddCatLFGDungeonInfo(id) -- Add a child instance achievement category using GetLFGDungeonInfo(id) to an achievement category
    return self:AddCategory(achievementCategory:New(GetLFGDungeonInfo(id))); -- LFGDungeons table
end

function achievementCategory:AddAchievementFull(id, obtainable, hasWowheadLink, hasIATLink) -- Add an achievement to an achievement category
    return self:AddAchievement(addon.Objects.Achievement:New(id, obtainable, hasWowheadLink, hasIATLink));
end

function achievementCategory:AddAchievementIDs(...) -- Add a variable number of achievements from achievement IDs to an achievement category
    for _, id in next, {...} do
        self:AddAchievement(addon.Objects.Achievement:New(id));
    end
end

function achievementCategory:AddAchievementIDsUnobtainable(...) -- Add a variable number of unobtainable achievements from achievement IDs to an achievement category
    for _, id in next, {...} do
        self:AddAchievement(addon.Objects.Achievement:New(id, false));
    end
end

function achievementCategory:AddAchievementIDsWithIATLink(...) -- Add a variable number of achievements from achievement IDs to an achievement category with IAT links active
    for _, id in next, {...} do
        self:AddAchievement(addon.Objects.Achievement:New(id, nil, nil, true));
    end
end

function achievementCategory:GetTree()
    addon.Diagnostics.Trace("achievementCategory:GetTree");

	local categories = {};
    tinsert(categories, 1, self);

	local parent = self.Parent;
	while parent ~= nil do
		tinsert(categories, 1, parent);
		parent = parent.Parent;
    end

    return categories;
end