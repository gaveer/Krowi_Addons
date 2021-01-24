-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.SearchPreviewButton = {};
local searchPreviewButton = gui.SearchPreviewButton;

function searchPreviewButton.PostLoadButtons(searchPreviewFrame, fullSearchResultsFrame, achievementsFrame)
	diagnostics.Trace("searchPreviewButton.PostLoadButtons");

    for _, button in next, searchPreviewFrame.Buttons do
        button.Enter = function(self)
            searchPreviewButton.OnEnter(self, searchPreviewFrame);
        end;
        button:SetScript("OnEnter", button.Enter);
		button:SetScript("OnClick", function(self, button, down)
			searchPreviewButton.OnClick(self, searchPreviewFrame, searchPreviewFrame.SearchBoxFrame, achievementsFrame);
		end);
    end
    local button = searchPreviewFrame.ShowFullSearchResultsButton;
    button.Enter = function(self)
        searchPreviewButton.OnEnter(self, searchPreviewFrame);
    end;
    button:SetScript("OnEnter", button.Enter);
    button:SetScript("OnClick", function(self, button, down)
        searchPreviewButton.OnClick_ShowFullSearchResults(self, fullSearchResultsFrame, searchPreviewFrame, searchPreviewFrame.SearchBoxFrame);
    end);
end


function searchPreviewButton.OnEnter(self, searchPreviewFrame)
    diagnostics.Trace("searchPreviewButton.OnEnter");

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

function searchPreviewButton.OnClick(self, searchPreviewFrame, searchBoxFrame, achievementsFrame)
    diagnostics.Trace("searchPreviewButton.OnClick");

    if self.AchievementID then
        achievementsFrame:SelectAchievement(self.AchievementID, nil, nil, true);
        searchPreviewFrame:Hide();
        searchBoxFrame.SearchPreviewFrame:Hide();
        searchBoxFrame:ClearFocus();
	end
end

function searchPreviewButton.OnClick_ShowFullSearchResults(self, fullSearchResultsFrame, searchPreviewFrame, searchBoxFrame)
    diagnostics.Trace("searchPreviewButton.OnClick_ShowFullSearchResults");

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