-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;
local diagnostics = addon.Diagnostics;

addon.Tutorials = LibStub("KrowiTutorials-1.0"); -- Global tutorial object
local tutorials = addon.Tutorials; -- Local tutorial object

tutorials.FeaturesTutorialPages = 7;
tutorials.FeaturesTutorial = "Krowi_AchievementFilter_FeaturesTutorial";
local media = "Interface\\AddOns\\Krowi_AchievementFilter\\Media\\";

local function GetTitle(title)
    return string.format(addon.Yellow, title) .. "\n\n";
end

local tabButton1, categoriesFrame, achievementsFrame, filterButton, searchBoxFrame, searchPreviewFrame, fullSearchResultsFrame;
function tutorials.Load()
    diagnostics.Trace("tutorials.Load");

    tutorials.RegisterTutorial(tutorials.FeaturesTutorial, {
        savedvariable = addon.Options.db,
        key = "FeaturesTutorial",
        title = AF_NAME .. " - " .. AF_BUILD_VERSION,
		width = 512 + 20,
        {   -- 1
            imageHeight = 128,
            image = media .. "TabButton",
            subTitle = string.format(addon.Yellow, addon.L["FT_TABBUTTON_TITLE"]),
            text = addon.L["FT_TABBUTTON_DESC"],
			shineTop = addon.Options.db.ElvUISkin.Tutorials and 7 or 12,
			shineBottom = addon.Options.db.ElvUISkin.Tutorials and -6 or -21,
			shineLeft = addon.Options.db.ElvUISkin.Tutorials and 1 or 2,
			shineRight = addon.Options.db.ElvUISkin.Tutorials and 0 or -2,
        },
        {   -- 2
            imageHeight = 512,
            image = media .. "Grouping",
            subTitle = string.format(addon.Yellow, addon.L["FT_GROUPING_TITLE"]),
            text = addon.L["FT_GROUPING_DESC"],
            shineHeight = 6,
            shineWidth = 7,
            shineTop = addon.Options.db.ElvUISkin.Tutorials and 7 or nil,
            shineLeft = addon.Options.db.ElvUISkin.Tutorials and -10 or nil,
            shineRight = addon.Options.db.ElvUISkin.Tutorials and 8 or nil,
        },
        {   -- 3
		    imageHeight = 256,
            image = media .. "RightClick",
            subTitle = string.format(addon.Yellow, addon.L["FT_RIGHTCLICKMENU_TITLE"]),
            text = core.ReplaceVars{addon.L["FT_RIGHTCLICKMENU_DESC"],
                                    wowhead = string.format(addon.Yellow, addon.L["Wowhead"]),
                                    goTo = string.format(addon.Yellow, addon.L["Go to"]),
                                    partOfAChain = string.format(addon.Yellow, addon.L["Part of a chain"]),
                                    require = string.format(addon.Yellow, addon.L["FT_RIGHTCLICKMENU_REQUIRE"]),
                                    xuFuPetGuides = string.format(addon.Yellow, addon.L["Xu-Fu's Pet Guides"]),
                                    IAT = string.format(addon.Yellow, addon.L["Instance Achievement Tracker"]),
                                    installed = (addon.IsIATLoaded() and (string.format(addon.Green, addon.L["Installed"]:lower())) or (string.format(addon.Red, addon.L["Not installed"]:lower())))},
            shineHeight = addon.Options.db.ElvUISkin.MiscFrames and 9 or 6,
            shineWidth = addon.Options.db.ElvUISkin.MiscFrames and 10 or 7,
        },
        {   -- 4
            imageHeight = 256,
            image = media .. "SearchPreview",
            subTitle = string.format(addon.Yellow, addon.L["FT_SEARCHPREVIEW_TITLE"]),
            text = core.ReplaceVars{addon.L["FT_SEARCHPREVIEW_DESC"],
                                    clearOnRightClick = addon.L["Clear search field on Right Click"],
                                    minCharToSearch = addon.L["Minimum characters to search"],
                                    numSearchPreviews = addon.L["Number of search previews"],
                                    addonName = AF_NAME},
            shineTop = addon.Options.db.ElvUISkin.Tutorials and 10 or 30,
            shineLeft = addon.Options.db.ElvUISkin.Tutorials and -10 or -11,
            shineRight = 11,
        },
        {   -- 5
            imageHeight = 256,
            image = media .. "FullSearch",
            subTitle = string.format(addon.Yellow, addon.L["FT_FULLSEARCH_TITLE"]),
            text = addon.L["FT_FULLSEARCH_DESC"],
            shineTop = addon.Options.db.ElvUISkin.Tutorials and 9 or 8,
            shineBottom = addon.Options.db.ElvUISkin.Tutorials and -10 or -1,
            shineLeft = addon.Options.db.ElvUISkin.Tutorials and -11 or -12,
            shineRight = addon.Options.db.ElvUISkin.Tutorials and 11 or 13,
        },
        {   -- 6
            imageHeight = 256,
            image = media .. "Filter",
            subTitle = string.format(addon.Yellow, addon.L["FT_FILTER_TITLE"]),
            text = core.ReplaceVars{addon.L["FT_FILTER_DESC"],
                                    mergeSmallCategories = string.format(addon.Yellow, addon.L["Merge Small Categories"]),
                                    completed = string.format(addon.Yellow, addon.L["Completed"]),
                                    notCompleted = string.format(addon.Yellow, addon.L["Not Completed"]),
                                    obtainable = string.format(addon.Yellow, addon.L["Obtainable"]),
                                    notObtainable = string.format(addon.Yellow, addon.L["Not Obtainable"]),
                                    faction = addon.L["Faction"],
                                    neutral = string.format(addon.Yellow, addon.L["Neutral"]),
                                    alliance = string.format(addon.Yellow, addon.L["Alliance"]),
                                    alliance_wc = addon.L["Alliance"],
                                    horde = string.format(addon.Yellow, addon.L["Horde"]),
                                    horde_wc = addon.L["Horde"],
                                    covenant = addon.L["Covenant"],
                                    kyrian = string.format(addon.Yellow, addon.L["Kyrian"]),
                                    kyrian_wc = addon.L["Kyrian"],
                                    venthyr = string.format(addon.Yellow, addon.L["Venthyr"]),
                                    venthyr_wc = addon.L["Venthyr"],
                                    nightfae = string.format(addon.Yellow, addon.L["Night Fae"]),
                                    nightfae_wc = addon.L["Night Fae"],
                                    necrolord = string.format(addon.Yellow, addon.L["Necrolord"]),
                                    necrolord_wc = addon.L["Necrolord"],
                                    collapseChain = string.format(addon.Yellow, addon.L["Collapse Chain"]),
                                    noSorting = string.format(addon.Yellow, addon.L["Default"]),
                                    sortByName = string.format(addon.Yellow, addon.L["Name"]),
                                    reverseSort = string.format(addon.Yellow, addon.L["Reverse Sort"])},
            shineAll = 7,
            shineHeight = addon.Options.db.ElvUISkin.Tutorials and 8 or nil,
            shineWidth = addon.Options.db.ElvUISkin.Tutorials and 10 or nil,
        },
        {   -- 7
            imageHeight = 256,
            image = media .. "Tooltip",
            subTitle = string.format(addon.Yellow, addon.L["FT_TOOLTIP_TITLE"] .. " (" .. addon.L["Achievements"] .. ")"),
            text = core.ReplaceVars{addon.L["FT_TOOLTIP_DESC"],
                                    partOfAChain = string.format(addon.Yellow, addon.L["Part of a chain"]),
                                    requiredFor = string.format(addon.Yellow, addon.L["Required for"]),
                                    ready = "|T136814:0|t",
                                    waiting = "|T136815:0|t",
                                    notready = "|T136813:0|t",
                                    green = string.format(addon.Green, addon.L["FT_TOOLTIP_GREEN"]),
                                    grey = string.format(addon.Grey, addon.L["FT_TOOLTIP_GREY"]),
                                    red = string.format(addon.Red, addon.L["FT_TOOLTIP_RED"]),
                                    light = string.format(addon.Yellow, addon.L["FT_TOOLTIP_LIGHTER"]) .. " " .. string.format(addon.LightGreen, addon.L["FT_TOOLTIP_GREEN"]) .. ", " .. string.format(addon.LightGrey, addon.L["FT_TOOLTIP_GREY"]) .. " " .. string.format(addon.Yellow, addon.L["FT_TOOLTIP_OR"]) .. " " .. string.format(addon.LightRed, addon.L["FT_TOOLTIP_RED"]),
                                    goTo = addon.L["Go to"]},
            -- shineTop = addon.Options.db.ElvUISkin.Tutorials and 9 or 8,
            -- shineBottom = addon.Options.db.ElvUISkin.Tutorials and -10 or -1,
            -- shineLeft = addon.Options.db.ElvUISkin.Tutorials and -11 or -12,
            -- shineRight = addon.Options.db.ElvUISkin.Tutorials and 11 or 13,
        },
        onShow = function(self, i)
            local gui = addon.GUI;

            if i == 1 then
                gui.ToggleAchievementFrameAtTab1(true);
                self[i].shine = tabButton1;
            elseif i == 2 then
                gui.ToggleAchievementFrameAtTab1(true);
                categoriesFrame:SelectCategory(addon.GetAchievement(14281).Category);
                self[i].shine = categoriesFrame;
            elseif i == 3 then
                gui.ToggleAchievementFrameAtTab1(true);
                local achievementsButtons = achievementsFrame.Container.buttons;
                achievementsFrame:SelectAchievementFromID(1283, "RightButton", true, achievementsButtons[1], 88, 34);
                self[i].shine = DropDownList1;
            elseif i == 4 then
                gui.ToggleAchievementFrameAtTab1(true);
                searchBoxFrame:SetText("myt");
                searchBoxFrame:OnTextChanged(); -- Trigger this one manually as the previous line does not trigger it in order to search for achievements
                local bottom;
                if searchPreviewFrame.ShowFullSearchResultsButton:IsShown() then
                    bottom = searchPreviewFrame.ShowFullSearchResultsButton:GetBottom();
                else
                    local buttons = searchPreviewFrame.Buttons;
                    for _, button in next, buttons do
                        if button:IsShown() then
                            bottom = button:GetBottom();
                        end
                    end
                end
                self[i].shineBottom = bottom - searchPreviewFrame:GetBottom() - 10;
                self[i].shine = searchPreviewFrame;
            elseif i == 5 then
                gui.ToggleAchievementFrameAtTab1(true);
                searchBoxFrame:SetText("myt");
                searchBoxFrame:OnTextChanged(); -- Trigger this one manually as the previous line does not trigger it in order to search for achievements
                searchPreviewFrame.ShowFullSearchResultsButton:Click();
                searchBoxFrame:SetText("");
                searchBoxFrame:OnTextChanged();
                self[i].shine = fullSearchResultsFrame;
            elseif i == 6 then
                gui.ToggleAchievementFrameAtTab1(true);
                self[i].shine = filterButton;
                print(filterButton:GetTop());
            end
        end
    });
    tutorials.CloseButtonHook(tutorials.FeaturesTutorial, function()
        diagnostics.Trace("tutorials.CloseButtonHook");

        addon.GUI.ResetView();
    end);

    diagnostics.Debug("Tutorial loaded");
end

function tutorials.SetFrames(tabBtn1, catFrame, achFrame, fltrBtn, srchBxFrame, srchPrvwFrame, fullSrchRsltsFrame)
    tabButton1 = tabBtn1;
    categoriesFrame = catFrame;
    achievementsFrame = achFrame;
    filterButton = fltrBtn;
    searchBoxFrame = srchBxFrame;
    searchPreviewFrame = srchPrvwFrame;
    fullSearchResultsFrame = fullSrchRsltsFrame;
end

function tutorials.HookTrigger(hook)
    hook:HookScript("OnClick", function()
        diagnostics.Trace("tutorials.HookTrigger OnClick");
        tutorials.TriggerTutorial(tutorials.FeaturesTutorial, tutorials.FeaturesTutorialPages);
    end)
end