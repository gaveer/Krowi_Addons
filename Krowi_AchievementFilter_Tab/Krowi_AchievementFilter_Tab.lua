KrowiAF.CategoriesFrame = KrowiAF_AchievementFrameCategories;
KrowiAF.AchievementsFrame = KrowiAF_AchievementFrameAchievements;

function KrowiAF.InGuildView()
    return AchievementFrameHeaderTitle:GetText() == GUILD_ACHIEVEMENTS_TITLE;
end