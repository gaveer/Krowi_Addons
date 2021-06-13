-- [[ Namespaces ]] --
local _, addon = ...;
-- local core = addon.Core;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.WorldMapButton = {};
local worldMapButton = gui.WorldMapButton;

addon.WorldMapButtons = LibStub("KrowiWorldMapButtons-1.0"); -- Global world map buttons object

function worldMapButton.Load()
    addon.WorldMapButtons:Add("KrowiAF_WorldMapAchievementButtonTemplate", "BUTTON");
end

WorldMapAchievementButtonMixin = {};

function WorldMapAchievementButtonMixin:OnLoad()

end

function WorldMapAchievementButtonMixin:OnMouseDown(button)
    if self:IsEnabled() then
		self.Icon:SetPoint("TOPLEFT", 8, -8);
		self.IconOverlay:Show();
	end
end

function WorldMapAchievementButtonMixin:OnMouseUp()
    self.Icon:SetPoint("TOPLEFT", self, "TOPLEFT", 6, -6);
	self.IconOverlay:Hide();
end

function WorldMapAchievementButtonMixin:OnClick()
    
end

function WorldMapAchievementButtonMixin:OnEnter()
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
    GameTooltip_SetTitle(GameTooltip, AF_NAME);

    local refresh = addon.Data.GetCurrentZoneAchievements();

    -- This zone has x completed, y not completed and z not obtainable achievements.
    -- Click me to show a list of not completed, completed and not obtainable achievements in this order.
end

function WorldMapAchievementButtonMixin:OnHide()
    
end

function WorldMapAchievementButtonMixin:Refresh()
    
end