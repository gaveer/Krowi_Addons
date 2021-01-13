local _, addon = ...; -- Global addon namespace

addon.Tutorials = LibStub(addon.Libs.Tutorials); -- Global tutorial object
local tutorials = addon.Tutorials; -- Local tutorial object

tutorials.FeaturesTutorialPages = 2;
tutorials.FeaturesTutorial = "Krowi_AchievementFilter_FeaturesTutorial";
local media = "Interface\\AddOns\\Krowi_AchievementFilter\\Media\\";

local function GetTitle(title)
    return AF_COLOR_YELLOW .. title .. AF_COLOR_END .. "\n\n";
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
                            addon.L["FT_TABBUTTON_DESC"]
        },
        {   -- 2
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
                                                (AF_COLOR_RED .. addon.L["NOT INSTALLED"]:lower() .. AF_COLOR_END)))
        }
    });
end