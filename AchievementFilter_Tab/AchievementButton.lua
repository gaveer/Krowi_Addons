local achievementUIMaxLinesCollapsed = 3; -- Blizzard_AchievementUI.lua line 21
local achievementUIFontHeight;
local FORCE_COLUMNS_MAX_WIDTH = 220;				-- if no columns normally, force 2 if max criteria width is <= this and number of criteria >= MIN_CRITERIA
local FORCE_COLUMNS_MIN_CRITERIA = 20;
local FORCE_COLUMNS_LEFT_OFFSET = -10;				-- offset for left column
local FORCE_COLUMNS_RIGHT_OFFSET = 24;				-- offset for right column
local FORCE_COLUMNS_RIGHT_COLUMN_SPACE = 150;		-- max room for first entry of the right column due to achievement shield

function KrowiAF.AchievementButton_UpdatePlusMinusTexture(button) -- Blizzard_AchievementUI.lua line 1037
    KrowiAF.Trace("KrowiAF.AchievementButton_UpdatePlusMinusTexture");

	if not button.Achievement then
		return; -- This happens when we create buttons
    end
    
	local id = button.Achievement.ID;
	local display = false;
	if GetAchievementNumCriteria(id) ~= 0 then
		display = true;
	elseif button.Achievement.Completed and GetPreviousAchievement(id) then
		display = true;
	elseif not button.Achievement.Completed and GetAchievementGuildRep(id) then
		display = true;
	end

	if display then
		button.PlusMinus:Show();
		if button.Collapsed and button.SaturatedStyle then
			button.PlusMinus:SetTexCoord(0, .5, KrowiAF.UI_TexturesOffset, KrowiAF.UI_TexturesOffset + 0.25);
		elseif button.Collapsed then
			button.PlusMinus:SetTexCoord(.5, 1, KrowiAF.UI_TexturesOffset, KrowiAF.UI_TexturesOffset + 0.25);
		elseif button.SaturatedStyle then
			button.PlusMinus:SetTexCoord(0, .5, KrowiAF.UI_TexturesOffset + 0.25, KrowiAF.UI_TexturesOffset + 0.50);
		else
			button.PlusMinus:SetTexCoord(.5, 1, KrowiAF.UI_TexturesOffset + 0.25, KrowiAF.UI_TexturesOffset + 0.50);
		end
	else
		button.PlusMinus:Hide();
	end
end

function KrowiAF.AchievementButton_Collapse(self) -- Blizzard_AchievementUI.lua line 1068
    KrowiAF.Trace("KrowiAF.AchievementButton_Collapse");

	if self.Collapsed then
		return;
	end

	self.Collapsed = true;
	KrowiAF.AchievementButton_UpdatePlusMinusTexture(self);
	self:SetHeight(ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT);
	self.Background:SetTexCoord(0, 1, 1-(ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT / 256), 1);
	if ( not self.Tracked:GetChecked() ) then
		self.Tracked:Hide();
	end
	self.Tabard:Hide();
	self.GuildCornerL:Hide();
	self.GuildCornerR:Hide();
end

function KrowiAF.AchievementButton_Expand(self, height) -- Blizzard_AchievementUI.lua line 1085
    KrowiAF.Trace("KrowiAF.AchievementButton_Expand");

	if not self.Collapsed and self:GetHeight() == height then
		return;
	end

	self.Collapsed = nil;
	KrowiAF.AchievementButton_UpdatePlusMinusTexture(self);
	if KrowiAF.InGuildView() then
		if height < GUILDACHIEVEMENTBUTTON_MINHEIGHT then
			height = GUILDACHIEVEMENTBUTTON_MINHEIGHT;
		end
		if self.Achievement.Completed then
			self.Tabard:Show();
			self.Shield:SetFrameLevel(self.Tabard:GetFrameLevel() + 1);
			SetLargeGuildTabardTextures("player", self.Tabard.Emblem, self.Tabard.Background, self.Tabard.Border);
		end
		self.GuildCornerL:Show();
		self.GuildCornerR:Show();
	end
	self:SetHeight(height);
	self.Background:SetTexCoord(0, 1, max(0, 1 - (height / 256)), 1);
end

function KrowiAF.AchievementButton_Saturate(self) -- Blizzard_AchievementUI.lua line 1108
    KrowiAF.Trace("KrowiAF.AchievementButton_Saturate");

	if KrowiAF.InGuildView() then
		self.Background:SetTexture("Interface\\AchievementFrame\\UI-GuildAchievement-Parchment-Horizontal");
		self.TitleBar:SetTexture("Interface\\AchievementFrame\\UI-Achievement-Borders");
		self.TitleBar:SetTexCoord(0, 1, 0.83203125, 0.91015625);
		self:SetBackdropBorderColor(ACHIEVEMENT_RED_BORDER_COLOR:GetRGB());
		self.Shield.Points:SetVertexColor(0, 1, 0);
		self.SaturatedStyle = "guild";
	else
		self.Background:SetTexture("Interface\\AchievementFrame\\UI-Achievement-Parchment-Horizontal");
		if self.Achievement.AccountWide then
			self.TitleBar:SetTexture("Interface\\AchievementFrame\\AccountLevel-AchievementHeader");
			self.TitleBar:SetTexCoord(0, 1, 0, 0.375);
			self:SetBackdropBorderColor(ACHIEVEMENT_BLUE_BORDER_COLOR:GetRGB());
			self.SaturatedStyle = "account";
		else
			self.TitleBar:SetTexture("Interface\\AchievementFrame\\UI-Achievement-Borders");
			self.TitleBar:SetTexCoord(0, 1, 0.66015625, 0.73828125);
			self:SetBackdropBorderColor(ACHIEVEMENT_RED_BORDER_COLOR:GetRGB());
			self.SaturatedStyle = "normal";
		end
		self.Shield.Points:SetVertexColor(1, 1, 1);
	end
	self.Glow:SetVertexColor(1.0, 1.0, 1.0);
	self.Icon:Saturate();
	self.Shield:Saturate();
	self.Reward:SetVertexColor(1, .82, 0);
	self.Label:SetVertexColor(1, 1, 1);
	self.Description:SetTextColor(0, 0, 0, 1);
	self.Description:SetShadowOffset(0, 0);
	KrowiAF.AchievementButton_UpdatePlusMinusTexture(self);
