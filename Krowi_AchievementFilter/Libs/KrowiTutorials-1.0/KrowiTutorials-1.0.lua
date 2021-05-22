--[[
	Krowi's Tutorials License
        Copyright ©2020-2021 The contents of this library, excluding third-party resources, are
        copyrighted to their authors with all rights reserved.

        This library is free to use and the authors hereby grants you the following rights:

        1. 	You may make modifications to this library for private use only, you
            may not publicize any portion of this library. The only exception being you may
            upload to the github website.

        2. 	Do not modify the name of this library, including the library folders.

        3. 	This copyright notice shall be included in all copies or substantial
            portions of the Software.

        All rights not explicitly addressed in this license are reserved by
        the copyright holders.
]]

--[[

Required Tutorial Arguments
---------------------------
	SavedVariables ..... The table that is used in the .toc file for the SavedVariables
	Key ................ The variable name that will be used to save the last viewed page index

Optional Tutorial Arguments
---------------------------
	Icon ............... Path to image (tga or blp). Default is '?'-mark.
	Font ............... Font name to be used. Default is default game font (GameFontHighlight).

Tutorial Functions
------------------
	New ................ Creates a new tutorial frame.
	SetFrameTitle ...... Sets the title at the top of the tutorial window. Will be overwritten if a page has a 'Title' defined.
	SetFrameWidth ...... Sets the internal frame width (without borders). Default is 512 + 20. Allows for 512 wide images to have some space between image and borders.
					 	 Will be overwritten if a page has a 'Width' defined.
	SetPages ........... Sets the pages the tutorial contains.
	AddPage ............ Adds a single page to the tutorial.
	SetCloseButtonHook . Hooks a function to the closing of the tutorial.
	Reset .............. Resets the tutorial so when it opens it will be on the first page.
	ShowTutorial ....... Shows the tutorial on the set page.

Frame Arguments
------------------
 title .......... Title relative to frame (replace General value).
 width .......... Width relative to frame (replace General value).
Note: All other arguments can be used as a general!
 image .......... [optional] Image path (tga or blp).
 imageHeight .... Default is 128. Default image size is 256x128.
 ImageX ......... Default is 0 (center). Left/Right position relative to center.
 ImageY ......... Default is 20 (top margin).
 text ........... Text string.
 textHeight ..... Default is 0 (auto height).
 TextX .......... Default is 25. Left and Right margin.
 TextY .......... Default is 20 (top margin).
 editbox ........ [optional] Edit box text string (directing value). Edit box is out of content flow.
 editboxWidth ... Default is 400.
 editboxLeft, editboxBottom
 button ......... [optional] Button text string (directing value). Button is out of content flow.
 buttonWidth .... Default is 100.
 buttonClick .... Function with button's click action.
 buttonLeft, buttonBottom
 shine .......... [optional] The frame to anchor the flashing "look at me!" glow.
 shineAll ....... [optional] Set shineTop, shineBottom, shineLeft, shineRight to the same value, can be overwritten by the invidual arguments or shineWidth and shineHeight
 shineWidth ..... [optional] Set shineLeft, shineRight to the same value, can be overwritten by the invidual arguments
 shineHeight .... [optional] Set shineTop, shineBottom to the same value, can be overwritten by the invidual arguments
 shineTop, shineBottom, shineLeft, shineRight
 point .......... Default is "CENTER".
 anchor ......... Default is "UIParent".
 relPoint ....... Default is "CENTER".
 x, y ........... Default is 0, 0.
--]]

-- Lua API
local floor = math.floor
local fmod = math.fmod
local round = function(n) return floor(n + 0.5) end

local lib = LibStub:NewLibrary('KrowiTutorials-1.0', 1)

if not lib then
	return;
end

local default = {
	-- editboxWidth = 400,
	-- buttonWidth = 100,

	Point = "CENTER",
	RelativeFrame = UIParent,
	RelativePoint = "CENTER",
	OffsetX = 0,
	OffsetY = 0,
	Width = 512 + 20,
	Title = "Tutorial",
	FixedImageOffsetTop = 26,
	ImageX = 0,
	ImageY = 20,
	ImageHeight = 0,
	FixedTextOffsetTop = 26 + 34,
	TextX = 25,
	TextY = 20,
	TextHeight = 0,
	FixedFrameHeightFromImage1 = 90,
	FixedFrameHeightFromImage2 = 26 + 30,
	FixedFrameHeightFromText1 = 18,
	FixedFrameHeightFromText2 = 0,
}


-- [[ New Code by Krowi ]] --
local NewButton, FrameOnHide, ApplyElvUISkin;

