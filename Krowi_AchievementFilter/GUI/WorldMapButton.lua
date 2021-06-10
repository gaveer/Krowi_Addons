-- [[ Namespaces ]] --
local _, addon = ...;
-- local core = addon.Core;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.WorldMapButton = {};
local worldMapButton = gui.WorldMapButton;

addon.WorldMapButtons = LibStub("KrowiWorldMapButtons-1.0"); -- Global world map buttons object

function worldMapButton.Load()
    addon.WorldMapButtons:Add("TemplateName (need to write)", "BUTTON");
end

-- function addon.FixHandyNotesCompatibility()
--     for _, f in next, WorldMapFrame.overlayFrames do
--         if f.OnLoad == HandyNotes_ShadowlandsWorldMapOptionsButtonMixin.OnLoad then
--             print("found");
--         end
--         if f.OnLoad == HandyNotes_VisionsOfNZothWorldMapOptionsButtonMixin.OnLoad then
--             print("found");
--         end
--     end
-- end

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