end

function KrowiAF.AchievementButton_Desaturate (self) -- Blizzard_AchievementUI.lua line 1141
    KrowiAF.Trace("KrowiAF.AchievementButton_Desaturate");

	self.SaturatedStyle = nil;
	if KrowiAF.InGuildView() then
		self.Background:SetTexture("Interface\\AchievementFrame\\UI-GuildAchievement-Parchment-Horizontal-Desaturated");
		self.TitleBar:SetTexture("Interface\\AchievementFrame\\UI-Achievement-Borders");
		self.TitleBar:SetTexCoord(0, 1, 0.74609375, 0.82421875);
	else
		self.Background:SetTexture("Interface\\AchievementFrame\\UI-Achievement-Parchment-Horizontal-Desaturated");
		if self.Achievement.AccountWide then
			self.TitleBar:SetTexture("Interface\\AchievementFrame\\AccountLevel-AchievementHeader");
			self.TitleBar:SetTexCoord(0, 1, 0.40625, 0.78125);
		else
			self.TitleBar:SetTexture("Interface\\AchievementFrame\\UI-Achievement-Borders");
			self.TitleBar:SetTexCoord(0, 1, 0.91796875, 0.99609375);
		end
	end
	self.Glow:SetVertexColor(.22, .17, .13);
	self.Icon:Desaturate();
	self.Shield:Desaturate();
	self.Shield.Points:SetVertexColor(.65, .65, .65);
	self.Reward:SetVertexColor(.8, .8, .8);
	self.Label:SetVertexColor(.65, .65, .65);
	self.Description:SetTextColor(1, 1, 1, 1);
	self.Description:SetShadowOffset(1, -1);
	KrowiAF.AchievementButton_UpdatePlusMinusTexture(self);
	self:SetBackdropBorderColor(.5, .5, .5);
end

function KrowiAF.AchievementButton_Load (button) -- Blizzard_AchievementUI.lua line 1169
    KrowiAF.Trace("KrowiAF.AchievementButton_Load");

    -- button.DateCompleted = button.Shield.DateCompleted;
	if not achievementUIFontHeight then
		local _, fontHeight = button.Description:GetFont();
		achievementUIFontHeight = fontHeight;
	end
	button.Description:SetHeight(achievementUIFontHeight * achievementUIMaxLinesCollapsed);
	button.Description:SetWidth(ACHIEVEMENTUI_MAXCONTENTWIDTH);
	button.HiddenDescription:SetWidth(ACHIEVEMENTUI_MAXCONTENTWIDTH);

	button.Collapse = KrowiAF.AchievementButton_Collapse;
	button.Expand = KrowiAF.AchievementButton_Expand;
	button.Saturate = KrowiAF.AchievementButton_Saturate;
	button.Desaturate = KrowiAF.AchievementButton_Desaturate;

    button:Collapse();
    
    button:SetScript("OnClick", KrowiAF.AchievementButton_OnClick);

    KrowiAF.AchievementIcon_Load(button.Icon);
    KrowiAF.AchievementShield_Load(button.Shield);
end

function KrowiAF.AchievementButton_OnClick (self, button, down, ignoreModifiers) -- Blizzard_AchievementUI.lua line 1187
    KrowiAF.Trace("KrowiAF.AchievementButton_OnClick");
    
	if IsModifiedClick() and not ignoreModifiers then
		local handled = nil;
		if IsModifiedClick("CHATLINK") then
			local achievementLink = GetAchievementLink(self.Achievement.ID);
			if achievementLink then
				handled = ChatEdit_InsertLink(achievementLink);
				if not handled and SocialPostFrame and Social_IsShown() then
					Social_InsertLink(achievementLink);
					handled = true;
				end
			end
		end
		if not handled and IsModifiedClick("QUESTWATCHTOGGLE") then
			KrowiAF.AchievementButton_ToggleTracking(self.Achievement.ID);
		end
		return;
	end

	if self.IsSelected then
		if not self:IsMouseOver() then
			self.Highlight:Hide();
		end
		KrowiAF.AchievementFrameAchievements_ClearSelection()
        HybridScrollFrame_CollapseButton(KrowiAF_AchievementFrameAchievementsContainer);
		KrowiAF.AchievementFrameAchievements_Update();
		return;
	end
	KrowiAF.AchievementFrameAchievements_ClearSelection()
	KrowiAF.AchievementFrameAchievements_SelectButton(self);
	KrowiAF.AchievementButton_DisplayAchievement(self, KrowiAF.SelectedCategory, self.Index, self.Achievement);
	HybridScrollFrame_ExpandButton(KrowiAF_AchievementFrameAchievementsContainer, ((self.Index - 1) * ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT), self:GetHeight());
	KrowiAF.AchievementFrameAchievements_Update();
	if not ignoreModifiers then
		KrowiAF.AchievementFrameAchievements_AdjustSelection();
	end
