-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local search = addon.GUI.Search;
search.FullSearchResult = {};
local fullSearchResult = search.FullSearchResult;

local OnClick;
function fullSearchResult.PostLoadButtons(frame, achievementsFrame)
	-- Here we hook a lot of our own functionality to extend the default Blizzard Buttons
	diagnostics.Trace("fullSearchResult:PostLoadButtons");

    for _, button in next, frame.Container.buttons do
		button:SetScript("OnClick", function(self, button, down)
			OnClick(self, frame, achievementsFrame);
		end);
	end
end

function OnClick(self, fullSearchResultsFrame, achievementsFrame)
    diagnostics.Trace("fullSearchResult.OnClick");

    if self.Achievement then
        fullSearchResultsFrame:Hide();
        achievementsFrame:SelectAchievement(self.Achievement, nil, true);
	end
end