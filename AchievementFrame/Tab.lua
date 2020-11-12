local achievementFunctions;

function KrowiAF.AchievementFrame_UpdateTabs(clickedTab) -- Overwrites the debaulft Blizzard_AchievementUI AchievementFrame_UpdateTabs
    KrowiAF.Debug("AchievementFrame_UpdateTabs");
    Blizzard_AchievementFrame_UpdateTabs(clickedTab); -- Call Blizzard function to handle base needs and tabs 1 to 3 (default achievement tabs)
	local tab;
    for i = 4, AchievementFrame.numTabs do -- Skip default achievement tabs (1 to 3)
        KrowiAF.Debug("Updating tab " .. tostring(i));
		tab = _G["AchievementFrameTab"..i];
		if ( i == clickedTab ) then
			tab.text:SetPoint("CENTER", 0, -5);
		else
			tab.text:SetPoint("CENTER", 0, -3);
		end
	end
end

function KrowiAF.AchievementFrameTab_OnClick(id) -- Mimick Blizzard_AchievementUI AchievementFrameBaseTab_OnClick for our own buttons
    KrowiAF.Debug("AchievementFrameTab_OnClick - Tab " .. tostring(id) .. " of " .. tostring(AchievementFrame.numTabs) .. " clicked.");
	KrowiAF.AchievementFrame_UpdateTabs(id);

    if IN_GUILD_VIEW then
        AchievementFrame_ToggleView();
    end
    KrowiAF.AchievementFunctions = achievementFunctions;
    KrowiAF.AchievementFunctions.getCategoryList(ACHIEVEMENTUI_CATEGORIES); -- This needs to happen before AchievementFrame_ShowSubFrame (fix for bug 157885)
    AchievementFrame_ShowSubFrame(AchievementFrameAchievements);
    AchievementFrameWaterMark:SetTexture("Interface\\AchievementFrame\\UI-Achievement-AchievementWatermark");
    AchievementFrameCategoriesBG:SetTexCoord(0, 0.5, 0, 1);
    AchievementFrameGuildEmblemLeft:Hide();
    AchievementFrameGuildEmblemRight:Hide();

	KrowiAF.AchievementFrameCategories_Update();
	KrowiAF.AchievementFunctions.updateFunc();

	-- SwitchAchievementSearchTab(tab:GetID()); -- Does not work yet
end

-- Do this in code instead of an xml template since we're not sure if other addons will also add tabs to the AchievementFrame
-- or if we want to add more ourselves
function KrowiAF.AddNewTab(text, functions)
    local tabID = 0;
    repeat
        tabID = tabID + 1;
    until not _G["AchievementFrameTab" .. tabID];
    PanelTemplates_SetNumTabs(AchievementFrame, tabID);
    local tab = CreateFrame("Button", "AchievementFrameTab" .. tabID, AchievementFrame, "AchievementFrameTabButtonTemplate");
    tab:SetID(tabID);
    tab:SetText(text);
    tab:SetPoint("LEFT", "AchievementFrameTab" .. tabID - 1, "RIGHT", -5, 0);
    tab:SetScript("OnClick", function(self)
        KrowiAF.AchievementFrameTab_OnClick(self:GetID());
        PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB);
    end);
    achievementFunctions = functions;
end

function KrowiAF.LoadTab()
    KrowiAF.Debug("- Achievement Frame - Tab");
    Blizzard_AchievementFrame_UpdateTabs = AchievementFrame_UpdateTabs;
    AchievementFrame_UpdateTabs = KrowiAF.AchievementFrame_UpdateTabs;
    KrowiAF.Debug("     - UpdateTabs extended");
end