end

function KrowiAF.AchievementButton_ToggleTracking (id)  -- Blizzard_AchievementUI.lua line 1225
    KrowiAF.Trace("KrowiAF.AchievementButton_ToggleTracking");

	if KrowiAF.TrackedAchievements[id] then
		RemoveTrackedAchievement(id);
		KrowiAF.AchievementFrameAchievements_ForceUpdate();
		return;
	end

	local count = GetNumTrackedAchievements();

	if ( count >= MAX_TRACKED_ACHIEVEMENTS ) then
		UIErrorsFrame:AddMessage(format(ACHIEVEMENT_WATCH_TOO_MANY, MAX_TRACKED_ACHIEVEMENTS), 1.0, 0.1, 0.1, 1.0);
		return;
	end

	local _, _, _, completed, _, _, _, _, _, _, _, isGuild, wasEarnedByMe = GetAchievementInfo(id)
	if ( (completed and isGuild) or wasEarnedByMe ) then
		UIErrorsFrame:AddMessage(ERR_ACHIEVEMENT_WATCH_COMPLETED, 1.0, 0.1, 0.1, 1.0);
		return;
	end

	AddTrackedAchievement(id);
    KrowiAF.AchievementFrameAchievements_ForceUpdate();

	return true;
end

function KrowiAF.AchievementButton_DisplayAchievement(button, category, achievementIndex, selectedAchievement, renderOffScreen) -- Blizzard_AchievementUI.lua line 1251
    local achievement = category.Achievements[achievementIndex];
	local id, name, points, completed, month, day, year, description, flags, icon, rewardText, isGuild, wasEarnedByMe, earnedBy = GetAchievementInfo(achievement.ID);
    KrowiAF.Trace("KrowiAF.AchievementButton_DisplayAchievement for achievement " .. tostring(id));

	if not id then
		button:Hide();
		return;
	else
		button:Show();
	end

    button.Index = achievementIndex;

    if not button.Achievement or button.Achievement.ID ~= achievement.ID then -- Get new achievement info into the button
        button.Achievement = nil; -- Clear the button's achievement so we can set a new one at the end
		local saturatedStyle;
		if bit.band(flags, ACHIEVEMENT_FLAGS_ACCOUNT) == ACHIEVEMENT_FLAGS_ACCOUNT then
			achievement.AccountWide = true;
			saturatedStyle = "account";
		else
			achievement.AccountWide = nil;
			if KrowiAF.InGuildView() then
				saturatedStyle = "guild";
			else
				saturatedStyle = "normal";
			end
		end
		-- button.id = id;
		button.Label:SetWidth(ACHIEVEMENTBUTTON_LABELWIDTH);
		button.Label:SetText(name);

		if GetPreviousAchievement(id) then
			-- If this is a progressive achievement, show the total score.
			AchievementShield_SetPoints(AchievementButton_GetProgressivePoints(id), button.Shield.Points, AchievementPointsFont, AchievementPointsFontSmall);
		else
			AchievementShield_SetPoints(points, button.Shield.Points, AchievementPointsFont, AchievementPointsFontSmall);
		end

		if points > 0 then
			button.Shield.Icon:SetTexture([[Interface\AchievementFrame\UI-Achievement-Shields]]);
		else
			button.Shield.Icon:SetTexture([[Interface\AchievementFrame\UI-Achievement-Shields-NoPoints]]);
		end

		if isGuild then
			button.Shield.Points:Show();
			achievement.WasEarnedByMe = nil;
			achievement.EarnedBy = nil;
		else
			achievement.WasEarnedByMe = not (completed and not wasEarnedByMe);
			achievement.EarnedBy = earnedBy;
		end
        button.Achievement = achievement; -- Need to set this here since Saturate and Desaturate need the achievement

	-- 	button.shield.id = id;
		button.Description:SetText(description);
		button.HiddenDescription:SetText(description);
		button.NumberOfLines = ceil(button.HiddenDescription:GetHeight() / achievementUIFontHeight);
		button.Icon.Texture:SetTexture(icon);
		if completed or wasEarnedByMe then
			button.Achievement.Completed = true;
			button.Shield.DateCompleted:SetText(FormatShortDate(day, month, year));
			button.Shield.DateCompleted:Show();
			if button.SaturatedStyle ~= saturatedStyle then
				button:Saturate();
			end
		else
			button.Achievement.completed = nil;
			button.Shield.DateCompleted:Hide();
			button:Desaturate();
		end

		if rewardText == "" then
			button.Reward:Hide();
			button.RewardBackground:Hide();
		else
			button.Reward:SetText(rewardText);
			button.Reward:Show();
			button.RewardBackground:Show();
			if button.Achievement.Completed then
				button.RewardBackground:SetVertexColor(1, 1, 1);
			else
				button.RewardBackground:SetVertexColor(0.35, 0.35, 0.35);
			end
		end

		if IsTrackedAchievement(id) then
			button.Check:Show();
			button.Label:SetWidth(button.Label:GetStringWidth() + 4); -- This +4 here is to fudge around any string width issues that arize from resizing a string set to its string width. See bug 144418 for an example.
			button.Tracked:SetChecked(true);
			button.Tracked:Show();
		else
			button.Check:Hide();
			button.Tracked:SetChecked(false);
			button.Tracked:Hide();
		end

    	KrowiAF.AchievementButton_UpdatePlusMinusTexture(button);
	end

	if selectedAchievement and id == selectedAchievement.ID then
		-- local achievements = KrowiAF_AchievementFrameAchievements;
		-- achievements.selection = button.id;
        -- achievements.selectionIndex = button.index;
        KrowiAF.SelectedAchievement = button.Achievement;
		button.IsSelected = true;
		button.Highlight:Show();
		local height = KrowiAF.AchievementButton_DisplayObjectives(button, button.Achievement.ID, button.Achievement.Completed, renderOffScreen);
		if height == ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT then
			button:Collapse();
		else
			button:Expand(height);
		end
		if not completed or (not wasEarnedByMe and not isGuild) then
			button.Tracked:Show();
		end
	elseif button.IsSelected then
		button.IsSelected = nil;
		if not button:IsMouseOver() then
			button.Highlight:Hide();
		end
		button:Collapse();
		button.Description:Show();
		button.HiddenDescription:Hide();
	end

	return id;
