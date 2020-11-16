function KrowiAF.AchievementShield_Desaturate (self) -- Blizzard_AchievementUI.lua line 1014
    KrowiAF.Trace("KrowiAF.AchievementShield_Desaturate");

	self.Icon:SetTexCoord(.5, 1, TEXTURES_OFFSET, TEXTURES_OFFSET + 0.5);
end

function KrowiAF.AchievementShield_Saturate (self) -- Blizzard_AchievementUI.lua line 1018
    KrowiAF.Trace("KrowiAF.AchievementShield_Saturate");

	self.Icon:SetTexCoord(0, .5, 0, 0.5);
end

function KrowiAF.AchievementShield_Load(shield) -- Blizzard_AchievementUI.lua line 1022
    KrowiAF.Trace("KrowiAF.AchievementShield_Load");

	shield.Desaturate = KrowiAF.AchievementShield_Desaturate;
    shield.Saturate = KrowiAF.AchievementShield_Saturate;
    
    shield:SetScript("OnClick", KrowiAF.AchievementShield_OnClick);
    shield:SetScript("OnEnter", KrowiAF.AchievementShield_OnEnter);
    shield:SetScript("OnLeave", KrowiAF.AchievementShield_OnLeave);
end

function KrowiAF.AchievementShield_OnClick(self)
	KrowiAF.Trace("KrowiAF.AchievementShield_OnClick");
	
    local parent = self:GetParent();
	KrowiAF.AchievementButton_OnClick(parent);
end

function KrowiAF.AchievementShield_OnEnter(self) -- Blizzard_AchievementUI.lua line 1022
	KrowiAF.Trace("KrowiAF.AchievementShield_OnEnter");
	
	local parent = self:GetParent();
	local achievement = parent.Achievement;
	GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
	if achievement then
		if achievement.AccountWide then
			if achievement.Completed then
				GameTooltip:AddLine(ACCOUNT_WIDE_ACHIEVEMENT_COMPLETED);
			else
				GameTooltip:AddLine(ACCOUNT_WIDE_ACHIEVEMENT);
			end
			GameTooltip:Show();
			return;
		end
		if achievement.EarnedBy then
			GameTooltip:AddLine(format(ACHIEVEMENT_EARNED_BY, achievement.EarnedBy));
			local me = UnitName("player")
			if not achievement.WasEarnedByMe then
				GameTooltip:AddLine(format(ACHIEVEMENT_NOT_COMPLETED_BY, me));
			elseif me ~= achievement.EarnedBy then
				GameTooltip:AddLine(format(ACHIEVEMENT_COMPLETED_BY, me));
			end
			GameTooltip:Show();
			return;
		end
	end

	-- Pass-through to the achievement button
	local func = parent:GetScript("OnEnter");
	if func then
		func(parent);
	end

	KrowiAF.GetAchievementInfoAchievementFrameAchievements_CheckGuildMembersTooltip(self);
	GameTooltip:Show();
end

function KrowiAF.AchievementShield_OnLeave(self) -- Blizzard_AchievementUI.lua line 3534
	KrowiAF.Trace("KrowiAF.AchievementShield_OnLeave");
	
	-- Pass-through to the achievement button
	local parent = self:GetParent();
	local func = parent:GetScript("OnLeave");
	if func then
		func(parent);
	end
	GameTooltip:Hide();
	KrowiAF.GuildMemberRequestFrame = nil;
end