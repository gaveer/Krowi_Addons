-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.CategoriesFrame = {};
local categoriesFrame = gui.CategoriesFrame;

local numFrames = 0; -- Local ID for naming, starts at 0 and will increment if a new frame is added

-- [[ Constructors ]] --
categoriesFrame.__index = categoriesFrame; -- Used to support OOP like code
function categoriesFrame:New(categories, achievementsFrame)
    diagnostics.Trace("categoriesFrame:New");

	-- Increment ID
	numFrames = numFrames + 1;

	-- Create frame
	local frame = CreateFrame("Frame", "KrowiAF_AchievementFrameCategories" .. numFrames, AchievementFrame, "KrowiAF_CategoriesFrame_Template");
	core.InjectMetatable(frame, categoriesFrame);

	-- Set properties
	frame.ID = numFrames;
	frame.Categories = categories;
	frame.SelectedCategory = frame.Categories[1];
	frame.AchievementsFrame = achievementsFrame;
	frame.AchievementsFrame.CategoriesFrame = frame; -- Needed for API

	-- Set parents
	frame.Container.ParentFrame = frame;
	frame.Container.ScrollBar.ParentContainer = frame.Container;

	frame:RegisterEvent("ADDON_LOADED");

	-- We need to insert the categories frame infront of the achievements frame
	for i, frameName in next, ACHIEVEMENTFRAME_SUBFRAMES do
		if frameName == frame.AchievementsFrame:GetName() then
			tinsert(ACHIEVEMENTFRAME_SUBFRAMES, i, frame:GetName());
			break;
		end
	end
	frame:Hide();

	frame.Container.ScrollBar.Show = function()
		self.Show_Hide(frame, frame.Container.ScrollBar, getmetatable(frame.Container.ScrollBar).__index.Show, 175, 22, 30);
	end;
	frame.Container.ScrollBar.Hide = function()
		self.Show_Hide(frame, frame.Container.ScrollBar, getmetatable(frame.Container.ScrollBar).__index.Hide, 197, 0, 30);
	end;

	frame.Container.ScrollBar.trackBG:Show();
	frame.Container.update = function(container)
		diagnostics.Trace("container.update");
		container.ParentFrame:Update(); -- Issue #12: Broken
	end

	HybridScrollFrame_CreateButtons(frame.Container, "KrowiAF_AchievementCategoryButton_Template", -4, 0, "TOPRIGHT", "TOPRIGHT", 0, 0, "TOPRIGHT", "BOTTOMRIGHT");
	gui.CategoryButton.PostLoadButtons(frame);

	return frame;
end

function KrowiAF_CategoriesFrame_OnEvent(self, event, ...) -- Used in Templates - KrowiAF_AchievementsFrame_Template
	local addonName = ...;
	diagnostics.Trace("KrowiAF_CategoriesFrame_OnEvent - " .. event .. " - " .. addonName);

	if event == "ADDON_LOADED" then
		if addonName and addonName == "Overachiever_Tabs" then
			Overachiever_LeftFrame:HookScript("OnHide", function()
				if self:IsShown() then
					AchievementFrameHeaderLeftDDLInset:Show();
				end
			end);
            diagnostics.Debug("Overachiever_Tabs compatibility enabled");
		end
	end
end

function KrowiAF_CategoriesFrame_OnShow(self) -- Used in Templates - KrowiAF_CategoriesFrame_Template
	diagnostics.Trace("KrowiAF_CategoriesFrame_OnShow");

	-- First handle the visibility of certain frames
	AchievementFrameCategories:Hide(); -- Issue #11: Fix
	AchievementFrameFilterDropDown:Hide();
	AchievementFrame.searchBox:Hide();
	AchievementFrameHeaderLeftDDLInset:Show();

	AchievementFrameCategoriesBG:SetTexCoord(0, 0.5, 0, 1); -- Set this global texture for player achievements

	self:Update();
end

function KrowiAF_CategoriesFrame_OnHide() -- Used in Templates - KrowiAF_CategoriesFrame_Template
	diagnostics.Trace("KrowiAF_CategoriesFrame_OnHide");

	-- First handle the visibility of certain frames
	AchievementFrameCategories:Show(); -- Issue #11: Fix
	AchievementFrameCategoriesBG:SetWidth(195); -- Set back to default value
	if not AchievementFrameAchievements:IsShown() then
		AchievementFrameFilterDropDown:Hide();
		AchievementFrameHeaderLeftDDLInset:Hide();
	end
	AchievementFrame.searchBox:Show();
end

