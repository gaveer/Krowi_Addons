-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;
local diagnostics = addon.Diagnostics;

addon.Tutorials = LibStub("KrowiTutorials-1.0"); -- Global tutorial object
local tutorials = addon.Tutorials; -- Local tutorial object

local media = "Interface\\AddOns\\Krowi_AchievementFilter\\Media\\";

local pages = {};
local tabButton1, categoriesFrame, achievementsFrame, filterButton, searchBoxFrame, searchPreviewFrame, fullSearchResultsFrame;
function tutorials.Load()
    diagnostics.Trace("tutorials.Load");

    local page = LibStub("KrowiTutorialsPage-1.0");
    tinsert(pages, page:New({ -- 1
        Image = media .. "TabButton",
        ImageSize = {512, 128},
        SubTitle = string.format(addon.Yellow, addon.L["New achievement window tab"]),
        Text = addon.L["New achievement window tab Desc"],
        ShineTop = addon.Options.db.ElvUISkin.Tutorials and 7 or 12,
        ShineBottom = addon.Options.db.ElvUISkin.Tutorials and -6 or -21,
        ShineLeft = addon.Options.db.ElvUISkin.Tutorials and 1 or 2,
        ShineRight = addon.Options.db.ElvUISkin.Tutorials and 0 or -2,
        OnShow = function (self)
            addon.GUI.ToggleAchievementFrameAtTab1(true);
            self.Shine = tabButton1;
        end
    }));
    tinsert(pages, page:New({ -- 2
        Layout = "HORIZONTAL",
        Image = media .. "Categories",
        ImageSize = {365, 512},
        ImageTexCoord = {0, 365/512, 0, 1},
        SubTitle = string.format(addon.Yellow, addon.L["Categories per expansion"]),
        Text = core.ReplaceVars{addon.L["Categories per expansion Desc"],
                                expansion = addon.L["Expansion"],
                                zones = addon.L["Zones"],
                                quests = (GetCategoryInfo(15447)),
                                exploration = (GetCategoryInfo(97)),
                                pvp = (GetCategoryInfo(15270)),
                                reputation = (GetCategoryInfo(15273)),
                                dungeons = (GetCategoryInfo(15272)),
                                raids = (GetCategoryInfo(15271)),
                                petBattles = (GetCategoryInfo(15117)),
                                expansionFeatures = (GetCategoryInfo(15301)),
                                spoiler = string.format(addon.Orange, addon.L["* SPOILER WARNING *"]),
                                currentZone = string.format(addon.Yellow, addon.L["Current Zone"]),
                                comingIn = string.format(addon.Yellow, addon.L["Coming in "])},
        TextSize = {256, 0},
        TextMargin = {10, 0, 10, 20},
        ShineHeight = 6,
        ShineWidth = 7,
        ShineTop = addon.Options.db.ElvUISkin.Tutorials and 7 or nil,
        ShineLeft = addon.Options.db.ElvUISkin.Tutorials and -10 or nil,
        ShineRight = addon.Options.db.ElvUISkin.Tutorials and 8 or nil,
        OnShow = function (self)
            addon.GUI.ToggleAchievementFrameAtTab1(true);
            categoriesFrame:SelectCategory(addon.GetAchievement(14281).Category);
            self.Shine = categoriesFrame;
        end
    }));
    tinsert(pages, page:New({ -- 3
        Image = media .. "RightClick",
        ImageSize = {512, 256},
        SubTitle = string.format(addon.Yellow, addon.L["FT_RIGHTCLICKMENU_TITLE"]),
        Text = core.ReplaceVars{addon.L["FT_RIGHTCLICKMENU_DESC"],
                                wowhead = string.format(addon.Yellow, addon.L["Wowhead"]),
                                goTo = string.format(addon.Yellow, addon.L["Go to"]),
                                partOfAChain = string.format(addon.Yellow, addon.L["Part of a chain"]),
                                require = string.format(addon.Yellow, addon.L["FT_RIGHTCLICKMENU_REQUIRE"]),
                                xuFuPetGuides = string.format(addon.Yellow, addon.L["Xu-Fu's Pet Guides"]),
                                IAT = string.format(addon.Yellow, addon.L["Instance Achievement Tracker"]),
                                installed = (addon.IsIATLoaded() and (string.format(addon.Green, addon.L["Installed"]:lower())) or (string.format(addon.Red, addon.L["Not installed"]:lower())))},
        ShineHeight = addon.Options.db.ElvUISkin.MiscFrames and 9 or 6,
        ShineWidth = addon.Options.db.ElvUISkin.MiscFrames and 10 or 7,
        OnShow = function (self)
            addon.GUI.ToggleAchievementFrameAtTab1(true);
            local achievementsButtons = achievementsFrame.Container.buttons;
            achievementsFrame:SelectAchievementFromID(1283, "RightButton", true, achievementsButtons[1], 88, 34);
            self.Shine = DropDownList1;
        end
    }));
    tinsert(pages, page:New({ -- 4
        Image = media .. "SearchPreview",
        ImageSize = {512, 256},
        SubTitle = string.format(addon.Yellow, addon.L["FT_SEARCHPREVIEW_TITLE"]),
        Text = core.ReplaceVars{addon.L["FT_SEARCHPREVIEW_DESC"],
                                clearOnRightClick = addon.L["Clear search field on Right Click"],
                                minCharToSearch = addon.L["Minimum characters to search"],
                                numSearchPreviews = addon.L["Number of search previews"],
                                addonName = AF_NAME},
        ShineTop = addon.Options.db.ElvUISkin.Tutorials and 10 or 30,
        ShineLeft = addon.Options.db.ElvUISkin.Tutorials and -10 or -11,
        ShineRight = 11,
        OnShow = function (self)
            addon.GUI.ToggleAchievementFrameAtTab1(true);
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
            self.ShineBottom = bottom - searchPreviewFrame:GetBottom() - 10;
            self.Shine = searchPreviewFrame;
        end
    }));
    tinsert(pages, page:New({ -- 5
        Image = media .. "FullSearch",
        ImageSize = {512, 256},
        SubTitle = string.format(addon.Yellow, addon.L["FT_FULLSEARCH_TITLE"]),
        Text = addon.L["FT_FULLSEARCH_DESC"],
        ShineTop = addon.Options.db.ElvUISkin.Tutorials and 9 or 8,
        ShineBottom = addon.Options.db.ElvUISkin.Tutorials and -10 or -1,
        ShineLeft = addon.Options.db.ElvUISkin.Tutorials and -11 or -12,
        ShineRight = addon.Options.db.ElvUISkin.Tutorials and 11 or 13,
        OnShow = function (self)
            addon.GUI.ToggleAchievementFrameAtTab1(true);
            searchBoxFrame:SetText("myt");
            searchBoxFrame:OnTextChanged(); -- Trigger this one manually as the previous line does not trigger it in order to search for achievements
            searchPreviewFrame.ShowFullSearchResultsButton:Click();
            searchBoxFrame:SetText("");
            searchBoxFrame:OnTextChanged();
            self.Shine = fullSearchResultsFrame;
        end
    }));
    tinsert(pages, page:New({ -- 6
        Image = media .. "Filter",
        ImageSize = {512, 256},
        SubTitle = string.format(addon.Yellow, addon.L["FT_FILTER_TITLE"]),
        Text = core.ReplaceVars{addon.L["FT_FILTER_DESC"],
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
        ShineAll = 7,
        ShineHeight = addon.Options.db.ElvUISkin.Tutorials and 8 or nil,
        ShineWidth = addon.Options.db.ElvUISkin.Tutorials and 10 or nil,
        OnShow = function (self)
            addon.GUI.ToggleAchievementFrameAtTab1(true);
            self.Shine = filterButton;
            print(filterButton:GetTop());
        end
    }));
    tinsert(pages, page:New({ -- 7
        Image = media .. "Tooltip",
        ImageSize = {512, 256},
        SubTitle = string.format(addon.Yellow, addon.L["FT_TOOLTIP_TITLE"] .. " (" .. addon.L["Achievements"] .. ")"),
        Text = core.ReplaceVars{addon.L["FT_TOOLTIP_DESC"],
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
        -- ShineTop = addon.Options.db.ElvUISkin.Tutorials and 9 or 8,
        -- ShineBottom = addon.Options.db.ElvUISkin.Tutorials and -10 or -1,
        -- ShineLeft = addon.Options.db.ElvUISkin.Tutorials and -11 or -12,
        -- ShineRight = addon.Options.db.ElvUISkin.Tutorials and 11 or 13,
        -- OnShow = function (self)
        -- end
    }));

    tutorials.FeaturesTutorial = tutorials:New(SavedData, "FeaturesTutorial");
    tutorials.FeaturesTutorial:SetFrameTitle(AF_NAME .. " - " .. AF_BUILD_VERSION);
    tutorials.FeaturesTutorial:SetFrameWidth(512);
    tutorials.FeaturesTutorial:SetPages(pages);
    tutorials.FeaturesTutorial:SetImageMargin(10);
    tutorials.FeaturesTutorial:SetTextMargin({10, 10, 10, 20});

    tutorials.FeaturesTutorial:SetCloseButtonHook(function()
        diagnostics.Trace("tutorials.SetCloseButtonHook");

        addon.GUI.ResetView();
    end);

    hooksecurefunc("KrowiAF_ToggleAchievementFrameAtTab1", function()
        diagnostics.Trace("tutorials.HookTrigger KrowiAF_ToggleAchievementFrameAtTab1");

        if not tutorials.FeaturesTutorial:IsShown() then
            tutorials.FeaturesTutorial:ShowTutorial();
        end
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
        tutorials.FeaturesTutorial:ShowTutorial();
    end);
end