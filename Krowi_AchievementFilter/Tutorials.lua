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
    return AF_COLOR_YELLOW .. title .. AF_COLOR_END .. "\n\n";
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
            text = GetTitle(addon.L["FT_TABBUTTON_TITLE"]) ..
                            addon.L["FT_TABBUTTON_DESC"],
			shineTop = addon.Options.db.ElvUISkin.Tutorials and 7 or 12,
			shineBottom = addon.Options.db.ElvUISkin.Tutorials and -6 or -21,
			shineLeft = addon.Options.db.ElvUISkin.Tutorials and 1 or 2,
			shineRight = addon.Options.db.ElvUISkin.Tutorials and 0 or -2,
        },
        {   -- 2
            imageHeight = 512,
            image = media .. "Grouping",
            text = GetTitle(addon.L["FT_GROUPING_TITLE"]) ..
                            addon.L["FT_GROUPING_DESC"],
            shineHeight = 6,
            shineWidth = 7,
            shineTop = addon.Options.db.ElvUISkin.Tutorials and 7 or nil,
            shineLeft = addon.Options.db.ElvUISkin.Tutorials and -10 or nil,
            shineRight = addon.Options.db.ElvUISkin.Tutorials and 8 or nil,
        },
        {   -- 3
		    imageHeight = 256,
            image = media .. "RightClick",
            text = GetTitle(addon.L["FT_RIGHTCLICKMENU_TITLE"]) ..
                            core.ReplaceVars{addon.L["FT_RIGHTCLICKMENU_DESC"],
                                            wowhead = AF_COLOR_YELLOW .. addon.L["Wowhead"] .. AF_COLOR_END,
                                            xuFuPetGuides = AF_COLOR_YELLOW .. addon.L["Xu-Fu's Pet Guides"] .. AF_COLOR_END,
                                            IAT = AF_COLOR_YELLOW .. addon.L["Instance Achievement Tracker"] .. AF_COLOR_END,
                                            installed = (addon.IsIATLoaded() and (AF_COLOR_GREEN .. addon.L["Installed"]:lower() .. AF_COLOR_END) or
                                                (AF_COLOR_RED .. addon.L["Not installed"]:lower() .. AF_COLOR_END))},
            shineHeight = addon.Options.db.ElvUISkin.MiscFrames and 9 or 6,
            shineWidth = addon.Options.db.ElvUISkin.MiscFrames and 10 or 7,
        },
        {   -- 4
            imageHeight = 256,
            image = media .. "SearchPreview",
            text = GetTitle(addon.L["FT_SEARCHPREVIEW_TITLE"]) ..
                            core.ReplaceVars{addon.L["FT_SEARCHPREVIEW_DESC"],
                                            clearOnRightClick = addon.L["O_CLEAR_SEARCH_ON_RIGHT_CLICK"],
                                            minCharToSearch = addon.L["O_MIN_CHAR_TO_SEARCH"],
                                            numSearchPreviews = addon.L["O_NUM_OF_SEARCH_PREVIEWS"],
                                            addonName = AF_NAME},
            shineTop = addon.Options.db.ElvUISkin.Tutorials and 10 or 30,
            shineLeft = addon.Options.db.ElvUISkin.Tutorials and -10 or -11,
            shineRight = 11,
        },
        {   -- 5
            imageHeight = 256,
            image = media .. "FullSearch",
            text = GetTitle(addon.L["FT_FULLSEARCH_TITLE"]) ..
                            addon.L["FT_FULLSEARCH_DESC"],
            shineTop = addon.Options.db.ElvUISkin.Tutorials and 9 or 8,
            shineBottom = addon.Options.db.ElvUISkin.Tutorials and -10 or -1,
            shineLeft = addon.Options.db.ElvUISkin.Tutorials and -11 or -12,
            shineRight = addon.Options.db.ElvUISkin.Tutorials and 11 or 13,
        },
        {   -- 6
            imageHeight = 256,
            image = media .. "Filter",
            text = GetTitle(addon.L["FT_FILTER_TITLE"]) ..
                            core.ReplaceVars{addon.L["FT_FILTER_DESC"],
                                            mergeSmallCategories = AF_COLOR_YELLOW .. addon.L["Merge Small Categories"] .. AF_COLOR_END,
                                            completed = AF_COLOR_YELLOW .. addon.L["Completed"] .. AF_COLOR_END,
                                            notCompleted = AF_COLOR_YELLOW .. addon.L["Not Completed"] .. AF_COLOR_END,
                                            obtainable = AF_COLOR_YELLOW .. addon.L["Obtainable"] .. AF_COLOR_END,
                                            notObtainable = AF_COLOR_YELLOW .. addon.L["Not Obtainable"] .. AF_COLOR_END,
                                            faction = addon.L["Faction"],
                                            neutral = AF_COLOR_YELLOW .. addon.L["Neutral"] .. AF_COLOR_END,
                                            alliance = AF_COLOR_YELLOW .. addon.L["Alliance"] .. AF_COLOR_END,
                                            alliance_wc = addon.L["Alliance"],
                                            horde = AF_COLOR_YELLOW .. addon.L["Horde"] .. AF_COLOR_END,
                                            horde_wc = addon.L["Horde"],
                                            covenant = addon.L["Covenant"],
                                            kyrian = AF_COLOR_YELLOW .. addon.L["Kyrian"] .. AF_COLOR_END,
                                            kyrian_wc = addon.L["Kyrian"],
                                            venthyr = AF_COLOR_YELLOW .. addon.L["Venthyr"] .. AF_COLOR_END,
                                            venthyr_wc = addon.L["Venthyr"],
                                            nightfae = AF_COLOR_YELLOW .. addon.L["Night Fae"] .. AF_COLOR_END,
                                            nightfae_wc = addon.L["Night Fae"],
                                            necrolord = AF_COLOR_YELLOW .. addon.L["Necrolord"] .. AF_COLOR_END,
                                            necrolord_wc = addon.L["Necrolord"],
                                            collapseChain = AF_COLOR_YELLOW .. addon.L["Collapse Chain"] .. AF_COLOR_END,
                                            noSorting = AF_COLOR_YELLOW .. addon.L["Default"] .. AF_COLOR_END,
                                            sortByName = AF_COLOR_YELLOW .. addon.L["Name"] .. AF_COLOR_END,
                                            reverseSort = AF_COLOR_YELLOW .. addon.L["Reverse Sort"] .. AF_COLOR_END},

            shineAll = 7,
            shineHeight = addon.Options.db.ElvUISkin.Tutorials and 8 or nil,
            shineWidth = addon.Options.db.ElvUISkin.Tutorials and 10 or nil,
        },
        {   -- 7
            imageHeight = 256,
            image = media .. "Tooltip",
            text = GetTitle(addon.L["FT_TOOLTIP_TITLE"]) ..
                            core.ReplaceVars{addon.L["FT_TOOLTIP_DESC"],
                            partOfAChain = AF_COLOR_YELLOW .. addon.L["Part of a chain"] .. AF_COLOR_END,
                            requiredFor = AF_COLOR_YELLOW .. addon.L["Required for"] .. AF_COLOR_END,
                            ready = "|T136814:0|t",
                            waiting = "|T136815:0|t",
                            notready = "|T136813:0|t",
                            green = AF_COLOR_DARKGREEN .. addon.L["FT_TOOLTIP_GREEN"] .. AF_COLOR_END,
                            grey = AF_COLOR_GREY60 .. addon.L["FT_TOOLTIP_GREY"] .. AF_COLOR_END,
                            light = AF_COLOR_YELLOW .. addon.L["FT_TOOLTIP_LIGHTER"] .. AF_COLOR_END .. " " .. AF_COLOR_LIGHTGREEN .. addon.L["FT_TOOLTIP_GREEN"] .. AF_COLOR_END .. " " .. AF_COLOR_YELLOW .. addon.L["FT_TOOLTIP_OR"] .. AF_COLOR_END .. " " .. AF_COLOR_GREY90 .. addon.L["FT_TOOLTIP_GREY"] .. AF_COLOR_END,
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