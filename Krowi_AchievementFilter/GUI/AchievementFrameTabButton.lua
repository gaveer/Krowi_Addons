local _, addon = ...; -- Global addon namespace
local gui = addon.GUI; -- Local GUI namespace
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace
gui.AchievementFrameTabButton = {}; -- Global Achievement Frame Tab Button class
local achFrameTabBtn = gui.AchievementFrameTabButton; -- Local Achievement Frame Tab Button class

achFrameTabBtn.__index = achFrameTabBtn; -- Used to support OOP like code

-- Do this in code instead of an xml template since we're not sure if other addons will also add tabs to the AchievementFrame
-- or if we want to add more ourselves
function achFrameTabBtn:New(text, categoriesFrame, achievementsFrame)
    diagnostics.Trace("achievementFrameTabButton:New");

    local self = {};
    setmetatable(self, achFrameTabBtn);

    local tabID = AchievementFrame.numTabs + 1;
    PanelTemplates_SetNumTabs(AchievementFrame, tabID);

    local frame = CreateFrame("Button", "AchievementFrameTab" .. tabID, AchievementFrame, "AchievementFrameTabButtonTemplate");
    frame:SetID(tabID);
    frame:SetText(text);
    frame:SetScript("OnClick", function(selfFunc)
        self:OnClick(selfFunc:GetID());
        PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB);
    end);
    frame:SetScript("OnEvent", function(selfFunc, event, ...) -- Issue #1: Fix
        self:AchievementFrameTab_OnEvent(frame, tabID, self, event, ...);
    end);
    frame:RegisterEvent("ADDON_LOADED");

    self.Frame = frame;
    self.ID = tabID;
    self.OnClick = self.Base_OnClick;
    self.CategoriesFrame = categoriesFrame;
    self.AchievementsFrame = achievementsFrame;

    hooksecurefunc("AchievementFrame_DisplayComparison", function ()
        self.OnClick = self.Comparison_OnClick;
    end);

    hooksecurefunc("AchievementFrame_SetTabs", function ()
        frame:SetPoint("LEFT", "AchievementFrameTab" .. tabID - 1, "RIGHT", -5, 0); -- Can break if other addon adds tab with "bad" name
    end);

    hooksecurefunc("AchievementFrame_UpdateTabs", function(clickedTab) -- Issue #1: Broken
        self:AchievementFrame_UpdateTabs(frame, tabID, clickedTab);
    end);

    return self;
end

function achFrameTabBtn:AchievementFrameTab_OnEvent(thisTab, thisTabID, self, event, ...)
    if event == "ADDON_LOADED" then
		local addonName = ...;
        diagnostics.Trace("AchievementFrameTab_OnEvent - " .. event .. " - " .. addonName);

		if addonName and addonName == "Overachiever_Tabs" then
            hooksecurefunc("AchievementFrame_UpdateTabs", function(clickedTab) -- Issue #1: Fix
                self:AchievementFrame_UpdateTabs(thisTab, thisTabID, clickedTab);
            end);
            diagnostics.Debug("Overachiever_Tabs compatibility enabled");
		end
	end
end

function achFrameTabBtn:Base_OnClick(id)
    diagnostics.Trace("achievementFrameTabButton:Base_OnClick");

	AchievementFrame_UpdateTabs(id);

    if addon.InGuildView() then
        AchievementFrame_ToggleView();
        AchievementFrameGuildEmblemLeft:Hide();
        AchievementFrameGuildEmblemRight:Hide();
    end
    AchievementFrame_ShowSubFrame(self.CategoriesFrame, self.AchievementsFrame);
    AchievementFrameWaterMark:SetTexture("Interface\\AchievementFrame\\UI-Achievement-AchievementWatermark");

    -- SwitchAchievementSearchTab(tab:GetID()); -- Does not work yet
end

function achFrameTabBtn:Comparison_OnClick(id)
    diagnostics.Trace("achievementFrameTabButton:Comparison_OnClick");

    -- No comparison support. Just open up the non-comparison achievement tab.
	AchievementFrameTab_OnClick = AchievementFrameBaseTab_OnClick; -- Also set the other tabs back to their default OnClick like Blizzard does
    self.OnClick = self.Base_OnClick;
    self:OnClick(id);
end

function achFrameTabBtn:AchievementFrame_UpdateTabs(thisTab, thisTabID, clickedTab)
    diagnostics.Trace("achievementFrameTabButton - " .. tostring(thisTabID) .. " - " .. tostring(clickedTab));

    if clickedTab == thisTabID then -- Our tab was clicked
        thisTab.text:SetPoint("CENTER", 0, -5);
    else -- Another tab was clicked
        thisTab.text:SetPoint("CENTER", 0, -3);
    end
end

function achFrameTabBtn:Select()
    self:OnClick(self.ID);
end