end

function KrowiAF.AchievementButton_ResetObjectives() -- Blizzard_AchievementUI.lua line 1389
    KrowiAF.Trace("KrowiAF.AchievementButton_ResetObjectives");

	KrowiAF_AchievementFrameAchievementsObjectives:Hide();
end

function KrowiAF.AchievementButton_DisplayObjectives(button, id, completed, renderOffScreen) -- Blizzard_AchievementUI.lua line 1393
    KrowiAF.Trace("KrowiAF.AchievementButton_DisplayObjectives");

	local objectives = KrowiAF_AchievementFrameAchievementsObjectives;
	if renderOffScreen then
		objectives = KrowiAF_AchievementFrameAchievementsObjectivesOffScreen;
	end
	local topAnchor = button.HiddenDescription;
	objectives:ClearAllPoints();
	objectives:SetParent(button);
	objectives:Show();
	objectives.Completed = completed;
	local height = ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT;
	if objectives.ID == id and not renderOffScreen then
		local ACHIEVEMENTMODE_CRITERIA = 1;
		if objectives.Mode == ACHIEVEMENTMODE_CRITERIA then
			if objectives:GetHeight() > 0 then
				objectives:SetPoint("TOP", topAnchor, "BOTTOM", 0, -8);
				objectives:SetPoint("LEFT", "$parentIcon", "RIGHT", -5, 0);
				objectives:SetPoint("RIGHT", "$parentShield", "LEFT", -10, 0);
			end
		else
			objectives:SetPoint("TOP", topAnchor, "BOTTOM", 0, -8);
		end
	elseif  completed and GetPreviousAchievement(id) then
		objectives:SetHeight(0);
		KrowiAF.AchievementButton_ResetCriteria(renderOffScreen);
		KrowiAF.AchievementButton_ResetProgressBars(renderOffScreen);
		KrowiAF.AchievementButton_ResetMiniAchievements(renderOffScreen);
		KrowiAF.AchievementButton_ResetMetas(renderOffScreen);
		-- Don't show previous achievements when we render this offscreeen
		if not renderOffScreen then
			KrowiAF.AchievementObjectives_DisplayProgressiveAchievement(objectives, id);
		end
		objectives:SetPoint("TOP", topAnchor, "BOTTOM", 0, -8);
	else
		objectives:SetHeight(0);
		KrowiAF.AchievementButton_ResetCriteria(renderOffScreen);
		KrowiAF.AchievementButton_ResetProgressBars(renderOffScreen);
		KrowiAF.AchievementButton_ResetMiniAchievements(renderOffScreen);
		KrowiAF.AchievementButton_ResetMetas(renderOffScreen);
		KrowiAF.AchievementObjectives_DisplayCriteria(objectives, id, renderOffScreen);
		if objectives:GetHeight() > 0 then
			objectives:SetPoint("TOP", topAnchor, "BOTTOM", 0, -8);
			objectives:SetPoint("LEFT", "$parentIcon", "RIGHT", -5, -25);
			objectives:SetPoint("RIGHT", "$parentShield", "LEFT", -10, 0);
		end
	end
	height = height + objectives:GetHeight();

	if ( height ~= ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT or button.NumberOfLines > achievementUIMaxLinesCollapsed ) then
		button.HiddenDescription:Show();
		button.Description:Hide();
		local descriptionHeight = button.HiddenDescription:GetHeight();
		height = height + descriptionHeight - ACHIEVEMENTBUTTON_DESCRIPTIONHEIGHT;
		if ( button.Reward:IsShown() ) then
			height = height + 4;
		end
	end

	-- Don't cache if we are rendering offscreen
	if not renderOffScreen then
		objectives.ID = id;
	end
	return height;
end

local criteriaTable = {}; -- Blizzard_AchievementUI.lua line 1477
local criteriaTableOffScreen = {}; -- Blizzard_AchievementUI.lua line 1478
function KrowiAF.AchievementButton_ResetCriteria (renderOffScreen) -- Blizzard_AchievementUI.lua line 1480
    KrowiAF.Trace("KrowiAF.AchievementButton_ResetCriteria");

	if renderOffScreen then
		KrowiAF_AchievementFrameAchievementsObjectivesOffScreen.RepCriteria:Hide();
		AchievementButton_ResetTable(criteriaTableOffScreen);
	else
		KrowiAF_AchievementFrameAchievementsObjectives.RepCriteria:Hide();
		AchievementButton_ResetTable(criteriaTable);
	end
