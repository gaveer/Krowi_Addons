-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;

function KrowiAF_AchievementCategoryButton_OnClick(self, button, down, quick) -- Used in Templates - KrowiAF_AchievementCategoryTemplate
    diagnostics.Trace("KrowiAF_AchievementCategoryButton_OnClick for " .. self.name);

    self.ParentContainer.ParentFrame:SelectButton(self, quick);
    self.ParentContainer.ParentFrame:Update();
end