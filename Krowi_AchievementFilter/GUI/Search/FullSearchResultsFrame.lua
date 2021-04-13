-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.FullSearchResultsFrame = {};
local fullSearchResultsFrame = gui.FullSearchResultsFrame;

local numFrames = 0; -- Local ID for naming, starts at 0 and will increment if a new frame is added

-- [[ Constructors ]] --
fullSearchResultsFrame.__index = fullSearchResultsFrame; -- Used to support OOP like code
function fullSearchResultsFrame:New(achievementsFrame)
    diagnostics.Trace("fullSearchResults:New");

	-- Increment ID
	numFrames = numFrames + 1;

	local frame = CreateFrame("Frame", "KrowiAF_AchievementFrameFullSearchResults" .. numFrames, AchievementFrame, "KrowiAF_FullSearchResults_Template");
	core.InjectMetatable(frame, fullSearchResultsFrame);

	-- Set properties
	frame.ID = numFrames;

    frame:Hide();

	frame.Container.ScrollBar.Show = function()
		self.Show_Hide(frame, frame.Container.ScrollBar, getmetatable(frame.Container.ScrollBar).__index.Show, 575, -24);
	end;
	frame.Container.ScrollBar.Hide = function()
		self.Show_Hide(frame, frame.Container.ScrollBar, getmetatable(frame.Container.ScrollBar).__index.Hide, 597, 0);
	end;

    frame.Container.update = function()
		frame:Update();
    end

    HybridScrollFrame_CreateButtons(frame.Container, "KrowiAF_FullSearchResultButton_Template", 0, 0);
	gui.FullSearchResult.PostLoadButtons(frame, achievementsFrame);

	return frame;
end

function fullSearchResultsFrame.Show_Hide(frame, scrollBar, func, categoriesWidth, achievementsOffsetX)
	diagnostics.Trace("fullSearchResultsFrame.Show_Hide");

	frame.Container:SetPoint("BOTTOMRIGHT", frame.bottomRightCorner, achievementsOffsetX, 8);
	frame.Container:GetScrollChild():SetWidth(categoriesWidth);
	local lastVisible = 0;
	local buttons = frame.Container.buttons;
	for _, button in next, buttons do
		button:SetWidth(categoriesWidth);
		if button:IsShown() then
			lastVisible = button;
		end
	end
	func(scrollBar);
	local offset = 0;
	if not scrollBar:IsShown() then
		offset = max(0, lastVisible:GetBottom() - frame:GetBottom() - 12);
	end
	frame:SetPoint("TOP", 0, -112 - offset);
end

local savedQuery, savedResults;
function fullSearchResultsFrame:Update(query, results)
	diagnostics.Trace("fullSearchResults:Update");

	self:SetPoint("TOP", 0, -112); -- Need to reset the frame before we can adjust again

	savedQuery = query or savedQuery;
	savedResults = results or savedResults;

    self.NumResults = #savedResults;
	local scrollFrame = self.Container;
	local offset = HybridScrollFrame_GetOffset(scrollFrame);
	local buttons = scrollFrame.buttons;
	for i, button in next, buttons do
		local index = offset + i;
		if index <= self.NumResults then
			local achievementID = savedResults[index].ID;
			local _, name, _, completed, _, _, _, _, _, icon, _, _, _, _ = GetAchievementInfo(achievementID);
			button.name:SetText(name);
			button.icon:SetTexture(icon);
			button.Achievement = savedResults[index];
			if completed then
				button.resultType:SetText(ACHIEVEMENTFRAME_FILTER_COMPLETED);
			else
				button.resultType:SetText(ACHIEVEMENTFRAME_FILTER_INCOMPLETE);
			end
			local category = savedResults[index].Category;
			local categoriesTree = category:GetTree();
			local path = categoriesTree[1].Name;
			for j = 2, #categoriesTree do
				path = path .. " > " .. categoriesTree[j].Name;
			end
			button.path:SetText(path);
			button:Show();
		else
			button:Hide();
		end
	end
	local totalHeight = self.NumResults * 49;
	HybridScrollFrame_Update(scrollFrame, totalHeight, 270);
	self.titleText:SetText(string.format(ENCOUNTER_JOURNAL_SEARCH_RESULTS, savedQuery, self.NumResults));
end