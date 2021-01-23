local _, addon = ...; -- Global addon namespace
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace
addon.SearchPreviewButton = {};
local searchPreviewButton = addon.SearchPreviewButton;

function KrowiAF_AchievementSearchPreviewButton_OnClick(self)
    diagnostics.Trace("KrowiAF_AchievementSearchPreviewButton_OnClick");

    if self.AchievementID then
        self.ParentContainer.SearchBox.AchievementsFrame:SelectAchievement(self.AchievementID, nil, nil, true);
        self.ParentContainer:Hide();
        self.ParentContainer.SearchBox:HideSearchPreview();
        self.ParentContainer.SearchBox.Frame:ClearFocus();
	end
end

function KrowiAF_AchievementFrame_SetSearchPreviewSelection(button)
    diagnostics.Trace("KrowiAF_AchievementFrame_SetSearchPreviewSelection");

	local searchPreviewContainer = addon.GUI.SearchPreviewContainer.Frame;
    local buttons = searchPreviewContainer.Buttons;
    for _, btn in next, buttons do
        btn.SelectedTexture:Hide();
        btn.IsSelected = nil;
    end
	searchPreviewContainer.ShowAllSearchResults.SelectedTexture:Hide();
    searchPreviewContainer.ShowAllSearchResults.IsSelected = nil;

    button.SelectedTexture:Show();
    button.IsSelected = true;
end

function KrowiAF_AchievementFrame_ShowFullSearch(self)
    diagnostics.Trace("KrowiAF_AchievementFrame_ShowFullSearch");

    self.ParentContainer.SearchBox.Frame.FullSearchResults:Update();
	if GetNumFilteredAchievementsTest() == 0 then
		self.ParentContainer.SearchBox.Frame.FullSearchResults.Frame:Hide();
		return;
	end
    self.ParentContainer.SearchBox:HideSearchPreview();
	self.ParentContainer.SearchBox.Frame:ClearFocus();
	self.ParentContainer.SearchBox.Frame.FullSearchResults.Frame:Show();
end