local numFrames = 0; -- Local ID for naming, starts at 0 and will increment if a new frame is added

lib.__index = lib; -- Used to support OOP like code
function lib:New(savedVariables, key, icon, font)
	-- Increment ID
	numFrames = numFrames + 1;

	-- Create frame
	local frame = CreateFrame("Frame", "KrowiTutorial" .. numFrames, UIParent, "ButtonFrameTemplate");
	setmetatable(frame, setmetatable(lib, getmetatable(frame)));

	-- Set portrait and background
	frame.portrait:SetPoint("TOPLEFT", icon and -4 or -3, icon and 6 or 5);
	frame.portrait:SetTexture(icon or "Interface\\TutorialFrame\\UI-HELP-PORTRAIT");
	frame.Inset:SetPoint("TOPLEFT", 4, -23);
	frame.Inset.Bg:SetColorTexture(0, 0, 0);

	-- Reserve a table for the images (loaded lazy only when shown), see UpdateFrame for loading
	frame.Images = {};

	-- Text
	frame.Text = frame:CreateFontString(nil, nil, "GameFontHighlight");
	if font then
		frame.Text:SetFont(font, 12);
	end
	frame.Text:SetJustifyH("LEFT");

	-- Buttons
	frame.Prev = NewButton(frame, PREVIOUS, "Prev", -1);
	frame.Next = NewButton(frame, NEXT, "Next", 1);

	-- Page Number
	frame.PageNum = frame:CreateFontString(nil, nil, "GameFontHighlightSmall");
	frame.PageNum:SetPoint("BOTTOM", 0, 10);

	-- Frame settings
	frame:SetFrameStrata("DIALOG");
	frame:SetClampedToScreen(true);
	frame:EnableMouse(true);
	frame:SetToplevel(true);
	frame:SetScript("OnHide", FrameOnHide);

	-- frame.editbox = CreateFrame("EditBox", nil, frame, "InputBoxTemplate")
	-- frame.editbox:SetHeight(20)
	-- frame.editbox:SetAutoFocus(false)
	-- frame.editbox:Hide()

	-- frame.button = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
	-- frame.button:SetSize(100, 22)
	-- frame.button:SetPoint("CENTER")
	-- frame.button:Hide()

	-- Shine
	frame.Shine = CreateFrame("Frame", nil, frame, "BackdropTemplate");
	frame.Shine:SetBackdrop({edgeFile = "Interface\\TutorialFrame\\UI-TutorialFrame-CalloutGlow", edgeSize = 16});
	for i = 1, frame.Shine:GetNumRegions() do
		select(i, frame.Shine:GetRegions()):SetBlendMode("ADD");
	end

	-- Flashing animation of the Shine
	local flash = frame.Shine:CreateAnimationGroup();
	flash:SetLooping("BOUNCE");
	frame.Flash = flash;

	local anim = flash:CreateAnimation("Alpha");
	anim:SetDuration(.75);
	anim:SetFromAlpha(.7);
	anim:SetToAlpha(0);

	-- Set frame variables
	frame.SavedVariables = savedVariables
	frame.Key = key;
	if frame.SavedVariables[frame.Key] == nil then
		frame.SavedVariables[frame.Key] = {}; -- First time creation
	end
	if frame.SavedVariables[frame.Key].PageViewed == nil then
		frame.SavedVariables[frame.Key].PageViewed = {}; -- First time creation
	end
	if ElvUI then
		frame.Point = default.Point; -- Set this here because ElvUI will otherwise put a function in this
	end

	ApplyElvUISkin(frame);

	frame:Hide();

	return frame;
end

function lib:SetFrameTitle(title)
	self.Title = title;
end

function lib:SetFrameWidth(width)
	self.Width = width;
end

function lib:SetPages(pages)
	self.Pages = pages;

	for i, _ in next, pages do
		pages[i].IsViewed = self.SavedVariables[self.Key].PageViewed[i];
	end
end

