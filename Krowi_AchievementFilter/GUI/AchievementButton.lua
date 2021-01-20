local _, addon = ...; -- Global addon namespace
local gui = addon.GUI; -- Local GUI namespace
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

function KrowiAF_AchievementButton_OnClick(self, button, down, ignoreModifiers, anchor, offsetX, offsetY) -- Used in Templates - KrowiAF_AchievementTemplate
	diagnostics.Trace("KrowiAF_AchievementButton_OnClick");

	if button == "LeftButton" then
		diagnostics.Debug("LeftButton");
		OnClickLeftButton(self, ignoreModifiers);
	elseif button == "RightButton" then
		diagnostics.Debug("RightButton");
		OnClickRightButton(self, anchor, offsetX, offsetY);
	end
end

-- [[ OnClickLeftButton ]] --
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
			AchievementButton_ToggleTracking(self.id);
		end
		return;
	end

	local achievementsFrame = self.ParentContainer.ParentFrame.Parent;

	if self.selected then
		if not self:IsMouseOver() then
			self.highlight:Hide();
		end
		achievementsFrame:ClearSelection();
		HybridScrollFrame_CollapseButton(self.ParentContainer);
		achievementsFrame:Update();
		return;
	end

	achievementsFrame:ClearSelection();
	achievementsFrame:SelectButton(self);
	achievementsFrame:DisplayAchievement(self, achievementsFrame.SelectedAchievement, self.index, self.Achievement);
	HybridScrollFrame_ExpandButton(self.ParentContainer, ((self.index - 1) * ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT), self:GetHeight());
	achievementsFrame:Update();
	if not ignoreModifiers then
		achievementsFrame:AdjustSelection();
	end
end

-- [[ OnClickRightButton ]] --
local menuFrame = CreateFrame("Frame", "KrowiAFAchievementsButtonRightClickMenu", nil, "UIDropDownMenuTemplate");
local menu = {};

function OnClickRightButton(self, anchor, offsetX, offsetY)
	diagnostics.Trace("KrowiAF.AchievementsButton.OnClickRightButton");

	-- Make sure optional values are set to default if not used
	anchor = anchor or "cursor";
	offsetX = offsetX or 0;
	offsetY = offsetY or 0;

	-- Reset menu
	menu = {};

	-- Always add header
	local _, name = GetAchievementInfo(self.Achievement.ID);
	tinsert(menu, {text = name, isTitle = true});

	-- Debug table
	if diagnostics.DebugEnabled() then
		tinsert(menu, {text = "Debug Table", func = function() diagnostics.DebugTable(self); end});
	end

	-- Wowhead link
	if not self.Achievement.HasNoWowheadLink then
		local externalLink = "https://www.wowhead.com/achievement=" .. self.Achievement.ID; -- .. "#comments"; -- make go to comments optional in settings
		diagnostics.Debug(externalLink);
		tinsert(menu, {text = "Wowhead", func = function() gui.PopupDialog.ShowExternalLink(externalLink); end});
	end

	-- IAT Link
	if self.Achievement.HasIATLink and addon.IsIATLoaded() then
		tinsert(menu, {text = "IAT Tactics", func = function() IAT_DisplayAchievement(self.Achievement.ID); end});
	end

	-- Extra menu defined at the achievement self
	if self.Achievement.RCMenExtra ~= nil then
		tinsert(menu, GetRightClickMenuExtra(self.Achievement.RCMenExtra));
	end

	EasyMenu(menu, menuFrame, anchor, offsetX, offsetY, "MENU");
end

function GetRightClickMenuExtra(achRCMenItem)
	-- diagnostics.Trace("GetRightClickMenuExtra"); -- Generates a lot of messages

	local item = {};
	item.text = achRCMenItem.Name;
	item.func = achRCMenItem.Func;
	item.isTitle = achRCMenItem.IsTitle;
	if achRCMenItem.Children ~= nil then
		item.hasArrow = true;
		item.menuList = {};
		for _, child in next, achRCMenItem.Children do
			tinsert(item.menuList, GetRightClickMenuExtra(child));
		end
	end

	return item;
end