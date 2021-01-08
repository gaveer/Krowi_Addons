local _, addon = ...; -- Global addon namespace
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace

function KrowiAF_AchievementButton_OnLoad(self) -- Used in Templates - KrowiAF_AchievementTemplate
	diagnostics.Trace("KrowiAF_AchievementButton_OnLoad");

	-- We need to overwrite the shield.OnClick so it calls the correct button OnClick
	-- Doing this in code to not have to redo the entire template
	self.shield:SetScript("OnClick", function(self)
		local parent = self:GetParent();
		KrowiAF_AchievementButton_OnClick(parent);
	end);

	AchievementButton_OnLoad(self);
end

function KrowiAF_AchievementButton_OnClick(self, button, down, ignoreModifiers) -- Used in Templates - KrowiAF_AchievementTemplate
	diagnostics.Trace("KrowiAF_AchievementButton_OnClick");

	if button == "LeftButton" then
		diagnostics.Debug("LeftButton");
		OnClickLeftButton(self, ignoreModifiers);
	elseif button == "RightButton" then
		diagnostics.Debug("RightButton");
		OnClickRightButton(self);
	end
end

	-- OnClick Left Button Start
	function OnClickLeftButton(self, ignoreModifiers)
		diagnostics.Trace("KrowiAF.AchievementsButton.OnClickLeftButton");

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
				diagnostics.Debug("AchievementButton_ToggleTracking from KrowiAF_AchievementButton_OnClick");
				AchievementButton_ToggleTracking(self.id);
			end
			return;
		end
	
		if self.selected then
			if not self:IsMouseOver() then
				self.highlight:Hide();
			end
			self.ParentContainer.ParentFrame.Parent:ClearSelection();
			HybridScrollFrame_CollapseButton(self.ParentContainer);
			self.ParentContainer.ParentFrame.Parent:Update();
			return;
		end

		self.ParentContainer.ParentFrame.Parent:ClearSelection();
		self.ParentContainer.ParentFrame.Parent:SelectButton(self);
		self.ParentContainer.ParentFrame.Parent:DisplayAchievement(self, self.ParentContainer.ParentFrame.Parent.SelectedAchievement, self.index, self.Achievement);
		HybridScrollFrame_ExpandButton(self.ParentContainer, ((self.index - 1) * ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT), self:GetHeight());
		self.ParentContainer.ParentFrame.Parent:Update();
		if not ignoreModifiers then
			self.ParentContainer.ParentFrame.Parent:AdjustSelection();
		end
	end
	-- OnClick Left Button End

	-- OnClick Right Button Start
	local externalLink = "";
	StaticPopupDialogs["EXTERNAL_LINK"] = {
		text = "Press CTRL+X to copy the website and close this window.",
		button1 = "Close",
		hasEditBox=true,
		editBoxWidth=500,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
		preferredIndex = 3,
        OnShow = function(self)
            self.editBox:SetText(externalLink);
            self.editBox:HighlightText();
        end,
        EditBoxOnEscapePressed = function(self) self:GetParent().button1:Click() end,
        EditBoxOnTextChanged = function(self)
			if self:GetText():len() < 1 then
				self:GetParent().button1:Click()
            else
                self:SetText(externalLink)
                self:HighlightText()
            end
        end,
    }

	local menuFrame = CreateFrame("Frame", "KrowiAFAchievementsButtonRightClickMenu", nil, "UIDropDownMenuTemplate");
	local menu = {};

	function RecursiveMenu()
	end

	function OnClickRightButton(self)
		diagnostics.Trace("KrowiAF.AchievementsButton.OnClickRightButton");

		-- Reset menu
		menu = {};

		-- Always add header
		local _, name = GetAchievementInfo(self.Achievement.ID);
		tinsert(menu, {text = name, isTitle = true});

		-- Debug table
		if Krowi_AchievementFilterOptions and Krowi_AchievementFilterOptions.EnableDebugInfo then
			tinsert(menu, {text = "Debug Table", func = function() diagnostics.DebugTable(self); end});
		end

		-- Wowhead link
		if not self.Achievement.HasNoWowheadLink then
			externalLink = "https://www.wowhead.com/achievement=" .. self.Achievement.ID; -- .. "#comments"; -- make go to comments optional in settings
			diagnostics.Debug(externalLink);
			tinsert(menu, {text = "Wowhead", func = function() StaticPopup_Show("EXTERNAL_LINK"); end});
		end

		-- Add Xu-Fu's Pet Battle Strategies for pet related achievements (links are added at the location the achievements are added)
		if self.Achievement.XuFuLink ~= nil then
			externalLink = self.Achievement.XuFuLink.Url;
			diagnostics.Debug(externalLink);
			if self.Achievement.XuFuLink.Criteria == nil then
				tinsert(menu, {text = self.Achievement.XuFuLink.Name, func = function() StaticPopup_Show("EXTERNAL_LINK"); end});
			else
				local menuList = {};
				for _, criteria in next, self.Achievement.XuFuLink.Criteria do
					diagnostics.Debug(criteria.Name);
					tinsert(menuList, {text = criteria.Name, func = function()
						externalLink = criteria.Url;
						StaticPopup_Show("EXTERNAL_LINK");
					 end});
				end
				tinsert(menu, {text = self.Achievement.XuFuLink.Name, hasArrow = true, menuList = menuList, func = function()
					externalLink = self.Achievement.XuFuLink.Url;
					StaticPopup_Show("EXTERNAL_LINK");
				end});
			end
		end

		-- IAT Link
		if self.Achievement.HasIATLink and IsAddOnLoaded("InstanceAchievementTracker") then
			tinsert(menu, {text = "IAT Tactics", func = function() IAT_DisplayAchievement(self.Achievement.ID); end});
		end

		EasyMenu(menu, menuFrame, "cursor", 0 , 0, "MENU");
	end
	-- OnClick Right Button End