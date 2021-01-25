-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.FullSearchResult = {};
local fullSearchResult = gui.FullSearchResult;

function fullSearchResult.PostLoadButtons(frame, achievementsFrame)
	diagnostics.Trace("fullSearchResult.PostLoadButtons");

    for _, button in next, frame.Container.buttons do
		button:SetScript("OnClick", function(self, button, down)
			gui.FullSearchResult.OnClick(self, frame, achievementsFrame);
		end);
	end
end

function fullSearchResult.OnClick(self, fullSearchResultsFrame, achievementsFrame)
    diagnostics.Trace("fullSearchResult.OnClick");

    if self.Achievement then
        fullSearchResultsFrame:Hide();
        achievementsFrame:SelectAchievement(self.Achievement, nil, true);
	end
end