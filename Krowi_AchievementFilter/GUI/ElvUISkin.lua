-- [[ Disclaimer ]] --
-- A lot of code in this file is copied from ElvUI to make it compatible with their skin.

-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
local search = gui.Search;
gui.ElvUISkin = {};
local elvUISkin = gui.ElvUISkin;
-- local engine, skins;

local function ApplyToCategoriesFrame(frame, skins)
    -- Frame
    frame:StripTextures();
    frame.Container.ScrollBar.trackBG:SetAlpha(0);
    frame.Container:CreateBackdrop("Transparent");
	frame.Container.backdrop:Point("TOPLEFT", 0, 4);
	frame.Container.backdrop:Point("BOTTOMRIGHT", -2, -3);

    -- Buttons
    for _, button in next, frame.Container.buttons do
        button:StripTextures(true);
		button:StyleButton();
    end

    -- Scrollbar
    if frame.Container.ScrollBar then
        skins:HandleScrollBar(frame.Container.ScrollBar, 5);
    end
end

local function SkinAchievementButton(button, biggerIcon, engine, skins)
	button:SetFrameLevel(button:GetFrameLevel() + 2)
	button:StripTextures(true)
	button:CreateBackdrop(nil, true)
	button.backdrop:SetInside()
	button.icon:CreateBackdrop(nil, nil, nil, nil, nil, nil, true)
	button.icon:Size(biggerIcon and 54 or 36, biggerIcon and 54 or 36)
	button.icon:ClearAllPoints()
	button.icon:Point("TOPLEFT", 8, -8)
	button.icon.bling:Kill()
	button.icon.frame:Kill()
	button.icon.texture:SetTexCoord(unpack(engine.TexCoords))
	button.icon.texture:SetInside()

	if button.highlight then
		button.highlight:StripTextures()
		button:HookScript("OnEnter", function(self) self.backdrop:SetBackdropBorderColor(1, 1, 0) end)
		button:HookScript("OnLeave", function(self) self.backdrop:SetBackdropBorderColor(unpack(engine.media.bordercolor)) end)
	end

	if button.label then
		button.label:SetTextColor(1, 1, 1)
	end

	if button.description then
		button.description:SetTextColor(.6, .6, .6)
		hooksecurefunc(button.description, "SetTextColor", function(_, r, g, b)
			if r == 0 and g == 0 and b == 0 then
				button.description:SetTextColor(.6, .6, .6)
			end
		end)
	end

	if button.hiddenDescription then
		button.hiddenDescription:SetTextColor(1, 1, 1)
	end

	if button.tracked then
		button.tracked:GetRegions():SetTextColor(1, 1, 1)
		skins:HandleCheckBox(button.tracked)
		button.tracked:Size(18)
		button.tracked:ClearAllPoints()
		button.tracked:Point("TOPLEFT", button.icon, "BOTTOMLEFT", 0, -2)
	end
end

local blueAchievement = { r = 0.1, g = 0.2, b = 0.3 }
local function BlueBackdrop(self)
	self:SetBackdropColor(blueAchievement.r, blueAchievement.g, blueAchievement.b)
end

local function SetAchievementButtonColor(frame, engine)
	if frame and frame.backdrop then
		if frame.accountWide then
			frame.backdrop.callbackBackdropColor = BlueBackdrop;
			frame.backdrop:SetBackdropColor(blueAchievement.r, blueAchievement.g, blueAchievement.b);
		else
			frame.backdrop.callbackBackdropColor = nil;
			frame.backdrop:SetBackdropColor(unpack(engine.media.backdropcolor));
		end
	end
end

local function ApplyToAchievementsFrame(frame, engine, skins)
    -- Frame
    select(2, frame:GetChildren()):Hide();
    frame.Background:Hide();
    frame.Artwork:Hide();

    if frame and frame.GetNumChildren then
        for i = 1, frame:GetNumChildren() do
            local child = select(i, frame:GetChildren());
            if child and not child:GetName() then
                child:SetBackdrop();
            end
        end
    end

	frame.Container:CreateBackdrop("Transparent");
	frame.Container.backdrop:Point("TOPLEFT", -2, 2);
	frame.Container.backdrop:Point("BOTTOMRIGHT", -2, -3);

    -- Buttons
    for _, button in next, frame.Container.buttons do
        SkinAchievementButton(button, true, engine, skins);
    end

    hooksecurefunc(frame, "Update", function(frame)
        for _, button in next, frame.Container.buttons do
            if button:IsShown() then
                SetAchievementButtonColor(button, engine);
            else
                return;
            end
        end
    end);

    -- Scrollbar
    if frame.Container.ScrollBar then
        skins:HandleScrollBar(frame.Container.ScrollBar, 5);
    end
