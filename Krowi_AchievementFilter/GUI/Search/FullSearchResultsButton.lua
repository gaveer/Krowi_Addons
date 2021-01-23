local _, addon = ...; -- Global addon namespace
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace

function KrowiAF_AcheivementFullSearchResultsButton_OnClick(self)
    diagnostics.Trace("KrowiAF_AcheivementFullSearchResultsButton_OnClick");

    if self.AchievementID then
        self.ParentContainer.ParentFrame.Parent.AchievementsFrame:SelectAchievement(self.AchievementID, nil, nil, true);
        self.ParentContainer.ParentFrame:Hide();
	end
end