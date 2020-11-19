-- Expansions
-- Xpack_Classic = KrowiAF.AchievementCategory:New(AF_CATEGORY_CLASSIC);
-- tinsert(KrowiAF.Data, Xpack_Classic);
-- Xpack_TBC = KrowiAF.AchievementCategory:New(AF_CATEGORY_TBC);
-- tinsert(KrowiAF.Data, Xpack_TBC);
-- Xpack_WotLK = KrowiAF.AchievementCategory:New(AF_CATEGORY_WOTLK);
-- tinsert(KrowiAF.Data, Xpack_WotLK);

function KrowiAF.ConvertToBlizzardAchievementCategory(category)
    local id = category.ID;
    local parent = not category.Parent;
    if category.Parent and type(category.Parent.ID) == "number" then
        parent = category.Parent.ID;
    end
    tinsert(KrowiAF.Categories_Old, {id = id, parent = parent, more = category});
    for _, v in pairs(category.Children) do
        KrowiAF.ConvertToBlizzardAchievementCategory(v);
    end
end

function KrowiAF.LoadAchievementCategories()
    for i in next, KrowiAF.Data do
		KrowiAF.ConvertToBlizzardAchievementCategory(KrowiAF.Data[i]);
    end
    
    -- KrowiAF.DebugTable(AchievementFilter.Categories);
end