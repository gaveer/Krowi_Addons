local _, addon = ...; -- Global addon namespace
local gui = addon.GUI; -- Local GUI namespace
gui.Search = {}; -- Global Search namespace
local search = gui.Search; -- Local Search namespace

function search.Load(achievementsFrame)
    addon.GUI.FullSearchResultsFrame = addon.GUI.FullSearchResultsFrame:New(achievementsFrame);
    addon.GUI.SearchPreviewFrame = addon.GUI.SearchPreviewFrame:New(addon.GUI.FullSearchResultsFrame, achievementsFrame);
    addon.GUI.SearchBoxFrame = addon.GUI.SearchBoxFrame:New(addon.GUI.SearchPreviewFrame, addon.GUI.FullSearchResultsFrame, achievementsFrame);
end