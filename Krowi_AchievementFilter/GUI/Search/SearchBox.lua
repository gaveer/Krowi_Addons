local _, addon = ...; -- Global addon namespace
local gui = addon.GUI; -- Local GUI namespace
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace

gui.SearchBox = {}; -- Global searchBox frame class
local searchBox = gui.SearchBox; -- Local searchBox frame class
searchBox.ID = 0; -- Local ID for naming, starts at 0 and will increment if a new frame is added

searchBox.__index = searchBox; -- Used to support OOP like code

function searchBox:New(searchPreviewContainerFrame, fullSearchResults, achievementsFrame)
    diagnostics.Trace("searchBox:New");

	local self = {};
    setmetatable(self, searchBox);

	searchBox.ID = searchBox.ID + 1;
	self.ID = searchBox.ID;

	self.SearchPreviewContainerFrame = searchPreviewContainerFrame;
	self.SearchPreviewContainerFrame.SearchBox = self;
	self.FullSearchResults = fullSearchResults;
	self.AchievementsFrame = achievementsFrame;

    local frame = CreateFrame("EditBox", "KrowiAF_AchievementFrameSearchBox" .. self.ID, AchievementFrame, "SearchBoxTemplate");
	frame:SetPoint("TOPLEFT", AchievementFrame.searchBox);
    frame:SetPoint("BOTTOMRIGHT", AchievementFrame.searchBox);
    frame:SetMaxLetters(40);
	self.Frame = frame;
	frame.Parent = self;

    frame:SetScript("OnShow", self.OnShow);
    frame:SetScript("OnEnterPressed", self.OnEnterPressed);
    frame:SetScript("OnTextChanged", self.OnTextChanged);
    frame:SetScript("OnEditFocusLost", self.OnEditFocusLost);
    frame:SetScript("OnEditFocusGained", self.OnEditFocusGained);
    frame:SetScript("OnKeyDown", self.OnKeyDown);

	tinsert(ACHIEVEMENTFRAME_SUBFRAMES, frame:GetName());
    frame:Hide();

	SearchBoxTemplate_OnLoad(frame);
	frame.HasStickyFocus = function()
		local ancestry = self.SearchPreviewContainerFrame;
		return DoesAncestryInclude(ancestry, GetMouseFocus());
    end

	return self;
end

function searchBox:OnShow()
	diagnostics.Trace("searchBox:OnShow");

	self:SetFrameLevel(self:GetParent():GetFrameLevel() + 7);
	KrowiAF_AchievementFrame_SetSearchPreviewSelection(self.Parent.SearchPreviewContainerFrame.Buttons[1]);
	self.fullSearchFinished = false;
	self.searchPreviewUpdateDelay = 0;
end

function searchBox:OnEnterPressed()
    diagnostics.Trace("searchBox:OnEnterPressed");

	-- If the search is not finished yet we have to wait to show the full search results.
	if ( not self.fullSearchFinished or strlen(self:GetText()) < MIN_CHARACTER_SEARCH ) then
		return;
	end

	local searchPreviewContainer = self.Parent.SearchPreviewContainerFrame;
	if searchPreviewContainer.ShowAllSearchResults.IsSelected and searchPreviewContainer.ShowAllSearchResults:IsShown() then
		searchPreviewContainer.ShowAllSearchResults:Click();
	else
		local buttons = searchPreviewContainer.Buttons;
		for _, button in next, buttons do
			if button.IsSelected and button:IsShown() then
				button:Click();
			end
		end
	end
end

Results = {};

function searchBox:OnTextChanged()
    diagnostics.Trace("searchBox:OnTextChanged");

	SearchBoxTemplate_OnTextChanged(self);

	if strlen(self:GetText()) >= addon.Options.db.SearchBox.MinimumCharactersToSearch then
		self.fullSearchFinished = SetAchievementSearchStringTest(self:GetText()); -- Must be some asynchronous function when called in Blizzard_AchievementUI
		if not self.fullSearchFinished then
            self.Parent:UpdateSearchPreview();
		else
			self.Parent:ShowSearchPreviewResults();
		end
	else
		AchievementFrame_HideSearchPreview();
	end
end

function searchBox:OnEditFocusLost()
	diagnostics.Trace("searchBox:OnEditFocusLost");

	SearchBoxTemplate_OnEditFocusLost(self);
	self.Parent:HideSearchPreview();
end

function searchBox:OnEditFocusGained()
	diagnostics.Trace("searchBox:OnEditFocusGained");

	SearchBoxTemplate_OnEditFocusGained(self);
	-- AchievementFrame.searchResults:Hide(); -- Need to add
	self.Parent:UpdateSearchPreview();
end

function searchBox:OnKeyDown(key)
	diagnostics.Trace("searchBox:OnKeyDown");

	if key == "UP" then
		self.Parent.SearchPreviewContainerFrame:SelectPrevious();
	elseif key == "DOWN" then
		self.Parent.SearchPreviewContainerFrame:SelectNext();
	end
end

