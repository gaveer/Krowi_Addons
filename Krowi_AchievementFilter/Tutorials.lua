local _, addon = ...; -- Global addon namespace

addon.Tutorials = LibStub("KrowiTutorials-1.0"); -- Global tutorial object
local tutorials = addon.Tutorials; -- Local tutorial object

tutorials.FeaturesTutorialPages = 5;
tutorials.FeaturesTutorial = "Krowi_AchievementFilter_FeaturesTutorial";
local media = "Interface\\AddOns\\Krowi_AchievementFilter\\Media\\";

local function GetTitle(title)
    return AF_COLOR_YELLOW .. title .. AF_COLOR_END .. "\n\n";
end

local function OpenAchievementFrameAtTabButton1()
    if not IsAddOnLoaded("Blizzard_AchievementUI") then
        LoadAddOn("Blizzard_AchievementUI");
    end
    if not AchievementFrame:IsShown() then
        AchievementFrame_ToggleAchievementFrame();
    end
    AchievementFrame_HideSearchPreview();
    addon.GUI.TabButton1:Select();
    addon.ResetView(addon.GUI.CategoriesFrame, addon.GUI.SearchBoxFrame, addon.GUI.FullSearchResultsFrame);
end

function tutorials.Load()
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
			shineTop = 12,
			shineBottom = -21,
			shineLeft = 2,
			shineRight = -2,
        },
        {   -- 2
            imageHeight = 512,
            image = media .. "Grouping",
            text = GetTitle(addon.L["FT_GROUPING_TITLE"]) ..
                            addon.L["FT_GROUPING_DESC"],
            shineTop = 6,
            shineBottom = -6,
            shineLeft = -7,
            shineRight = 7,
        },
        {   -- 3
		    imageHeight = 256,
            image = media .. "RightClick",
            text = GetTitle(addon.L["FT_RIGHTCLICKMENU_TITLE"]) ..
                            string.format(addon.L["FT_RIGHTCLICKMENU_DESC"],
                                            AF_COLOR_YELLOW .. addon.L["WOWHEAD"] .. AF_COLOR_END,
                                            AF_COLOR_YELLOW .. addon.L["XUFU"] .. AF_COLOR_END,
                                            AF_COLOR_YELLOW .. addon.L["XUFU"] .. AF_COLOR_END,
                                            AF_COLOR_YELLOW .. addon.L["IAT"] .. AF_COLOR_END,
                                            AF_COLOR_YELLOW .. addon.L["IAT"] .. AF_COLOR_END,
                                            (addon.IsIATLoaded() and (AF_COLOR_GREEN .. addon.L["INSTALLED"]:lower() .. AF_COLOR_END) or
                                                (AF_COLOR_RED .. addon.L["NOT INSTALLED"]:lower() .. AF_COLOR_END))),
            shineTop = 6,
            shineBottom = -6,
            shineLeft = -7,
            shineRight = 7,
        },
        {   -- 4
            imageHeight = 256,
            image = media .. "SearchPreview",
            text = GetTitle(addon.L["FT_SEARCHPREVIEW_TITLE"]) ..
                            addon.L["FT_SEARCHPREVIEW_DESC"],
            shineTop = 30,
            shineBottom = -140,
            shineLeft = -11,
            shineRight = 11,
        },
        {   -- 5
            imageHeight = 256,
            image = media .. "FullSearch",
            text = GetTitle(addon.L["FT_FULLSEARCH_TITLE"]) ..
                            addon.L["FT_FULLSEARCH_DESC"],
            shineTop = 8,
            shineBottom = -1,
            shineLeft = -12,
            shineRight = 13,
        },
        onShow = function(self, i)
            if i == 1 then
                OpenAchievementFrameAtTabButton1();
                self[i].shine = addon.GUI.TabButton1;
            elseif i == 2 then
                OpenAchievementFrameAtTabButton1();
                addon.GUI.CategoriesFrame:SelectCategory(addon.GetAchievement(14281):GetCategory());
                self[i].shine = addon.GUI.CategoriesFrame;
            elseif i == 3 then
                OpenAchievementFrameAtTabButton1();
                local achievementsButtons = addon.GUI.AchievementsFrame.Container.buttons;
                addon.GUI.AchievementsFrame:SelectAchievementFromID(1283, "RightButton", true, achievementsButtons[1], 88, 34);
                self[i].shine = DropDownList1;
            elseif i == 4 then
                OpenAchievementFrameAtTabButton1();
                addon.GUI.SearchBoxFrame:SetText("cla");
                self[i].shine = addon.GUI.SearchPreviewFrame;
            elseif i == 5 then
                OpenAchievementFrameAtTabButton1();
                addon.GUI.SearchBoxFrame:SetText("cla");
                addon.GUI.SearchBoxFrame:OnTextChanged(); -- Trigger this one manually as the previous line does not trigger it in order to search for achievements
                addon.GUI.SearchPreviewFrame.ShowFullSearchResultsButton:Click();
                addon.GUI.SearchBoxFrame:SetText("");
                self[i].shine = addon.GUI.FullSearchResultsFrame;
            end
        end
    });
    tutorials.CloseButtonHook(tutorials.FeaturesTutorial, function()
        addon.ResetView(addon.GUI.CategoriesFrame, addon.GUI.SearchBoxFrame, addon.GUI.FullSearchResultsFrame);
    end);
end

function tutorials.HookTrigger(hook)
    hook:HookScript("OnClick", function()
        addon.Diagnostics.Trace("tutorials.HookTrigger OnClick");
        tutorials.TriggerTutorial(tutorials.FeaturesTutorial, tutorials.FeaturesTutorialPages);
    end)
end