local _, addon = ...; -- Global addon namespace
local gui = addon.GUI; -- Local GUI namespace
gui.Search = {}; -- Global Search namespace
local search = gui.Search; -- Local Search namespace

function search.Load()
    addon.GUI.SearchPreviewContainer = addon.GUI.SearchPreviewContainer:New();
    addon.GUI.SearchBox = addon.GUI.SearchBox:New(addon.GUI.SearchPreviewContainer.Frame, addon.GUI.AchievementsFrame);
    addon.GUI.FullSearchResults = addon.GUI.FullSearchResults:New(addon.GUI.SearchBox.Frame, addon.GUI.AchievementsFrame);
end