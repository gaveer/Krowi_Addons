-- [[ Namespaces ]] --
local _, addon = ...;
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
	addon.InjectMetatable(frame, categoriesFrame);

	-- Set properties
	frame.ID = numFrames;
	frame.Categories = categories;
	frame.SelectedCategory = frame.Categories[1];
	frame.AchievementsFrame = achievementsFrame;
	frame.AchievementsFrame.CategoriesFrame = frame; -- Needed for API

	-- Set parents
	frame.Container.ParentFrame = frame;
	frame.Container.ScrollBar.ParentContainer = frame.Container;

	tinsert(ACHIEVEMENTFRAME_SUBFRAMES, frame:GetName());
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

function KrowiAF_CategoriesFrame_OnShow(self) -- Used in Templates - KrowiAF_CategoriesFrame_Template
	diagnostics.Trace("KrowiAF_CategoriesFrame_OnShow");

	-- First handle the visibility of certain frames
	AchievementFrameCategories:Hide(); -- Issue #11: Fix
	AchievementFrameFilterDropDown:Hide();
	AchievementFrameHeaderLeftDDLInset:Hide();
	AchievementFrame.searchBox:Hide();

	AchievementFrameCategoriesBG:SetTexCoord(0, 0.5, 0, 1); -- Set this global texture for player achievements

	self:Update();
end

function KrowiAF_CategoriesFrame_OnHide() -- Used in Templates - KrowiAF_CategoriesFrame_Template
	diagnostics.Trace("KrowiAF_CategoriesFrame_OnHide");

	-- First handle the visibility of certain frames
	AchievementFrameCategories:Show(); -- Issue #11: Fix
	AchievementFrameCategoriesBG:SetWidth(195); -- Set back to default value
	if AchievementFrameAchievements:IsShown() then
		AchievementFrameFilterDropDown:Show();
		AchievementFrameHeaderLeftDDLInset:Show();
	else
		AchievementFrameFilterDropDown:Hide();
		AchievementFrameHeaderLeftDDLInset:Hide();
	end
	AchievementFrame.searchBox:Show();
end

function categoriesFrame.Show_Hide(frame, scrollBar, func, categoriesWidth, achievementsOffsetX, watermarkWidthOffset)
	diagnostics.Trace("categoriesFrame.Show_Hide");

	local db = addon.Options.db;
	categoriesWidth = categoriesWidth + db.CategoriesFrameWidthOffset;
	watermarkWidthOffset = watermarkWidthOffset + db.CategoriesFrameWidthOffset;

	frame:SetWidth(categoriesWidth);
	frame.Container:GetScrollChild():SetWidth(categoriesWidth);
	frame.AchievementsFrame:SetPoint("TOPLEFT", frame, "TOPRIGHT", achievementsOffsetX, 0);
	AchievementFrameWaterMark:SetWidth(categoriesWidth - watermarkWidthOffset);
	AchievementFrameWaterMark:SetTexCoord(0, (categoriesWidth - watermarkWidthOffset)/256, 0, 1);
	AchievementFrameCategoriesBG:SetWidth(categoriesWidth - 2); -- Offset of 2 needed to compensate with Blizzard tabs
	for _, button in next, frame.Container.buttons do
		frame.DisplayButton(button, button.Category, frame:GetWidth());
	end
	func(scrollBar);
end

local function GetAchievementNumbers(category)
	-- diagnostics.Trace("GetAchievementNumbers"); -- Generates a lot of messages

	local numOfAch, numOfCompAch, numOfIncompAch = 0, 0, 0;

	if category.Achievements ~= nil then
		for _, achievement in next, category.Achievements do
			numOfAch = numOfAch + 1;
			local _, _, _, completed = GetAchievementInfo(achievement.ID);
			if completed then
				numOfCompAch = numOfCompAch + 1;
			else
				numOfIncompAch = numOfIncompAch + 1;
			end
		end
	end

	if category.Children ~= nil then
		for _, child in next, category.Children do
			local childNumOfAch, childNumOfCompAch, childNumOfIncompAch = GetAchievementNumbers(child);
			numOfAch = numOfAch + childNumOfAch;
			numOfCompAch = numOfCompAch + childNumOfCompAch;
			numOfIncompAch = numOfIncompAch + childNumOfIncompAch;
		end
	end

	return numOfAch, numOfCompAch, numOfIncompAch;
end

function categoriesFrame:Update()
	diagnostics.Trace("categoriesFrame:Update");

	local scrollFrame = self.Container;
	local offset = HybridScrollFrame_GetOffset(scrollFrame);
	local buttons = scrollFrame.buttons;

	local displayCategories = {};
	for _, category in next, self.Categories do
		-- if not category.Hidden then -- If already visible, keep visible
		if category.NotHidden then -- If already visible, keep visible
			tinsert(displayCategories, category);
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
			self.DisplayButton(buttons[i], category, self:GetWidth());
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

function categoriesFrame.DisplayButton(button, category, baseWidth)
	-- local name = "";
	-- if category then
	-- 	name = category.Name;
	-- end
	-- diagnostics.Trace("categoriesFrame.DisplayButton for " .. name); -- Generates a lot of messages

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
	if category.Children ~= nil and #category.Children ~= 0 then
		if category.NotCollapsed then
			button.label:SetText("- " .. category.Name);
		else
			button.label:SetText("+ " .. category.Name);
		end
	end
	button.Category = category;

	-- For the tooltip
	local numOfAch, numOfCompAch = GetAchievementNumbers(category);
	button.name = category.Name;
	button.text = nil;
	button.numAchievements = numOfAch;
	button.numCompleted = numOfCompAch;
	button.numCompletedText = numOfCompAch.."/"..numOfAch;
	button.showTooltipFunc = AchievementFrameCategory_StatusBarTooltip;
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
		for i, category in next, self.Categories do
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
		end
		button.Category.NotCollapsed = true;
	end

	local buttons = self.Container.buttons;
	for _, button in next, buttons do
		if button.Category then
			button.Category.IsSelected = nil; -- Issue #12: Fix
		end
	end

	button.Category.IsSelected = true; -- Issue #12: Fix

	if button.Category == self.SelectedCategory then
		-- If this category was selected already, bail after changing collapsed states
		return
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

	local shown = false;
	local previousScrollValue;

	local container = self.Container;
	local child = container.ScrollChild;
	local scrollBar = container.ScrollBar;

	while not shown do
		for _, button in next, container.buttons do
			if button.Category == category and math.ceil(button:GetBottom()) >= math.ceil(gui.GetSafeScrollChildBottom(child)) then
				button:Click(nil, nil, quick);
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

	local categoriesTree = category:GetTree();

	for i, cat in next, categoriesTree do
		if not cat.IsSelected or (not cat.NotCollapsed and collapsed) then -- Issue #23: Fix
			Select(self, cat, collapsed, i ~= #categoriesTree); -- Issue #23: Broken
		end
	end
end