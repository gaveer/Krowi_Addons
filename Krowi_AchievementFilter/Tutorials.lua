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
                addon.ResetView(addon.GUI.CategoriesFrame.Frame);
                self[i].shine = addon.GUI.TabButton1.Frame;
            elseif i == 2 then
                OpenAchievementFrameAtTabButton1();
                addon.GUI.CategoriesFrame:SelectCategory(addon.GetAchievement(14281):GetCategory());
                self[i].shine = addon.GUI.CategoriesFrame.Frame;
            elseif i == 3 then
                OpenAchievementFrameAtTabButton1();
                local achievementsButtons = addon.GUI.AchievementsFrame.Frame.Container.buttons;
                addon.GUI.AchievementsFrame:SelectAchievement(1283, "RightButton", nil, true, achievementsButtons[1], 88, 34);
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