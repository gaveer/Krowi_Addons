local _, addon = ...; -- Global addon namespace
local gui = addon.GUI; -- Local GUI namespace
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace

gui.SearchPreviewContainer = {}; -- Global searchPreviewContainer frame class
local searchPreviewContainer = gui.SearchPreviewContainer; -- Local searchPreviewContainer frame class
searchPreviewContainer.ID = 0; -- Local ID for naming, starts at 0 and will increment if a new frame is added

searchPreviewContainer.__index = searchPreviewContainer; -- Used to support OOP like code

function searchPreviewContainer:New()
    diagnostics.Trace("searchPreviewContainer:New");

	local self = {};
    setmetatable(self, searchPreviewContainer);

	searchPreviewContainer.ID = searchPreviewContainer.ID + 1;
    self.ID = searchPreviewContainer.ID;

    local frame = CreateFrame("Frame", "KrowiAF_AchievementFrameSearchPreviewContainer" .. self.ID, AchievementFrame, "KrowiAF_AchievementFrameSearchPreviewContainerTemplate");
	frame:SetPoint("TOPLEFT", AchievementFrame.searchBox, "BOTTOMLEFT", -4, 3);
	self.Frame = frame;
    frame.Parent = self;

    frame.Buttons = {};
    local searchPreview = CreateFrame("Button", "SearchPreview1", frame, "KrowiAF_AchievementSearchPreviewButtonTemplate");
    searchPreview:SetPoint("TOPLEFT");
    tinsert(frame.Buttons, searchPreview);
    for i = 2, addon.Options.db.SearchBox.NumberOfSearchPreviews do
        searchPreview = CreateFrame("Button", "SearchPreview" .. i, frame, "KrowiAF_AchievementSearchPreviewButtonTemplate");
        searchPreview:SetPoint("TOPLEFT", frame.Buttons[i - 1], "BOTTOMLEFT");
        tinsert(frame.Buttons, searchPreview);
    end
    frame.ShowAllSearchResults:SetPoint("LEFT", frame.Buttons[1]);
    frame.ShowAllSearchResults:SetPoint("RIGHT", frame.Buttons[1]);
    frame.ShowAllSearchResults:SetPoint("TOP", frame.Buttons[#frame.Buttons], "BOTTOM");

    -- frame:SetScript("OnShow", self.OnShow);
    -- frame:SetScript("OnEnterPressed", self.OnEnterPressed);
    -- frame:SetScript("OnTextChanged", self.OnTextChanged);
    -- frame:SetScript("OnEditFocusLost", self.OnEditFocusLost);
    -- frame:SetScript("OnEditFocusGained", self.OnEditFocusGained);
    -- frame:SetScript("OnKeyDown", self.OnKeyDown);

	-- tinsert(ACHIEVEMENTFRAME_SUBFRAMES, frame:GetName());
    frame:Hide();

	return self;
end