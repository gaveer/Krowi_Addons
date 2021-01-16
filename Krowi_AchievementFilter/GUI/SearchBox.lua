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

    frame:SetScript("OnShow", self.OnShow);
    frame:SetScript("OnEnterPressed", self.OnEnterPressed);
    frame:SetScript("OnTextChanged", self.OnTextChanged);
    -- frame:SetScript("OnEditFocusLost", self.OnEditFocusLost);
    -- frame:SetScript("OnEditFocusGained", self.OnEditFocusGained);
    -- frame:SetScript("OnKeyDown", self.OnKeyDown);

	tinsert(ACHIEVEMENTFRAME_SUBFRAMES, frame:GetName());
    frame:Hide();

	SearchBoxTemplate_OnLoad(self.Frame);
	self.Frame.HasStickyFocus = function()
		local ancestry = self.Frame:GetParent().searchPreviewContainer;
		return DoesAncestryInclude(ancestry, GetMouseFocus());
    end

	return self;
end

function searchBox:OnShow()
	diagnostics.Trace("searchBox:OnShow");

	self:SetFrameLevel(self:GetParent():GetFrameLevel() + 7);
	AchievementFrame_SetSearchPreviewSelection(1);
	self.fullSearchFinished = false;
	self.searchPreviewUpdateDelay = 0;
end

function searchBox:OnEnterPressed()
    diagnostics.Trace("searchBox:OnEnterPressed");

    -- If the search is not finished yet we have to wait to show the full search results.
	if not self.fullSearchFinished or strlen(self:GetText()) < addon.Options.db.SearchBox.MinimumCharactersToSearch then
		return;
	end
	local searchPreviewContainer = AchievementFrame.searchPreviewContainer;
	if self.selectedIndex == addon.Options.db.SearchBox.NumberOfSearchPreviews + 1 then
		if searchPreviewContainer.showAllSearchResults:IsShown() then
			searchPreviewContainer.showAllSearchResults:Click();
		end
	else
		local preview = searchPreviewContainer.searchPreviews[self.selectedIndex];
		if preview:IsShown() then
			preview:Click();
		end
	end
end

function searchBox:OnTextChanged()
    diagnostics.Trace("searchBox:OnTextChanged");
    
    SearchBoxTemplate_OnTextChanged(self);
	if strlen(self:GetText()) >= addon.Options.db.SearchBox.MinimumCharactersToSearch then
		self.fullSearchFinished = SetAchievementSearchStringTest(self:GetText()); -- Must be some asynchronous function when called in Blizzard_AchievementUI
		if not self.fullSearchFinished then
            -- AchievementFrame_UpdateSearchPreview();
            addon.Diagnostics.Debug("1");
		else
			-- AchievementFrame_ShowSearchPreviewResults();
            addon.Diagnostics.Debug("2");
		end
	else
		-- AchievementFrame_HideSearchPreview();
        addon.Diagnostics.Debug("3");
	end
end

function searchBox:OnEditFocusLost()
	diagnostics.Trace("searchBox:OnEditFocusLost");
end

function searchBox:OnEditFocusGained()
	diagnostics.Trace("searchBox:OnEditFocusGained");
end

function searchBox:OnKeyDown()
	diagnostics.Trace("searchBox:OnKeyDown");
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
    diagnostics.Trace("SetAchievementSearchStringTest");

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

    return true;
end