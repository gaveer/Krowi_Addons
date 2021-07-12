-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
addon.GUI = {};
local gui = addon.GUI;

function gui:LoadWithAddon()
    gui.ElvUISkin.Load();
    gui.WorldMapButton.Load();
end

function gui:LoadWithBlizzard_AchievementUI()
    self.SetAchievementFrameHeight(addon.Options.db.Window.AchievementFrameHeightOffset); -- Do this in order to create the correct amount of buttons based on our settings

    gui.AchievementsFrame:Load();
    gui.CategoriesFrame:Load(addon.Data.Categories);
    gui.FilterButton:Load();

    gui.Search.Load();

    gui.TabButton1 = gui.AchievementFrameTabButton:New(addon.L["T_TAB_TEXT"], {gui.CategoriesFrame, gui.AchievementsFrame, gui.FilterButton, gui.Search.SearchBoxFrame});

    self.ResetAchievementFrameHeight();

    diagnostics.Debug("GUI loaded");
end

-- [[ AchievementFrame Width ]] --
local defaultAchievementFrameWidth;

function gui.SetAchievementFrameWidth(offset)
    diagnostics.Trace("gui.SetAchievementFrameWidth");

    if not defaultAchievementFrameWidth then
        defaultAchievementFrameWidth = AchievementFrame:GetWidth();
    end
    AchievementFrame:SetWidth(defaultAchievementFrameWidth + offset);
end

function gui.ResetAchievementFrameWidth()
    diagnostics.Trace("gui.ResetAchievementFrameWidth");

    if defaultAchievementFrameWidth then
        AchievementFrame:SetWidth(defaultAchievementFrameWidth);
    end
end

local function UpdateAchievementFrameWidth(message , offset)
    if gui.TabButton1 and gui.TabButton1.Selected then -- Need to check if it exists since this can be triggered before it's created
        gui.AchievementsFrame:Hide();
        gui.CategoriesFrame:Hide();
        gui.SetAchievementFrameWidth(offset);
        gui.AchievementsFrame:Show();
        gui.CategoriesFrame:Show();
    end
end

addon.Event:RegisterMessage("UpdateAchievementFrameWidth", UpdateAchievementFrameWidth);

-- [[ AchievementFrame Height ]] --
local defaultAchievementFrameHeight;
local defaultAchievementFrameMetalBorderHeight;

function gui.SetAchievementFrameHeight(offset)
    diagnostics.Trace("gui.SetAchievementFrameHeight");

    if not defaultAchievementFrameHeight then
        defaultAchievementFrameHeight = AchievementFrame:GetHeight();
        defaultAchievementFrameMetalBorderHeight = AchievementFrameMetalBorderLeft:GetHeight();
    end
    AchievementFrame:SetHeight(defaultAchievementFrameHeight + offset);
    AchievementFrameMetalBorderLeft:SetHeight(defaultAchievementFrameMetalBorderHeight + offset);
    AchievementFrameMetalBorderRight:SetHeight(defaultAchievementFrameMetalBorderHeight + offset);
end

function gui.ResetAchievementFrameHeight()
    diagnostics.Trace("gui.ResetAchievementFrameHeight");

    if defaultAchievementFrameHeight and defaultAchievementFrameMetalBorderHeight then
        AchievementFrame:SetHeight(defaultAchievementFrameHeight);
        AchievementFrameMetalBorderLeft:SetHeight(defaultAchievementFrameMetalBorderHeight);
        AchievementFrameMetalBorderRight:SetHeight(defaultAchievementFrameMetalBorderHeight);
    end
end

local function UpdateAchievementFrameHeight(message, offset)
    if gui.TabButton1 and gui.TabButton1.Selected then -- Need to check if it exists since this can be triggered before it's created
        gui.AchievementsFrame:Hide();
        gui.CategoriesFrame:Hide();
        gui.SetAchievementFrameWidth(offset);
        gui.AchievementsFrame:Show();
        gui.CategoriesFrame:Show();
    end
end

addon.Event:RegisterMessage("UpdateAchievementFrameHeight", UpdateAchievementFrameHeight);

-- [[ Other ]] --
function gui.GetSafeScrollChildBottom(scrollChild)
	diagnostics.Trace("gui.GetSafeScrollChildBottom");

	return scrollChild:GetBottom() or 0;
end

function gui.ResetView()
	diagnostics.Trace("gui.ResetView");

    if gui.CategoriesFrame and gui.CategoriesFrame.Categories then -- Checking ID is to know if the frame is initialised or not
        -- We want to have Classic selected and collapsed
        -- Achievement 1283 has Dungeons as parent but we need its parent which is Classic
        gui.CategoriesFrame:SelectCategory(addon.Data.Categories[1], true);
    end

    if gui.Search.SearchBoxFrame and gui.Search.SearchBoxFrame.SearchPreviewFrame then
        gui.Search.SearchBoxFrame:SetText("");
    end

    if gui.Search.FullSearchResultsFrame and gui.Search.FullSearchResultsFrame.Update then
        gui.Search.FullSearchResultsFrame:Hide();
    end
end

function gui.ToggleAchievementFrameAtTab1(forceOpen) -- Issue #26 Broken, Fix
    diagnostics.Trace("gui.ToggleAchievementFrameAtTab1");

    if not IsAddOnLoaded("Blizzard_AchievementUI") then
        LoadAddOn("Blizzard_AchievementUI");
    end

    AchievementFrameComparison:Hide();
    AchievementFrameTab_OnClick = AchievementFrameBaseTab_OnClick;
	if AchievementFrame:IsShown() and AchievementFrame.selectedTab == 4 and not forceOpen then
		HideUIPanel(AchievementFrame);
	else
		ShowUIPanel(AchievementFrame);
        AchievementFrame_SetTabs();
        AchievementFrame_HideSearchPreview();
        gui.TabButton1:Select();
        if addon.Options.db.ResetViewOnOpen or forceOpen then
            gui.ResetView();
        end
	end
end

function KrowiAF_ToggleAchievementFrameAtTab1()
    gui.ToggleAchievementFrameAtTab1();
end