function lib:AddPage(page)
	if self.Pages == nil then
		self.Pages = {};
	end

	tinsert(self.Pages, page);
	page.IsViewed = self.SavedVariables[self.Key].PageViewed[#self.Pages];
end

local UpdateFrame;
function NewButton(frame, name, texName, direction)
	local button = CreateFrame("Button", nil, frame);
	button:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight");
	local buttonTex = "Interface\\Buttons\\UI-SpellbookIcon-%sPage-%s";
	button:SetDisabledTexture(buttonTex:format(texName, "Disabled"));
	button:SetPushedTexture(buttonTex:format(texName, "Down"));
	button:SetNormalTexture(buttonTex:format(texName, "Up"));
	button:SetPoint("BOTTOM" .. ((direction == -1) and "LEFT" or "RIGHT"), -(30 * direction), 2);
	button:SetSize(26, 26);
	button:SetScript("OnClick", function()
		UpdateFrame(frame, frame.ShownIndex + direction);
	end)

	local text = button:CreateFontString(nil, nil, "GameFontHighlightSmall");
	text:SetText(name);
	text:SetPoint("LEFT", -(13 + text:GetStringWidth() / 2) * direction, 0);

	return button;
end

function FrameOnHide(self)
	self.Flash:Stop()
	self.Shine:Hide()
end

function ApplyElvUISkin(frame)
    if ElvUI == nil then
		return;
	end

    local engine = unpack(ElvUI);
    local blizzardSkins = engine.private.skins.blizzard;
    local tutorials = blizzardSkins.enable and blizzardSkins.tutorials;

	if not tutorials then
		return;
	end

    local skins = engine:GetModule("Skins");

	frame:StripTextures();
	frame:CreateBackdrop("Transparent");

	skins:HandleCloseButton(frame.CloseButton);
	skins:HandleNextPrevButton(frame.Prev, "left");
	skins:HandleNextPrevButton(frame.Next, "right");
end

function UpdateFrame(frame, i, ignoreSavedVariables)
	local page = frame.Pages[i];

	if not page then
		return;
	end

	-- Set values
	local point = page.Point or (frame.Point or default.Point);
	local relativeFrame = page.RelativeFrame or (frame.RelativeFrame or default.RelativeFrame);
	local relativePoint = page.RelativePoint or (frame.RelativePoint or default.RelativePoint);
	local offsetX = page.OffsetX or (frame.OffsetX or default.OffsetX);
	local offsetY = page.OffsetY or (frame.OffsetY or default.OffsetY);
	local width = page.Width or (frame.Width or default.Width);
	local title = page.Title or (frame.Title or default.Title);
	local imageX = page.ImageX or (frame.ImageX or default.ImageX);
	local imageY = page.ImageY or (frame.ImageY or default.ImageY);
	local imageHeight = page.ImageHeight or (frame.ImageHeight or default.ImageHeight);
	local textX = page.TextX or (frame.TextX or default.TextX);
	local textY = page.TextY or (frame.TextY or default.TextY);
	local textHeight = page.TextHeight or (frame.TextHeight or default.TextHeight);

	-- Callbacks
	if page.OnShow then
		page:OnShow();
	end
	if page.OnHide then
		page:OnHide();
	end

	-- Frame
	frame:ClearAllPoints();
	print(frame.Width);
	frame:SetPoint(point, relativeFrame, relativePoint, offsetX, offsetY);
	frame:SetWidth(width + 16);

	-- Title
	frame.TitleText:SetPoint('TOP', 0, -5);
	frame.TitleText:SetText(title);

	-- Image
	local frameHeight = default.FixedFrameHeightFromImage1;
	for _, p in next, frame.Pages do
		if p.ImageTex then
			p.ImageTex:Hide();
		end
	end
	if page.Image then
		if page.ImageTex then
			page.ImageTex:Show();
		else
			local image = frame:CreateTexture(); -- Implicitly calls Show
			image:SetPoint('TOP', frame, imageX - 1, -(default.FixedImageOffsetTop + imageY));
			image:SetTexture(page.Image);
			page.ImageTex = image;
		end
		frameHeight = default.FixedFrameHeightFromImage2 + imageY + imageHeight;
	end

	-- Text
	local text = page.Text;
	if page.SubTitle then
		text = page.SubTitle .. "\n\n" .. text;
	end
	frame.Text:SetPoint('TOP', frame, 0, -((page.Image and default.FixedImageOffsetTop + imageY + imageHeight or default.FixedTextOffsetTop) + textY));
	frame.Text:SetWidth(width - (2 * textX));
	frame.Text:SetText(text);
	if text then
		textHeight = max(textHeight, round(frame.Text:GetHeight()));
		textHeight = textHeight - fmod(textHeight, 2);
		frameHeight = frameHeight + default.FixedFrameHeightFromText1 + textY + textHeight;
	else
		frameHeight = frameHeight + default.FixedFrameHeightFromText2;
	end

	-- EditBox
	-- if data.editbox then
	-- 	frame.editbox:ClearFocus()
	-- 	frame.editbox:SetWidth(data.editboxWidth)
	-- 	frame.editbox:SetPoint('BOTTOMLEFT', 14 + data.TextX + (data.editboxLeft or 0), 28 + 18 + (data.editboxBottom or 0))
	-- 	frame.editbox:SetText(data.editbox)
	-- 	frame.editbox:Show()
	-- else
	-- 	frame.editbox:Hide()
	-- end

	-- Button
	-- if data.button then
	-- 	frame.button:SetWidth(data.buttonWidth)
	-- 	frame.button:SetPoint('BOTTOMLEFT', 8 + data.TextX + (data.buttonLeft or 0), 28 + 18 + (data.buttonBottom or 0))
	-- 	frame.button:SetText(data.button)
	-- 	frame.button:SetScript('OnClick', data.buttonClick)
	-- 	frame.button:Show()
	-- else
	-- 	frame.button:Hide()
	-- end

	-- Shine
	if page.shine then
		frame.Shine:SetParent(page.shine)
		local shineTop, shineBottom, shineLeft, shineRight = 0, 0, 0, 0;

		page.shineAll = type(page.shineAll) == "function" and page.shineAll() or page.shineAll;
		if page.shineAll then
			shineTop = page.shineAll;
			shineBottom = -page.shineAll;
			shineLeft = -page.shineAll;
			shineRight = page.shineAll;
		end

		page.shineHeight = type(page.shineHeight) == "function" and page.shineHeight() or page.shineHeight;
		if page.shineHeight then
			shineTop = page.shineHeight;
			shineBottom = -page.shineHeight;
		end

		page.shineWidth = type(page.shineWidth) == "function" and page.shineWidth() or page.shineWidth;
		if page.shineWidth then
			shineLeft = -page.shineWidth;
			shineRight = page.shineWidth;
		end

		page.shineTop = type(page.shineTop) == "function" and page.shineTop() or page.shineTop;
		if page.shineTop then
			shineTop = page.shineTop;
		end

		page.shineBottom = type(page.shineBottom) == "function" and page.shineBottom() or page.shineBottom;
		if page.shineBottom then
			shineBottom = page.shineBottom;
		end

		page.shineLeft = type(page.shineLeft) == "function" and page.shineLeft() or page.shineLeft;
		if page.shineLeft then
			shineLeft = page.shineLeft;
		end

		page.shineRight = type(page.shineRight) == "function" and page.shineRight() or page.shineRight;
		if page.shineRight then
			shineRight = page.shineRight;
		end

		-- print(shineRight)
		-- print(shineLeft)
		-- print(shineTop)
		-- print(shineBottom)

		frame.Shine:SetPoint('BOTTOMRIGHT', shineRight, shineBottom)
		frame.Shine:SetPoint('TOPLEFT', shineLeft, shineTop)
		frame.Shine:Show()
		frame.Flash:Play()
	else
		frame.Flash:Stop()
		frame.Shine:Hide()
	end

	-- Buttons
	if i == frame.MinPage then
		frame.Prev:Disable();
	else
		frame.Prev:Enable();
	end
	frame.PageNum:SetText(("%d/%d"):format(i, frame.MaxPage))
	if i < frame.MaxPage then
		frame.Next:Enable();
	else
		frame.Next:Disable();
	end

	-- Frame
	frame:SetHeight(frameHeight);
	frame.ShownIndex = i;
	frame:Show();

	-- Save
	-- if not ignoreSavedVariables then
	-- 	frame.SavedVariables[frame.Key] = max(i, frame.SavedVariables[frame.Key]);
	-- end
	frame.SavedVariables[frame.Key].PageViewed[i] = true;
	page.IsViewed = true;
end

function lib:SetCloseButtonHook(func)
	if self then
		self:SetScript("OnHide", function(self)
			FrameOnHide(self);
			func();
		end);
	end
end

function lib:Reset()
	-- self.SavedVariables[self.Key] = 0;
	self.SavedVariables[self.Key].PageViewed = {};
	self:Hide()
end

local FindFirstNotViewed;
local locked; -- Used to prevent multiple trigers if ShowTutorial is hooked in other places
function lib:ShowTutorial(index, minPage, maxPage, ignoreSavedVariables)
	if locked then
		return;
	end

	locked = true;

	-- local last = self.SavedVariables[self.Key] or 0;
	-- index = index or last + 1;
	local firstNotViewed = FindFirstNotViewed(self);
	print(index);
	print(firstNotViewed);
	index = index or firstNotViewed;

	self.MinPage = minPage or 1;
	self.MaxPage = maxPage or #self.Pages;
	UpdateFrame(self, index, ignoreSavedVariables);

	locked = nil;
end

function FindFirstNotViewed(self)
	for i = 1, #self.Pages, 1 do
		if not self.SavedVariables[self.Key].PageViewed[i] then
			return i;
		end
	end

	return i;
end