function searchBox:ShowSearchPreviewResults()
    diagnostics.Trace("AchievementFrame_ShowSearchPreviewResults");

	-- AchievementFrame.searchProgressBar:Hide();
	local numResults = GetNumFilteredAchievementsTest();
	if numResults > 0 then
		KrowiAF_AchievementFrame_SetSearchPreviewSelection(self.SearchPreviewContainerFrame.Buttons[1]);
	end
	local searchPreviewContainer = self.SearchPreviewContainerFrame;
	local searchPreviews = searchPreviewContainer.Buttons;
	local lastButton;
	for i, button in next, searchPreviews do
		if i <= numResults then
			local achievementID = GetFilteredAchievementIDTest(i);
			local _, name, _, _, _, _, _, _, _, icon, _, _, _, _ = GetAchievementInfo(achievementID);
			button.Name:SetText(name);
			button.Icon:SetTexture(icon);
			button.AchievementID = achievementID;
			button:Show();
			lastButton = button;
		else
			button.AchievementID = nil;
			button:Hide();
		end
	end
	if numResults > addon.Options.db.SearchBox.NumberOfSearchPreviews then
		searchPreviewContainer.ShowAllSearchResults:Show();
		lastButton = searchPreviewContainer.ShowAllSearchResults;
		searchPreviewContainer.ShowAllSearchResults.Text:SetText(string.format(ENCOUNTER_JOURNAL_SHOW_SEARCH_RESULTS, numResults));
	else
		searchPreviewContainer.ShowAllSearchResults:Hide();
	end
	if lastButton then
		searchPreviewContainer.BorderAnchor:SetPoint("BOTTOM", lastButton, "BOTTOM", 0, -5);
		searchPreviewContainer.Background:Hide();
		searchPreviewContainer:Show();
	else
		searchPreviewContainer:Hide();
	end
end

function SetAchievementSearchStringTest(text)
    diagnostics.Trace("SetAchievementSearchStringTest");

	local results = {};

    for _, achievement in next, addon.Achievements do
        local achievementID = achievement.ID;
        local _, name, _, _, _, _, _, description, _, _, _, _, _, _ = GetAchievementInfo(achievementID);
        if string.match(name:lower(), text:lower()) or string.match(description:lower(), text:lower()) then
			tinsert(results, achievement);
			addon.Diagnostics.Debug(tostring(achievementID) .. " - " .. name);
        end
    end

	Results = results;

    return true;
end

function GetNumFilteredAchievementsTest()
	return #Results;
end

function GetFilteredAchievementIDTest(index)
	return Results[index].ID;
end

function searchBox:HideSearchPreview()
	diagnostics.Trace("searchBox:HideSearchPreview");

	local searchPreviewContainer = self.SearchPreviewContainerFrame;
	local searchPreviews = searchPreviewContainer.Buttons;
	searchPreviewContainer:Hide();
	for _, button in next, searchPreviews do
		button:Hide();
	end
	searchPreviewContainer.ShowAllSearchResults:Hide();
	-- AchievementFrame.searchProgressBar:Hide();
end

function searchBox:UpdateSearchPreview()
	diagnostics.Trace("searchBox:UpdateSearchPreview");

	if not self.Frame:HasFocus() or strlen(self.Frame:GetText()) < addon.Options.db.SearchBox.MinimumCharactersToSearch then
		self:HideSearchPreview();
		return;
	end
	self.searchPreviewUpdateDelay = 0;
	if self.Frame:GetScript("OnUpdate") == nil then
		self.Frame:SetScript("OnUpdate", self.OnUpdate);
	end
end

-- There is a delay before the search is updated to avoid a search progress bar if the search
-- completes within the grace period.
local ACHIEVEMENT_SEARCH_PREVIEW_UPDATE_DELAY = 0.3;
function searchBox:OnUpdate (elapsed)
	if self.fullSearchFinished then
		self.Parent:ShowSearchPreviewResults();
		self.searchPreviewUpdateDelay = 0;
		self:SetScript("OnUpdate", nil);
		return;
	end
	self.searchPreviewUpdateDelay = self.searchPreviewUpdateDelay + elapsed;
	if self.searchPreviewUpdateDelay > ACHIEVEMENT_SEARCH_PREVIEW_UPDATE_DELAY then
		self.searchPreviewUpdateDelay = 0;
		self:SetScript("OnUpdate", nil);
		-- if AchievementFrame.searchProgressBar:GetScript("OnUpdate") == nil then
		-- 	AchievementFrame.searchProgressBar:SetScript("OnUpdate", AchievementFrameSearchProgressBar_OnUpdate);
		-- 	local searchPreviewContainer = self.SearchPreviewContainerFrame;
		-- 	local searchPreviews = searchPreviewContainer.Buttons;
		-- 	for index = 1, ACHIEVEMENT_FRAME_NUM_SEARCH_PREVIEWS do
		-- 		searchPreviews[index]:Hide();
		-- 	end
		-- 	searchPreviewContainer.showAllSearchResults:Hide();
		-- 	searchPreviewContainer.borderAnchor:SetPoint("BOTTOM", 0, -5);
		-- 	searchPreviewContainer.background:Show();
		-- 	searchPreviewContainer:Show();
		-- 	AchievementFrame.searchProgressBar:Show();
		-- 	return;
		-- end
	end
end