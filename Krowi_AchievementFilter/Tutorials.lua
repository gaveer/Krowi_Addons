local _, addon = ...; -- Global addon namespace

addon.Tutorials = LibStub(addon.Libs.Tutorials); -- Global tutorial object
local tutorials = addon.Tutorials; -- Local tutorial object

tutorials.FeaturesTutorialPages = 3;
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
end

local function ResetView()
    local categoriesButtons = addon.GUI.CategoriesFrame1.Frame.Container.buttons;
    KrowiAF_AchievementCategoryButton_OnClick(categoriesButtons[1]); -- Select the 1st category
    if categoriesButtons[1].Category.NotCollapsed then -- Make sure it's collapsed
        KrowiAF_AchievementCategoryButton_OnClick(categoriesButtons[1]);
    end
end

function tutorials.Load()
    tutorials.RegisterTutorial(tutorials.FeaturesTutorial, {
        savedvariable = addon.Options.db,
        key = "FeaturesTutorial",
        title = AF_NAME .. " - " .. AF_VERSION_BUILD,
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
        onShow = function(self, i)
            if i == 1 then
                OpenAchievementFrameAtTabButton1();
                ResetView();
                self[i].shine = addon.GUI.TabButton1.Frame;
            elseif i == 2 then
                OpenAchievementFrameAtTabButton1();
                local categoriesButtons = addon.GUI.CategoriesFrame1.Frame.Container.buttons;
                ResetView();
                KrowiAF_AchievementCategoryButton_OnClick(categoriesButtons[9]);
                KrowiAF_AchievementCategoryButton_OnClick(categoriesButtons[10]);
                KrowiAF_AchievementCategoryButton_OnClick(categoriesButtons[11]);
                KrowiAF_AchievementCategoryButton_OnClick(categoriesButtons[12]);
                self[i].shine = addon.GUI.CategoriesFrame1.Frame;
            elseif i == 3 then
                OpenAchievementFrameAtTabButton1();
                local categoriesButtons = addon.GUI.CategoriesFrame1.Frame.Container.buttons;
                local achievementsButtons = addon.GUI.AchievementsFrame1.Frame.Container.buttons;
                ResetView();
                KrowiAF_AchievementCategoryButton_OnClick(categoriesButtons[1]);
                KrowiAF_AchievementCategoryButton_OnClick(categoriesButtons[2]); -- Select the 1st child of the 1st category
                KrowiAF_AchievementCategoryButton_OnClick(categoriesButtons[2]); -- And make sure it's collapsed
                KrowiAF_AchievementButton_OnClick(achievementsButtons[1], "RightButton", nil, nil, achievementsButtons[1], 88, 34); -- Offsets are chosen to match tutorial image
                self[i].shine = DropDownList1;
            end
        end
    });
end

function tutorials.HookTrigger(hook)
    hook.Frame:HookScript("OnClick", function()
        addon.Diagnostics.Trace("tutorials.HookTrigger OnClick");
        tutorials.TriggerTutorial(tutorials.FeaturesTutorial, tutorials.FeaturesTutorialPages);
    end)
end