local expansion, raids, raid, version, dungeons, dungeon;

-- Expansion
expansion = KrowiAF.AchievementCategory:New(GetCategoryInfo(14866)); -- Wrath of the Lich King
-- expansion:AddAchievementIDs({}); -- Overarching achievements
tinsert(KrowiAF.Data, expansion);

-- Raids
    raids = expansion:AddChild(KrowiAF.AchievementCategory:NewRaids());
    raids:AddAchievementIDs({}); -- Overarching achievements

    -- 3.0
        raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(753)); -- Vault of Archavon
        version = raid:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_10_PLAYER));
        version:AddAchievementIDs({4016}); -- No Glory available
        version:AddAchievementIDs({1722, 3136 --[[3.1]], 3836 --[[3.2]], 4585 --[[3.3]]}); -- Defeat X
        version = raid:AddChild(KrowiAF.AchievementCategory:New(AF_CATEGORY_25_PLAYER));
        version:AddAchievementIDs({4017}); -- No Glory available
        version:AddAchievementIDs({1721, 3137 --[[3.1]], 3837 --[[3.2]], 4586 --[[3.3]]}); -- Defeat X