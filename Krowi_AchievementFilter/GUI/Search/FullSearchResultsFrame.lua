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

	local frame = CreateFrame("Frame", "KrowiAF_AchievementFrameFullSearchResults" .. numFrames, AchievementFrame, "KrowiAF_FullSearchResults_Template");
	addon.InjectMetatable(frame, fullSearchResultsFrame);

	-- Set properties
	frame.ID = numFrames;

    frame:Hide();

	frame.Container.ScrollBar.Show = function()
		self.Show_Hide(frame, frame.Container.ScrollBar, getmetatable(frame.Container.ScrollBar).__index.Show, 575, 22, 30);
	end;
	frame.Container.ScrollBar.Hide = function()
		self.Show_Hide(frame, frame.Container.ScrollBar, getmetatable(frame.Container.ScrollBar).__index.Hide, 597, 0, 30);
	end;

    frame.Container.update = function()
		frame:Update();
    end

    HybridScrollFrame_CreateButtons(frame.Container, "KrowiAF_FullSearchResultButton_Template", 0, 0);
	gui.FullSearchResult.PostLoadButtons(frame, achievementsFrame);

	return frame;
end

function fullSearchResultsFrame.Show_Hide(frame, scrollBar, func, categoriesWidth, achievementsOffsetX, watermarkWidthOffset)
	diagnostics.Trace("fullSearchResultsFrame.Show_Hide");

	-- local db = addon.Options.db;
	-- categoriesWidth = categoriesWidth + db.CategoriesFrameWidthOffset;
	-- watermarkWidthOffset = watermarkWidthOffset + db.CategoriesFrameWidthOffset;

	-- frame:SetWidth(categoriesWidth);
	frame.Container:GetScrollChild():SetWidth(categoriesWidth);
	-- frame.AchievementsFrame:SetPoint("TOPLEFT", frame, "TOPRIGHT", achievementsOffsetX, 0);
	-- AchievementFrameWaterMark:SetWidth(categoriesWidth - watermarkWidthOffset);
	-- AchievementFrameWaterMark:SetTexCoord(0, (categoriesWidth - watermarkWidthOffset)/256, 0, 1);
	-- AchievementFrameCategoriesBG:SetWidth(categoriesWidth - 2); -- Offset of 2 needed to compensate with Blizzard tabs
	for _, button in next, frame.Container.buttons do
		button:SetWidth(categoriesWidth);
	end
	func(scrollBar);
end

local savedQuery, savedResults;
function fullSearchResultsFrame:Update(query, results)
	diagnostics.Trace("fullSearchResults:Update");

	savedQuery = query or savedQuery;
	savedResults = results or savedResults;

    local numResults = #savedResults;
	local scrollFrame = self.Container;
	local offset = HybridScrollFrame_GetOffset(scrollFrame);
	local buttons = scrollFrame.buttons;
	for i, button in next, buttons do
		local index = offset + i;
		if index <= numResults then
			local achievementID = savedResults[index].ID;
			local _, name, _, completed, _, _, _, _, _, icon, _, _, _, _ = GetAchievementInfo(achievementID);
			button.name:SetText(name);
			button.icon:SetTexture(icon);
			-- button.AchievementID = achievementID;
			button.Achievement = savedResults[index];
			if completed then
				button.resultType:SetText(ACHIEVEMENTFRAME_FILTER_COMPLETED);
			else
				button.resultType:SetText(ACHIEVEMENTFRAME_FILTER_INCOMPLETE);
			end
			-- local achievement = addon.GetAchievement(achievementID);
			local category = savedResults[index]:GetCategory();
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
	local totalHeight = numResults * 49;
	HybridScrollFrame_Update(scrollFrame, totalHeight, 270);
	self.titleText:SetText(string.format(ENCOUNTER_JOURNAL_SEARCH_RESULTS, savedQuery, numResults));
end