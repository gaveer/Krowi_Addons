KrowiAF.AchievementFrameTabButton = {};
KrowiAF.AchievementFrameTabButton.__index = KrowiAF.AchievementFrameTabButton;

-- Do this in code instead of an xml template since we're not sure if other addons will also add tabs to the AchievementFrame
-- or if we want to add more ourselves
function KrowiAF.AchievementFrameTabButton:New(text)
    KrowiAF.Trace("KrowiAF.AchievementFrameTabButton:New");
    
    local self = {};
    setmetatable(self, KrowiAF.AchievementFrameTabButton);

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
        KrowiAF.AchievementFrameTab_OnEvent(tab, tabID, self, event, ...);
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

function KrowiAF.AchievementFrameTab_OnEvent(thisTab, thisTabID, self, event, ...)
    if event == "ADDON_LOADED" then
		local addonName = ...;
        KrowiAF.Trace("KrowiAF.AchievementFrameTab_OnEvent - " .. event .. " - " .. addonName);

		if addonName and addonName == "Overachiever_Tabs" then
            hooksecurefunc("AchievementFrame_UpdateTabs", function(clickedTab) -- Issue #1: Fix
                self:AchievementFrame_UpdateTabs(thisTab, thisTabID, clickedTab);
            end);
            KrowiAF.Debug("Overachiever_Tabs compatibility enabled");
		end
	end
end

function KrowiAF.AchievementFrameTabButton:Base_OnClick(id)
    KrowiAF.Trace("KrowiAF.AchievementFrameTabButton:Base_OnClick");

	AchievementFrame_UpdateTabs(id);

    if KrowiAF.InGuildView() then
        AchievementFrame_ToggleView();
        AchievementFrameGuildEmblemLeft:Hide();
        AchievementFrameGuildEmblemRight:Hide();
    end
    -- KrowiAF.CategoriesFrame.GetCategoryList(KrowiAF.Data, KrowiAF.Categories);
    AchievementFrame_ShowSubFrame(KrowiAF.CategoriesFrame, KrowiAF.AchievementsFrame);
    AchievementFrameWaterMark:SetTexture("Interface\\AchievementFrame\\UI-Achievement-AchievementWatermark");

	KrowiAF.CategoriesFrame.Update();
	KrowiAF.AchievementsFrame.Update();

	-- SwitchAchievementSearchTab(tab:GetID()); -- Does not work yet
end

function KrowiAF.AchievementFrameTabButton:Comparison_OnClick(id)
    KrowiAF.Trace("KrowiAF.AchievementFrameTabButton:Comparison_OnClick");

    -- No comparison support. Just open up the non-comparison achievement tab.
	AchievementFrameTab_OnClick = AchievementFrameBaseTab_OnClick; -- Also set the other tabs back to their default OnClick like Blizzard does
    self.OnClick = self.Base_OnClick;
    self:OnClick(id);
end

function KrowiAF.AchievementFrameTabButton:AchievementFrame_UpdateTabs(thisTab, thisTabID, clickedTab)
    KrowiAF.Trace("KrowiAF.AchievementFrame_UpdateTabs - " .. tostring(thisTabID) .. " - " .. tostring(clickedTab));

    if clickedTab == thisTabID then -- Our tab was clicked
        thisTab.text:SetPoint("CENTER", 0, -5);
    else -- Another tab was clicked
        thisTab.text:SetPoint("CENTER", 0, -3);
    end
end

local tabTab = KrowiAF.AchievementFrameTabButton:New(AF_TAB_BUTTON_TEXT);