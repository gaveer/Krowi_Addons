-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
addon.GUI = {};
local gui = addon.GUI;
gui.SideButtons = {};
local sideButtons = gui.SideButtons;

function gui:LoadWithAddon()
    gui.ElvUISkin.Load();
    gui.WorldMapButton.Load();
    gui.AlertSystem:Load();
end

function gui:LoadWithBlizzard_AchievementUI()
    self.SetAchievementFrameHeight(addon.Options.db.Window.AchievementFrameHeightOffset); -- Do this in order to create the correct amount of buttons based on our settings

    gui.AchievementsFrame:Load();
    gui.CategoriesFrame:Load();
    gui.FilterButton:Load();

    gui.Search.Load();

    gui.TabButtonExpansions = gui.AchievementFrameTabButton:New(addon.L["Expansions"], {gui.FilterButton, gui.Search.SearchBoxFrame}, gui.AchievementsFrame, gui.CategoriesFrame, addon.Data.CategoriesExpansions);
    gui.TabButtonEvents = gui.AchievementFrameTabButton:New(addon.L["Events"], {gui.FilterButton, gui.Search.SearchBoxFrame}, gui.AchievementsFrame, gui.CategoriesFrame, addon.Data.CategoriesEvents);

    local activeCalendarEvents = addon.EventData.GetActiveCalendarEvents();

    for _, activeEvent in next, activeCalendarEvents do
        tinsert(sideButtons, gui.SideButton:New(activeEvent, sideButtons));
    end

    local activeWorldEvents = addon.EventData.GetActiveWorldEvents();

    for _, activeEvent in next, activeWorldEvents do
        tinsert(sideButtons, gui.SideButton:New(activeEvent, sideButtons));
    end

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
    if gui.TabButtonExpansions and gui.TabButtonExpansions.Selected then -- Need to check if it exists since this can be triggered before it's created
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
    if gui.TabButtonExpansions and gui.TabButtonExpansions.Selected then -- Need to check if it exists since this can be triggered before it's created
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

    if gui.CategoriesFrame and gui.SelectedTab.Categories then -- Checking ID is to know if the frame is initialised or not
        -- Select the first category
        if gui.SelectedTab.Categories then
            gui.CategoriesFrame:SelectCategory(gui.SelectedTab.Categories[1], true);
        end
    end

    if gui.Search.SearchBoxFrame and gui.Search.SearchBoxFrame.SearchPreviewFrame then
        gui.Search.SearchBoxFrame:SetText("");
    end

    if gui.Search.FullSearchResultsFrame and gui.Search.FullSearchResultsFrame.Update then
        gui.Search.FullSearchResultsFrame:Hide();
    end
end

function gui.SelectTab(tabName)
    if tabName == addon.L["Expansions"] then
        diagnostics.Debug(addon.L["Expansions"]);
        gui.TabButtonExpansions:Select();
    elseif tabName == addon.L["Events"] then
        diagnostics.Debug(addon.L["Events"]);
        gui.TabButtonEvents:Select();
    end
end

function gui.ToggleAchievementFrame(tabName, resetView, forceOpen) -- Issue #26 Broken, Fix
    diagnostics.Trace("gui.ToggleAchievementFrame");

    if not IsAddOnLoaded("Blizzard_AchievementUI") then
        LoadAddOn("Blizzard_AchievementUI");
    end

    AchievementFrameComparison:Hide();
    AchievementFrameTab_OnClick = AchievementFrameBaseTab_OnClick;

    local tabIsSelected;
    if gui.SelectedTab then
       if gui.SelectedTab:GetText() == tabName then
        tabIsSelected = true;
       end
    end

	if AchievementFrame:IsShown() and tabIsSelected and not resetView and not forceOpen then
		HideUIPanel(AchievementFrame);
	else
		ShowUIPanel(AchievementFrame);
        AchievementFrame_SetTabs();
        AchievementFrame_HideSearchPreview();
        gui.SelectTab(tabName);
        if addon.Options.db.ResetViewOnOpen or resetView then
            gui.ResetView();
        end
	end
end

function KrowiAF_ToggleAchievementFrame(tab)
    if tab == nil or tab == 1 then
        gui.ToggleAchievementFrame(addon.L["Expansions"]);
    elseif tab == 2 then
        gui.ToggleAchievementFrame(addon.L["Events"]);
    end
end

function gui.UpdateEventRuntime(self)
    local line1, line2, timeLeft;

    if addon.Options.db.EventAlert.TimeDisplay.Line1 == 3 or addon.Options.db.EventAlert.TimeDisplay.Line2 == 4 then -- Time Left
        local secondsLeft = self.Event.EventDetails.endTime - time();
        local days = floor(secondsLeft / 86400);
        local hours = floor(mod(secondsLeft, 86400) / 3600);
        local minutes = floor(mod(secondsLeft, 3600) / 60);
        local seconds = floor(mod(secondsLeft, 60));
        timeLeft = days > 0 and days .. " Days" or "";
        timeLeft = timeLeft .. (days > 0 and " " or "") .. (hours > 0 and hours .. " Hr" or "");
        timeLeft = timeLeft .. (hours > 0 and " " or "") .. (minutes > 0 and minutes .. " Min" or "");
        timeLeft = timeLeft .. (minutes > 0 and " " or "") .. (seconds > 0 and seconds .. " Sec" or "");
    end

    if addon.Options.db.EventAlert.TimeDisplay.Line1 == 1 then -- Start Time
        line1 = tostring(date(addon.Options.db.EventAlert.DateTimeFormat.StartTimeAndEndTime, self.Event.EventDetails.startTime));
    elseif addon.Options.db.EventAlert.TimeDisplay.Line1 == 2 then -- End Time
        line1 = tostring(date(addon.Options.db.EventAlert.DateTimeFormat.StartTimeAndEndTime, self.Event.EventDetails.endTime));
    elseif addon.Options.db.EventAlert.TimeDisplay.Line1 == 3 then -- Time Left
        line1 = timeLeft;
    end

    if addon.Options.db.EventAlert.TimeDisplay.Line2 == 1 then -- None
        line2 = "";
    elseif addon.Options.db.EventAlert.TimeDisplay.Line2 == 2 then -- Start Time
        line2 = "\n" .. tostring(date(addon.Options.db.EventAlert.DateTimeFormat.StartTimeAndEndTime, self.Event.EventDetails.startTime));
    elseif addon.Options.db.EventAlert.TimeDisplay.Line2 == 3 then -- End Time
        line2 = "\n" .. tostring(date(addon.Options.db.EventAlert.DateTimeFormat.StartTimeAndEndTime, self.Event.EventDetails.endTime));
    elseif addon.Options.db.EventAlert.TimeDisplay.Line2 == 4 then -- Time Left
        line2 = "\n" .. timeLeft;
    end

    self.Unlocked:SetText(line1 .. line2);
end