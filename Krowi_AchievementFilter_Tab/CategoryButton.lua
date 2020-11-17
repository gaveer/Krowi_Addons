-- [[ Blizzard_AchievementUI.lua derived ]] --

    -- Used in Templates - KrowiAF_AchievementCategoryTemplate
    function KrowiAF_AchievementCategoryButton_OnClick(button) -- OK -- line 746
        KrowiAF.Trace("KrowiAF_AchievementCategoryButton_OnClick");
        
        KrowiAF.CategoriesFrame.SelectButton(button);
        KrowiAF.CategoriesFrame.Update();
    end