-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.SearchBoxFrame = {};
local searchBoxFrame = gui.SearchBoxFrame;

local numFrames = 0; -- Local ID for naming, starts at 0 and will increment if a new frame is added

-- [[ Constructors ]] --
searchBoxFrame.__index = searchBoxFrame; -- Used to support OOP like code
function searchBoxFrame:New(searchPreviewFrame, fullSearchResults, achievementsFrame)
    diagnostics.Trace("searchBox:New");

	-- Increment ID
	numFrames = numFrames + 1;

	-- Create frame
    local frame = CreateFrame("EditBox", "KrowiAF_AchievementFrameSearchBox" .. numFrames, AchievementFrame, "SearchBoxTemplate");
	frame:SetPoint("TOPLEFT", AchievementFrame.searchBox);
    frame:SetPoint("BOTTOMRIGHT", AchievementFrame.searchBox);
    frame:SetMaxLetters(40);
	addon.InjectMetatable(frame, searchBoxFrame);

	-- Set properties
	frame.ID = numFrames;
	frame.SearchPreviewFrame = searchPreviewFrame;
	frame.SearchPreviewFrame.SearchBoxFrame = frame;
	frame.FullSearchResults = fullSearchResults;
	frame.AchievementsFrame = achievementsFrame;

    frame:SetScript("OnShow", frame.OnShow);
    frame:SetScript("OnHide", frame.OnHide);
    frame:SetScript("OnEnterPressed", frame.OnEnterPressed);
    frame:SetScript("OnTextChanged", frame.OnTextChanged);
    frame:SetScript("OnEditFocusLost", frame.OnEditFocusLost);
    frame:SetScript("OnEditFocusGained", frame.OnEditFocusGained);
    frame:SetScript("OnKeyDown", frame.OnKeyDown);

	tinsert(ACHIEVEMENTFRAME_SUBFRAMES, frame:GetName());
    frame:Hide();

	SearchBoxTemplate_OnLoad(frame);
	frame.HasStickyFocus = function()
		local ancestry = frame.SearchPreviewFrame;
		return DoesAncestryInclude(ancestry, GetMouseFocus());
    end

	return frame;
end

function searchBoxFrame:OnShow()
	diagnostics.Trace("searchBoxFrame:OnShow");

	self:SetFrameLevel(self:GetParent():GetFrameLevel() + 7);
	self.SearchPreviewFrame.Buttons[1]:Enter();
end

function searchBoxFrame:OnHide()
	diagnostics.Trace("searchBoxFrame:OnHide");

	if not AchievementFrame:IsShown() then
		self:SetText("");
	end
	self.SearchPreviewFrame:Hide();
	self.FullSearchResults:Hide();
end

function searchBoxFrame:OnEnterPressed()
    diagnostics.Trace("searchBox:OnEnterPressed");

	if strlen(self:GetText()) < addon.Options.db.SearchBox.MinimumCharactersToSearch then
		return;
	end

	local searchPreviewFrame = self.SearchPreviewFrame;
	if searchPreviewFrame.ShowFullSearchResultsButton.IsSelected and searchPreviewFrame.ShowFullSearchResultsButton:IsShown() then
		searchPreviewFrame.ShowFullSearchResultsButton:Click();
	else
		local buttons = searchPreviewFrame.Buttons;
		for _, button in next, buttons do
			if button.IsSelected and button:IsShown() then
				button:Click();
			end
		end
	end
end

local function GetSearchResults(text)
    diagnostics.Trace("GetSearchResults");

	local results = {};

    for _, achievement in next, addon.Achievements do
        local achievementID = achievement.ID;
        local _, name, _, _, _, _, _, description, _, _, _, _, _, _ = GetAchievementInfo(achievementID);
        if string.match(name:lower(), text:lower()) or string.match(description:lower(), text:lower()) then
			tinsert(results, achievement);
			addon.Diagnostics.Debug(tostring(achievementID) .. " - " .. name);
        end
    end

    return results;
end

function searchBoxFrame:OnTextChanged()
    diagnostics.Trace("searchBox:OnTextChanged");

	SearchBoxTemplate_OnTextChanged(self);

	if strlen(self:GetText()) >= addon.Options.db.SearchBox.MinimumCharactersToSearch then
		self.Results = GetSearchResults(self:GetText());
		self:ShowSearchPreviewResults();
	else
		self.SearchPreviewFrame:Hide();
	end
end

function searchBoxFrame:OnEditFocusLost()
	diagnostics.Trace("searchBoxFrame:OnEditFocusLost");

	SearchBoxTemplate_OnEditFocusLost(self);
	self.SearchPreviewFrame:Hide();
end

function searchBoxFrame:OnEditFocusGained()
	diagnostics.Trace("searchBoxFrame:OnEditFocusGained");

	SearchBoxTemplate_OnEditFocusGained(self);
	self.FullSearchResults:Hide();

	if self:HasFocus() and strlen(self:GetText()) >= addon.Options.db.SearchBox.MinimumCharactersToSearch then
		self:ShowSearchPreviewResults();
	else
		self.SearchPreviewFrame:Hide();
	end
end

function searchBoxFrame:OnKeyDown(key)
	diagnostics.Trace("searchBoxFrame:OnKeyDown");

	if key == "UP" then
		self.SearchPreviewFrame:SelectPrevious(#self.Results);
	elseif key == "DOWN" then
		self.SearchPreviewFrame:SelectNext(#self.Results);
	end
end

function searchBoxFrame:ShowSearchPreviewResults()
    diagnostics.Trace("searchBoxFrame:ShowSearchPreviewResults");

	local results = self.Results;
	local numResults = #results;
	if numResults > 0 then
		self.SearchPreviewFrame.Buttons[1]:Enter();
	end
	local searchPreviewContainer = self.SearchPreviewFrame;
	local buttons = searchPreviewContainer.Buttons;
	local numButtons = searchPreviewContainer:GetNumButtons();
	local lastButton;
	for i = 1, #buttons do
		if i <= numResults and i <= numButtons then
			local achievementID = results[i].ID;
			local _, name, _, _, _, _, _, _, _, icon, _, _, _, _ = GetAchievementInfo(achievementID);
			buttons[i].Name:SetText(name);
			buttons[i].Icon:SetTexture(icon);
			-- buttons[i].AchievementID = achievementID;
			buttons[i].Achievement = results[i];
			buttons[i]:Show();
			lastButton = buttons[i];
		else
			buttons[i].AchievementID = nil;
			buttons[i]:Hide();
		end
	end
	if numResults > numButtons then
		searchPreviewContainer.ShowFullSearchResultsButton:Show();
		lastButton = searchPreviewContainer.ShowFullSearchResultsButton;
		searchPreviewContainer.ShowFullSearchResultsButton.Text:SetText(string.format(ENCOUNTER_JOURNAL_SHOW_SEARCH_RESULTS, numResults));
	else
		searchPreviewContainer.ShowFullSearchResultsButton:Hide();
	end
	if lastButton then
		searchPreviewContainer.BorderAnchor:SetPoint("BOTTOM", lastButton, "BOTTOM", 0, -8);
		searchPreviewContainer.Background:Hide();
		searchPreviewContainer:Show();
	else
		searchPreviewContainer:Hide();
	end
end