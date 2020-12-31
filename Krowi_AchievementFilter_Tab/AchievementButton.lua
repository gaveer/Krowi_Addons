KrowiAF.AchievementsButton = {};

local UI_FontHeight;

-- [[ Blizzard_AchievementUI.lua derived ]] --

    -- Used in Templates - KrowiAF_AchievementCategoryTemplate
	function KrowiAF_AchievementButton_OnLoad(self) -- OK -- AchievementButton_OnLoad
		KrowiAF.Trace("KrowiAF_AchievementButton_OnLoad");

		if not UI_FontHeight then
			local _, fontHeight = self.description:GetFont();
			UI_FontHeight = fontHeight;
		end
		
		-- We need to overwrite the shield.OnClick so it calls the correct button OnClick
		-- Doing this in code to not have to redo the entire template
		self.shield:SetScript("OnClick", function(self)
			local parent = self:GetParent();
			KrowiAF_AchievementButton_OnClick(parent);
		end);

		AchievementButton_OnLoad(self);
	end

    -- Used in Templates - KrowiAF_AchievementCategoryTemplate
	function KrowiAF_AchievementButton_OnClick(self, button, down, ignoreModifiers) -- OK -- AchievementButton_OnClick
		KrowiAF.Trace("KrowiAF_AchievementButton_OnClick");
		
		if button == "LeftButton" then
			KrowiAF.Debug("LeftButton");
			KrowiAF.AchievementsButton.OnClickLeftButton(self, ignoreModifiers);
		elseif button == "RightButton" then
			KrowiAF.Debug("RightButton");
			KrowiAF.AchievementsButton.OnClickRightButton(self);
		end
		
	end

	-- OnClick Left Button Start
	function KrowiAF.AchievementsButton.OnClickLeftButton(self, ignoreModifiers)
		KrowiAF.Trace("KrowiAF.AchievementsButton.OnClickLeftButton");

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
				KrowiAF.Debug("AchievementButton_ToggleTracking from KrowiAF_AchievementButton_OnClick");
				AchievementButton_ToggleTracking(self.id);
			end
			return;
		end
	
		if self.selected then
			if not self:IsMouseOver() then
				self.highlight:Hide();
			end
			KrowiAF.AchievementsFrame.ClearSelection();
			HybridScrollFrame_CollapseButton(KrowiAF.AchievementsFrame.Container);
			KrowiAF.AchievementsFrame.Update();
			return;
		end

		KrowiAF.AchievementsFrame.ClearSelection();
		KrowiAF.AchievementsFrame.SelectButton(self);
		KrowiAF.AchievementsButton.DisplayAchievement(self, KrowiAF.SelectedAchievement, self.index, self.Achievement);
		HybridScrollFrame_ExpandButton(KrowiAF.AchievementsFrame.Container, ((self.index - 1) * ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT), self:GetHeight());
		KrowiAF.AchievementsFrame.Update();
		if not ignoreModifiers then
			KrowiAF.AchievementsFrame.AdjustSelection();
		end
	end
	-- OnClick Left Button End

	-- OnClick Right Button Start
	local wowheadLink = "";
	StaticPopupDialogs["WOWHEAD_LINK"] = {
		text = "Press CTRL+X to copy the website and close this window.",
		button1 = "Close",
		hasEditBox=true,
		editBoxWidth=500,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
		preferredIndex = 3,
        OnShow = function(self)
            self.editBox:SetText(wowheadLink);
            self.editBox:HighlightText();
        end,
        EditBoxOnEscapePressed = function(self) self:GetParent().button1:Click() end,
        EditBoxOnTextChanged = function(self)
			if self:GetText():len() < 1 then
				self:GetParent().button1:Click()
            else
                self:SetText(wowheadLink)
                self:HighlightText()
            end
        end,
    }

	function KrowiAF.AchievementsButton.OpenWowheadLink()
		KrowiAF.Trace("KrowiAF.AchievementsButton.OpenWowheadLink");

		StaticPopup_Show("WOWHEAD_LINK");
	end

	local menuFrame = CreateFrame("Frame", "KrowiAFAchievementsButtonRightClickMenu", nil, "UIDropDownMenuTemplate");
	local menu = {
		{text = "Select an Option", isTitle = true},
		{text = "Wowhead", func = KrowiAF.AchievementsButton.OpenWowheadLink},
		-- {text = "Option 2", func = function() print("You've chosen option 2"); end},
		-- {text = "More Options", hasArrow = true,
		-- 	menuList = {
		-- 		{text = "Option 3", func = function() print("You've chosen option 3"); end}
		-- 	}
		-- }
	};

	function KrowiAF.AchievementsButton.OnClickRightButton(self)
		KrowiAF.Trace("KrowiAF.AchievementsButton.OnClickRightButton");

		wowheadLink = "https://www.wowhead.com/achievement=" .. self.id; -- .. "#comments"; -- make go to comments optional in settings
		KrowiAF.Debug(wowheadLink);

		EasyMenu(menu, menuFrame, "cursor", 0 , 0, "MENU");
	end
	-- OnClick Right Button End

	function KrowiAF.AchievementsButton.DisplayAchievement(button, achievement, index, selection, renderOffScreen) -- OK -- AchievementButton_DisplayAchievement
		local id, name, points, completed, month, day, year, description, flags, icon, rewardText, isGuild, wasEarnedByMe, earnedBy = GetAchievementInfo(achievement.ID);
		KrowiAF.Trace("KrowiAF.AchievementsButton.DisplayAchievement for achievement " .. tostring(id));

		if not id then
			button:Hide();
			return;
		else
			button:Show();
		end

		button.index = index;
		button.Achievement = achievement;

		if button.id ~= id then
			local saturatedStyle;
			if bit.band(flags, ACHIEVEMENT_FLAGS_ACCOUNT) == ACHIEVEMENT_FLAGS_ACCOUNT then
				button.accountWide = true;
				saturatedStyle = "account";
			else
				button.accountWide = nil;
				saturatedStyle = "normal";
			end
			button.id = id;
			button.label:SetWidth(ACHIEVEMENTBUTTON_LABELWIDTH);
			button.label:SetText(name);

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
			button.numLines = ceil(button.hiddenDescription:GetHeight() / UI_FontHeight);
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

		if selection and id == selection.ID then
			KrowiAF.SelectedAchievement = achievement;
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