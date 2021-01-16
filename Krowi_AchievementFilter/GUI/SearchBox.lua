local _, addon = ...; -- Global addon namespace
local gui = addon.GUI; -- Local GUI namespace
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace

gui.SearchBox = {}; -- Global searchBox frame class
local searchBox = gui.SearchBox; -- Local categories frame class
searchBox.ID = 0; -- Local ID for naming, starts at 0 and will increment if a new frame is added

searchBox.__index = searchBox; -- Used to support OOP like code

function searchBox:New()
    diagnostics.Trace("searchBox:New");

	local self = {};
    setmetatable(self, searchBox);

	searchBox.ID = searchBox.ID + 1;
    self.ID = searchBox.ID;

    local frame = CreateFrame("EditBox", "KrowiAF_AchievementFrameSearchBox" .. self.ID, AchievementFrame, "SearchBoxTemplate");
	frame:SetPoint("TOPLEFT", AchievementFrame.searchBox);
    frame:SetPoint("BOTTOMRIGHT", AchievementFrame.searchBox);
    frame:SetMaxLetters(40);
	self.Frame = frame;
	frame.Parent = self;

	tinsert(ACHIEVEMENTFRAME_SUBFRAMES, frame:GetName());
    frame:Hide();

	return self;
end

-- Let's overwrite the default one for now, just for testing
function AchievementFrame_ShowSearchPreviewResults_Test()
    diagnostics.Trace("AchievementFrame_ShowSearchPreviewResults");

    SetAchievementSearchStringTest("classic");

	AchievementFrame.searchProgressBar:Hide();
	local numResults = GetNumFilteredAchievements();
	if ( numResults > 0 ) then
		AchievementFrame_SetSearchPreviewSelection(1);
	end
	local searchPreviewContainer = AchievementFrame.searchPreviewContainer;
	local searchPreviews = searchPreviewContainer.searchPreviews;
	local lastButton;
	for index = 1, 5 do
		local searchPreview = searchPreviews[index];
		if ( index <= numResults ) then
			local achievementID = GetFilteredAchievementID(index);
			local _, name, _, _, _, _, _, description, _, icon, _, _, _, _ = GetAchievementInfo(achievementID);
			searchPreview.name:SetText(name);
			searchPreview.icon:SetTexture(icon);
			searchPreview.achievementID = achievementID;
			searchPreview:Show();
			lastButton = searchPreview;
		else
			searchPreview.achievementID = nil;
			searchPreview:Hide();
		end
	end
	if ( numResults > 5 ) then
		searchPreviewContainer.showAllSearchResults:Show();
		lastButton = searchPreviewContainer.showAllSearchResults;
		searchPreviewContainer.showAllSearchResults.text:SetText(string.format(ENCOUNTER_JOURNAL_SHOW_SEARCH_RESULTS, numResults));
	else
		searchPreviewContainer.showAllSearchResults:Hide();
	end
	if (lastButton) then
		searchPreviewContainer.borderAnchor:SetPoint("BOTTOM", lastButton, "BOTTOM", 0, -5);
		searchPreviewContainer.background:Hide();
		searchPreviewContainer:Show();
	else
		searchPreviewContainer:Hide();
	end
end

function SetAchievementSearchStringTest(text)
    for _, achievement in next, addon.Achievements do
        local achievementID = achievement.ID;
        local _, name, _, _, _, _, _, description, _, _, _, _, _, _ = GetAchievementInfo(achievementID);
        if string.match(name:lower(), text:lower()) then
            addon.Diagnostics.Debug(name);
        end
        if string.match(description:lower(), text:lower()) then
            addon.Diagnostics.Debug(description);
        end
    end
end