end

function KrowiAF.AchievementButton_GetCriteria (index, renderOffScreen) -- Blizzard_AchievementUI.lua line 1490
    KrowiAF.Trace("KrowiAF.AchievementButton_GetCriteria");

	local criTable = criteriaTable;
	local offscreenName = "";
	if renderOffScreen then
		criTable = criteriaTableOffScreen;
		offscreenName = "OffScreen";
	end

	if criTable[index] then
		return criTable[index];
	end

	local frame = CreateFrame("FRAME", "AchievementFrameCriteria" .. offscreenName .. index, AchievementFrameAchievements, "AchievementCriteriaTemplate");
	AchievementFrame_LocalizeCriteria(frame);
	criTable[index] = frame;

	return frame;
end

local miniTable = {} -- Blizzard_AchievementUI.lua line 1510
function KrowiAF.AchievementButton_ResetMiniAchievements (renderOffScreen) -- Blizzard_AchievementUI.lua line 1512
    KrowiAF.Trace("KrowiAF.AchievementButton_ResetMiniAchievements");

	-- We don't render mini achievements offscreen, so don't reset it if renderOffScreen is true
	if not renderOffScreen then
		AchievementButton_ResetTable(miniTable);
	end
end

function KrowiAF.AchievementButton_GetMiniAchievement(index) -- Blizzard_AchievementUI.lua line 1519
    KrowiAF.Trace("KrowiAF.AchievementButton_GetMiniAchievement");

	local miniTable = miniTable;
	if miniTable[index] then
		return miniTable[index];
	end

	local frame = CreateFrame("FRAME", "AchievementFrameMiniAchievement" .. index, AchievementFrameAchievements, "MiniAchievementTemplate");
	AchievementButton_LocalizeMiniAchievement(frame);
	miniTable[index] = frame;

	return frame;
end

local progressBarTable = {}; -- Blizzard_AchievementUI.lua line 1532
local progressBarTableOffScreen = {}; -- Blizzard_AchievementUI.lua line 1533
function KrowiAF.AchievementButton_ResetProgressBars (renderOffScreen) -- Blizzard_AchievementUI.lua line 1535
    KrowiAF.Trace("KrowiAF.AchievementButton_ResetProgressBars");

	if renderOffScreen then
		AchievementButton_ResetTable(progressBarTableOffScreen);
	else
		AchievementButton_ResetTable(progressBarTable);
	end
end

function KrowiAF.AchievementButton_GetProgressBar (index, renderOffScreen) -- Blizzard_AchievementUI.lua line 1543
    KrowiAF.Trace("KrowiAF.AchievementButton_GetProgressBar");
	local pgTable = progressBarTable;
	local offscreenName = "";
	if renderOffScreen then
		pgTable = progressBarTableOffScreen;
		offscreenName = "OffScreen";
	end
	if pgTable[index] then
		return pgTable[index];
	end

	local frame = CreateFrame("STATUSBAR", "AchievementFrameProgressBar" .. offscreenName .. index, AchievementFrameAchievements, "AchievementProgressBarTemplate");
	AchievementButton_LocalizeProgressBar(frame);
	pgTable[index] = frame;

	return frame;
end

local metaCriteriaTable = {}; -- Blizzard_AchievementUI.lua line 1561
local metaCriteriaTableOffScreen = {}; -- Blizzard_AchievementUI.lua line 1562
function KrowiAF.AchievementButton_ResetMetas (renderOffScreen) -- Blizzard_AchievementUI.lua line 1564
    KrowiAF.Trace("KrowiAF.AchievementButton_ResetMetas");

	if renderOffScreen then
		AchievementButton_ResetTable(metaCriteriaTableOffScreen);
	else
		AchievementButton_ResetTable(metaCriteriaTable);
	end
end

function KrowiAF.AchievementButton_GetMeta(index, renderOffScreen) -- Blizzard_AchievementUI.lua line 1572
    KrowiAF.Trace("KrowiAF.AchievementButton_GetMeta");

	local mcTable = metaCriteriaTable;
	local offscreenName = "";
	if renderOffScreen then
		mcTable = metaCriteriaTableOffScreen;
		offscreenName = "OffScreen";
	end
	if not mcTable[index] then
		local frame = CreateFrame("BUTTON", "AchievementFrameMeta" .. offscreenName .. index, AchievementFrameAchievements, "MetaCriteriaTemplate");
		AchievementButton_LocalizeMetaAchievement(frame);
		mcTable[index] = frame;
	end

	if mcTable[index].guildView ~= KrowiAF.InGuildView() then
		KrowiAF.AchievementButton_ToggleMetaView(mcTable[index]);
	end
	return mcTable[index];
end

function KrowiAF.AchievementButton_ToggleMetaView(frame) -- Blizzard_AchievementUI.lua line 1591
    KrowiAF.Trace("KrowiAF.AchievementButton_ToggleMetaView");
	if KrowiAF.InGuildView() then
		frame.border:SetTexture("Interface\\AchievementFrame\\UI-Achievement-Guild");
		frame.border:SetTexCoord(0.89062500, 0.97070313, 0.00195313, 0.08203125);
	else
		frame.border:SetTexture("Interface\\AchievementFrame\\UI-Achievement-Progressive-IconBorder");
		frame.border:SetTexCoord(0, 0.65625, 0, 0.65625);
	end
	frame.guildView = KrowiAF.InGuildView();
end

