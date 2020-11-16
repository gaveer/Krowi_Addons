KrowiAF.AchievementTab_Old = {};
KrowiAF.AchievementTab_Old.__index = KrowiAF.AchievementTab_Old;

-- Do this in code instead of an xml template since we're not sure if other addons will also add tabs to the AchievementFrame
-- or if we want to add more ourselves
function KrowiAF.AchievementTab_Old:AddNewTab(text, functions)
    KrowiAF.Debug("- Achievement Frame - Tab");
    local self = {};
    setmetatable(self, KrowiAF.AchievementTab_Old);

    local tabID = AchievementFrame.numTabs + 1;
    PanelTemplates_SetNumTabs(AchievementFrame, tabID);
    KrowiAF.Debug("     - Number of tabs increased");

    local tab = CreateFrame("Button", "AchievementFrameTab" .. tabID, AchievementFrame, "AchievementFrameTabButtonTemplate");
    tab:SetID(tabID);
    tab:SetText(text);
    tab:SetScript("OnClick", function(selfFunc)
        self:OnClick(selfFunc:GetID());
        PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB);
    end);
    KrowiAF.Debug("     - Tab with ID " .. tostring(tabID) .. " and text " .. text .. " created");
    
    self.AchievementFunctions = functions;
    KrowiAF.Debug("     - Functions set");

    self.OnClick = self.AchievementFrameTab_OnClick;
    KrowiAF.Debug("     - OnClick set");

    hooksecurefunc("AchievementFrame_UpdateTabs", function(clickedTab)
        if clickedTab == tabID then
            tab.text:SetPoint("CENTER", 0, -5);
        else
            tab.text:SetPoint("CENTER", 0, -3);
        end
    end);
    KrowiAF.Debug("     - AchievementFrame_UpdateTabs hooked");
    
    hooksecurefunc("AchievementFrame_SetTabs", function ()
        tab:SetPoint("LEFT", "AchievementFrameTab" .. tabID - 1, "RIGHT", -5, 0); -- Can break if other addon adds tab with "bad" name
    end);
    KrowiAF.Debug("     - AchievementFrame_SetTabs hooked");

    hooksecurefunc("AchievementFrame_DisplayComparison", function ()
        self.OnClick = self.AchievementFrameComparisonTab_OnClick;
    end);
    KrowiAF.Debug("     - AchievementFrame_DisplayComparison hooked");

    return self;
end

function KrowiAF.AchievementTab_Old:AchievementFrameTab_OnClick(id) -- Mimick Blizzard_AchievementUI AchievementFrameBaseTab_OnClick for our own buttons
    KrowiAF.Trace("KrowiAF.AchievementFrameTab_OnClick - Tab " .. tostring(id) .. " of " .. tostring(AchievementFrame.numTabs) .. " clicked.");
	AchievementFrame_UpdateTabs(id);

    if KrowiAF.InGuildView_Old() then
        AchievementFrame_ToggleView();
    end
    KrowiAF.AchievementFunctions = self.AchievementFunctions;
    KrowiAF.AchievementFrameCategories_GetCategoryList_Old(ACHIEVEMENTUI_CATEGORIES); -- This needs to happen before AchievementFrame_ShowSubFrame (fix for bug 157885)
    AchievementFrame_ShowSubFrame(AchievementFrameAchievements);
    AchievementFrameWaterMark:SetTexture("Interface\\AchievementFrame\\UI-Achievement-AchievementWatermark");
    AchievementFrameCategoriesBG:SetTexCoord(0, 0.5, 0, 1);
    AchievementFrameGuildEmblemLeft:Hide();
    AchievementFrameGuildEmblemRight:Hide();

	KrowiAF.AchievementFrameCategories_Update_Old();
	KrowiAF.AchievementFunctions.updateFunc();

    self:EnterTab();

	-- SwitchAchievementSearchTab(tab:GetID()); -- Does not work yet
end

function KrowiAF.AchievementTab_Old:AchievementFrameComparisonTab_OnClick(id)
    KrowiAF.Trace("KrowiAF.AchievementFrameComparisonTab_OnClick - Tab " .. tostring(id) .. " of " .. tostring(AchievementFrame.numTabs) .. " clicked.");
	if KrowiAF.InGuildView_Old() then
		AchievementFrame_ToggleView();
		AchievementFrameGuildEmblemLeft:Hide();
		AchievementFrameGuildEmblemRight:Hide();
	end
    -- We don't have support for comparison yet.  Just open up the non-comparison achievement tab.
	AchievementFrameTab_OnClick = AchievementFrameBaseTab_OnClick; -- Also set the other tabs back to their default OnClick
    self.OnClick = KrowiAF.AchievementFrameTab_OnClick;
    self:OnClick(id);
	AchievementFrameCategoriesBG:SetTexCoord(0, 0.5, 0, 1);
	KrowiAF.AchievementFrameCategories_GetCategoryList_Old(ACHIEVEMENTUI_CATEGORIES);
	KrowiAF.AchievementFrameCategories_Update_Old();
	AchievementFrame_UpdateTabs(id);

    KrowiAF.AchievementFunctions.updateFunc();
    
    self:EnterTab();
    
	-- SwitchAchievementSearchTab(id); -- Does not work yet
end

-- When we enter our own tab, set some things to our code
function KrowiAF.AchievementTab_Old:EnterTab()
	for _, button in next, AchievementFrameAchievementsContainer.buttons do
        button:SetScript("OnClick", KrowiAF.AchievementButton_OnClick_Old);
        AchievementFrameAchievementsContainer.update = KrowiAF.AchievementFrameAchievements_Update_Old;
	end
end

-- When we leave our own tab, set some things back to the Blizzard ones
function KrowiAF.AchievementTab_Old:LeaveTab()
	for _, button in next, AchievementFrameAchievementsContainer.buttons do
        button:SetScript("OnClick", AchievementButton_OnClick);
        AchievementFrameAchievementsContainer.update = AchievementFrameAchievements_Update;
	end
end
