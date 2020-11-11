-- Expansions
Xpack_Classic = AchievementFilter.AchievementCategory:New(AF_CATEGORY_CLASSIC);
tinsert(AchievementFilter.Data, Xpack_Classic);
Xpack_TBC = AchievementFilter.AchievementCategory:New(AF_CATEGORY_TBC);
tinsert(AchievementFilter.Data, Xpack_TBC);
Xpack_WotLK = AchievementFilter.AchievementCategory:New(AF_CATEGORY_WOTLK);
tinsert(AchievementFilter.Data, Xpack_WotLK);
Xpack_BfA = AchievementFilter.AchievementCategory:New(AF_CATEGORY_BFA);
tinsert(AchievementFilter.Data, Xpack_BfA);
Xpack_SL = AchievementFilter.AchievementCategory:New(AF_CATEGORY_SL);
tinsert(AchievementFilter.Data, Xpack_SL);

function AchievementFilter.ConvertToBlizzardAchievementCategory(category)
    local id = category.ID;
    local parent = not category.Parent;
    if category.Parent and type(category.Parent.ID) == "number" then
        parent = category.Parent.ID;
    end
    tinsert(AchievementFilter.Categories, {id = id, parent = parent, more = category});
    for _, v in pairs(category.Children) do
        AchievementFilter.ConvertToBlizzardAchievementCategory(v);
    end
end

function AchievementFilter.LoadAchievementCategories()
    for i in next, AchievementFilter.Data do
		AchievementFilter.ConvertToBlizzardAchievementCategory(AchievementFilter.Data[i]);
    end
    
    -- AchievementFilter.DebugTable(AchievementFilter.Categories);
end