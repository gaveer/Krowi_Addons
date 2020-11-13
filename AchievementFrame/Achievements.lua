local function displayAchievement(button, frame, achievement, index, selectionID)
	-- This function is based on AchievementButton_DisplayAchievement, with only a few alterations as needed.
	-- Things to always do before calling this:  Overachiever.RecentReminders_Check()  AND  In_Guild_View = isUIInGuildView()
	-- To do after calling this:  delayedToggleView()
	  --local StartTime
	  --if (Overachiever_Debug) then  StartTime = debugprofilestop(); print("displayAchievement:"..(achievement or "nil"))  end
	
	  local id, name, points, completed, month, day, year, description, flags, icon, rewardText, isGuild, wasEarnedByMe, earnedBy
	  if (achievement) then
		id, name, points, completed, month, day, year, description, flags, icon, rewardText, isGuild, wasEarnedByMe, earnedBy = GetAchievementInfo(achievement);
		--if (Overachiever_Debug) then  print("GetAchievementInfo("..achievement..") took "..(debugprofilestop() - StartTime) .." ms.");  end
	  end
	  if ( not id ) then
		button:Hide();
		return;
	  else
		button:Show();
	  end
	
	  button.index = index;
	  button.element = true;
	
	  --if (Overachiever_Debug) then  print("- Next bit took "..(debugprofilestop() - StartTime) .." ms."); StartTime = debugprofilestop();  end
	
	  if ( button.id ~= id ) then
		local saturatedStyle;
		if ( bit.band(flags, ACHIEVEMENT_FLAGS_ACCOUNT) == ACHIEVEMENT_FLAGS_ACCOUNT ) then
		  button.accountWide = true;
		  saturatedStyle = "account";
		else
		  button.accountWide = nil;
		  if ( In_Guild_View ) then
			saturatedStyle = "guild";
		  else
			saturatedStyle = "normal";
		  end
		end
	
		-- local guildach = isGuildAchievement(id)
		-- setButtonGuildView(button, guildach)
		-- if (In_Guild_View) then
		--   if (not guildach) then
		-- 	AchievementFrame_ToggleView()
		-- 	In_Guild_View = nil
		--   end
		-- elseif (guildach) then
		--   AchievementFrame_ToggleView()
		--   In_Guild_View = true
		-- end
	
		button.id = id;
		button.label:SetWidth(ACHIEVEMENTBUTTON_LABELWIDTH);
		button.label:SetText(name)
	
		if ( GetPreviousAchievement(id) ) then
		  -- If this is a progressive achievement, show the total score.
		  AchievementShield_SetPoints(AchievementButton_GetProgressivePoints(id), button.shield.points, AchievementPointsFont, AchievementPointsFontSmall);
		else
		  AchievementShield_SetPoints(points, button.shield.points, AchievementPointsFont, AchievementPointsFontSmall);
		end
		if ( points > 0 ) then
		  button.shield.icon:SetTexture([[Interface\AchievementFrame\UI-Achievement-Shields]]);
		else
		  button.shield.icon:SetTexture([[Interface\AchievementFrame\UI-Achievement-Shields-NoPoints]]);
		end
	
		if ( isGuild ) then
		  button.shield.points:Show();
		  button.shield.wasEarnedByMe = nil;
		  button.shield.earnedBy = nil;
		else
		  button.shield.wasEarnedByMe = not (completed and not wasEarnedByMe);
		  button.shield.earnedBy = earnedBy;
		end
	
		button.description:SetText(description);
		button.hiddenDescription:SetText(description);
		button.numLines = ceil(button.hiddenDescription:GetHeight() / ACHIEVEMENTUI_FONTHEIGHT);
		button.icon.texture:SetTexture(icon);
		if ( completed or wasEarnedByMe ) then
		  button.completed = true;
		  button.dateCompleted:SetText(string.format(SHORTDATE, day, month, year));
		  button.dateCompleted:Show();
		  button:Saturate();
		  if ( button.saturatedStyle ~= saturatedStyle ) then
			button:Saturate();
		  end
		else
		  button.completed = nil;
		  button.dateCompleted:Hide();
		  button:Desaturate();
		  -- Overachiever color customization:
		--   local RecentReminders = Overachiever.RecentReminders
		--   -- Make sure Overachiever.RecentReminders_Check() was called before displayAchievement(...) for this:
		--   if (RecentReminders and RecentReminders[id]) then
		-- 	local name = button:GetName()
		-- 	--button:SetBackdropBorderColor(.8, .5, .5)
		-- 	_G[name .. "Background"]:SetTexture("Interface\\AddOns\\Overachiever_Tabs\\ParchmentDesaturateGreen")
		-- 	_G[name.."Glow"]:SetVertexColor(.13, .52, .17)
		--   elseif (not isAchievementInUI(id, false)) then
		-- 	local name = button:GetName()
		-- 	--button:SetBackdropBorderColor(.8, .5, .5)
		-- 	if (isPreviousAchievementInUI(id)) then
		-- 	  _G[name .. "Background"]:SetTexture("Interface\\AddOns\\Overachiever_Tabs\\ParchmentDesaturateBlue")
		-- 	  _G[name.."Glow"]:SetVertexColor(.22, .17, .43)
		-- 	else
		-- 	  _G[name .. "Background"]:SetTexture("Interface\\AddOns\\Overachiever_Tabs\\ParchmentDesaturateRed")
		-- 	  _G[name.."Glow"]:SetVertexColor(.52, .17, .13)
		-- 	end
		--   end
		end
	
		if ( rewardText == "" ) then
		  button.reward:Hide();
		  button.rewardBackground:Hide();
		else
		  button.reward:SetText(rewardText);
		  button.reward:Show();
		  button.rewardBackground:Show();
		  if ( button.completed ) then
			button.rewardBackground:SetVertexColor(1, 1, 1);
		  else
			button.rewardBackground:SetVertexColor(0.35, 0.35, 0.35);
		  end
		end
	
		if ( IsTrackedAchievement(id) ) then
		  button.check:Show();
		  button.label:SetWidth(button.label:GetStringWidth() + 4);
		  button.tracked:SetChecked(true);
		  button.tracked:Show();
		else
		  button.check:Hide();
		  button.tracked:SetChecked(false);
		  button.tracked:Hide();
		end
	  end
	
	  if ( id == selectionID ) then
		frame.selection = button.id;
		frame.selectionIndex = button.index;
		button.selected = true;
		button.highlight:Show();
		local height = AchievementButton_DisplayObjectives(button, button.id, button.completed);
		if ( height == ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT ) then
		  button:Collapse();
		else
		  button:Expand(height);
		end
		if ( not completed or (not wasEarnedByMe and not isGuild) ) then
		  button.tracked:Show();
		end
	  elseif ( button.selected ) then
		button.selected = nil;
		if ( not button:IsMouseOver() ) then
		  button.highlight:Hide();
		end
		button:Collapse();
		button.description:Show();
		button.hiddenDescription:Hide();
	  end
	
	  if (frame.ShouldCrossOut and frame.ShouldCrossOut(id)) then
		if (not button.CrossOut) then
		  button.CrossOut = CreateFrame("frame", nil, button) --button.icon
		  local overPos = button --alternatively: button.shield OR button.icon
		  local tl = button.CrossOut:CreateTexture(nil, "OVERLAY", nil, 5) --, 1)
		  button.CrossOut.Left = tl
		  tl:SetPoint("CENTER", overPos)
		  tl:SetAtlas("GarrMission_EncounterBar-Xleft")
		  tl:SetHeight(72) --48
		  tl:SetWidth(72) --48
		  local tr = button.CrossOut:CreateTexture(nil, "OVERLAY", nil, 1)
		  button.CrossOut.Right = tr
		  tr:SetPoint("CENTER", overPos)
		  tr:SetAtlas("GarrMission_EncounterBar-Xright")
		  tr:SetHeight(72)
		  tr:SetWidth(72)
		end
		button.CrossOut:Show()
	  elseif (button.CrossOut) then
		button.CrossOut:Hide()
	  end
	
	  --if (Overachiever_Debug) then  print("- Last bit took for \""..name.."\" took "..(debugprofilestop() - StartTime) .." ms.");  end
	
	  return id;
	end


	function KrowiAF.AchievementButton_OnClick (self, button, down, ignoreModifiers)
	KrowiAF.Debug("AchievementButton_OnClick");
	KrowiAF.Debug(self.index);
	if IsModifiedClick() and not ignoreModifiers then
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
	local keepIndex = self.index;
	AchievementButton_DisplayAchievement(self, self.id, nil, self.id);
	self.index = keepIndex;
	HybridScrollFrame_ExpandButton(AchievementFrameAchievementsContainer, ((self.index - 1) * ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT), self:GetHeight());
	AchievementFrameAchievements_Update();
	if not ignoreModifiers then
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
			-- displayAchievement(buttons[i], scrollFrame, KrowiAF.Categories[category].more.Achievements[achievementIndex].ID, achievementIndex, selection);
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

function KrowiAF.AchievementButton_OnLoad(self)
	KrowiAF.Debug("|c1D92C2FF AchievementButton_OnLoad");
end

function KrowiAF.LoadAchievements()
    KrowiAF.Debug("- Achievement Frame - Achievements");
    hooksecurefunc("AchievementButton_OnLoad", KrowiAF.AchievementButton_OnLoad);
    KrowiAF.Debug("     - OnLoad extended");
end