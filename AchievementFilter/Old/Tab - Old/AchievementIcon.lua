function KrowiAF.AchievementIcon_Desaturate(self) -- Blizzard_AchievementUI.lua line 995
    KrowiAF.Trace("KrowiAF.AchievementIcon_Desaturate");

	self.Bling:SetVertexColor(.6, .6, .6, 1);
	self.Frame:SetVertexColor(.75, .75, .75, 1);
	self.Texture:SetVertexColor(.55, .55, .55, 1);
end

function KrowiAF.AchievementIcon_Saturate(self) -- Blizzard_AchievementUI.lua line 1001
    KrowiAF.Trace("KrowiAF.AchievementIcon_Saturate");

	self.Bling:SetVertexColor(1, 1, 1, 1);
	self.Frame:SetVertexColor(1, 1, 1, 1);
	self.Texture:SetVertexColor(1, 1, 1, 1);
end

function KrowiAF.AchievementIcon_Load(self) -- Blizzard_AchievementUI.lua line 1007
    KrowiAF.Trace("KrowiAF.AchievementIcon_Load");

	self.Desaturate = KrowiAF.AchievementIcon_Desaturate;
	self.Saturate = KrowiAF.AchievementIcon_Saturate;
end