function categoriesFrame.Show_Hide(frame, scrollBar, func, categoriesWidth, achievementsOffsetX, watermarkWidthOffset)
	diagnostics.Trace("categoriesFrame.Show_Hide");

	local db = addon.Options.db;
	categoriesWidth = categoriesWidth + db.Window.CategoriesFrameWidthOffset;
	watermarkWidthOffset = watermarkWidthOffset + db.Window.CategoriesFrameWidthOffset;

	frame:SetWidth(categoriesWidth);
	frame.Container:GetScrollChild():SetWidth(categoriesWidth);
	frame.AchievementsFrame:SetPoint("TOPLEFT", frame, "TOPRIGHT", achievementsOffsetX, 0);
	AchievementFrameWaterMark:SetWidth(categoriesWidth - watermarkWidthOffset);
	AchievementFrameWaterMark:SetTexCoord(0, (categoriesWidth - watermarkWidthOffset)/256, 0, 1);
	AchievementFrameCategoriesBG:SetWidth(categoriesWidth - 2); -- Offset of 2 needed to compensate with Blizzard tabs
	for _, button in next, frame.Container.buttons do
		frame:DisplayButton(button, button.Category, frame:GetWidth());
	end
	func(scrollBar);
end

-- local function Validate(self, achievement, numOfAch, numOfCompAch, numOfNotObtAch) -- , numOfIncompAch
-- 	if self.FilterButton and self.FilterButton:Validate(achievement, true) > 0 then -- If set to false we lag the game
-- 		numOfAch = numOfAch + 1;
-- 		local _, _, _, completed = addon.GetAchievementInfo(achievement.ID);
-- 		if completed then
-- 			numOfCompAch = numOfCompAch + 1;
-- 		-- else
-- 		-- 	numOfIncompAch = numOfIncompAch + 1;
-- 		elseif achievement.NotObtainable then
-- 			numOfNotObtAch = numOfNotObtAch + 1;
-- 		end
-- 	end

-- 	return numOfAch, numOfCompAch, numOfNotObtAch; -- , numOfIncompAch
-- end

local function GetAchievementNumbers(self, category)
	-- diagnostics.Trace("GetAchievementNumbers"); -- Generates a lot of messages

	category:UnMergeAchievements();
	category.Merged = nil;

	-- numOfIncompAch is not used right now so we can leave this one out untill needed
	local numOfAch, numOfCompAch, numOfNotObtAch = 0, 0, 0; -- , numOfIncompAch = 0

	local showCollapseIcon = false;
	if category.Children then
		for _, child in next, category.Children do
			local childNumOfAch, childNumOfCompAch, childNumOfNotObtAch = GetAchievementNumbers(self, child); -- , childNumOfIncompAch
			numOfAch = numOfAch + childNumOfAch;
			numOfCompAch = numOfCompAch + childNumOfCompAch;
			numOfNotObtAch = numOfNotObtAch + childNumOfNotObtAch;
			-- numOfIncompAch = numOfIncompAch + childNumOfIncompAch;
			showCollapseIcon = showCollapseIcon or childNumOfAch > 0;
		end
	end

	if category.Achievements then
		for _, achievement in next, category.Achievements do
			numOfAch, numOfCompAch, numOfNotObtAch = addon.Validate(self, achievement, numOfAch, numOfCompAch, numOfNotObtAch); -- , numOfIncompAch
		end
	end

	if category.MergedAchievements then
		for _, achievement in next, category.MergedAchievements do
			numOfAch, numOfCompAch, numOfNotObtAch = addon.Validate(self, achievement, numOfAch, numOfCompAch, numOfNotObtAch); -- , numOfIncompAch
		end
	end

	if self.FilterButton.Filters.db.MergeSmallCategories then
		if category.Parent and category.CanMerge then
			if category.Achievements then
				if numOfAch < addon.Options.db.Window.MergeSmallCategoriesThreshold then
					if not category.Merged then
						for _, achievement in next, category.Achievements do
							category.Parent:MergeAchievement(achievement);
						end
						category.Merged = true;
					end
					numOfAch, numOfCompAch, numOfNotObtAch = 0, 0, 0;
				end
			end
		end
	end

	-- Caching the data in the category increases memory usage but improves performance which is more important here
	category.NumOfAch = numOfAch;
	category.NumOfCompAch = numOfCompAch;
	category.NumOfNotObtAch = numOfNotObtAch;
	-- category.NumOfIncompAch = numOfIncompAch;
	category.ShowCollapseIcon = showCollapseIcon;

	return numOfAch, numOfCompAch, numOfNotObtAch; -- , numOfIncompAch
end

