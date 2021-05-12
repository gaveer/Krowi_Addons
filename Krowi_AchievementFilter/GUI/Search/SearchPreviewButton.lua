-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local search = addon.GUI.Search;
search.SearchPreviewButton = {};
local searchPreviewButton = search.SearchPreviewButton;

local OnEnter, OnClick, OnClick_ShowFullSearchResults;
function searchPreviewButton.PostLoadButtons(searchPreviewFrame, fullSearchResultsFrame, achievementsFrame)
	diagnostics.Trace("searchPreviewButton.PostLoadButtons");

    for _, button in next, searchPreviewFrame.Buttons do
        button.Enter = function(self)
            OnEnter(self, searchPreviewFrame);
        end;
        button:SetScript("OnEnter", button.Enter);
		button:SetScript("OnClick", function(self, button, down)
			OnClick(self, searchPreviewFrame, searchPreviewFrame.SearchBoxFrame, achievementsFrame);
		end);
    end
    local button = searchPreviewFrame.ShowFullSearchResultsButton;
    button.Enter = function(self)
        OnEnter(self, searchPreviewFrame);
    end;
    button:SetScript("OnEnter", button.Enter);
    button:SetScript("OnClick", function(self, button, down)
        OnClick_ShowFullSearchResults(fullSearchResultsFrame, searchPreviewFrame, searchPreviewFrame.SearchBoxFrame);
    end);
end

function OnEnter(self, searchPreviewFrame)
    diagnostics.Trace("OnEnter");

    local buttons = searchPreviewFrame.Buttons;
    for _, button in next, buttons do
        button.SelectedTexture:Hide();
        button.IsSelected = nil;
    end
	searchPreviewFrame.ShowFullSearchResultsButton.SelectedTexture:Hide();
    searchPreviewFrame.ShowFullSearchResultsButton.IsSelected = nil;

    self.SelectedTexture:Show();
    self.IsSelected = true;
end

function OnClick(self, searchPreviewFrame, searchBoxFrame, achievementsFrame)
    diagnostics.Trace("OnClick");

    if self.Achievement then
        achievementsFrame:SelectAchievement(self.Achievement, nil, true);
        searchPreviewFrame:Hide();
        searchBoxFrame.SearchPreviewFrame:Hide();
        searchBoxFrame:ClearFocus();
	end
end

function OnClick_ShowFullSearchResults(fullSearchResultsFrame, searchPreviewFrame, searchBoxFrame)
    diagnostics.Trace("OnClick_ShowFullSearchResults");

    fullSearchResultsFrame:Update(searchBoxFrame:GetText(), searchBoxFrame.Results);
	if #searchBoxFrame.Results == 0 then
		fullSearchResultsFrame:Hide();
		return;
	end
    searchPreviewFrame:Hide();
	searchBoxFrame:ClearFocus();
    fullSearchResultsFrame:Show();
    PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON);
end