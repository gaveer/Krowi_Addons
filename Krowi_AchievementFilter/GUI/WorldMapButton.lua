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
    addon.GUI.WorldMapButton = worldMapButton;
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
    diagnostics.Debug(worldMapButton.Achievements);
    diagnostics.Debug(#worldMapButton.Achievements);
    if worldMapButton.Achievements and #worldMapButton.Achievements > 0 then
        HideUIPanel(WorldMapFrame);
        addon.Data.SelectedZoneCategory.Achievements = worldMapButton.Achievements;
        addon.GUI.ToggleAchievementFrameAtTab1(true);
        addon.Data.Categories[2].Name = addon.L["Selected Zone"] .. " (" .. worldMapButton.name .. ")";
        gui.CategoriesFrame:SelectCategory(addon.Data.Categories[2]);
    end
end

function WorldMapAchievementButtonMixin:OnEnter()
    if worldMapButton.numAchievements > 0 then
        addon.StatusBarTooltip(worldMapButton, "ANCHOR_RIGHT");
    else
        GameTooltip:SetOwner(worldMapButton, "ANCHOR_RIGHT");
	    GameTooltip_SetTitle(GameTooltip, worldMapButton.name);
        GameTooltip_AddNormalLine(GameTooltip, addon.L["No achievements are available with the current set of filters"]);
        GameTooltip:Show();
    end
end

function WorldMapAchievementButtonMixin:OnHide()

end

function WorldMapAchievementButtonMixin:Refresh()
    if not IsAddOnLoaded("Blizzard_AchievementUI") then
        LoadAddOn("Blizzard_AchievementUI");
    end

    local mapID = WorldMapFrame:GetMapID();
    worldMapButton.Achievements = addon.GetAchievementsInZone(mapID, true);
    local numOfAch, numOfCompAch, numOfNotObtAch = 0, 0, 0;
    for _, achievement in next, worldMapButton.Achievements do
        numOfAch, numOfCompAch, numOfNotObtAch = addon.GetAchievementNumbers(gui.FilterButton, gui.FilterButton.Filters.db.SelectedZone, achievement, numOfAch, numOfCompAch, numOfNotObtAch); -- , numOfIncompAch
    end

    worldMapButton.name = C_Map.GetMapInfo(mapID).name;
    worldMapButton.numAchievements = numOfAch;
    if numOfAch > 0 then
        worldMapButton.numCompleted = numOfCompAch;
        worldMapButton.numOfNotObtAch = numOfNotObtAch;
        local numOfNotObtAchText = "";
        if numOfNotObtAch > 0 and addon.Options.db.Tooltip.Categories.ShowNotObtainable then
            numOfNotObtAchText = " (+" .. numOfNotObtAch .. ")";
        end
        worldMapButton.numCompletedText = numOfCompAch .. numOfNotObtAchText .. " / " .. numOfAch;
        self:Enable();
		self:DesaturateHierarchy(0);
	else
		self:Disable();
		self:DesaturateHierarchy(1);
    end
end