function categoriesFrame:Update(getAchNums)
	diagnostics.Trace("categoriesFrame:Update");

	if addon.Options.db.Window.MergeSmallCategoriesThresholdChanged then
		addon.Options.db.Window.MergeSmallCategoriesThresholdChanged = false;
		getAchNums = true;
	end

	local scrollFrame = self.Container;
	local offset = HybridScrollFrame_GetOffset(scrollFrame);
	local buttons = scrollFrame.buttons;

	local displayCategories = {};
	for _, category in next, self.Categories do
		if category.NotHidden or category.AlwaysVisible then -- If already visible, keep visible
			if (category.NumOfAch == nil or getAchNums or category.HasFlexibleData) and category.Parent == nil then
				-- Huge increase over performance if we cache the achievement numbers and only update them when needed,
				-- only for the top level categories since it works recursive
				if GetAchievementNumbers(self, category) > 0 or category.AlwaysVisible then
					tinsert(displayCategories, category);
				end
			elseif category.NumOfAch > 0 or category.AlwaysVisible then
				tinsert(displayCategories, category);
			end
			-- diagnostics.Debug("Showing " .. category.Name);
		end
	end

	local totalHeight = #displayCategories * buttons[1]:GetHeight();
	local displayedHeight = 0;

	local category;
	for i = 1, #buttons do
		category = displayCategories[i + offset];
		displayedHeight = displayedHeight + buttons[i]:GetHeight();
		if category then
			self:DisplayButton(buttons[i], category, self:GetWidth());
			if category == self.SelectedCategory then
				buttons[i]:LockHighlight();
			else
				buttons[i]:UnlockHighlight();
			end
			buttons[i]:Show();
		else
			buttons[i].Category = nil;
			buttons[i]:Hide();
		end
	end

	HybridScrollFrame_Update(scrollFrame, totalHeight, displayedHeight);
end

-- local progressBar = LibStub("Krowi_ProgressBar-1.0");
-- local function StatusBarTooltip(self)
-- 	-- GameTooltip_SetDefaultAnchor(GameTooltip, self);
-- 	GameTooltip:SetOwner(self, "ANCHOR_NONE");
-- 	GameTooltip:SetPoint("TOPLEFT", self, "TOPRIGHT", -3, -3);
-- 	GameTooltip:SetMinimumWidth(128, true);
-- 	GameTooltip:SetText(self.name, 1, 1, 1, nil, true);
-- 	local numOfNotObtAch = 0;
-- 	if addon.Options.db.Tooltip.Categories.ShowNotObtainable then
-- 		numOfNotObtAch = self.numOfNotObtAch;
-- 	end
-- 	progressBar:ShowProgressBar(GameTooltip, 0, self.numAchievements, self.numCompleted, numOfNotObtAch, 0, 0, addon.GreenRGB, addon.RedRGB, nil, nil, self.numCompletedText);
-- 	GameTooltip:Show();
-- end

function categoriesFrame:DisplayButton(button, category, baseWidth)
	-- local name = "";
	-- if category then
	-- 	name = category.Name;
	-- end
	-- diagnostics.Trace("categoriesFrame:DisplayButton for " .. name); -- Generates a lot of messages

	if not category then
		button.Category = nil;
		button:Hide();
		return;
	end

	baseWidth = baseWidth or 197;

	button:Show();
	if category.Parent then -- Not top level category has parent
		button:SetWidth(baseWidth - 15 - (category.Level - 1) * 5);
		button.label:SetFontObject("GameFontHighlight");
		button.BackgroundLeft:SetVertexColor(0.6, 0.6, 0.6);
		button.BackgroundMid:SetVertexColor(0.6, 0.6, 0.6);
		button.BackgroundRight:SetVertexColor(0.6, 0.6, 0.6);
	else -- Top level category has no parent
		button:SetWidth(baseWidth - 10);
		button.label:SetFontObject("GameFontNormal");
		button.BackgroundLeft:SetVertexColor(1, 1, 1);
		button.BackgroundMid:SetVertexColor(1, 1, 1);
		button.BackgroundRight:SetVertexColor(1, 1, 1);
	end

	button.label:SetText(category.Name);
	if category.Children ~= nil and #category.Children ~= 0 and category.ShowCollapseIcon then
		if category.NotCollapsed then
			button.label:SetText("- " .. category.Name);
		else
			button.label:SetText("+ " .. category.Name);
		end
	end
	button.Category = category;

	-- For the tooltip
	local numOfAch, numOfCompAch, numOfNotObtAch = category.NumOfAch, category.NumOfCompAch, category.NumOfNotObtAch;
	button.name = category.Name;
	if category == addon.NextPatchCategory then
		button.text = string.format(addon.Orange, addon.L["* SPOILER WARNING *"] .. "\n\n" .. addon.L["Coming in Disclaimer"] .. "\n\n" .. addon.L["* SPOILER WARNING *"]);
		button.showTooltipFunc = AchievementFrameCategory_FeatOfStrengthTooltip;
	else
		button.text = nil;
		button.numAchievements = numOfAch;
		button.numCompleted = numOfCompAch;
		button.numOfNotObtAch = numOfNotObtAch
		local numOfNotObtAchText = "";
		if numOfNotObtAch > 0 and addon.Options.db.Tooltip.Categories.ShowNotObtainable then
			numOfNotObtAchText = " (+" .. numOfNotObtAch .. ")";
		end
		button.numCompletedText = numOfCompAch .. numOfNotObtAchText .. " / " .. numOfAch;
		button.showTooltipFunc = addon.StatusBarTooltip;
	end
