local _, addon = ...; -- Global addon namespace
addon.Options = {}; -- Global options namespace (will be overwritten by the object)
local options = addon.Options; -- Local options namespace (will be overwritten by the object)
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace

local defaults = {
    profile = {
        ShowMinimapIcon = false,
        EnableDebugInfo = false,
        EnableTraceInfo = false,
        CategoriesFrameWidthOffset = 0,
        Minimap = {
            hide = true
        }
    }
}

local function CreatePanel()
    local options = {
        name = AF_NAME,
        handler = addon,
        type = 'group',
        args = {
            Info = {
                name = AF_INFO,
                type = "group",
                inline = true,
                order = 1,
                args = {
                    version = {
                        name = AF_VERSION .. ": " .. AF_VERSION_BUILD,
                        type = "description",
                        width = "normal",
                        order = 1,
                    },
                    openTutorial = {
                        name = "Help",
                        type = "execute",
                        order = 2,
                        func = function()
                            InterfaceOptionsFrame:Hide();
                            addon.Tutorials.ResetTutorial(addon.Tutorials.FeaturesTutorial);
                            addon.Tutorials.TriggerTutorial(addon.Tutorials.FeaturesTutorial, addon.Tutorials.FeaturesTutorialPages);
                        end
                    }
                },
            },
            General = {
                name = AF_OPTIONS_GENERAL,
                type = "group",
                inline = true,
                order = 2,
                args = {
                    showMinimapIcon = {
                        name = AF_OPTIONS_MINIMAP_ICON_TOGGLE,
                        desc = AF_OPTIONS_MINIMAP_ICON_TOGGLE_TOOLTIP,
                        type = "toggle",
                        width = "full",
                        order = 1,
                        get = function () return addon.Options.db.ShowMinimapIcon; end,
                        set = function()
                            addon.Options.db.ShowMinimapIcon = not addon.Options.db.ShowMinimapIcon;
                            if addon.Options.db.ShowMinimapIcon then
                                addon.Icon:Show("Krowi_AchievementFilterLDB");
                            else
                                addon.Icon:Hide("Krowi_AchievementFilterLDB");
                            end
                            diagnostics.Debug(AF_OPTIONS_MINIMAP_ICON_TOGGLE .. ": " .. tostring(addon.Options.db.ShowMinimapIcon));
                        end,
                    },
                    categoriesFrameWidthOffset = {
                        name = AF_OPTIONS_CATEGORIESFRAMEWIDTHOFFSET,
                        desc = AF_OPTIONS_CATEGORIESFRAMEWIDTHOFFSET_TOOLTIP,
                        type = "range",
                        min = -100,
                        max = 100,
                        step = 1,
                        width = "normal",
                        get = function () return addon.Options.db.CategoriesFrameWidthOffset; end,
                        set = function(_, value)
                            addon.Options.db.CategoriesFrameWidthOffset = value;
                            print(AF_OPTIONS_CATEGORIESFRAMEWIDTHOFFSET .. ": " .. tostring(addon.Options.db.CategoriesFrameWidthOffset));
                        end,
                    }
                }
            },
            Debug = {
                name = AF_OPTIONS_DEBUG,
                type = "group",
                inline = true,
                order = 3,
                args = {
                    enableDebugInfo = {
                        name = AF_OPTIONS_DEBUG_INFO_TOGGLE,
                        desc = AF_OPTIONS_DEBUG_INFO_TOGGLE_TOOLTIP,
                        type = "toggle",
                        width = "full",
                        order = 1,
                        get = function () return addon.Options.db.EnableDebugInfo; end,
                        set = function()
                            addon.Options.db.EnableDebugInfo = not addon.Options.db.EnableDebugInfo;
                            print(AF_OPTIONS_DEBUG_INFO_TOGGLE .. ": " .. tostring(addon.Options.db.EnableDebugInfo));
                        end,
                    },
                    enableTraceInfo = {
                        name = AF_OPTIONS_TRACE_INFO_TOGGLE,
                        desc = AF_OPTIONS_TRACE_INFO_TOGGLE_TOOLTIP,
                        type = "toggle",
                        width = "full",
                        order = 2,
                        get = function () return addon.Options.db.EnableTraceInfo; end,
                        set = function()
                            addon.Options.db.EnableTraceInfo = not addon.Options.db.EnableTraceInfo;
                            print(AF_OPTIONS_TRACE_INFO_TOGGLE .. ": " .. tostring(addon.Options.db.EnableTraceInfo));
                        end,
                    }
                }
            }
        },
    }

    local aceConfig = LibStub("AceConfig-3.0")
    local aceConfigDialog = LibStub("AceConfigDialog-3.0")
    aceConfig:RegisterOptionsTable(AF_NAME, options)
    aceConfigDialog:AddToBlizOptions(AF_NAME, nil, nil)
end

-- Load the options
function options.Load()
    CreatePanel();

    addon.Options = LibStub("AceDB-3.0"):New("Krowi_AchievementFilterOptions", defaults, true);
    addon.Options.db = addon.Options.profile;

    diagnostics.Debug("- Options loaded");
    diagnostics.Debug("     - " .. AF_OPTIONS_MINIMAP_ICON_TOGGLE .. ": " .. tostring(addon.Options.db.ShowMinimapIcon));
    diagnostics.Debug("     - " .. AF_OPTIONS_DEBUG_INFO_TOGGLE .. ": " .. tostring(addon.Options.db.EnableDebugInfo));
    diagnostics.Debug("     - " .. AF_OPTIONS_TRACE_INFO_TOGGLE .. ": " .. tostring(addon.Options.db.EnableTraceInfo));
    diagnostics.Debug("     - " .. AF_OPTIONS_CATEGORIESFRAMEWIDTHOFFSET .. ": " .. tostring(addon.Options.db.CategoriesFrameWidthOffset));
end