end

local function ApplyToFilterButton(button, achievementsFrame, skins)
    skins:HandleButton(button);

    local highlightTex = button.GetHighlightTexture and button:GetHighlightTexture()
    if highlightTex then
        highlightTex:SetTexture();
    else
        button:StripTextures();
    end

	button:ClearAllPoints();
	button:Point("BOTTOMLEFT", achievementsFrame, "TOPLEFT", 3, -1);
end

local function ApplyToSearchBoxFrame(frame, achievementsFrame, skins)
    skins:HandleEditBox(frame);
	frame.backdrop:Point('TOPLEFT', frame, 'TOPLEFT', -3, -3);
	frame.backdrop:Point('BOTTOMRIGHT', frame, 'BOTTOMRIGHT', 0, 3);
	frame:ClearAllPoints();
	frame:Point('BOTTOMRIGHT', achievementsFrame, 'TOPRIGHT', -30, 2);
	frame:Size(107, 25);
end

local function SkinSearchButton(self, engine, skins)
	self:StripTextures()

	if self.icon then
		skins:HandleIcon(self.icon);
	end

	self:CreateBackdrop('Transparent');
	self:SetHighlightTexture(engine.media.normTex);

	local hl = self:GetHighlightTexture();
	hl:SetVertexColor(1, 1, 1, 0.3);
	hl:Point('TOPLEFT', 1, -1);
	hl:Point('BOTTOMRIGHT', -1, 1);
end

local function ApplyToSearchPreviewFrame(frame, achievementsFrame, engine, skins)
    frame:StripTextures();
	frame:ClearAllPoints();
	frame:Point('TOPLEFT', achievementsFrame, 'TOPRIGHT', 22, 25);

    for _, button in next, frame.Buttons do
		SkinSearchButton(button, engine, skins);
	end
	SkinSearchButton(frame.ShowFullSearchResultsButton, engine, skins);
end

local function ApplyToFullSearchResultsFrame(frame, skins)
    frame:StripTextures();
    frame:CreateBackdrop('Transparent');

    for _, button in next, frame.Container.buttons do
        button:SetNormalTexture('');
        button:SetPushedTexture('');
        button:GetRegions():Hide();

        button.resultType:SetTextColor(1, 1, 1);
        button.path:SetTextColor(1, 1, 1);
    end

    skins:HandleCloseButton(frame.closeButton);
	skins:HandleScrollBar(frame.Container.ScrollBar);
end

local engine, skins;
function elvUISkin.Load()
	diagnostics.Trace("elvUISkin.Load");

    if not SavedData.ElvUISkin then
        SavedData.ElvUISkin = {}; -- First time creation
    end
    if ElvUI ~= nil then
        engine = unpack(ElvUI);
        skins = engine:GetModule("Skins");
        local blizzardSkins = engine.private.skins.blizzard;

        SavedData.ElvUISkin.Achievements = blizzardSkins.enable and blizzardSkins.achievement;
        SavedData.ElvUISkin.MiscFrames = blizzardSkins.enable and blizzardSkins.misc;
        SavedData.ElvUISkin.Tooltip = blizzardSkins.enable and blizzardSkins.tooltip;
        SavedData.ElvUISkin.Tutorials = blizzardSkins.enable and blizzardSkins.tutorials;
        SavedData.ElvUISkin.Options = engine.private.skins.ace3Enable;
    else
        SavedData.ElvUISkin = {};
    end

    -- return SavedData.ElvUISkin.Achievements, engine, skins;
    diagnostics.Debug("ElvUISkin loaded");
    diagnostics.DebugTable(SavedData.ElvUISkin, 1);
end

function elvUISkin.Apply()
	diagnostics.Trace("elvUISkin.Apply");

    -- local enabled, engine, skins = elvUISkin.Load();

    if SavedData.ElvUISkin.Achievements then
        skins:HandleTab(gui.TabButtonExpansions);
        skins:HandleTab(gui.TabButtonEvents);
        ApplyToCategoriesFrame(gui.CategoriesFrame, skins);
        ApplyToAchievementsFrame(gui.AchievementsFrame, engine, skins);
        ApplyToFilterButton(gui.FilterButton, gui.AchievementsFrame, skins);
        ApplyToSearchBoxFrame(search.SearchBoxFrame, gui.AchievementsFrame, skins);
        ApplyToSearchPreviewFrame(search.SearchPreviewFrame, gui.AchievementsFrame, engine, skins);
        ApplyToFullSearchResultsFrame(search.FullSearchResultsFrame, skins);
    end
end