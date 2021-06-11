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

function WorldMapAchievementButtonMixin:OnMouseDown()
    
end

function WorldMapAchievementButtonMixin:OnMouseUp()
    
end

function WorldMapAchievementButtonMixin:OnClick()
    
end

function WorldMapAchievementButtonMixin:OnEnter()
    
end

function WorldMapAchievementButtonMixin:OnHide()
    
end

function WorldMapAchievementButtonMixin:Refresh()
    
end