local _, addon = ...; -- Global addon namespace
local gui = addon.GUI; -- Local GUI namespace
gui.AchievementFrameTabButton = {}; -- Global Achievement Frame Tab Button object
local achievementFrameTabButton = gui.AchievementFrameTabButton; -- Local Achievement Frame Tab Button object

achievementFrameTabButton.__index = achievementFrameTabButton; -- Used to support OOP like code

local function AchievementFrameTab_OnEvent(thisTab, thisTabID, self, event, ...)
    if event == "ADDON_LOADED" then
		local addonName = ...;
        addon.Diagnostics.Trace("addon.AchievementFrameTab_OnEvent - " .. event .. " - " .. addonName);

		if addonName and addonName == "Overachiever_Tabs" then
            hooksecurefunc("AchievementFrame_UpdateTabs", function(clickedTab) -- Issue #1: Fix
                self:AchievementFrame_UpdateTabs(thisTab, thisTabID, clickedTab);
            end);
            addon.Diagnostics.Debug("Overachiever_Tabs compatibility enabled");
		end
	end
end

-- Do this in code instead of an xml template since we're not sure if other addons will also add tabs to the AchievementFrame
-- or if we want to add more ourselves
function achievementFrameTabButton:New(text)
    addon.Diagnostics.Trace("addon.AchievementFrameTabButton:New");

    local self = {};
    setmetatable(self, achievementFrameTabButton);

    local tabID = AchievementFrame.numTabs + 1;
    PanelTemplates_SetNumTabs(AchievementFrame, tabID);

    local tab = CreateFrame("Button", "AchievementFrameTab" .. tabID, AchievementFrame, "AchievementFrameTabButtonTemplate");
    tab:SetID(tabID);
    tab:SetText(text);
    tab:SetScript("OnClick", function(selfFunc)
        self:OnClick(selfFunc:GetID());
        PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB);
    end);
    tab:SetScript("OnEvent", function(selfFunc, event, ...) -- Issue #1: Fix
        AchievementFrameTab_OnEvent(tab, tabID, self, event, ...);
    end);
    tab:RegisterEvent("ADDON_LOADED");

    self.OnClick = self.Base_OnClick;

    hooksecurefunc("AchievementFrame_DisplayComparison", function ()
        self.OnClick = self.Comparison_OnClick;
    end);

    hooksecurefunc("AchievementFrame_SetTabs", function ()
        tab:SetPoint("LEFT", "AchievementFrameTab" .. tabID - 1, "RIGHT", -5, 0); -- Can break if other addon adds tab with "bad" name
    end);

    hooksecurefunc("AchievementFrame_UpdateTabs", function(clickedTab) -- Issue #1: Broken
        self:AchievementFrame_UpdateTabs(tab, tabID, clickedTab);
    end);

    return self;
end


function achievementFrameTabButton:Base_OnClick(id)
    addon.Diagnostics.Trace("addon.AchievementFrameTabButton:Base_OnClick");

	AchievementFrame_UpdateTabs(id);

    if addon.InGuildView() then
        AchievementFrame_ToggleView();
        AchievementFrameGuildEmblemLeft:Hide();
        AchievementFrameGuildEmblemRight:Hide();
    end
    -- addon.GUI.CategoriesFrame.GetCategoryList(addon.Data, addon.Categories);
    AchievementFrame_ShowSubFrame(gui.CategoriesFrame, gui.AchievementsFrame);
    AchievementFrameWaterMark:SetTexture("Interface\\AchievementFrame\\UI-Achievement-AchievementWatermark");

	gui.CategoriesFrame.Update();
	gui.AchievementsFrame.Update();

	-- SwitchAchievementSearchTab(tab:GetID()); -- Does not work yet
end

function achievementFrameTabButton:Comparison_OnClick(id)
    addon.Diagnostics.Trace("addon.AchievementFrameTabButton:Comparison_OnClick");

    -- No comparison support. Just open up the non-comparison achievement tab.
	AchievementFrameTab_OnClick = AchievementFrameBaseTab_OnClick; -- Also set the other tabs back to their default OnClick like Blizzard does
    self.OnClick = self.Base_OnClick;
    self:OnClick(id);
end

function achievementFrameTabButton:AchievementFrame_UpdateTabs(thisTab, thisTabID, clickedTab)
    addon.Diagnostics.Trace("addon.AchievementFrame_UpdateTabs - " .. tostring(thisTabID) .. " - " .. tostring(clickedTab));

    if clickedTab == thisTabID then -- Our tab was clicked
        thisTab.text:SetPoint("CENTER", 0, -5);
    else -- Another tab was clicked
        thisTab.text:SetPoint("CENTER", 0, -3);
    end
end

local tabTab = achievementFrameTabButton:New(AF_TAB_BUTTON_TEXT);