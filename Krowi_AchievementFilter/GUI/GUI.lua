-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
addon.GUI = {};
local gui = addon.GUI;

-- [[ Frames ]] --
local frames = {};

function gui.AddFrame(name, frame)
    frames[name] = frame;

    return frames[name];
end

function gui.GetFrame(name)
    return frames[name];
end

function gui.GetFrames(...)
    local table = {};
    for _, name in next, {...} do
        tinsert(table, frames[name]);
    end

    return unpack(table);
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
    if frames["TabButton1"] and frames["TabButton1"].Selected then -- Need to check if it exists since this can be triggered before it's created
        frames["AchievementsFrame"]:Hide();
        frames["CategoriesFrame"]:Hide();
        gui.SetAchievementFrameWidth(offset);
        frames["AchievementsFrame"]:Show();
        frames["CategoriesFrame"]:Show();
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
    if frames["TabButton1"] and frames["TabButton1"].Selected then -- Need to check if it exists since this can be triggered before it's created
        frames["AchievementsFrame"]:Hide();
        frames["CategoriesFrame"]:Hide();
        gui.SetAchievementFrameHeight(offset);
        frames["AchievementsFrame"]:Show();
        frames["CategoriesFrame"]:Show();
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

    if frames["CategoriesFrame"] and frames["CategoriesFrame"].ID then -- Checking ID is to know if the frame is initialised or not
        -- We want to have Classic selected and collapsed
        -- Achievement 1283 has Dungeons as parent but we need its parent which is Classic
        frames["CategoriesFrame"]:SelectCategory(addon.Categories[1], true);
    end

    if frames["SearchBoxFrame"] and frames["SearchBoxFrame"].ID then
        frames["SearchBoxFrame"]:SetText("");
    end

    if frames["FullSearchResultsFrame"] and frames["FullSearchResultsFrame"].ID then
        frames["FullSearchResultsFrame"]:Hide();
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
        frames["TabButton1"]:Select();
        if addon.Options.db.ResetViewOnOpen or forceOpen then
            gui.ResetView();
        end
	end
end

function KrowiAF_ToggleAchievementFrameAtTab1()
    gui.ToggleAchievementFrameAtTab1();
end