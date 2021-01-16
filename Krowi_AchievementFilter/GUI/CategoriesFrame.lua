local _, addon = ...; -- Global addon namespace
local gui = addon.GUI; -- Local GUI namespace
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace

gui.CategoriesFrame = {}; -- Global categories frame class
local categoriesFrame = gui.CategoriesFrame; -- Local categories frame class
categoriesFrame.ID = 0; -- Local ID for naming, starts at 0 and will increment if a new frame is added

categoriesFrame.__index = categoriesFrame; -- Used to support OOP like code

function categoriesFrame:New(categories, achievementsFrame)
    diagnostics.Trace("categoriesFrame:New");

	local self = {};
	setmetatable(self, categoriesFrame);

	categoriesFrame.ID = categoriesFrame.ID + 1;
	self.ID = categoriesFrame.ID;

	self.Categories = categories;
	self.SelectedCategory = self.Categories[1];
	self.AchievementsFrame = achievementsFrame;
	self.AchievementsFrame.Parent:SetSelectedCategory(self.SelectedCategory);

	local frame = CreateFrame("Frame", "KrowiAF_AchievementFrameCategories" .. self.ID, AchievementFrame, "AchivementGoldBorderBackdrop");
	frame:SetPoint("TOPLEFT", AchievementFrameCategories);
	frame:SetPoint("BOTTOM", AchievementFrameCategories);
	self.Frame = frame;
	frame.Parent = self;

	local container = CreateFrame("ScrollFrame", "$parentContainer", frame, "HybridScrollFrameTemplate");
	container:SetPoint("TOPLEFT", 0, -5);
	container:SetPoint("BOTTOMRIGHT", 0, 5);
	frame.Container = container;
	container.ParentFrame = frame;

	local scrollBar = CreateFrame("Slider", "$parentScrollBar", container, "HybridScrollBarTemplate");
	scrollBar:SetPoint("TOPLEFT", container, "TOPRIGHT", 1, -14);
	scrollBar:SetPoint("BOTTOMLEFT", container, "BOTTOMRIGHT", 1, 12);
	container.ScrollBar = scrollBar;
	scrollBar.ParentContainer = container;

	frame:SetScript("OnShow", self.OnShow);
	frame:SetScript("OnHide", self.OnHide);

	tinsert(ACHIEVEMENTFRAME_SUBFRAMES, frame:GetName());
	frame:Hide();

	scrollBar.Show = function()
		self.Show_Hide(frame, scrollBar, getmetatable(scrollBar).__index.Show, 175, 22, 30);
	end;
	scrollBar.Hide = function()
		self.Show_Hide(frame, scrollBar, getmetatable(scrollBar).__index.Hide, 197, 0, 30);
	end;

	scrollBar.trackBG:Show();
	container.update = function(container)
		diagnostics.Trace("container.update");
		container.ParentFrame.Parent:Update(); -- Issue #12: Broken
	end

	HybridScrollFrame_CreateButtons(container, "KrowiAF_AchievementCategoryTemplate", -4, 0, "TOPRIGHT", "TOPRIGHT", 0, 0, "TOPRIGHT", "BOTTOMRIGHT");
	-- Doing post Load things
	for _, button in next, container.buttons do
		button.ParentContainer = container;
	end

	-- self:Update();

	return self;
end

-- local test;

function categoriesFrame:OnShow()
	diagnostics.Trace("categoriesFrame.OnShow");

	-- First handle the visibility of certain frames
	AchievementFrameCategories:Hide(); -- Issue #11: Fix
	AchievementFrameFilterDropDown:Hide();
	AchievementFrameHeaderLeftDDLInset:Hide();
	AchievementFrame.searchBox:Hide();
	-- AchievementFrameHeaderRightDDLInset:Hide();

	-- test = AchievementFrame_ShowSearchPreviewResults;
	-- AchievementFrame_ShowSearchPreviewResults = AchievementFrame_ShowSearchPreviewResults_Test;

	AchievementFrameCategoriesBG:SetTexCoord(0, 0.5, 0, 1); -- Set this global texture for player achievements

	self.Parent:Update();
end

function categoriesFrame:OnHide()
	diagnostics.Trace("categoriesFrame:OnHide");

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
	-- AchievementFrameHeaderRightDDLInset:Show();
	
	-- AchievementFrame_ShowSearchPreviewResults = test;
end

function categoriesFrame.Show_Hide(frame, scrollBar, func, categoriesWidth, achievementsOffsetX, watermarkWidthOffset)
	diagnostics.Trace("categoriesFrame.Show_Hide");

	local db = addon.Options.db;
	categoriesWidth = categoriesWidth + db.CategoriesFrameWidthOffset;
	watermarkWidthOffset = watermarkWidthOffset + db.CategoriesFrameWidthOffset;

	frame:SetWidth(categoriesWidth);
	frame.Container:GetScrollChild():SetWidth(categoriesWidth);
	frame.Parent.AchievementsFrame:SetPoint("TOPLEFT", frame, "TOPRIGHT", achievementsOffsetX, 0);
	AchievementFrameWaterMark:SetWidth(categoriesWidth - watermarkWidthOffset);
	AchievementFrameWaterMark:SetTexCoord(0, (categoriesWidth - watermarkWidthOffset)/256, 0, 1);
	AchievementFrameCategoriesBG:SetWidth(categoriesWidth - 2); -- Offset of 2 needed to compensate with Blizzard tabs
	for _, button in next, frame.Container.buttons do
		frame.Parent.DisplayButton(button, button.Category);
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

	local scrollFrame = self.Frame.Container;
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
			self.DisplayButton(buttons[i], category);
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

function categoriesFrame.DisplayButton(button, category)
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

	button:Show();
	if category.Parent then -- Not top level category has parent
		button:SetWidth(button.ParentContainer.ParentFrame:GetWidth() - 15 - (category.Level - 1) * 5);
		button.label:SetFontObject("GameFontHighlight");
		button.background:SetVertexColor(0.6, 0.6, 0.6);
	else -- Top level category has no parent
		button:SetWidth(button.ParentContainer.ParentFrame:GetWidth() - 10);
		button.label:SetFontObject("GameFontNormal");
		button.background:SetVertexColor(1, 1, 1);
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

function categoriesFrame:SelectButton(button)
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

	local buttons = self.Frame.Container.buttons;
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

	AchievementFrame_ShowSubFrame(self.Frame, self.AchievementsFrame);
	self.SelectedCategory = button.Category;
	self.AchievementsFrame.Parent:SetSelectedCategory(self.SelectedCategory);
	self.AchievementsFrame.Parent:ClearSelection();
	self.AchievementsFrame.Container.ScrollBar:SetValue(0);
	self.AchievementsFrame.Parent:Update();
end