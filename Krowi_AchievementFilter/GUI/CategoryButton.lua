local _, addon = ...;

-- [[ Blizzard_AchievementUI.lua derived ]] --

    -- Used in Templates - KrowiAF_AchievementCategoryTemplate
    function KrowiAF_AchievementCategoryButton_OnClick(self, button, down) -- OK -- line 746
        addon.Diagnostics.Trace("KrowiAF_AchievementCategoryButton_OnClick");

        self.ParentContainer.ParentFrame.Parent:SelectButton(self);
        self.ParentContainer.ParentFrame.Parent:Update();
    end