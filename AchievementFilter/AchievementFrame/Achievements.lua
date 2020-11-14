local achievementUIFontHeight;

function KrowiAF.GetFilteredAchievements(categoryID)
    KrowiAF.Trace("KrowiAF.GetFilteredAchievements");

	local achievements = {};
	for _, achievement in next, KrowiAF.Categories[categoryID].more.Achievements do
		-- if ACHIEVEMENTUI_SELECTEDFILTER == AchievementFrame_GetCategoryNumAchievements_All then
			tinsert(achievements, achievement.ID);
		-- elseif ACHIEVEMENTUI_SELECTEDFILTER == AchievementFrame_GetCategoryNumAchievements_Complete then
		-- 	local _, _, _, completed = GetAchievementInfo(achievement.ID);
		-- 	if completed then
		-- 		tinsert(achievements, achievement.ID);
		-- 	end
		-- elseif ACHIEVEMENTUI_SELECTEDFILTER == AchievementFrame_GetCategoryNumAchievements_Incomplete then
		-- 	local _, _, _, completed = GetAchievementInfo(achievement.ID);
		-- 	if not completed then
		-- 		tinsert(achievements, achievement.ID);
		-- 	end
		-- end
	end

	return achievements;
end

function KrowiAF.AchievementFrameAchievements_Update()
    local category = KrowiAF.AchievementFunctions.selectedCategory;
    KrowiAF.Debug("KrowiAF.AchievementFrameAchievements_Update for category '" .. tostring(category) .. "' with name '" .. KrowiAF.Categories[category].more.Name .. "'");

	local scrollFrame = AchievementFrameAchievementsContainer;
	local offset = HybridScrollFrame_GetOffset(scrollFrame);
    local buttons = scrollFrame.buttons;
	local achievements = KrowiAF.GetFilteredAchievements(category);
	
    -- Leaving it in for now, doesn't break anything and future proofs
	-- If the current category is feats of strength and there are no entries then show the explanation text
	if AchievementFrame_IsFeatOfStrength() and #KrowiAF.Categories[category].more.Achievements == 0 then
		if AchievementFrame.selectedTab == 1 then
			AchievementFrameAchievementsFeatOfStrengthText:SetText(FEAT_OF_STRENGTH_DESCRIPTION);
		end
		AchievementFrameAchievementsFeatOfStrengthText:Show();
	else
		AchievementFrameAchievementsFeatOfStrengthText:Hide();
	end

	local selection = AchievementFrameAchievements.selection;
	if selection then
		AchievementButton_ResetObjectives();
	end

	local extraHeight = scrollFrame.largeButtonHeight or ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT;

	local index;
	local displayedHeight = 0;
	for i = 1, #buttons do
		index = i + offset;
		if index > #achievements then
			buttons[i]:Hide();
		else
			KrowiAF.AchievementButton_DisplayAchievement(buttons[i], KrowiAF.Categories[category].more.Achievements[index].ID, selection);
			displayedHeight = displayedHeight + buttons[i]:GetHeight();
		end
	end

	local totalHeight = #achievements * ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT;
	totalHeight = totalHeight + (extraHeight - ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT);

	HybridScrollFrame_Update(scrollFrame, totalHeight, displayedHeight);

	if selection then
		AchievementFrameAchievements.selection = selection;
	else
		HybridScrollFrame_CollapseButton(scrollFrame);
    end
end

function KrowiAF.AchievementFrameAchievements_ForceUpdate ()
	if ( AchievementFrameAchievements.selection ) then
		local nextID = GetNextAchievement(AchievementFrameAchievements.selection);
		local id, _, _, completed = GetAchievementInfo(AchievementFrameAchievements.selection);
		if ( nextID and completed ) then
			AchievementFrameAchievements.selection = nil;
		end
	end
	AchievementFrameAchievementsObjectives:Hide();
	AchievementFrameAchievementsObjectives.id = nil;

	local buttons = AchievementFrameAchievementsContainer.buttons;
	for i, button in next, buttons do
		button.id = nil;
	end

	KrowiAF.AchievementFrameAchievements_Update();
end

function KrowiAF.AchievementButton_OnClick(self, button, down, ignoreModifiers)
	KrowiAF.Trace("KrowiAF.AchievementButton_OnClick for achievement " .. tostring(self.id));

	if IsModifiedClick() and not ignoreModifiers then
		local handled = nil;
		if IsModifiedClick("CHATLINK") then
			local achievementLink = GetAchievementLink(self.id);
			if achievementLink then
				handled = ChatEdit_InsertLink(achievementLink);
				if not handled and SocialPostFrame and Social_IsShown() then
					Social_InsertLink(achievementLink);
					handled = true;
				end
			end
		end
		if not handled and IsModifiedClick("QUESTWATCHTOGGLE") then
			AchievementButton_ToggleTracking(self.id);
		end
		return;
	end

	if self.selected then
		if not self:IsMouseOver() then
			self.highlight:Hide();
		end
		AchievementFrameAchievements_ClearSelection()
		HybridScrollFrame_CollapseButton(AchievementFrameAchievementsContainer);
		AchievementFrameAchievements_Update();
		return;
	end
	AchievementFrameAchievements_ClearSelection()
	AchievementFrameAchievements_SelectButton(self);
	KrowiAF.AchievementButton_DisplayAchievement(self, self.id, self.id);
	HybridScrollFrame_ExpandButton(AchievementFrameAchievementsContainer, ((self.index - 1) * ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT), self:GetHeight());
	AchievementFrameAchievements_Update();
	if not ignoreModifiers then
		AchievementFrameAchievements_AdjustSelection();
	end
