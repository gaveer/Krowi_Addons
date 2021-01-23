-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.FullSearchResult = {};
local fullSearchResult = gui.FullSearchResult;

function fullSearchResult.OnClick(self, fullSearchResults, achievementsFrame)
    diagnostics.Trace("fullSearchResult.OnClick");

    if self.AchievementID then
        fullSearchResults:Hide();
        achievementsFrame:SelectAchievement(self.AchievementID, nil, nil, true);
	end
end