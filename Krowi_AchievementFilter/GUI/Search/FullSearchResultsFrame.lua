-- [[ Namespaces ]] --
local _, addon = ...;
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

	local frame = CreateFrame("Frame", "KrowiAF_AchievementFrameFullSearchResults" .. numFrames, AchievementFrame, "KrowiAF_AchievementFrameFullSearchResultsTemplate");
	addon.InjectMetatable(frame, fullSearchResultsFrame);

	-- Set properties
	frame.ID = numFrames;

    frame:Hide();

    frame.Container.update = function()
		frame:Update();
    end

    HybridScrollFrame_CreateButtons(frame.Container, "KrowiAF_AchievementFullSearchResultTemplate", 0, 0);
    -- Doing post Load things
	for _, button in next, frame.Container.buttons do
		button:SetScript("OnClick", function(self)
			gui.FullSearchResult.OnClick(self, frame, achievementsFrame);
		end);
	end

	return frame;
end

function fullSearchResultsFrame:Update(query)
	diagnostics.Trace("fullSearchResults:Update");

    local numResults = GetNumFilteredAchievementsTest();
	local scrollFrame = self.Container;
	local offset = HybridScrollFrame_GetOffset(scrollFrame);
	local results = scrollFrame.buttons;
	for i, result in next, results do
		local index = offset + i;
		if index <= numResults then
			local achievementID = GetFilteredAchievementIDTest(index);
			local _, name, _, completed, _, _, _, _, _, icon, _, _, _, _ = GetAchievementInfo(achievementID);
			result.name:SetText(name);
			result.icon:SetTexture(icon);
			result.AchievementID = achievementID;
			if completed then
				result.resultType:SetText(ACHIEVEMENTFRAME_FILTER_COMPLETED);
			else
				result.resultType:SetText(ACHIEVEMENTFRAME_FILTER_INCOMPLETE);
			end
			local achievement = addon.GetAchievement(achievementID);
			local category = achievement:GetCategory();
			local categoriesTree = category:GetTree();
			local path = categoriesTree[1].Name;
			for j = 2, #categoriesTree do
				path = path .. " > " .. categoriesTree[j].Name;
			end
			result.path:SetText(path);
			result:Show();
		else
			result:Hide();
		end
	end
	local totalHeight = numResults * 49;
	HybridScrollFrame_Update(scrollFrame, totalHeight, 270);
	if query then
		self.titleText:SetText(string.format(ENCOUNTER_JOURNAL_SEARCH_RESULTS, query, numResults));
	end
end