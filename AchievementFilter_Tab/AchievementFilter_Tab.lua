KrowiAF.CategoriesFrame = KrowiAF_AchievementFrameCategories;
KrowiAF.AchievementsFrame = KrowiAF_AchievementFrameAchievements;

KrowiAF.UI_TexturesOffset = 0;

function KrowiAF.InGuildView()
    return AchievementFrameHeaderTitle:GetText() == GUILD_ACHIEVEMENTS_TITLE;
end

hooksecurefunc("AchievementFrame_ToggleView", function ()
    if KrowiAF.InGuildView() then
		KrowiAF.UI_TexturesOffset = 0;
		KrowiAF_AchievementFrameAchievementsBackground:SetTexCoord(0, 1, 0, 0.5);
	else
		KrowiAF.UI_TexturesOffset = 0.5;
		KrowiAF_AchievementFrameAchievementsBackground:SetTexCoord(0, 1, 0.5, 1);
	end
end);