local achievementList = {}; -- Blizzard_AchievementUI.lua line 1619
function KrowiAF.AchievementObjectives_DisplayProgressiveAchievement (objectivesFrame, id) -- Blizzard_AchievementUI.lua line 1621
    KrowiAF.Trace("KrowiAF.AchievementObjectives_DisplayProgressiveAchievement");

	local ACHIEVEMENTMODE_PROGRESSIVE = 2;
	local achievementID = id;

	local achievementList = achievementList;
	for i in next, achievementList do
		achievementList[i] = nil;
	end

	tinsert(achievementList, 1, achievementID);
	while GetPreviousAchievement(achievementID) do
		tinsert(achievementList, 1, GetPreviousAchievement(achievementID));
		achievementID = GetPreviousAchievement(achievementID);
	end

	local i = 0;
	for index, achievementID in ipairs(achievementList) do
		local _, achievementName, points, completed, month, day, year, description, flags, iconpath = GetAchievementInfo(achievementID);
		flags = flags or 0;		-- bug 360115
		local miniAchievement = KrowiAF.AchievementButton_GetMiniAchievement(index);

		miniAchievement:Show();
		miniAchievement:SetParent(objectivesFrame);
		miniAchievement.icon:SetTexture(iconpath);
		if index == 1 then
			miniAchievement:SetPoint("TOPLEFT", objectivesFrame, "TOPLEFT", -4, -4);
		elseif mod(index, 6) == 1 then
			miniAchievement:SetPoint("TOPLEFT", miniTable[index - 6], "BOTTOMLEFT", 0, -8);
		else
			miniAchievement:SetPoint("TOPLEFT", miniTable[index-1], "TOPRIGHT", 4, 0);
		end

		if points > 0 then
			miniAchievement.points:SetText(points);
			miniAchievement.points:Show();
			miniAchievement.shield:SetTexture([[Interface\AchievementFrame\UI-Achievement-Progressive-Shield]]);
		else
			miniAchievement.points:Hide();
			miniAchievement.shield:SetTexture([[Interface\AchievementFrame\UI-Achievement-Progressive-Shield-NoPoints]]);
		end

		miniAchievement.numCriteria = 0;
		if not (bit.band(flags, ACHIEVEMENT_FLAGS_HAS_PROGRESS_BAR) == ACHIEVEMENT_FLAGS_HAS_PROGRESS_BAR) then
			for i = 1, GetAchievementNumCriteria(achievementID) do
				local criteriaString, criteriaType, completed = GetAchievementCriteriaInfo(achievementID, i);
				if completed == false then
					criteriaString = "|CFF808080 - " .. criteriaString .. "|r";
				else
					criteriaString = "|CFF00FF00 - " .. criteriaString .. "|r";
				end
				miniAchievement["criteria" .. i] = criteriaString;
				miniAchievement.numCriteria = i;
			end
		end
		miniAchievement.name = achievementName;
		miniAchievement.desc = description;
		if month then
			miniAchievement.date = FormatShortDate(day, month, year);
		end
		i = index;
	end

	objectivesFrame:SetHeight(math.ceil(i/6) * ACHIEVEMENTUI_PROGRESSIVEHEIGHT);
	objectivesFrame:SetWidth(min(i, 6) * ACHIEVEMENTUI_PROGRESSIVEWIDTH);
	objectivesFrame.Mode = ACHIEVEMENTMODE_PROGRESSIVE;
end

