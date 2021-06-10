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

    tinsert(pages, { -- 1
        Image = media .. "TabButton",
        ImageSize = {614, 158},
        ImageTexCoord = {0, 614/1024, 0, 158/256},
        SubTitle = string.format(addon.Yellow, addon.L["New achievement window tab"]),
        Text = addon.L["New achievement window tab Desc"],
        ShineTop = SavedData.ElvUISkin.Tutorials and 7 or 12,
        ShineBottom = SavedData.ElvUISkin.Tutorials and -6 or -21,
        ShineLeft = SavedData.ElvUISkin.Tutorials and 1 or 2,
        ShineRight = SavedData.ElvUISkin.Tutorials and 0 or -2,
        OnShow = function(self)
            addon.GUI.ToggleAchievementFrameAtTab1(true);
            self.Shine = tabButton1;
        end
    });
    tinsert(pages, { -- 2
        Layout = "HORIZONTAL",
        Image = media .. "Categories",
        ImageSize = {361, 512},
        ImageTexCoord = {0, 361/512, 0, 1},
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
        TextSize = {361, 0},
        ShineHeight = 6,
        ShineWidth = 7,
        ShineTop = SavedData.ElvUISkin.Tutorials and 7 or nil,
        ShineLeft = SavedData.ElvUISkin.Tutorials and -10 or nil,
        ShineRight = SavedData.ElvUISkin.Tutorials and 8 or nil,
        OnShow = function(self)
            addon.GUI.ToggleAchievementFrameAtTab1(true);
            categoriesFrame:SelectCategory(addon.GetAchievement(14281).Category);
            self.Shine = categoriesFrame;
        end
    });
    tinsert(pages, { -- 3
        Image = media .. "RightClickMenu",
        ImageSize = {754, 286},
        ImageTexCoord = {0, 754/1024, 0, 286/512},
        SubTitle = string.format(addon.Yellow, addon.L["Right Click Menu"]),
        Text = core.ReplaceVars{addon.L["Right Click Menu Desc"],
                                rightClickMenu = addon.L["Right Click Menu"],
                                wowhead = string.format(addon.Yellow, addon.L["Wowhead"]),
                                goTo = string.format(addon.Yellow, addon.L["Go to"]),
                                partOfAChain = string.format(addon.Yellow, addon.L["Part of a chain"]),
                                require = string.format(addon.Yellow, addon.L["Required for"]),
                                currentZone = addon.L["Current Zone"],
                                xuFuPetGuides = string.format(addon.Yellow, addon.L["Xu-Fu's Pet Guides"]),
                                petBattles = (GetCategoryInfo(15117)),
                                IAT = string.format(addon.Yellow, addon.L["Instance Achievement Tracker"]),
                                addonName = AF_NAME},
        ShineHeight = SavedData.ElvUISkin.MiscFrames and 9 or 6,
        ShineWidth = SavedData.ElvUISkin.MiscFrames and 10 or 7,
        OnShow = function(self)
            if self.OriginalText == nil then
                self.OriginalText = self.Text;
            end
            self.Text = core.ReplaceVars{self.OriginalText,
                                            enabled = (addon.Options.db.RightClickMenu.ShowButtonOnAchievement and (string.format(addon.Green, addon.L["Enabled"]:lower())) or (string.format(addon.Red, addon.L["Disabled"]:lower()))),
                                            installed = (addon.IsIATLoaded() and (string.format(addon.Green, addon.L["Installed"]:lower())) or (string.format(addon.Red, addon.L["Not installed"]:lower())))};

            addon.GUI.ToggleAchievementFrameAtTab1(true);
            local achievementsButtons = achievementsFrame.Container.buttons;
            achievementsFrame:SelectAchievementFromID(4632);
            achievementsButtons[3]:Enter(achievementsFrame); -- Gets the required information to show the Go to line
            achievementsButtons[3]:Leave(achievementsFrame);
            if achievementsButtons[3].RightClickMenuButton then
                achievementsButtons[3].RightClickMenuButton:Click();
            else
                achievementsButtons[3]:Click("RightButton", nil, true, achievementsButtons[3], 88, 88);
            end
            self.Shine = DropDownList1;
        end
    });
    tinsert(pages, { -- 4
        Layout = "HORIZONTAL",
        Image = media .. "QuickSearch",
        ImageSize = {355, 324},
        ImageTexCoord = {0, 355/512, 0, 324/512},
        SubTitle = string.format(addon.Yellow, addon.L["Quick Search"]),
        Text = core.ReplaceVars{addon.L["Quick Search Desc"],
                                clearOnRightClick = addon.L["Clear search field on Right Click"],
                                excludeNextPatch = addon.L["Exclude Next Patch"],
                                minCharToSearch = addon.L["Minimum characters to search"],
                                numSearchPreviews = addon.L["Number of search previews"],
                                addonName = AF_NAME},
        TextSize = {355, 0},
        ShineTop = SavedData.ElvUISkin.Tutorials and 10 or 30,
        ShineLeft = SavedData.ElvUISkin.Tutorials and -10 or -11,
        ShineRight = 11,
        OnShow = function(self)
            if self.OriginalText == nil then
                self.OriginalText = self.Text;
            end
            self.Text = core.ReplaceVars{self.OriginalText,
                                            clearOnRightClickEnabled = (addon.Options.db.SearchBox.ClearOnRightClick and (string.format(addon.Green, addon.L["Enabled"]:lower())) or (string.format(addon.Red, addon.L["Disabled"]:lower()))),
                                            excludeNextPatchEnabled = (addon.Options.db.SearchBox.ExcludeNextPatch and (string.format(addon.Green, addon.L["Exclude"]:lower())) or (string.format(addon.Red, addon.L["Include"]:lower()))),
                                            minCharToSearchNumber = string.format(addon.Yellow, addon.Options.db.SearchBox.MinimumCharactersToSearch),
                                            numSearchPreviewsNumber = string.format(addon.Yellow, addon.Options.db.SearchBox.NumberOfSearchPreviews)};

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
    });
    tinsert(pages, { -- 5
        Image = media .. "FullSearch",
        ImageSize = {826, 512},
        ImageTexCoord = {0, 826/1024, 0, 512/512},
        SubTitle = string.format(addon.Yellow, addon.L["Full Search"]),
        Text = core.ReplaceVars{addon.L["Full Search Desc"],
                                quickSearch = addon.L["Quick Search"],
                                showAllResults = string.gsub(addon.L["Show All %d Results"], "%%d", "X")},
        ShineTop = SavedData.ElvUISkin.Tutorials and 9 or 8,
        ShineBottom = SavedData.ElvUISkin.Tutorials and -10 or -1,
        ShineLeft = SavedData.ElvUISkin.Tutorials and -11 or -12,
        ShineRight = SavedData.ElvUISkin.Tutorials and 11 or 13,
        OnShow = function(self)
            addon.GUI.ToggleAchievementFrameAtTab1(true);
            searchBoxFrame:SetText("myt");
            searchBoxFrame:OnTextChanged(); -- Trigger this one manually as the previous line does not trigger it in order to search for achievements
            searchPreviewFrame.ShowFullSearchResultsButton:Click();
            searchBoxFrame:SetText("");
            searchBoxFrame:OnTextChanged();
            self.Shine = fullSearchResultsFrame;
        end
    });
    tinsert(pages, { -- 6
        Layout = "HORIZONTAL",
        Image = media .. "FilteringSorting",
        ImageSize = {588, 453},
        ImageTexCoord = {0, 588/1024, 0, 453/512},
        SubTitle = string.format(addon.Yellow, addon.L["Enhanced filtering and sorting"]),
        Text = core.ReplaceVars{addon.L["Enhanced filtering and sorting Desc"],
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
                                reverseSort = string.format(addon.Yellow, addon.L["Reverse Sort"]),
                                help = string.format(addon.Yellow, addon.L["Help"]),
                                options = string.format(addon.Yellow, addon.L["Options"]),
                                addonName = AF_NAME,
                                discord = addon.L["Discord"],
                                curseForge = addon.L["CurseForge"]},
        TextSize = {588, 0},
        ShineAll = 7,
        ShineHeight = SavedData.ElvUISkin.Tutorials and 8 or nil,
        ShineWidth = SavedData.ElvUISkin.Tutorials and 10 or nil,
        OnShow = function(self)
            if self.OriginalText == nil then
                self.OriginalText = self.Text;
            end
            self.Text = core.ReplaceVars{self.OriginalText,
                                            mergeSmallCategoriesNumber = string.format(addon.Yellow, addon.Options.db.Window.MergeSmallCategoriesThreshold)};

            addon.GUI.ToggleAchievementFrameAtTab1(true);
            self.Shine = filterButton;
            print(filterButton:GetTop());
        end
    });
    tinsert(pages, { -- 7
        Image = media .. "TooltipCategories",
        ImageSize = {507, 154},
        ImageTexCoord = {0, 507/512, 0, 154/256},
        SubTitle = string.format(addon.Yellow, addon.L["Enhanced tooltip"] .. " (" .. addon.L["Categories"] .. ")"),
        Text = core.ReplaceVars{addon.L["Enhanced tooltip Categories Desc"],
                                oc = string.format(addon.Green, addon.L["OC"]),
                                nonc = string.format(addon.Red, addon.L["NONC"]),
                                green = string.format(addon.Green, addon.L["Green"]),
                                red = string.format(addon.Red, addon.L["Red"]),
                                notObtainable = string.format(addon.Yellow, addon.L["Not Obtainable"])},
        OnShow = function(self)
            if self.OriginalText == nil then
                self.OriginalText = self.Text;
            end
            self.Text = core.ReplaceVars{self.OriginalText,
                                            showNotObtainable = (addon.Options.db.Tooltip.Categories.ShowNotObtainable and (string.format(addon.Green, addon.L["Enabled"]:lower())) or (string.format(addon.Red, addon.L["Disabled"]:lower())))};
        end
    });
    tinsert(pages, { -- 8
        Image = media .. "TooltipAchievements",
        ImageSize = {1018, 383},
        ImageTexCoord = {0, 1018/1024, 0, 383/512},
        SubTitle = string.format(addon.Yellow, addon.L["Enhanced tooltip"] .. " (" .. addon.L["Achievements"] .. ")"),
        Text = core.ReplaceVars{addon.L["Enhanced tooltip Achievements Desc"],
                                partOfAChain = string.format(addon.Yellow, addon.L["Part of a chain"]),
                                requiredFor = string.format(addon.Yellow, addon.L["Required for"]),
                                objectivesProgress = string.format(addon.Yellow, addon.L["Objectives progress"]),
                                ready = "|T136814:0|t",
                                waiting = "|T136815:0|t",
                                notready = "|T136813:0|t",
                                green = string.format(addon.Green, addon.L["Green"]),
                                grey = string.format(addon.Grey, addon.L["Grey"]),
                                red = string.format(addon.Red, addon.L["Red"]),
                                lightGreen = string.format(addon.LightGreen, addon.L["Green"]),
                                lightGrey = string.format(addon.LightGrey, addon.L["Grey"]),
                                lightRed = string.format(addon.LightRed, addon.L["Red"])},
        OnShow = function(self)
            if self.OriginalText == nil then
                self.OriginalText = self.Text;
            end
            self.Text = core.ReplaceVars{self.OriginalText,
                                            partOfAChainEnabled = (addon.Options.db.Tooltip.Achievements.ShowPartOfAChain and (string.format(addon.Green, addon.L["Enabled"]:lower())) or (string.format(addon.Red, addon.L["Disabled"]:lower()))),
                                            requiredForEnabled = (addon.Options.db.Tooltip.Achievements.ShowRequiredFor and (string.format(addon.Green, addon.L["Enabled"]:lower())) or (string.format(addon.Red, addon.L["Disabled"]:lower()))),
                                            objectivesProgressEnabled = (addon.Options.db.Tooltip.Achievements.ObjectivesProgress.Show and (string.format(addon.Green, addon.L["Enabled"]:lower())) or (string.format(addon.Red, addon.L["Disabled"]:lower()))),
                                            currentCharacterIconEnabled = (addon.Options.db.Tooltip.Achievements.ShowCurrentCharacterIcons and (string.format(addon.Green, addon.L["Enabled"]:lower())) or (string.format(addon.Red, addon.L["Disabled"]:lower())))};
        end
    });

    tutorials.FeaturesTutorial = tutorials:New(SavedData, "FeaturesTutorial");
    tutorials.FeaturesTutorial:SetFrameTitle(AF_NAME .. " - " .. AF_BUILD_VERSION);
    tutorials.FeaturesTutorial:SetFrameWidth(512);
    tutorials.FeaturesTutorial:SetPages(pages);
    tutorials.FeaturesTutorial:SetImageMargin(10);
    tutorials.FeaturesTutorial:SetTextMargin({10, 0, 10, 20});

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