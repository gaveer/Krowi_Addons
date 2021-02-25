-- [[ Namespaces ]] --
local _, addon = ...;
local objects = addon.Objects;
local category = objects.AchievementCategory; -- Locally we can use just category
local achievement = objects.Achievement;

-- [[ Add Child Category Extensions ]] --
function category:AddCatZones() -- See AddCategory - with 'Zones' as name
    return self:AddCategory(category:New(addon.L["Zones"]));
end

function category:AddCatQuests() -- See AddCategory - with 'Quests' as name
    return self:AddCategory(category:New(GetCategoryInfo(15447))); -- Achievement_Category table
end

function category:AddCatExploration() -- See AddCategory - with 'Exploration' as name
    return self:AddCategory(category:New(GetCategoryInfo(97))); -- Achievement_Category table
end

function category:AddCatPvP() -- See AddCategory - with 'PvP' as name
    return self:AddCategory(category:New(GetCategoryInfo(15270))); -- Achievement_Category table
end

function category:AddCatReputation() -- See AddCategory - with 'Reputation' as name
    return self:AddCategory(category:New(GetCategoryInfo(15273))); -- Achievement_Category table
end

function category:AddCatDungeons() -- See AddCategory - with 'Dungeons' as name
    return self:AddCategory(category:New(GetCategoryInfo(15272))); -- Achievement_Category table
end

function category:AddCatRaids() -- See AddCategory - with 'Raids' as name
    return self:AddCategory(category:New(GetCategoryInfo(15271))); -- Achievement_Category table
end

function category:AddCatPetBattles() -- See AddCategory - with 'Pet Battles' as name
    return self:AddCategory(category:New(GetCategoryInfo(15117))); -- Achievement_Category table
end

function category:AddCatMapInfo(id) -- See AddCategory - with the .name from C_Map.GetMapInfo(id) as name
    return self:AddCategory(category:New(C_Map.GetMapInfo(id).name)); -- UiMap table
end

function category:AddCatInstanceInfo(id) -- See AddCategory - with the name from EJ_GetInstanceInfo(id) as name
    return self:AddCategory(category:New(EJ_GetInstanceInfo(id))); -- JournalInstance table
end

function category:AddCatDifficulty10() -- See AddCategory - with '10 Player' as name
    return self:AddCategory(category:New(GetDifficultyInfo(3))); -- Difficulty table
end

function category:AddCatDifficulty25() -- See AddCategory - with '25 Player' as name
    return self:AddCategory(category:New(GetDifficultyInfo(4))); -- Difficulty table
end

function category:AddCatLFGDungeonInfo(id) -- See AddCategory - with the name from GetLFGDungeonInfo(id) as name
    return self:AddCategory(category:New(GetLFGDungeonInfo(id))); -- LFGDungeons table
end

-- [[ Add Achievement Extensions ]] --
function category:AddNewAchievement(id, obtainable, hasWowheadLink --[[ , hasIATLink ]]) -- Adds a new achievement to the achievement category
    return self:AddAchievement(achievement:New(id, obtainable, hasWowheadLink --[[ , hasIATLink ]]));
end

function category:AddAchievementIDs(...) -- Adds a variable number of achievements from achievement IDs to the achievement category
    for _, id in next, {...} do
        self:AddAchievement(achievement:New(id));
    end
end

function category:AddAchievementIDsUnobtainable(...) -- Adds a variable number of unobtainable achievements from achievement IDs to the achievement category
    for _, id in next, {...} do
        self:AddAchievement(achievement:New(id, false));
    end
end

function category:AddAchievementIDsWithIATLink(...) -- Adds a variable number of achievements from achievement IDs to the achievement category with IAT links active
    for _, id in next, {...} do
        self:AddAchievement(achievement:New(id, nil, nil --[[ , true ]]));
    end
end