function KrowiAF.AchievementObjectives_DisplayCriteria (objectivesFrame, id, renderOffScreen) -- Blizzard_AchievementUI.lua line 1754
    KrowiAF.Trace("KrowiAF.AchievementObjectives_DisplayCriteria");
	if not id then
		return;
	end

	local yOffset = 0;
	local ACHIEVEMENTMODE_CRITERIA = 1;
	local numMetaRows = 0;
	local numCriteriaRows = 0;
	local numExtraCriteriaRows = 0;

	local function AddExtraCriteriaRow()
		numExtraCriteriaRows = numExtraCriteriaRows + 1;
		yOffset = -numExtraCriteriaRows * ACHIEVEMENTBUTTON_CRITERIAROWHEIGHT;
	end

	local requiresRep, hasRep, repLevel;
	if not objectivesFrame.Completed then
		requiresRep, hasRep, repLevel = GetAchievementGuildRep(id);
		if requiresRep then
			local gender = UnitSex("player");
			local factionStandingtext = GetText("FACTION_STANDING_LABEL"..repLevel, gender);
			objectivesFrame.repCriteria:SetFormattedText(ACHIEVEMENT_REQUIRES_GUILD_REPUTATION, factionStandingtext);
			if hasRep then
				objectivesFrame.repCriteria:SetTextColor(0, 1, 0);
			else
				objectivesFrame.repCriteria:SetTextColor(1, 0, 0);
			end
			objectivesFrame.repCriteria:Show();
			AddExtraCriteriaRow();
		end
	end

	local numCriteria = GetAchievementNumCriteria(id);
	if numCriteria == 0 and not requiresRep then
		objectivesFrame.Mode = ACHIEVEMENTMODE_CRITERIA;
		objectivesFrame:SetHeight(0);
		return;
	end

	-- text check width
	if not objectivesFrame.textCheckWidth then
		local criteria = KrowiAF.AchievementButton_GetCriteria(1, renderOffScreen);
		criteria.name:SetText("- ");
		objectivesFrame.textCheckWidth = criteria.name:GetStringWidth();
	end

	local frameLevel = objectivesFrame:GetFrameLevel() + 1;

	-- Why textStrings? You try naming anything just "string" and see how happy you are.
	local textStrings, progressBars, metas = 0, 0, 0;
	local firstMetaCriteria;

	local maxCriteriaWidth = 0;
	local yPos;
	for i = 1, numCriteria do
		local criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString = GetAchievementCriteriaInfo(id, i);

		if criteriaType == CRITERIA_TYPE_ACHIEVEMENT and assetID then
			metas = metas + 1;
			local metaCriteria = KrowiAF.AchievementButton_GetMeta(metas, renderOffScreen);
			metaCriteria:ClearAllPoints();

			if metas == 1 then
				-- this will be anchored below, we need to know how many text criteria there are
				firstMetaCriteria = metaCriteria;
				numMetaRows = numMetaRows + 1;
			elseif math.fmod(metas, 2) == 0 then
				local anchorMeta = KrowiAF.AchievementButton_GetMeta(metas-1, renderOffScreen);
				metaCriteria:SetPoint("LEFT", anchorMeta, "RIGHT", 35, 0);
			else
				local anchorMeta = KrowiAF.AchievementButton_GetMeta(metas-2, renderOffScreen);
				metaCriteria:SetPoint("TOPLEFT", anchorMeta, "BOTTOMLEFT", -0, 2);
				numMetaRows = numMetaRows + 1;
			end

			local id, achievementName, points, achievementCompleted, month, day, year, description, flags, iconpath = GetAchievementInfo(assetID);

			if month then
				metaCriteria.date = FormatShortDate(day, month, year)
			else
				metaCriteria.date = nil;
			end

			metaCriteria.id = id;
			metaCriteria.label:SetText(achievementName);
			metaCriteria.icon:SetTexture(iconpath);

			-- have to check if criteria is completed here, can't just check if achievement is completed.
			-- This is because the criteria could have modifiers on it that prevent completion even though the achievement is earned.
			if objectivesFrame.Completed and completed then
				metaCriteria.check:Show();
				metaCriteria.border:SetVertexColor(1, 1, 1, 1);
				metaCriteria.icon:SetVertexColor(1, 1, 1, 1);
				metaCriteria.label:SetShadowOffset(0, 0)
				metaCriteria.label:SetTextColor(0, 0, 0, 1);
			elseif completed then
				metaCriteria.check:Show();
				metaCriteria.border:SetVertexColor(1, 1, 1, 1);
				metaCriteria.icon:SetVertexColor(1, 1, 1, 1);
				metaCriteria.label:SetShadowOffset(1, -1)
				metaCriteria.label:SetTextColor(0, 1, 0, 1);
			else
				metaCriteria.check:Hide();
				metaCriteria.border:SetVertexColor(.75, .75, .75, 1);
				metaCriteria.icon:SetVertexColor(.55, .55, .55, 1);
				metaCriteria.label:SetShadowOffset(1, -1)
				metaCriteria.label:SetTextColor(.6, .6, .6, 1);
			end

			metaCriteria:SetParent(objectivesFrame);
			metaCriteria:Show();
		elseif bit.band(flags, EVALUATION_TREE_FLAG_PROGRESS_BAR) == EVALUATION_TREE_FLAG_PROGRESS_BAR then
			-- Display this criteria as a progress bar!
			progressBars = progressBars + 1;
			local progressBar = KrowiAF.AchievementButton_GetProgressBar(progressBars, renderOffScreen);

			if progressBars == 1 then
				progressBar:SetPoint("TOP", objectivesFrame, "TOP", 4, -4 + yOffset);
			else
				progressBar:SetPoint("TOP", KrowiAF.AchievementButton_GetProgressBar(progressBars-1, renderOffScreen), "BOTTOM", 0, 0);
			end

			progressBar.text:SetText(string.format("%s", quantityString));
			progressBar:SetMinMaxValues(0, reqQuantity);
			progressBar:SetValue(quantity);

			progressBar:SetParent(objectivesFrame);
			progressBar:Show();

			numCriteriaRows = numCriteriaRows + 1;
		else
			textStrings = textStrings + 1;
			local criteria = KrowiAF.AchievementButton_GetCriteria(textStrings, renderOffScreen);
			criteria:ClearAllPoints();
			if textStrings == 1 then
				if numCriteria == 1 then
					criteria:SetPoint("TOP", objectivesFrame, "TOP", -14, yOffset);
				else
					criteria:SetPoint("TOPLEFT", objectivesFrame, "TOPLEFT", 0, yOffset);
				end

			else
				criteria:SetPoint("TOPLEFT", KrowiAF.AchievementButton_GetCriteria(textStrings-1, renderOffScreen), "BOTTOMLEFT", 0, 0);
			end

			if objectivesFrame.completed and completed then
				criteria.name:SetTextColor(0, 0, 0, 1);
				criteria.name:SetShadowOffset(0, 0);
			elseif completed then
				criteria.name:SetTextColor(0, 1, 0, 1);
				criteria.name:SetShadowOffset(1, -1);
			else
				criteria.name:SetTextColor(.6, .6, .6, 1);
				criteria.name:SetShadowOffset(1, -1);
			end

			local stringWidth = 0;
			local maxCriteriaContentWidth;
			if completed then
				maxCriteriaContentWidth = ACHIEVEMENTUI_MAXCONTENTWIDTH - ACHIEVEMENTUI_CRITERIACHECKWIDTH;
				criteria.check:SetPoint("LEFT", 18, -3);
				criteria.name:SetPoint("LEFT", criteria.check, "RIGHT", 0, 2);
				criteria.check:Show();
				criteria.name:SetText(criteriaString);
				stringWidth = min(criteria.name:GetStringWidth(),maxCriteriaContentWidth);
			else
				maxCriteriaContentWidth = ACHIEVEMENTUI_MAXCONTENTWIDTH - objectivesFrame.textCheckWidth;
				criteria.check:SetPoint("LEFT", 0, -3);
				criteria.name:SetPoint("LEFT", criteria.check, "RIGHT", 5, 2);
				criteria.check:Hide();
				criteria.name:SetText("- "..criteriaString);
				stringWidth = min(criteria.name:GetStringWidth() - objectivesFrame.textCheckWidth,maxCriteriaContentWidth);	-- don't want the "- " to be included in the width
			end
			if criteria.name:GetWidth() > maxCriteriaContentWidth then
				criteria.name:SetWidth(maxCriteriaContentWidth);
			end
			criteria:SetParent(objectivesFrame);
			criteria:Show();
			criteria:SetWidth(stringWidth + ACHIEVEMENTUI_CRITERIACHECKWIDTH);
			maxCriteriaWidth = max(maxCriteriaWidth, stringWidth + ACHIEVEMENTUI_CRITERIACHECKWIDTH);

			numCriteriaRows = numCriteriaRows + 1;
		end
	end

	if ( textStrings > 0 and progressBars > 0 ) then
		-- If we have text criteria and progressBar criteria, display the progressBar criteria first and position the textStrings under them.
		local criTable = KrowiAF.AchievementButton_GetCriteria(1, renderOffScreen);
		criTable:ClearAllPoints();
		if ( textStrings == 1 ) then
			criTable:SetPoint("TOP", KrowiAF.AchievementButton_GetProgressBar(progressBars, renderOffScreen), "BOTTOM", -14, -4);
		else
			criTable:SetPoint("TOP", KrowiAF.AchievementButton_GetProgressBar(progressBars, renderOffScreen), "BOTTOM", 0, -4);
			criTable:SetPoint("LEFT", objectivesFrame, "LEFT", 0, 0);
		end
	elseif ( textStrings > 1 ) then
		-- Figure out if we can make multiple columns worth of criteria instead of one long one
		local numColumns = floor(ACHIEVEMENTUI_MAXCONTENTWIDTH/maxCriteriaWidth);
		-- But if we have a lot of criteria, force 2 columns
		local forceColumns = false;
		if ( numColumns == 1 and textStrings >= FORCE_COLUMNS_MIN_CRITERIA and maxCriteriaWidth <= FORCE_COLUMNS_MAX_WIDTH ) then
			numColumns = 2;
			forceColumns = true;
			-- if top right criteria would run into the achievement shield, move them all down 1 row
			-- this assumes description is 1 or 2 lines, otherwise this wouldn't be a problem
			if ( KrowiAF.AchievementButton_GetCriteria(2, renderOffScreen).name:GetStringWidth() > FORCE_COLUMNS_RIGHT_COLUMN_SPACE and progressBars == 0 ) then
				AddExtraCriteriaRow();
			end
		end
		if ( numColumns > 1 ) then
			local step;
			local rows = 1;
			local position = 0;
			local criTable = criteriaTable;
			if (renderOffScreen) then
				criTable = criteriaTableOffScreen;
			end
			for i=1, #criTable do
				position = position + 1;
				if ( position > numColumns ) then
					position = position - numColumns;
					rows = rows + 1;
				end

				if ( rows == 1 ) then
					criTable[i]:ClearAllPoints();
					local xOffset = 0;
					if ( forceColumns ) then
						if ( position == 1 ) then
							xOffset = FORCE_COLUMNS_LEFT_OFFSET;
						elseif ( position == 2 ) then
							xOffset = FORCE_COLUMNS_RIGHT_OFFSET;
						end
					end
					criTable[i]:SetPoint("TOPLEFT", objectivesFrame, "TOPLEFT", (position - 1)*(ACHIEVEMENTUI_MAXCONTENTWIDTH/numColumns) + xOffset, yOffset);
				else
					criTable[i]:ClearAllPoints();
					criTable[i]:SetPoint("TOPLEFT", criTable[position + ((rows - 2) * numColumns)], "BOTTOMLEFT", 0, 0);
				end
			end
			numCriteriaRows = ceil(numCriteriaRows/numColumns);
		end
	end

	numCriteriaRows = numCriteriaRows + numExtraCriteriaRows;

	if ( firstMetaCriteria ) then
		local yOffsetMeta = -8 - numCriteriaRows * ACHIEVEMENTBUTTON_CRITERIAROWHEIGHT;
		if ( metas == 1 ) then
			firstMetaCriteria:SetPoint("TOP", objectivesFrame, "TOP", 0, yOffsetMeta);
		else
			firstMetaCriteria:SetPoint("TOPLEFT", objectivesFrame, "TOPLEFT", 20, yOffsetMeta);
		end
	end

	local height = numMetaRows * ACHIEVEMENTBUTTON_METAROWHEIGHT + numCriteriaRows * ACHIEVEMENTBUTTON_CRITERIAROWHEIGHT;
	if ( metas > 0 or progressBars > 0 ) then
		height = height + 10;
	end
	objectivesFrame:SetHeight(height);
	objectivesFrame.Mode = ACHIEVEMENTMODE_CRITERIA;
end
