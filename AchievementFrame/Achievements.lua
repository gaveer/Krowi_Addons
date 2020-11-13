function KrowiAF.AchievementButton_OnClick (self, button, down, ignoreModifiers)
	KrowiAF.Debug("AchievementButton_OnClick");
	KrowiAF.Debug(self.index);
	if(IsModifiedClick() and not ignoreModifiers) then
		local handled = nil;
		if ( IsModifiedClick("CHATLINK") ) then
			local achievementLink = GetAchievementLink(self.id);
			if ( achievementLink ) then
				handled = ChatEdit_InsertLink(achievementLink);
				if ( not handled and SocialPostFrame and Social_IsShown() ) then
					Social_InsertLink(achievementLink);
					handled = true;
				end
			end
		end
		if ( not handled and IsModifiedClick("QUESTWATCHTOGGLE") ) then
			AchievementButton_ToggleTracking(self.id);
		end
		return;
	end
	if ( self.selected ) then
		if ( not self:IsMouseOver() ) then
			self.highlight:Hide();
		end
		AchievementFrameAchievements_ClearSelection()
		HybridScrollFrame_CollapseButton(AchievementFrameAchievementsContainer);
		AchievementFrameAchievements_Update();
		return;
	end
	
	AchievementFrameAchievements_ClearSelection()
	AchievementFrameAchievements_SelectButton(self);
	local keepIndex = self.index;
	AchievementButton_DisplayAchievement(self, self.id, nil, self.id);
	self.index = keepIndex;
	HybridScrollFrame_ExpandButton(AchievementFrameAchievementsContainer, ((self.index - 1) * ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT), self:GetHeight());
	AchievementFrameAchievements_Update();
	if ( not ignoreModifiers ) then
		AchievementFrameAchievements_AdjustSelection();
	end
end

function KrowiAF.GetCategoryNumAchievements(categoryID)
    KrowiAF.Debug("GetCategoryNumAchievements");
    local numAchievements = 0;
    local numCompleted = 0;
    local completedOffset = 0;
    for _, child in next, KrowiAF.Categories[categoryID].more.Achievements do
        local _, _, _, completed = GetAchievementInfo(child.ID);
        numAchievements = numAchievements + 1;
        if completed then
            numCompleted = numCompleted + 1;
        end
    end
    -- if ACHIEVEMENTUI_SELECTEDFILTER == AchievementFrame_GetCategoryNumAchievements_All then
        return numAchievements, numCompleted, 0;
    -- elseif ACHIEVEMENTUI_SELECTEDFILTER == AchievementFrame_GetCategoryNumAchievements_Complete then
    --     return numCompleted, numCompleted, 0;
    -- elseif ACHIEVEMENTUI_SELECTEDFILTER == AchievementFrame_GetCategoryNumAchievements_Incomplete then
    --     return numAchievements - numCompleted, 0, numAchievements - numCompleted; -- need to check !!!
    -- end
end

function KrowiAF.AchievementFrameAchievements_Update ()
    local category = KrowiAF.AchievementFunctions.selectedCategory;
    KrowiAF.Debug("AchievementFrameAchievements_Update for category '" .. tostring(category) .. "' with name '" .. KrowiAF.Categories[category].more.Name .. "'");

	local scrollFrame = AchievementFrameAchievementsContainer;
	local offset = HybridScrollFrame_GetOffset(scrollFrame);
    local buttons = scrollFrame.buttons;

    local numAchievements, _, completedOffset = KrowiAF.GetCategoryNumAchievements(category);

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

	local extraHeight = scrollFrame.largeButtonHeight or ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT

	local achievementIndex;
	local displayedHeight = 0;
	for i = 1, #buttons do
		achievementIndex = i + offset + completedOffset;
		if ( achievementIndex > numAchievements + completedOffset ) then
			buttons[i]:Hide();
        else
            -- passing the achievement ID to the category and nil to the achievementID tricks the function to get the achievement by ID instead of category and ID
            AchievementButton_DisplayAchievement(buttons[i], KrowiAF.Categories[category].more.Achievements[achievementIndex].ID, nil, selection);
			displayedHeight = displayedHeight + buttons[i]:GetHeight();
			buttons[i].index = achievementIndex;
			buttons[i]:SetScript("OnClick", KrowiAF.AchievementButton_OnClick);
		end
	end

	local totalHeight = numAchievements * ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT;
	totalHeight = totalHeight + (extraHeight - ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT);

	HybridScrollFrame_Update(scrollFrame, totalHeight, displayedHeight);

	if selection then
		AchievementFrameAchievements.selection = selection;
	else
		HybridScrollFrame_CollapseButton(scrollFrame);
    end
end