end

function categoriesFrame:SelectButton(button, quick)
	diagnostics.Trace("categoriesFrame:SelectButton");

	if button.Category.IsSelected and button.Category.NotCollapsed then -- Collapse selected categories -- Issue #12: Fix
		button.Category.NotCollapsed = nil;
		for _, category in next, self.Categories do
			if category.Level > button.Category.Level then
				category.NotHidden = nil;
			end
		end
	else -- Open selected category, close other highest level categories
		for _, category in next, self.Categories do
			if category.Level == button.Category.Level and category.Parent == button.Category.Parent then -- Category on same level and same parent
				category.NotCollapsed = nil;
			end
			if category.Level > button.Category.Level then -- Category on higher level
				if category.Parent == button.Category then -- Show child of clicked button
					category.NotHidden = true;
				else
					category.NotHidden = nil; -- Hide the rest
				end
				category.NotCollapsed = nil;
			end
			category.IsSelected = nil; -- Issue #12: Fix
		end
		button.Category.NotCollapsed = true;
	end

	-- local buttons = self.Container.buttons;
	-- for _, button in next, buttons do
	-- 	if button.Category then
	-- 		button.Category.IsSelected = nil; -- Issue #12: Fix
	-- 	end
	-- end

	button.Category.IsSelected = true; -- Issue #12: Fix

	if button.Category == self.SelectedCategory and button.Category.HasFlexibleData ~= true then
		-- If this category was selected already,
		-- bail after changing collapsed states.
		return;
	end

	self.SelectedCategory = button.Category; -- Issue #21: Broken, Fix
	if not quick then -- Skip refreshing achievements if we're still busy selecting the correct category
		self.AchievementsFrame:ClearSelection();
		self.AchievementsFrame.Container.ScrollBar:SetValue(0);
		self.AchievementsFrame:Update();
	end
end

-- [[ API ]] --
local function Select(self, category, collapsed, quick)
	diagnostics.Trace("Select");
	diagnostics.Debug(category.Name);
	diagnostics.Debug(quick);

	local shown = false;
	local previousScrollValue;

	local container = self.Container;
	local child = container.ScrollChild;
	local scrollBar = container.ScrollBar;

	while not shown do
		for _, button in next, container.buttons do
			if button.Category == category and math.ceil(button:GetBottom()) >= math.ceil(gui.GetSafeScrollChildBottom(child)) then
				button:Click(nil, nil, quick);
				diagnostics.Debug(button.name);
				shown = button;
				break;
			end
		end

		local _, maxVal = scrollBar:GetMinMaxValues();
		if shown then
			local newHeight = scrollBar:GetValue() + container:GetBottom() - shown:GetBottom();
			newHeight = math.ceil(newHeight / scrollBar:GetValueStep()) * scrollBar:GetValueStep();
			newHeight = min(newHeight, maxVal);
			scrollBar:SetValue(newHeight);

			if collapsed then
				shown:Click(nil, nil, quick);
			end
		else
			local scrollValue = scrollBar:GetValue();
			if scrollValue == maxVal or scrollValue == previousScrollValue then
				return;
			else
				previousScrollValue = scrollValue;
				HybridScrollFrame_OnMouseWheel(container, -1);
			end
		end
	end
end

function categoriesFrame:SelectCategory(category, collapsed)
	diagnostics.Trace("categoriesFrame:SelectCategory");

	if self.FilterButton.Filters.db.MergeSmallCategories then
		while category.Merged do
			category = category.Parent;
		end
		diagnostics.Debug(category.Name);
	end

	local categoriesTree = category:GetTree();

	for i, cat in next, categoriesTree do
		if not cat.IsSelected or (cat.NotCollapsed == collapsed) then -- Issue #23: Fix -- Issue #25 Broken, Fix
			Select(self, cat, collapsed, i ~= #categoriesTree); -- Issue #23: Broken
		end
	end
end