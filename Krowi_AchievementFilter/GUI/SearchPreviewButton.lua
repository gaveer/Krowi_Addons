local _, addon = ...; -- Global addon namespace
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace
-- gui.CategoriesFrame = {}; -- Global categories frame class

function KrowiAF_AchievementSearchPreviewButton_OnLoad(self)
    diagnostics.Trace("KrowiAF_AchievementSearchPreviewButton_OnLoad");
    
    -- local searchPreviewContainer = AchievementFrame.searchPreviewContainer;
	-- local searchPreviews = searchPreviewContainer.searchPreviews;
	-- for index = 1, ACHIEVEMENT_FRAME_NUM_SEARCH_PREVIEWS do
	-- 	if ( searchPreviews[index] == self ) then
	-- 		self.previewIndex = index;
	-- 		break;
	-- 	end
	-- end
end

function KrowiAF_AchievementSearchPreviewButton_OnEnter(self)
    diagnostics.Trace("KrowiAF_AchievementSearchPreviewButton_OnEnter");
    
	KrowiAF_AchievementFrame_SetSearchPreviewSelection(self);
end

function KrowiAF_AchievementSearchPreviewButton_OnClick(self)
    diagnostics.Trace("KrowiAF_AchievementSearchPreviewButton_OnClick");
    
    -- if ( self.achievementID ) then
	-- 	AchievementFrame_SelectSearchItem(self.achievementID);
	-- 	AchievementFrame.searchResults:Hide();
	-- 	AchievementFrame_HideSearchPreview();
	-- 	AchievementFrame.searchBox:ClearFocus();
	-- end
end

function KrowiAF_AchievementFrame_SetSearchPreviewSelection(button)
    diagnostics.Trace("KrowiAF_AchievementFrame_SetSearchPreviewSelection");

	local searchPreviewContainer = addon.GUI.SearchPreviewContainer.Frame;
    local searchPreviews = searchPreviewContainer.Buttons;
    for _, searchPreview in next, searchPreviews do
        searchPreview.SelectedTexture:Hide();
    end
	searchPreviewContainer.ShowAllSearchResults.SelectedTexture:Hide();
    button.SelectedTexture:Show();
end

function KrowiAF_AchievementFrame_ShowFullSearch()
    diagnostics.Trace("KrowiAF_AchievementFrame_ShowFullSearch");
    
    -- AchievementFrame_UpdateFullSearchResults();
	-- if ( GetNumFilteredAchievements() == 0 ) then
	-- 	AchievementFrame.searchResults:Hide();
	-- 	return;
	-- end
	-- AchievementFrame_HideSearchPreview();
	-- AchievementFrame.searchBox:ClearFocus();
	-- AchievementFrame.searchResults:Show();
end