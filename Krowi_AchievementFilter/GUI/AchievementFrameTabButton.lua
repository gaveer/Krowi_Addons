-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.AchievementFrameTabButton = {};
local achFrameTabBtn = gui.AchievementFrameTabButton;

-- [[ Constructors ]] --
achFrameTabBtn.__index = achFrameTabBtn; -- Used to support OOP like code
function achFrameTabBtn:New(text, categoriesFrame, achievementsFrame, filterButton, searchBoxFrame)
    diagnostics.Trace("achievementFrameTabButton:New");

	-- Increment ID
    PanelTemplates_SetNumTabs(AchievementFrame, AchievementFrame.numTabs + 1);

	-- Create frame
    local frame = CreateFrame("Button", "AchievementFrameTab" .. AchievementFrame.numTabs, AchievementFrame, "AchievementFrameTabButtonTemplate"); -- Blizzard naming
    frame:SetID(AchievementFrame.numTabs);
    frame:SetText(text);
    core.InjectMetatable(frame, achFrameTabBtn);

	-- Set properties
    frame.ID = AchievementFrame.numTabs;
    frame.CategoriesFrame = categoriesFrame;
    frame.AchievementsFrame = achievementsFrame;
    frame.FilterButton = filterButton;
    frame.SearchBoxFrame = searchBoxFrame;

    frame:RegisterEvent("ADDON_LOADED");
    frame:SetScript("OnClick", function(selfFunc)
        frame:OnClick(selfFunc:GetID());
        PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB);
    end);
    frame:SetScript("OnEvent", frame.AchievementFrameTab_OnEvent); -- Issue #1: Fix

    frame.OnClick = frame.Base_OnClick;

    hooksecurefunc("AchievementFrame_DisplayComparison", function ()
        frame.OnClick = frame.Comparison_OnClick;
    end);

    hooksecurefunc("AchievementFrame_SetTabs", function ()
        frame:SetPoint("LEFT", "AchievementFrameTab" .. frame.ID - 1, "RIGHT", -5, 0); -- Can break if other addon adds tab with "bad" name
    end);

    hooksecurefunc("AchievementFrame_UpdateTabs", function(clickedTab) -- Issue #1: Broken
        frame:AchievementFrame_UpdateTabs(frame, frame.ID, clickedTab);
    end);

    return frame;
end

function achFrameTabBtn:AchievementFrameTab_OnEvent(event, ...)
    local addonName = ...;
    diagnostics.Trace("achFrameTabBtn:AchievementFrameTab_OnEvent - " .. event .. " - " .. addonName);
    if event == "ADDON_LOADED" then
		if addonName and addonName == "Overachiever_Tabs" then
            hooksecurefunc("AchievementFrame_UpdateTabs", function(clickedTab) -- Issue #1: Fix
                self:AchievementFrame_UpdateTabs(self, self.ID, clickedTab);
            end);
            diagnostics.Debug("Overachiever_Tabs compatibility enabled");
		end
	end
end

local function InGuildView()
    return AchievementFrameHeaderTitle:GetText() == GUILD_ACHIEVEMENTS_TITLE;
end

function achFrameTabBtn:Base_OnClick(id)
    diagnostics.Trace("achFrameTabBtn:Base_OnClick");

	AchievementFrame_UpdateTabs(id);

    if InGuildView() then
        AchievementFrame_ToggleView();
        AchievementFrameGuildEmblemLeft:Hide();
        AchievementFrameGuildEmblemRight:Hide();
    end
    AchievementFrame_ShowSubFrame(self.CategoriesFrame, self.AchievementsFrame, self.FilterButton, self.SearchBoxFrame);
    AchievementFrameWaterMark:SetTexture("Interface\\AchievementFrame\\UI-Achievement-AchievementWatermark");
end

function achFrameTabBtn:Comparison_OnClick(id)
    diagnostics.Trace("achFrameTabBtn:Comparison_OnClick");

    -- No comparison support. Just open up the non-comparison achievement tab.
	AchievementFrameTab_OnClick = AchievementFrameBaseTab_OnClick; -- Also set the other tabs back to their default OnClick like Blizzard does
    self.OnClick = self.Base_OnClick;
    self:OnClick(id);
end

function achFrameTabBtn:AchievementFrame_UpdateTabs(thisTab, thisTabID, clickedTab)
    diagnostics.Trace("achFrameTabBtn:AchievementFrame_UpdateTabs - " .. tostring(thisTabID) .. " - " .. tostring(clickedTab));

    if clickedTab == thisTabID then -- Our tab was clicked
        thisTab.text:SetPoint("CENTER", 0, -5);
        thisTab.Selected = true;
        gui.SetAchievementFrameWidth(addon.Options.db.Window.CategoriesFrameWidthOffset);
        gui.SetAchievementFrameHeight(addon.Options.db.Window.AchievementFrameHeightOffset);
    else -- Another tab was clicked
        thisTab.text:SetPoint("CENTER", 0, -3);
        thisTab.Selected = nil;
        gui.ResetAchievementFrameWidth();
        gui.ResetAchievementFrameHeight();
    end
end

function achFrameTabBtn:Select()
    diagnostics.Trace("achFrameTabBtn:Select");

    if not self.Selected then
        self:OnClick(self.ID);
    end
end