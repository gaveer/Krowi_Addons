-- [[ Namespaces ]] --
local _, addon = ...;
-- local core = addon.Core;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.WorldMapButton = {};
local worldMapButton = gui.WorldMapButton;

addon.WorldMapButtons = LibStub("Krowi_WorldMapButtons-1.0"); -- Global world map buttons object

function worldMapButton.Load()
    worldMapButton = addon.WorldMapButtons:Add("KrowiAF_WorldMapAchievementButtonTemplate", "BUTTON");

    return worldMapButton;
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
    local categoriesFrame = gui.GetFrames("CategoriesFrame");
    if worldMapButton.Achievements and #worldMapButton.Achievements > 0 then
        addon.GUI.ToggleAchievementFrameAtTab1(true);
        addon.Categories[2].Name = addon.L["Selected Zone"] .. " (" .. worldMapButton.name .. ")";
        categoriesFrame:SelectCategory(addon.Categories[2]);
    end
end

function WorldMapAchievementButtonMixin:OnEnter()
    if not IsAddOnLoaded("Blizzard_AchievementUI") then
        LoadAddOn("Blizzard_AchievementUI");
    end

    local mapID = WorldMapFrame:GetMapID();
    addon.SelectedZoneCategory.Achievements = addon.GetAchievementsInZone(mapID);
    -- replace this by a new category named SelectedZone
    local numOfAch, numOfCompAch, numOfNotObtAch = 0, 0, 0;
    for _, achievement in next, addon.SelectedZoneCategory.Achievements do
        numOfAch, numOfCompAch, numOfNotObtAch = addon.Validate(worldMapButton, achievement, numOfAch, numOfCompAch, numOfNotObtAch); -- , numOfIncompAch
    end

    worldMapButton.Achievements = addon.SelectedZoneCategory.Achievements;
    worldMapButton.name = C_Map.GetMapInfo(mapID).name;
    worldMapButton.numAchievements = numOfAch;
    worldMapButton.numCompleted = numOfCompAch;
    worldMapButton.numOfNotObtAch = numOfNotObtAch;
    local numOfNotObtAchText = "";
    if numOfNotObtAch > 0 and addon.Options.db.Tooltip.Categories.ShowNotObtainable then
        numOfNotObtAchText = " (+" .. numOfNotObtAch .. ")";
    end
    worldMapButton.numCompletedText = numOfCompAch .. numOfNotObtAchText .. " / " .. numOfAch;

    addon.StatusBarTooltip(worldMapButton);
end

function WorldMapAchievementButtonMixin:OnHide()
    
end

function WorldMapAchievementButtonMixin:Refresh()
    
end