end

function KrowiAF.AchievementButton_DisplayAchievement(button, achievement, selectionID, renderOffScreen)
	local id, name, points, completed, month, day, year, description, flags, icon, rewardText, isGuild, wasEarnedByMe, earnedBy = GetAchievementInfo(achievement);
    KrowiAF.Trace("KrowiAF.AchievementButton_DisplayAchievement for achievement " .. tostring(id));

	if not id then
		button:Hide();
		return;
	else
		button:Show();
	end

	button.index = achievement;
	button.element = true;

	if button.id ~= id then
		local saturatedStyle;
		if bit.band(flags, ACHIEVEMENT_FLAGS_ACCOUNT) == ACHIEVEMENT_FLAGS_ACCOUNT then
			button.accountWide = true;
			saturatedStyle = "account";
		else
			button.accountWide = nil;
			if KrowiAF.InGuildView() then
				saturatedStyle = "guild";
			else
				saturatedStyle = "normal";
			end
		end
		button.id = id;
		button.label:SetWidth(ACHIEVEMENTBUTTON_LABELWIDTH);
		button.label:SetText(name)

		if GetPreviousAchievement(id) then
			-- If this is a progressive achievement, show the total score.
			AchievementShield_SetPoints(AchievementButton_GetProgressivePoints(id), button.shield.points, AchievementPointsFont, AchievementPointsFontSmall);
		else
			AchievementShield_SetPoints(points, button.shield.points, AchievementPointsFont, AchievementPointsFontSmall);
		end

		if points > 0 then
			button.shield.icon:SetTexture([[Interface\AchievementFrame\UI-Achievement-Shields]]);
		else
			button.shield.icon:SetTexture([[Interface\AchievementFrame\UI-Achievement-Shields-NoPoints]]);
		end

		if isGuild then
			button.shield.points:Show();
			button.shield.wasEarnedByMe = nil;
			button.shield.earnedBy = nil;
		else
			button.shield.wasEarnedByMe = not (completed and not wasEarnedByMe);
			button.shield.earnedBy = earnedBy;
		end

		button.shield.id = id;
		button.description:SetText(description);
		button.hiddenDescription:SetText(description);
		button.numLines = ceil(button.hiddenDescription:GetHeight() / achievementUIFontHeight);
		button.icon.texture:SetTexture(icon);
		if completed or wasEarnedByMe then
			button.completed = true;
			button.dateCompleted:SetText(FormatShortDate(day, month, year));
			button.dateCompleted:Show();
			if button.saturatedStyle ~= saturatedStyle then
				button:Saturate();
			end
		else
			button.completed = nil;
			button.dateCompleted:Hide();
			button:Desaturate();
		end

		if rewardText == "" then
			button.reward:Hide();
			button.rewardBackground:Hide();
		else
			button.reward:SetText(rewardText);
			button.reward:Show();
			button.rewardBackground:Show();
			if button.completed then
				button.rewardBackground:SetVertexColor(1, 1, 1);
			else
				button.rewardBackground:SetVertexColor(0.35, 0.35, 0.35);
			end
		end

		if IsTrackedAchievement(id) then
			button.check:Show();
			button.label:SetWidth(button.label:GetStringWidth() + 4); -- This +4 here is to fudge around any string width issues that arize from resizing a string set to its string width. See bug 144418 for an example.
			button.tracked:SetChecked(true);
			button.tracked:Show();
		else
			button.check:Hide();
			button.tracked:SetChecked(false);
			button.tracked:Hide();
		end

		AchievementButton_UpdatePlusMinusTexture(button);
	end

	if id == selectionID then
		local achievements = AchievementFrameAchievements;

		achievements.selection = button.id;
		achievements.selectionIndex = button.index;
		button.selected = true;
		button.highlight:Show();
		local height = AchievementButton_DisplayObjectives(button, button.id, button.completed, renderOffScreen);
		if height == ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT then
			button:Collapse();
		else
			button:Expand(height);
		end
		if not completed or (not wasEarnedByMe and not isGuild) then
			button.tracked:Show();
		end
	elseif button.selected then
		button.selected = nil;
		if not button:IsMouseOver() then
			button.highlight:Hide();
		end
		button:Collapse();
		button.description:Show();
		button.hiddenDescription:Hide();
	end

	return id;
end

function KrowiAF.LoadAchievements()
	KrowiAF.Debug("- Achievement Frame - Achievements");
	if ( not achievementUIFontHeight ) then
		local _, fontHeight = AchievementFrameAchievementsContainer.buttons[1].description:GetFont();
		achievementUIFontHeight = fontHeight;
	end
	KrowiAF.Debug("     - Achievement UI font height set");

