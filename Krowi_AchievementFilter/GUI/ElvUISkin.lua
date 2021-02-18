-- [[ Disclaimer ]] --
-- A lot of code in this file is copied from ElvUI to make it compatible with their skin.

-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.ElvUISkin = {};
local elvUISkin = gui.ElvUISkin;

local function Enable()
    local enabled;
    local engine;
    local skins;

    if ElvUI ~= nil then
        engine = unpack(ElvUI);
        skins = engine:GetModule("Skins");
        local blizzardSkins = engine.private.skins.blizzard;
        diagnostics.Debug("ElvUI compatibility enabled");
        diagnostics.Debug("     - Blizzard skins enabled: " .. tostring(blizzardSkins.enable));
        diagnostics.Debug("     - Blizzard Achievements skin enabled: " .. tostring(blizzardSkins.achievement));
        enabled = blizzardSkins.enable and blizzardSkins.achievement;
        diagnostics.Debug("     - Apply ElvUI Skin: " .. tostring(enabled));
    end

    return enabled, engine, skins;
end

local function ApplyToCategoriesFrame(categoriesFrame, skins)
    -- Frame
    categoriesFrame:StripTextures();
    categoriesFrame.Container.ScrollBar.trackBG:SetAlpha(0);
    categoriesFrame.Container:CreateBackdrop("Transparent");
	categoriesFrame.Container.backdrop:Point("TOPLEFT", 0, 4);
	categoriesFrame.Container.backdrop:Point("BOTTOMRIGHT", -2, -3);

    -- Buttons
    for _, button in next, categoriesFrame.Container.buttons do
        button:StripTextures(true);
		button:StyleButton();
    end

    -- Scrollbar
    if categoriesFrame.Container.ScrollBar then
        skins:HandleScrollBar(categoriesFrame.Container.ScrollBar, 5);
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
local function blueBackdrop(self)
	self:SetBackdropColor(blueAchievement.r, blueAchievement.g, blueAchievement.b)
end

local function SetAchievementButtonColor(frame, engine)
	if frame and frame.backdrop then
		if frame.accountWide then
			frame.backdrop.callbackBackdropColor = blueBackdrop;
			frame.backdrop:SetBackdropColor(blueAchievement.r, blueAchievement.g, blueAchievement.b);
		else
			frame.backdrop.callbackBackdropColor = nil;
			frame.backdrop:SetBackdropColor(unpack(engine.media.backdropcolor));
		end
	end
end

local function ApplyToAchievementsFrame(achievementsFrame, engine, skins)
    -- Frame
    select(2, achievementsFrame:GetChildren()):Hide();
    achievementsFrame.Background:Hide();
    achievementsFrame.Artwork:Hide();

    if achievementsFrame and achievementsFrame.GetNumChildren then
        for i = 1, achievementsFrame:GetNumChildren() do
            local child = select(i, achievementsFrame:GetChildren());
            if child and not child:GetName() then
                child:SetBackdrop();
            end
        end
    end

	achievementsFrame.Container:CreateBackdrop("Transparent");
	achievementsFrame.Container.backdrop:Point("TOPLEFT", -2, 2);
	achievementsFrame.Container.backdrop:Point("BOTTOMRIGHT", -2, -3);

    -- Buttons
    for _, button in next, achievementsFrame.Container.buttons do
        SkinAchievementButton(button, true, engine, skins);
    end

    hooksecurefunc(achievementsFrame, "Update", function(frame)
        for _, button in next, frame.Container.buttons do
            if button:IsShown() then
                SetAchievementButtonColor(button, engine);
            else
                return;
            end
        end
    end);

    -- Scrollbar
    if achievementsFrame.Container.ScrollBar then
        skins:HandleScrollBar(achievementsFrame.Container.ScrollBar, 5);
    end
end

local function ApplyToFilterButton(filterButton, achievementsFrame, skins)
    skins:HandleButton(filterButton);

    local highlightTex = filterButton.GetHighlightTexture and filterButton:GetHighlightTexture()
    if highlightTex then
        highlightTex:SetTexture();
    else
        filterButton:StripTextures();
    end

	filterButton:ClearAllPoints();
	filterButton:Point("BOTTOMLEFT", achievementsFrame, "TOPLEFT", 3, -1);
end

local function ApplyToSearchBoxFrame(searchBoxFrame, achievementsFrame, skins)
    skins:HandleEditBox(searchBoxFrame);
	searchBoxFrame.backdrop:Point('TOPLEFT', searchBoxFrame, 'TOPLEFT', -3, -3);
	searchBoxFrame.backdrop:Point('BOTTOMRIGHT', searchBoxFrame, 'BOTTOMRIGHT', 0, 3);
	searchBoxFrame:ClearAllPoints();
	searchBoxFrame:Point('BOTTOMRIGHT', achievementsFrame, 'TOPRIGHT', -30, 2);
	searchBoxFrame:Size(107, 25);
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

local function ApplyToSearchPreviewFrame(searchPreviewFrame, achievementsFrame, engine, skins)
    searchPreviewFrame:StripTextures();
	searchPreviewFrame:ClearAllPoints();
	searchPreviewFrame:Point('TOPLEFT', achievementsFrame, 'TOPRIGHT', 22, 25);

    for _, button in next, searchPreviewFrame.Buttons do
		SkinSearchButton(button, engine, skins);
	end
	SkinSearchButton(searchPreviewFrame.ShowFullSearchResultsButton, engine, skins);
end

local function ApplyToFullSearchResultsFrame(fullSearchResultsFrame, skins)
    fullSearchResultsFrame:StripTextures();
    fullSearchResultsFrame:CreateBackdrop('Transparent');

    for _, button in next, fullSearchResultsFrame.Container.buttons do
        button:SetNormalTexture('');
        button:SetPushedTexture('');
        button:GetRegions():Hide();

        button.resultType:SetTextColor(1, 1, 1);
        button.path:SetTextColor(1, 1, 1);
    end

    skins:HandleCloseButton(fullSearchResultsFrame.closeButton);
	skins:HandleScrollBar(fullSearchResultsFrame.Container.ScrollBar);
end

function elvUISkin.Apply(tabButton1, categoriesFrame, achievementsFrame, filterButton, searchBoxFrame, searchPreviewFrame, fullSearchResultsFrame)
	diagnostics.Trace("elvUISkin.Apply");

    local enabled, engine, skins = Enable();
    if not enabled then
        return;
    end

    skins:HandleTab(tabButton1);
    ApplyToCategoriesFrame(categoriesFrame, skins);
    ApplyToAchievementsFrame(achievementsFrame, engine, skins);
    ApplyToFilterButton(filterButton, achievementsFrame, skins);
    ApplyToSearchBoxFrame(searchBoxFrame, achievementsFrame, skins);
    ApplyToSearchPreviewFrame(searchPreviewFrame, achievementsFrame, engine, skins);
    ApplyToFullSearchResultsFrame(fullSearchResultsFrame, skins);
end