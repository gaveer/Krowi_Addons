-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.SearchPreviewFrame = {};
local searchPreviewFrame = gui.SearchPreviewFrame;

local numFrames = 0; -- Local ID for naming, starts at 0 and will increment if a new frame is added

-- [[ Constructors ]] --
searchPreviewFrame.__index = searchPreviewFrame; -- Used to support OOP like code
function searchPreviewFrame:New()
    diagnostics.Trace("searchPreviewContainer:New");

	-- Increment ID
    numFrames = numFrames + 1;

	-- Create frame
	local frame = CreateFrame("Frame", "KrowiAF_AchievementFrameSearchPreviewContainer" .. numFrames, AchievementFrame, "KrowiAF_AchievementFrameSearchPreviewContainerTemplate");
	frame:SetPoint("TOPLEFT", AchievementFrame.searchBox, "BOTTOMLEFT", -4, 3);
	addon.InjectMetatable(frame, searchPreviewFrame);

	-- Set properties
    frame.ID = numFrames;

    -- Populate the frame with buttons - doing this in code allows us to change the number of buttons later
    frame.Buttons = {};
    local button = CreateFrame("Button", "KrowiAF_AchievementFrameSearchPreview1", frame, "KrowiAF_AchievementSearchPreviewTemplate");
    button:SetPoint("TOPLEFT");
	button.ParentContainer = frame;
    tinsert(frame.Buttons, button);
    for i = 2, addon.Options.db.SearchBox.NumberOfSearchPreviews do
        button = CreateFrame("Button", "KrowiAF_AchievementFrameSearchPreview" .. i, frame, "KrowiAF_AchievementSearchPreviewTemplate");
        button:SetPoint("TOPLEFT", frame.Buttons[i - 1], "BOTTOMLEFT");
        button.ParentContainer = frame;
        tinsert(frame.Buttons, button);
    end
    frame.ShowAllSearchResults.ParentContainer = frame;
    frame.ShowAllSearchResults:SetPoint("LEFT", frame.Buttons[1]);
    frame.ShowAllSearchResults:SetPoint("RIGHT", frame.Buttons[1]);
    frame.ShowAllSearchResults:SetPoint("TOP", frame.Buttons[#frame.Buttons], "BOTTOM");

    frame:Hide();

	return frame;
end

function searchPreviewFrame:SelectNext()
    diagnostics.Trace("searchPreviewContainer:SelectNext");

    local buttons = self.Buttons;
    for i = 1, #buttons, 1 do
        local button = buttons[i - 1];
        if button == nil then
            button = self.ShowAllSearchResults;
        end
        if button.IsSelected then
            KrowiAF_AchievementFrame_SetSearchPreviewSelection(buttons[i]);
            return;
        end
    end
    KrowiAF_AchievementFrame_SetSearchPreviewSelection(self.ShowAllSearchResults);
end

function searchPreviewFrame:SelectPrevious()
    diagnostics.Trace("searchPreviewContainer:SelectPrevious");

    local buttons = self.Buttons;
    for i = #buttons, 1, -1 do
        local button = buttons[i + 1];
        if button == nil then
            button = self.ShowAllSearchResults;
        end
        if button.IsSelected then
            KrowiAF_AchievementFrame_SetSearchPreviewSelection(buttons[i]);
            return;
        end
    end
    KrowiAF_AchievementFrame_SetSearchPreviewSelection(self.ShowAllSearchResults);
end