-- Hooked all blizz achi functions to trace execution te debug scroll frame
    hooksecurefunc("AchievementFrameAchievements_OnLoad", function() KrowiAF.Trace("|cFF333333AchievementFrameAchievements_OnLoad|r"); end);
    hooksecurefunc("AchievementFrameAchievements_OnEvent", function() KrowiAF.Trace("|cFF333333AchievementFrameAchievements_OnEvent|r"); end);
    hooksecurefunc("AchievementFrameAchievementsBackdrop_OnLoad", function() KrowiAF.Trace("|cFF333333AchievementFrameAchievementsBackdrop_OnLoad|r"); end);
    hooksecurefunc("AchievementFrameAchievements_Update", function() KrowiAF.Trace("|cFF333333AchievementFrameAchievements_Update|r"); end);
    hooksecurefunc("AchievementFrameAchievements_ForceUpdate", function() KrowiAF.Trace("|cFF333333AchievementFrameAchievements_ForceUpdate|r"); end);
    hooksecurefunc("AchievementFrameAchievements_ClearSelection", function() KrowiAF.Trace("|cFF333333AchievementFrameAchievements_ClearSelection|r"); end);
    hooksecurefunc("AchievementFrameAchievements_SetupButton", function() KrowiAF.Trace("|cFF333333AchievementFrameAchievements_SetupButton|r"); end);
    hooksecurefunc("AchievementFrameAchievements_ToggleView", function() KrowiAF.Trace("|cFF333333AchievementFrameAchievements_ToggleView|r"); end);
    hooksecurefunc("AchievementIcon_Desaturate", function() KrowiAF.Trace("|cFF333333AchievementIcon_Desaturate|r"); end);
    hooksecurefunc("AchievementIcon_Saturate", function() KrowiAF.Trace("|cFF333333AchievementIcon_Saturate|r"); end);
    hooksecurefunc("AchievementIcon_OnLoad", function() KrowiAF.Trace("|cFF333333AchievementIcon_OnLoad|r"); end);
	hooksecurefunc("AchievementShield_Desaturate", function() KrowiAF.Trace("|cFF333333AchievementShield_Desaturate|r"); end);
	hooksecurefunc("AchievementShield_Saturate", function() KrowiAF.Trace("|cFF333333AchievementShield_Saturate|r"); end);
	hooksecurefunc("AchievementShield_OnLoad", function() KrowiAF.Trace("|cFF333333AchievementShield_OnLoad|r"); end);
	hooksecurefunc("AchievementButton_UpdatePlusMinusTexture", function() KrowiAF.Trace("|cFF333333AchievementButton_UpdatePlusMinusTexture|r"); end);
	hooksecurefunc("AchievementButton_Collapse", function() KrowiAF.Trace("|cFF333333AchievementButton_Collapse|r"); end);
	hooksecurefunc("AchievementButton_Expand", function() KrowiAF.Trace("|cFF333333AchievementButton_Expand|r"); end);
	hooksecurefunc("AchievementButton_Saturate", function() KrowiAF.Trace("|cFF333333AchievementButton_Saturate|r"); end);
	hooksecurefunc("AchievementButton_Desaturate", function() KrowiAF.Trace("|cFF333333AchievementButton_Desaturate|r"); end);
	hooksecurefunc("AchievementButton_OnLoad", function() KrowiAF.Trace("|cFF333333AchievementButton_OnLoad|r"); end);
	hooksecurefunc("AchievementButton_OnClick", function() KrowiAF.Trace("|cFF666666AchievementButton_OnClick|r"); end);
	hooksecurefunc("AchievementButton_ToggleTracking", function() KrowiAF.Trace("|cFF333333AchievementButton_ToggleTracking|r"); end);
	hooksecurefunc("AchievementButton_DisplayAchievement", function() KrowiAF.Trace("|cFF333333AchievementButton_DisplayAchievement|r"); end);
	hooksecurefunc("AchievementFrameAchievements_SelectButton", function() KrowiAF.Trace("|cFF333333AchievementFrameAchievements_SelectButton|r"); end);
	hooksecurefunc("AchievementButton_ResetObjectives", function() KrowiAF.Trace("|cFF333333AchievementButton_ResetObjectives|r"); end);
	hooksecurefunc("AchievementButton_DisplayObjectives", function() KrowiAF.Trace("|cFF333333AchievementButton_DisplayObjectives|r"); end);
	hooksecurefunc("AchievementShield_SetPoints", function() KrowiAF.Trace("|cFF333333AchievementShield_SetPoints|r"); end);
	hooksecurefunc("AchievementButton_ResetTable", function() KrowiAF.Trace("|cFF333333AchievementButton_ResetTable|r"); end);
	hooksecurefunc("AchievementButton_ResetCriteria", function() KrowiAF.Trace("|cFF333333AchievementButton_ResetCriteria|r"); end);
	hooksecurefunc("AchievementButton_GetCriteria", function() KrowiAF.Trace("|cFF333333AchievementButton_GetCriteria|r"); end);
	hooksecurefunc("AchievementButton_ResetMiniAchievements", function() KrowiAF.Trace("|cFF333333AchievementButton_ResetMiniAchievements|r"); end);
	hooksecurefunc("AchievementButton_GetMiniAchievement", function() KrowiAF.Trace("|cFF333333AchievementButton_GetMiniAchievement|r"); end);
	hooksecurefunc("AchievementButton_ResetProgressBars", function() KrowiAF.Trace("|cFF333333AchievementButton_ResetProgressBars|r"); end);
	hooksecurefunc("AchievementButton_GetProgressBar", function() KrowiAF.Trace("|cFF333333AchievementButton_GetProgressBar|r"); end);
	hooksecurefunc("AchievementButton_ResetMetas", function() KrowiAF.Trace("|cFF333333AchievementButton_ResetMetas|r"); end);
	hooksecurefunc("AchievementButton_GetMeta", function() KrowiAF.Trace("|cFF333333AchievementButton_GetMeta|r"); end);
	hooksecurefunc("AchievementButton_ToggleMetaView", function() KrowiAF.Trace("|cFF333333AchievementButton_ToggleMetaView|r"); end);
	hooksecurefunc("AchievementButton_GetProgressivePoints", function() KrowiAF.Trace("|cFF333333AchievementButton_GetProgressivePoints|r"); end);
	hooksecurefunc("AchievementObjectives_DisplayProgressiveAchievement", function() KrowiAF.Trace("|cFF333333AchievementObjectives_DisplayProgressiveAchievement|r"); end);
	hooksecurefunc("AchievementFrame_GetCategoryNumAchievements_All", function() KrowiAF.Trace("|cFF333333AchievementFrame_GetCategoryNumAchievements_All|r"); end);
	hooksecurefunc("AchievementFrame_GetCategoryNumAchievements_Complete", function() KrowiAF.Trace("|cFF333333AchievementFrame_GetCategoryNumAchievements_Complete|r"); end);
	hooksecurefunc("AchievementFrame_GetCategoryNumAchievements_Incomplete", function() KrowiAF.Trace("|cFF333333AchievementFrame_GetCategoryNumAchievements_Incomplete|r"); end);
	hooksecurefunc("AchievementFrameFilterDropDown_OnLoad", function() KrowiAF.Trace("|cFF333333AchievementFrameFilterDropDown_OnLoad|r"); end);
	hooksecurefunc("AchievementFrameFilterDropDown_Initialize", function() KrowiAF.Trace("|cFF333333AchievementFrameFilterDropDown_Initialize|r"); end);
	hooksecurefunc("AchievementFrameFilterDropDownButton_OnClick", function() KrowiAF.Trace("|cFF333333AchievementFrameFilterDropDownButton_OnClick|r"); end);
	hooksecurefunc("AchievementFrame_SetFilter", function() KrowiAF.Trace("|cFF333333AchievementFrame_SetFilter|r"); end);
	hooksecurefunc("AchievementObjectives_DisplayCriteria", function() KrowiAF.Trace("|cFF333333AchievementObjectives_DisplayCriteria|r"); end);
	hooksecurefunc("AchievementFrameStats_OnEvent", function() KrowiAF.Trace("|cFF333333AchievementFrameStats_OnEvent|r"); end);
	hooksecurefunc("AchievementFrameStats_OnLoad", function() KrowiAF.Trace("|cFF333333AchievementFrameStats_OnLoad|r"); end);
	hooksecurefunc("AchievementFrameStats_Update", function() KrowiAF.Trace("|cFF333333AchievementFrameStats_Update|r"); end);
	hooksecurefunc("AchievementFrameStats_SetStat", function() KrowiAF.Trace("|cFF333333AchievementFrameStats_SetStat|r"); end);
	hooksecurefunc("AchievementFrameStats_SetHeader", function() KrowiAF.Trace("|cFF333333AchievementFrameStats_SetHeader|r"); end);
	hooksecurefunc("AchievementStatButton_OnLoad", function() KrowiAF.Trace("|cFF333333AchievementStatButton_OnLoad|r"); end);
	hooksecurefunc("AchievementStatButton_OnClick", function() KrowiAF.Trace("|cFF333333AchievementStatButton_OnClick|r"); end);
	hooksecurefunc("AchievementStatButton_OnEnter", function() KrowiAF.Trace("|cFF333333AchievementStatButton_OnEnter|r"); end);
	hooksecurefunc("AchievementFrameSummary_OnShow", function() KrowiAF.Trace("|cFF333333AchievementFrameSummary_OnShow|r"); end);
	hooksecurefunc("AchievementFrameSummary_Update", function() KrowiAF.Trace("|cFF333333AchievementFrameSummary_Update|r"); end);
	hooksecurefunc("AchievementFrameSummary_UpdateSummaryCategories", function() KrowiAF.Trace("|cFF333333AchievementFrameSummary_UpdateSummaryCategories|r"); end);
	hooksecurefunc("AchievementFrameSummary_ToggleView", function() KrowiAF.Trace("|cFF333333AchievementFrameSummary_ToggleView|r"); end);
	hooksecurefunc("AchievementFrameSummary_UpdateAchievements", function() KrowiAF.Trace("|cFF333333AchievementFrameSummary_UpdateAchievements|r"); end);
	hooksecurefunc("AchievementFrameSummaryCategoriesStatusBar_Update", function() KrowiAF.Trace("|cFF333333AchievementFrameSummaryCategoriesStatusBar_Update|r"); end);
	hooksecurefunc("AchievementFrameSummaryAchievement_OnLoad", function() KrowiAF.Trace("|cFF333333AchievementFrameSummaryAchievement_OnLoad|r"); end);
	hooksecurefunc("AchievementFrameSummaryAchievement_SetGuildTextures", function() KrowiAF.Trace("|cFF333333AchievementFrameSummaryAchievement_SetGuildTextures|r"); end);
	hooksecurefunc("AchievementFrameSummaryAchievement_OnClick", function() KrowiAF.Trace("|cFF333333AchievementFrameSummaryAchievement_OnClick|r"); end);
	hooksecurefunc("AchievementFrameSummaryAchievement_OnEnter", function() KrowiAF.Trace("|cFF333333AchievementFrameSummaryAchievement_OnEnter|r"); end);
	hooksecurefunc("AchievementFrameSummaryCategoryButton_OnClick", function() KrowiAF.Trace("|cFF333333AchievementFrameSummaryCategoryButton_OnClick|r"); end);
	hooksecurefunc("AchievementFrameSummaryCategory_OnLoad", function() KrowiAF.Trace("|cFF333333AchievementFrameSummaryCategory_OnLoad|r"); end);
	hooksecurefunc("AchievementFrame_GetCategoryTotalNumAchievements", function() KrowiAF.Trace("|cFF333333AchievementFrame_GetCategoryTotalNumAchievements|r"); end);
	hooksecurefunc("AchievementFrameSummaryCategory_OnEvent", function() KrowiAF.Trace("|cFF333333AchievementFrameSummaryCategory_OnEvent|r"); end);
	hooksecurefunc("AchievementFrameSummaryCategory_OnShow", function() KrowiAF.Trace("|cFF333333AchievementFrameSummaryCategory_OnShow|r"); end);
	hooksecurefunc("AchievementFrameSummaryCategory_OnHide", function() KrowiAF.Trace("|cFF333333AchievementFrameSummaryCategory_OnHide|r"); end);
	hooksecurefunc("AchievementFrame_SelectAchievement", function() KrowiAF.Trace("|cFF333333AchievementFrame_SelectAchievement|r"); end);
	hooksecurefunc("AchievementFrameAchievements_FindSelection", function() KrowiAF.Trace("|cFF333333AchievementFrameAchievements_FindSelection|r"); end);
	hooksecurefunc("AchievementFrameAchievements_AdjustSelection", function() KrowiAF.Trace("|cFF333333AchievementFrameAchievements_AdjustSelection|r"); end);
	hooksecurefunc("AchievementFrame_SelectSummaryStatistic", function() KrowiAF.Trace("|cFF333333AchievementFrame_SelectSummaryStatistic|r"); end);
	hooksecurefunc("AchievementFrame_SelectStatisticByAchievementID", function() KrowiAF.Trace("|cFF333333AchievementFrame_SelectStatisticByAchievementID|r"); end);
	hooksecurefunc("AchievementFrameComparison_OnLoad", function() KrowiAF.Trace("|cFF333333AchievementFrameComparison_OnLoad|r"); end);
	hooksecurefunc("AchievementFrameComparisonContainer_OnLoad", function() KrowiAF.Trace("|cFF333333AchievementFrameComparisonContainer_OnLoad|r"); end);
	hooksecurefunc("AchievementFrameComparisonStatsContainer_OnLoad", function() KrowiAF.Trace("|cFF333333AchievementFrameComparisonStatsContainer_OnLoad|r"); end);
	hooksecurefunc("AchievementFrameComparison_OnShow", function() KrowiAF.Trace("|cFF333333AchievementFrameComparison_OnShow|r"); end);
	hooksecurefunc("AchievementFrameComparison_OnHide", function() KrowiAF.Trace("|cFF333333AchievementFrameComparison_OnHide|r"); end);
	hooksecurefunc("AchievementFrameComparison_OnEvent", function() KrowiAF.Trace("|cFF333333AchievementFrameComparison_OnEvent|r"); end);
	hooksecurefunc("AchievementFrameComparison_SetUnit", function() KrowiAF.Trace("|cFF333333AchievementFrameComparison_SetUnit|r"); end);
	hooksecurefunc("AchievementFrameComparison_ClearSelection", function() KrowiAF.Trace("|cFF333333AchievementFrameComparison_ClearSelection|r"); end);
	hooksecurefunc("AchievementFrameComparison_ForceUpdate", function() KrowiAF.Trace("|cFF333333AchievementFrameComparison_ForceUpdate|r"); end);
	hooksecurefunc("AchievementFrameComparison_Update", function() KrowiAF.Trace("|cFF333333AchievementFrameComparison_Update|r"); end);
	hooksecurefunc("AchievementFrameComparison_DisplayAchievement", function() KrowiAF.Trace("|cFF333333AchievementFrameComparison_DisplayAchievement|r"); end);
	hooksecurefunc("AchievementFrameComparison_UpdateStats", function() KrowiAF.Trace("|cFF333333AchievementFrameComparison_UpdateStats|r"); end);
	hooksecurefunc("AchievementFrameComparisonStat_OnLoad", function() KrowiAF.Trace("|cFF333333AchievementFrameComparisonStat_OnLoad|r"); end);
	hooksecurefunc("AchievementFrameComparisonStats_SetStat", function() KrowiAF.Trace("|cFF333333AchievementFrameComparisonStats_SetStat|r"); end);
	hooksecurefunc("AchievementFrameComparisonStats_SetHeader", function() KrowiAF.Trace("|cFF333333AchievementFrameComparisonStats_SetHeader|r"); end);
	hooksecurefunc("AchievementComparisonPlayerButton_Saturate", function() KrowiAF.Trace("|cFF333333AchievementComparisonPlayerButton_Saturate|r"); end);
	hooksecurefunc("AchievementComparisonPlayerButton_Desaturate", function() KrowiAF.Trace("|cFF333333AchievementComparisonPlayerButton_Desaturate|r"); end);
	hooksecurefunc("AchievementComparisonPlayerButton_OnLoad", function() KrowiAF.Trace("|cFF333333AchievementComparisonPlayerButton_OnLoad|r"); end);
	hooksecurefunc("AchievementComparisonFriendButton_Saturate", function() KrowiAF.Trace("|cFF333333AchievementComparisonFriendButton_Saturate|r"); end);
	hooksecurefunc("AchievementComparisonFriendButton_Desaturate", function() KrowiAF.Trace("|cFF333333AchievementComparisonFriendButton_Desaturate|r"); end);
	hooksecurefunc("AchievementComparisonFriendButton_OnLoad", function() KrowiAF.Trace("|cFF333333AchievementComparisonFriendButton_OnLoad|r"); end);
	hooksecurefunc("AchievementFrame_IsComparison", function() KrowiAF.Trace("|cFF333333AchievementFrame_IsComparison|r"); end);
	hooksecurefunc("AchievementFrame_IsFeatOfStrength", function() KrowiAF.Trace("|cFF333333AchievementFrame_IsFeatOfStrength|r"); end);
	hooksecurefunc("AchievementFrame_ClearTextures", function() KrowiAF.Trace("|cFF333333AchievementFrame_ClearTextures|r"); end);
	hooksecurefunc("AchievementFrame_LoadTextures", function() KrowiAF.Trace("|cFF333333AchievementFrame_LoadTextures|r"); end);
	hooksecurefunc("AchievementMeta_OnEnter", function() KrowiAF.Trace("|cFF333333AchievementMeta_OnEnter|r"); end);
	hooksecurefunc("AchievementMeta_OnLeave", function() KrowiAF.Trace("|cFF333333AchievementMeta_OnLeave|r"); end);
	hooksecurefunc("AchievementShield_OnEnter", function() KrowiAF.Trace("|cFF333333AchievementShield_OnEnter|r"); end);
	hooksecurefunc("AchievementShield_OnLeave", function() KrowiAF.Trace("|cFF333333AchievementShield_OnLeave|r"); end);
	hooksecurefunc("AchievementFrameFilterDropDown_OnEnter", function() KrowiAF.Trace("|cFF333333AchievementFrameFilterDropDown_OnEnter|r"); end);
	hooksecurefunc("AchievementFrameAchievements_CheckGuildMembersTooltip", function() KrowiAF.Trace("|cFF333333AchievementFrameAchievements_CheckGuildMembersTooltip|r"); end);
	hooksecurefunc("AchievementFrame_FindDisplayedAchievement", function() KrowiAF.Trace("|cFF333333AchievementFrame_FindDisplayedAchievement|r"); end);
	hooksecurefunc("AchievementFrame_HideSearchPreview", function() KrowiAF.Trace("|cFF333333AchievementFrame_HideSearchPreview|r"); end);
	hooksecurefunc("AchievementFrame_UpdateSearchPreview", function() KrowiAF.Trace("|cFF333333AchievementFrame_UpdateSearchPreview|r"); end);
	hooksecurefunc("AchievementFrameSearchBox_OnUpdate", function() KrowiAF.Trace("|cFF333333AchievementFrameSearchBox_OnUpdate|r"); end);
	hooksecurefunc("AchievementFrameSearchProgressBar_OnUpdate", function() KrowiAF.Trace("|cFF333333AchievementFrameSearchProgressBar_OnUpdate|r"); end);
	hooksecurefunc("AchievementFrame_ShowSearchPreviewResults", function() KrowiAF.Trace("|cFF333333AchievementFrame_ShowSearchPreviewResults|r"); end);
	hooksecurefunc("AchievementFrameSearchBox_OnTextChanged", function() KrowiAF.Trace("|cFF333333AchievementFrameSearchBox_OnTextChanged|r"); end);
	hooksecurefunc("AchievementFrameSearchBox_OnLoad", function() KrowiAF.Trace("|cFF333333AchievementFrameSearchBox_OnLoad|r"); end);
	hooksecurefunc("AchievementFrameSearchBox_OnShow", function() KrowiAF.Trace("|cFF333333AchievementFrameSearchBox_OnShow|r"); end);
	hooksecurefunc("AchievementFrameSearchBox_OnEnterPressed", function() KrowiAF.Trace("|cFF333333AchievementFrameSearchBox_OnEnterPressed|r"); end);
	hooksecurefunc("AchievementFrameSearchBox_OnFocusLost", function() KrowiAF.Trace("|cFF333333AchievementFrameSearchBox_OnFocusLost|r"); end);
	hooksecurefunc("AchievementFrameSearchBox_OnFocusGained", function() KrowiAF.Trace("|cFF333333AchievementFrameSearchBox_OnFocusGained|r"); end);
	hooksecurefunc("AchievementFrameSearchBox_OnKeyDown", function() KrowiAF.Trace("|cFF333333AchievementFrameSearchBox_OnKeyDown|r"); end);
	hooksecurefunc("AchievementFrame_SetSearchPreviewSelection", function() KrowiAF.Trace("|cFF333333AchievementFrame_SetSearchPreviewSelection|r"); end);
	hooksecurefunc("AcheivementFullSearchResultsButton_OnClick", function() KrowiAF.Trace("|cFF333333AcheivementFullSearchResultsButton_OnClick|r"); end);
	hooksecurefunc("AchievementFrame_ShowFullSearch", function() KrowiAF.Trace("|cFF333333AchievementFrame_ShowFullSearch|r"); end);
	hooksecurefunc("AchievementFrame_UpdateFullSearchResults", function() KrowiAF.Trace("|cFF333333AchievementFrame_UpdateFullSearchResults|r"); end);
	hooksecurefunc("AchievementFrame_SelectSearchItem", function() KrowiAF.Trace("|cFF333333AchievementFrame_SelectSearchItem|r"); end);
	hooksecurefunc("AchievementSearchPreviewButton_OnShow", function() KrowiAF.Trace("|cFF333333AchievementSearchPreviewButton_OnShow|r"); end);
	hooksecurefunc("AchievementSearchPreviewButton_OnLoad", function() KrowiAF.Trace("|cFF333333AchievementSearchPreviewButton_OnLoad|r"); end);
	hooksecurefunc("AchievementSearchPreviewButton_OnEnter", function() KrowiAF.Trace("|cFF333333AchievementSearchPreviewButton_OnEnter|r"); end);
	hooksecurefunc("AchievementSearchPreviewButton_OnClick", function() KrowiAF.Trace("|cFF333333AchievementSearchPreviewButton_OnClick|r"); end);
	hooksecurefunc("AchievementFrameShowAllSearchResults_OnEnter", function() KrowiAF.Trace("|cFF333333AchievementFrameShowAllSearchResults_OnEnter|r"); end);
	hooksecurefunc("AchievementFrame_UpdateSearch", function() KrowiAF.Trace("|cFF333333AchievementFrame_UpdateSearch|r"); end);
	
	hooksecurefunc("AchievementFrame_ToggleAchievementFrame", function() KrowiAF.Trace("|cFF555555AchievementFrame_ToggleAchievementFrame|r"); end);
	hooksecurefunc("AchievementFrame_DisplayComparison", function() KrowiAF.Trace("|cFF555555AchievementFrame_DisplayComparison|r"); end);
	hooksecurefunc("AchievementFrame_OnLoad", function() KrowiAF.Trace("|cFF555555AchievementFrame_OnLoad|r"); end);
	hooksecurefunc("AchievementFrame_OnShow", function() KrowiAF.Trace("|cFF555555AchievementFrame_OnShow|r"); end);
	hooksecurefunc("AchievementFrame_OnHide", function() KrowiAF.Trace("|cFF555555AchievementFrame_OnHide|r"); end);
	hooksecurefunc("AchievementFrame_ForceUpdate", function() KrowiAF.Trace("|cFF555555AchievementFrame_ForceUpdate|r"); end);
	hooksecurefunc("AchievementFrame_SetTabs", function() KrowiAF.Trace("|cFF555555AchievementFrame_SetTabs|r"); end);
	hooksecurefunc("AchievementFrame_UpdateTabs", function() KrowiAF.Trace("|cFF555555AchievementFrame_UpdateTabs|r"); end);
	hooksecurefunc("AchievementFrame_ToggleView", function() KrowiAF.Trace("|cFF555555AchievementFrame_ToggleView|r"); end);
	hooksecurefunc("AchievementFrame_ShowSubFrame", function() KrowiAF.Trace("|cFF555555AchievementFrame_ShowSubFrame|r"); end);
	hooksecurefunc("AchievementFrameCategories_OnLoad", function() KrowiAF.Trace("|cFF555555AchievementFrameCategories_OnLoad|r"); end);
	hooksecurefunc("AchievementFrameCategories_OnEvent", function() KrowiAF.Trace("|cFF555555AchievementFrameCategories_OnEvent|r"); end);
	hooksecurefunc("AchievementFrameCategories_OnShow", function() KrowiAF.Trace("|cFF555555AchievementFrameCategories_OnShow|r"); end);
	hooksecurefunc("AchievementFrameCategories_GetCategoryList", function() KrowiAF.Trace("|cFF555555AchievementFrameCategories_GetCategoryList|r"); end);
	hooksecurefunc("AchievementFrameCategories_Update", function() KrowiAF.Trace("|cFF555555AchievementFrameCategories_Update|r"); end);
	hooksecurefunc("AchievementFrameCategories_DisplayButton", function() KrowiAF.Trace("|cFF555555AchievementFrameCategories_DisplayButton|r"); end);
	hooksecurefunc("AchievementFrameCategory_StatusBarTooltip", function() KrowiAF.Trace("|cFF555555AchievementFrameCategory_StatusBarTooltip|r"); end);
	hooksecurefunc("AchievementFrameCategory_FeatOfStrengthTooltip", function() KrowiAF.Trace("|cFF555555AchievementFrameCategory_FeatOfStrengthTooltip|r"); end);
	hooksecurefunc("AchievementFrameCategories_UpdateTooltip", function() KrowiAF.Trace("|cFF555555AchievementFrameCategories_UpdateTooltip|r"); end);
	hooksecurefunc("AchievementFrameCategories_SelectButton", function() KrowiAF.Trace("|cFF555555AchievementFrameCategories_SelectButton|r"); end);
	hooksecurefunc("AchievementFrameAchievements_OnShow", function() KrowiAF.Trace("|cFF555555AchievementFrameAchievements_OnShow|r"); end);
	hooksecurefunc("AchievementFrameCategories_ClearSelection", function() KrowiAF.Trace("|cFF555555AchievementFrameCategories_ClearSelection|r"); end);
	hooksecurefunc("AchievementFrameComparison_UpdateStatusBars", function() KrowiAF.Trace("|cFF555555AchievementFrameComparison_UpdateStatusBars|r"); end);
	hooksecurefunc("AchievementCategoryButton_OnLoad", function() KrowiAF.Trace("|cFF555555AchievementCategoryButton_OnLoad|r"); end);
	hooksecurefunc("AchievementCategoryButton_OnClick", function() KrowiAF.Trace("|cFF555555AchievementCategoryButton_OnClick|r"); end);
	hooksecurefunc("AchievementFrameAchievements_OnLoad", function() KrowiAF.Trace("|cFF555555AchievementFrameAchievements_OnLoad|r"); end);
	hooksecurefunc("AchievementFrameAchievements_OnEvent", function() KrowiAF.Trace("|cFF555555AchievementFrameAchievements_OnEvent|r"); end);
	hooksecurefunc("AchievementFrameAchievementsBackdrop_OnLoad", function() KrowiAF.Trace("|cFF555555AchievementFrameAchievementsBackdrop_OnLoad|r"); end);
	hooksecurefunc("AchievementFrameAchievements_Update", function() KrowiAF.Trace("|cFF555555AchievementFrameAchievements_Update|r"); end);
	hooksecurefunc("AchievementFrameAchievements_ForceUpdate", function() KrowiAF.Trace("|cFF555555AchievementFrameAchievements_ForceUpdate|r"); end);
	hooksecurefunc("AchievementFrameAchievements_ClearSelection", function() KrowiAF.Trace("|cFF555555AchievementFrameAchievements_ClearSelection|r"); end);
	hooksecurefunc("AchievementFrameAchievements_SetupButton", function() KrowiAF.Trace("|cFF555555AchievementFrameAchievements_SetupButton|r"); end);
	hooksecurefunc("AchievementFrameAchievements_ToggleView", function() KrowiAF.Trace("|cFF555555AchievementFrameAchievements_ToggleView|r"); end);
	hooksecurefunc("AchievementIcon_Desaturate", function() KrowiAF.Trace("|cFF555555AchievementIcon_Desaturate|r"); end);
	hooksecurefunc("AchievementIcon_Saturate", function() KrowiAF.Trace("|cFF555555AchievementIcon_Saturate|r"); end);
	hooksecurefunc("AchievementIcon_OnLoad", function() KrowiAF.Trace("|cFF555555AchievementIcon_OnLoad|r"); end);
	hooksecurefunc("AchievementShield_Desaturate", function() KrowiAF.Trace("|cFF555555AchievementShield_Desaturate|r"); end);
	hooksecurefunc("AchievementShield_Saturate", function() KrowiAF.Trace("|cFF555555AchievementShield_Saturate|r"); end);
	hooksecurefunc("AchievementShield_OnLoad", function() KrowiAF.Trace("|cFF555555AchievementShield_OnLoad|r"); end);
	
	hooksecurefunc("HybridScrollFrame_OnLoad", function() KrowiAF.Trace("|cFF225588HybridScrollFrame_OnLoad|r"); end);
	hooksecurefunc("HybridScrollFrameScrollUp_OnLoad", function() KrowiAF.Trace("|cFF225588HybridScrollFrameScrollUp_OnLoad|r"); end);
	hooksecurefunc("HybridScrollFrameScrollDown_OnLoad", function() KrowiAF.Trace("|cFF225588HybridScrollFrameScrollDown_OnLoad|r"); end);
	hooksecurefunc("HybridScrollFrame_OnValueChanged", function() KrowiAF.Trace("|cFF225588HybridScrollFrame_OnValueChanged|r"); end);
	hooksecurefunc("HybridScrollFrame_UpdateButtonStates", function() KrowiAF.Trace("|cFF225588HybridScrollFrame_UpdateButtonStates|r"); end);
	hooksecurefunc("HybridScrollFrame_OnMouseWheel", function() KrowiAF.Trace("|cFF225588HybridScrollFrame_OnMouseWheel|r"); end);
	hooksecurefunc("HybridScrollFrameScrollButton_OnUpdate", function() KrowiAF.Trace("|cFF225588HybridScrollFrameScrollButton_OnUpdate|r"); end);
	hooksecurefunc("HybridScrollFrameScrollButton_OnClick", function() KrowiAF.Trace("|cFF225588HybridScrollFrameScrollButton_OnClick|r"); end);
	hooksecurefunc("HybridScrollFrame_Update", function() KrowiAF.Trace("|cFF225588HybridScrollFrame_Update|r"); end);
	hooksecurefunc("HybridScrollFrame_GetOffset", function() KrowiAF.Trace("|cFF225588HybridScrollFrame_GetOffset|r"); end);
	hooksecurefunc("HybridScrollFrameScrollChild_OnLoad", function() KrowiAF.Trace("|cFF225588HybridScrollFrameScrollChild_OnLoad|r"); end);
	hooksecurefunc("HybridScrollFrame_ExpandButton", function() KrowiAF.Trace("|cFF225588HybridScrollFrame_ExpandButton|r"); end);
	hooksecurefunc("HybridScrollFrame_CollapseButton", function() KrowiAF.Trace("|cFF225588HybridScrollFrame_CollapseButton|r"); end);
	hooksecurefunc("HybridScrollFrame_SetOffset", function() KrowiAF.Trace("|cFF225588HybridScrollFrame_SetOffset|r"); end);
	hooksecurefunc("HybridScrollFrame_CreateButtons", function() KrowiAF.Trace("|cFF225588HybridScrollFrame_CreateButtons|r"); end);
	hooksecurefunc("HybridScrollFrame_GetButtonIndex", function() KrowiAF.Trace("|cFF225588HybridScrollFrame_GetButtonIndex|r"); end);
	hooksecurefunc("HybridScrollFrame_GetButtons", function() KrowiAF.Trace("|cFF225588HybridScrollFrame_GetButtons|r"); end);
	hooksecurefunc("HybridScrollFrame_SetDoNotHideScrollBar", function() KrowiAF.Trace("|cFF225588HybridScrollFrame_SetDoNotHideScrollBar|r"); end);
	hooksecurefunc("HybridScrollFrame_ScrollToIndex", function() KrowiAF.Trace("|cFF225588HybridScrollFrame_ScrollToIndex|r"); end);
    KrowiAF.Debug("     - OnLoad extended");
end