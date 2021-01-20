local _, addon = ...; -- Global addon namespace
local gui = addon.GUI; -- Local GUI namespace
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace

gui.FullSearchResults = {}; -- Global searchBox frame class
local fullSearchResults = gui.FullSearchResults; -- Local searchBox frame class
fullSearchResults.ID = 0; -- Local ID for naming, starts at 0 and will increment if a new frame is added

fullSearchResults.__index = fullSearchResults; -- Used to support OOP like code

function fullSearchResults:New(searchBoxFrame, achievementsFrame)
    diagnostics.Trace("searchBox:New");

	local self = {};
    setmetatable(self, fullSearchResults);

	fullSearchResults.ID = fullSearchResults.ID + 1;
	self.ID = fullSearchResults.ID;
    
    self.SearchBoxFrame = searchBoxFrame;
    self.SearchBoxFrame.FullSearchResults = self;
	-- self.SearchPreviewContainerFrame = searchPreviewContainerFrame;
	-- self.SearchPreviewContainerFrame.SearchBox = self;
	self.AchievementsFrame = achievementsFrame;

    local frame = CreateFrame("Frame", "KrowiAF_AchievementFrameFullSearchResults" .. self.ID, AchievementFrame, "KrowiAF_AchievementFrameFullSearchResultsTemplate");
	-- frame:SetPoint("TOPLEFT", AchievementFrame.searchBox);
    -- frame:SetPoint("BOTTOMRIGHT", AchievementFrame.searchBox);
    -- frame:SetMaxLetters(40);
	self.Frame = frame;
	frame.Parent = self;
	frame.Container.ParentFrame = frame;
	frame.Container.ScrollBar.ParentContainer = frame.Container;

    -- frame:SetScript("OnShow", self.OnShow);
    -- frame:SetScript("OnEnterPressed", self.OnEnterPressed);
    -- frame:SetScript("OnTextChanged", self.OnTextChanged);
    -- frame:SetScript("OnEditFocusLost", self.OnEditFocusLost);
    -- frame:SetScript("OnEditFocusGained", self.OnEditFocusGained);
    -- frame:SetScript("OnKeyDown", self.OnKeyDown);

	-- tinsert(ACHIEVEMENTFRAME_SUBFRAMES, frame:GetName());
    frame:Hide();

    frame.Container.update = function(container)
		container.ParentFrame.Parent:Update();
    end
    
    HybridScrollFrame_CreateButtons(frame.Container, "KrowiAF_AchievementFrameFullSearchResultsButtonTemplate", 0, 0);
    -- Doing post Load things
	for _, button in next, frame.Container.buttons do
		button.ParentContainer = frame.Container;
	end

	return self;
end

function fullSearchResults:Update()
    local numResults = GetNumFilteredAchievementsTest();
	local scrollFrame = self.Frame.Container;
	local offset = HybridScrollFrame_GetOffset(scrollFrame);
	local results = scrollFrame.buttons;
	local result, index;
	for i = 1,#results do
		result = results[i];
		index = offset + i;
		if ( index <= numResults ) then
			local achievementID = GetFilteredAchievementIDTest(index);
			local _, name, _, completed, _, _, _, description, _, icon, _, _, _, _ = GetAchievementInfo(achievementID);
			result.name:SetText(name);
			result.icon:SetTexture(icon);
			result.AchievementID = achievementID;
			if ( completed ) then
				result.resultType:SetText(ACHIEVEMENTFRAME_FILTER_COMPLETED);
			else
				result.resultType:SetText(ACHIEVEMENTFRAME_FILTER_INCOMPLETE);
			end
			-- local categoryID = GetAchievementCategory(achievementID);
			-- local categoryName, parentCategoryID = GetCategoryInfo(categoryID);
			-- path = categoryName;
			-- while ( not (parentCategoryID == -1) ) do
			-- 	categoryName, parentCategoryID = GetCategoryInfo(parentCategoryID);
			-- 	path = categoryName.." > "..path;
			-- end
			-- result.path:SetText(path);
			result:Show();
		else
			result:Hide();
		end
	end
	local totalHeight = numResults * 49;
	HybridScrollFrame_Update(scrollFrame, totalHeight, 270);
	self.Frame.titleText:SetText(string.format(ENCOUNTER_JOURNAL_SEARCH_RESULTS, self.SearchBoxFrame:GetText(), numResults));
end