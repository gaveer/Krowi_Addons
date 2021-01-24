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
        },
        SearchBox = {
            MinimumCharactersToSearch = 3,
            NumberOfSearchPreviews = 5
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
                name = addon.L["O_INFO"],
                type = "group",
                inline = true,
                order = 1,
                args = {
                    version = {
                        name = addon.L["O_VERSION"] .. ": " .. AF_VERSION_BUILD,
                        type = "description",
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
            Icon = {
                name = addon.L["O_ICON"],
                type = "group",
                inline = true,
                order = 2,
                args = {
                    showMinimapIcon = {
                        name = addon.L["O_SHOW_MINIMAP_ICON"],
                        desc = addon.L["O_SHOW_MINIMAP_ICON_DESC"],
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
                            diagnostics.Debug(addon.L["O_SHOW_MINIMAP_ICON"] .. ": " .. tostring(addon.Options.db.ShowMinimapIcon));
                        end,
                    }
                }
            },
            Layout = {
                name = addon.L["O_LAYOUT"],
                type = "group",
                inline = true,
                order = 3,
                args = {
                    categoriesFrameWidthOffset = {
                        name = addon.L["O_SHOW_CATEGORIESFRAME_WIDTH_OFFSET"],
                        desc = addon.L["O_SHOW_CATEGORIESFRAME_WIDTH_OFFSET_DESC"],
                        type = "range",
                        min = -100,
                        max = 100,
                        step = 1,
                        width = "normal",
                        order = 1,
                        get = function () return addon.Options.db.CategoriesFrameWidthOffset; end,
                        set = function(_, value)
                            addon.Options.db.CategoriesFrameWidthOffset = value;
                            print(addon.L["O_SHOW_CATEGORIESFRAME_WIDTH_OFFSET"] .. ": " .. tostring(addon.Options.db.CategoriesFrameWidthOffset));
                        end,
                    },
                    minimumCharactersToSearch = {
                        name = addon.L["O_MIN_CHAR_TO_SEARCH"],
                        desc = addon.L["O_MIN_CHAR_TO_SEARCH_DESC"],
                        type = "range",
                        min = 1,
                        max = 10,
                        step = 1,
                        width = "normal",
                        order = 2,
                        get = function () return addon.Options.db.SearchBox.MinimumCharactersToSearch; end,
                        set = function(_, value)
                            addon.Options.db.SearchBox.MinimumCharactersToSearch = value;
                            print(addon.L["O_MIN_CHAR_TO_SEARCH"] .. ": " .. tostring(addon.Options.db.SearchBox.MinimumCharactersToSearch));
                        end,
                    },
                    numberOfSearchPreviews = {
                        name = addon.L["O_NUM_OF_SEARCH_PREVIEWS"],
                        desc = addon.L["O_NUM_OF_SEARCH_PREVIEWS_DESC"],
                        type = "range",
                        min = 1,
                        max = 17,
                        step = 1,
                        width = "normal",
                        order = 3,
                        get = function () return addon.Options.db.SearchBox.NumberOfSearchPreviews; end,
                        set = function(_, value)
                            addon.Options.db.SearchBox.NumberOfSearchPreviews = value;
                            print(addon.L["O_NUM_OF_SEARCH_PREVIEWS"] .. ": " .. tostring(addon.Options.db.SearchBox.NumberOfSearchPreviews));
                        end,
                    }
                }
            },
            Debug = {
                name = addon.L["O_DEBUG"],
                type = "group",
                inline = true,
                order = 4,
                args = {
                    enableDebugInfo = {
                        name = addon.L["O_ENABLE_DEBUG_INFO"],
                        desc = addon.L["O_ENABLE_DEBUG_INFO_DESC"],
                        type = "toggle",
                        width = "full",
                        order = 1,
                        get = function () return addon.Options.db.EnableDebugInfo; end,
                        set = function()
                            addon.Options.db.EnableDebugInfo = not addon.Options.db.EnableDebugInfo;
                            print(addon.L["O_ENABLE_DEBUG_INFO"] .. ": " .. tostring(addon.Options.db.EnableDebugInfo));
                        end,
                    },
                    enableTraceInfo = {
                        name = addon.L["O_ENABLE_TRACE_INFO"],
                        desc = addon.L["O_ENABLE_TRACE_INFO_DESC"],
                        type = "toggle",
                        width = "full",
                        order = 2,
                        get = function () return addon.Options.db.EnableTraceInfo; end,
                        set = function()
                            addon.Options.db.EnableTraceInfo = not addon.Options.db.EnableTraceInfo;
                            print(addon.L["O_ENABLE_TRACE_INFO"] .. ": " .. tostring(addon.Options.db.EnableTraceInfo));
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
    diagnostics.Debug("     - " .. addon.L["O_SHOW_MINIMAP_ICON"] .. ": " .. tostring(addon.Options.db.ShowMinimapIcon));
    diagnostics.Debug("     - " .. addon.L["O_SHOW_CATEGORIESFRAME_WIDTH_OFFSET"] .. ": " .. tostring(addon.Options.db.CategoriesFrameWidthOffset));
    diagnostics.Debug("     - " .. addon.L["O_MIN_CHAR_TO_SEARCH"] .. ": " .. tostring(addon.Options.db.SearchBox.MinimumCharactersToSearch));
    diagnostics.Debug("     - " .. addon.L["O_NUM_OF_SEARCH_PREVIEWS"] .. ": " .. tostring(addon.Options.db.SearchBox.NumberOfSearchPreviews));
    diagnostics.Debug("     - " .. addon.L["O_ENABLE_DEBUG_INFO"] .. ": " .. tostring(addon.Options.db.EnableDebugInfo));
    diagnostics.Debug("     - " .. addon.L["O_ENABLE_TRACE_INFO"] .. ": " .. tostring(addon.Options.db.EnableTraceInfo));
end