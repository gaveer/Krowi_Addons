-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;
local diagnostics = addon.Diagnostics;
local search = addon.GUI.Search;
search.SearchBoxFrame = {};
local searchBoxFrame = search.SearchBoxFrame;

-- [[ Constructors ]] --
searchBoxFrame.__index = searchBoxFrame; -- Used to inject all the namespace functions to the frame
function searchBoxFrame:Load()
    diagnostics.Trace("searchBoxFrame:Load");

	-- Create frame
    local frame = CreateFrame("EditBox", "KrowiAF_AchievementFrameSearchBox", AchievementFrame, "SearchBoxTemplate");
	frame:SetPoint("TOPLEFT", AchievementFrame.searchBox);
    frame:SetPoint("BOTTOMRIGHT", AchievementFrame.searchBox);
    frame:SetMaxLetters(40);
	core.InjectMetatable(frame, searchBoxFrame); -- Inject all the namespace functions to the frame

	-- Rest
    frame:SetScript("OnShow", frame.OnShow);
    frame:SetScript("OnHide", frame.OnHide);
    frame:SetScript("OnEnterPressed", frame.OnEnterPressed);
    frame:SetScript("OnTextChanged", frame.OnTextChanged);
    frame:SetScript("OnEditFocusLost", frame.OnEditFocusLost);
    frame:SetScript("OnEditFocusGained", frame.OnEditFocusGained);
    frame:SetScript("OnKeyDown", frame.OnKeyDown);
	frame:SetScript("OnMouseDown", frame.OnMouseDown);

	tinsert(ACHIEVEMENTFRAME_SUBFRAMES, frame:GetName());
    frame:Hide();

	SearchBoxTemplate_OnLoad(frame);
	frame.HasStickyFocus = function()
		local ancestry = search.SearchPreviewFrame;
		return DoesAncestryInclude(ancestry, GetMouseFocus());
    end

	addon.GUI.Search.SearchBoxFrame = frame;
end

function searchBoxFrame:OnShow()
	diagnostics.Trace("searchBoxFrame:OnShow");

	self:SetFrameLevel(self:GetParent():GetFrameLevel() + 7);
	search.SearchPreviewFrame.Buttons[1]:Enter();
end

function searchBoxFrame:OnHide()
	diagnostics.Trace("searchBoxFrame:OnHide");

	if not AchievementFrame:IsShown() then
		self:SetText("");
	end
	search.SearchPreviewFrame:Hide();
	search.FullSearchResultsFrame:Hide();
end

function searchBoxFrame:OnEnterPressed()
    diagnostics.Trace("searchBox:OnEnterPressed");

	if strlen(self:GetText()) < addon.Options.db.SearchBox.MinimumCharactersToSearch then
		return;
	end

	local searchPreviewFrame = search.SearchPreviewFrame;
	if searchPreviewFrame.ShowFullSearchResultsButton.IsSelected and searchPreviewFrame.ShowFullSearchResultsButton:IsShown() then
		searchPreviewFrame.ShowFullSearchResultsButton:Click();
	else
		local buttons = search.SearchPreviewFrame.Buttons;
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

    for _, achievement in next, addon.Data.Achievements do
		if string.match(text:lower(), "^#") then
			if string.match(tostring(achievement.ID):lower(), string.sub(text, 2):lower()) then
				if not (addon.Options.db.SearchBox.ExcludeNextPatch and addon.Data.NextPatchAchievements[achievement.ID])
					and not (addon.Options.db.SearchBox.ExcludeExcluded and achievement.Excluded) then
					tinsert(results, achievement);
				end
			end
		else
			local achievementID = achievement.ID;
			local _, name, _, _, _, _, _, description, _, _, _, _, _, _ = addon.GetAchievementInfo(achievementID, addon.Options.db.SearchBox.ExcludeNextPatch);
			if name and (string.match(name:lower(), text:lower()) or string.match(description:lower(), text:lower())) then
				if not (addon.Options.db.SearchBox.ExcludeExcluded and achievement.Excluded) then
					tinsert(results, achievement);
					-- addon.Diagnostics.Debug(tostring(achievementID) .. " - " .. name);
				end
			end
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
		search.SearchPreviewFrame:Hide();
	end
end

function searchBoxFrame:OnEditFocusLost()
	diagnostics.Trace("searchBoxFrame:OnEditFocusLost");

	SearchBoxTemplate_OnEditFocusLost(self);
	search.SearchPreviewFrame:Hide();
end

function searchBoxFrame:OnEditFocusGained()
	diagnostics.Trace("searchBoxFrame:OnEditFocusGained");

	SearchBoxTemplate_OnEditFocusGained(self);
	search.FullSearchResultsFrame:Hide();

	if self:HasFocus() and strlen(self:GetText()) >= addon.Options.db.SearchBox.MinimumCharactersToSearch then
		self:ShowSearchPreviewResults();
	else
		search.SearchPreviewFrame:Hide();
	end
end

function searchBoxFrame:OnKeyDown(key)
	diagnostics.Trace("searchBoxFrame:OnKeyDown");

	if key == "UP" then
		search.SearchPreviewFrame:SelectPrevious(#self.Results);
	elseif key == "DOWN" then
		search.SearchPreviewFrame:SelectNext(#self.Results);
	end
end

function searchBoxFrame:OnMouseDown(button)
	diagnostics.Trace("searchBoxFrame:OnMouseDown");

	if addon.Options.db.SearchBox.ClearOnRightClick then
		if button == "RightButton" then
			self:SetText("");
			self:OnTextChanged();
		end
	end
end

function searchBoxFrame:ShowSearchPreviewResults()
    diagnostics.Trace("searchBoxFrame:ShowSearchPreviewResults");

	local results = self.Results;
	local numResults = #results;
	if numResults > 0 then
		search.SearchPreviewFrame.Buttons[1]:Enter();
	end
	local searchPreviewContainer = search.SearchPreviewFrame;
	local buttons = searchPreviewContainer.Buttons;
	local numButtons = searchPreviewContainer:GetNumButtons();
	local lastButton;
	for i = 1, #buttons do
		if i <= numResults and i <= numButtons then
			local achievementID = results[i].ID;
			local _, name, _, _, _, _, _, _, _, icon, _, _, _, _ = addon.GetAchievementInfo(achievementID);
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