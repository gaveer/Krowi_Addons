-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
addon.Options = {}; -- Will be overwritten in Load (intended)
local options = addon.Options;

local defaults = {
    profile = {
        ShowMinimapIcon = false,
        EnableDebugInfo = false,
        EnableTraceInfo = false,
        CategoriesFrameWidthOffset = 25,
        AchievementFrameHeightOffset = 250,
        Minimap = {
            hide = true -- not ShowMinimapIcon
        },
        SearchBox = {
            MinimumCharactersToSearch = 3,
            NumberOfSearchPreviews = 5,
            ClearOnRightClick = true
        },
        Filters = {
            Completion = {
                Completed = true,
                NotCompleted = true
            },
            SortBy = addon.L["F_DEFAULT"]
        }
    }
}

local maxNumberOfSearchPreviews = function()
    return 17 + math.floor(addon.Options.db.AchievementFrameHeightOffset / 29);
end

local function CreatePanel()
    local optionsTable = {
        name = AF_NAME,
        type = 'group',
        args = {
            Info = {
                name = addon.L["O_INFO"],
                type = "group",
                inline = true,
                order = 1,
                args = {
                    version = {
                        name = AF_COLOR_YELLOW .. addon.L["O_VERSION"] .. ": " .. AF_COLOR_END .. AF_VERSION,
                        type = "description",
                        width = "normal",
                        fontSize = "medium",
                        order = 1.1,
                    },
                    build = {
                        name = AF_COLOR_YELLOW .. addon.L["O_BUILD"] .. ": " .. AF_COLOR_END .. AF_BUILD,
                        type = "description",
                        width = "normal",
                        fontSize = "medium",
                        order = 1.2,
                    },
                    openTutorial = {
                        name = "Help",
                        type = "execute",
                        order = 1.3,
                        func = function()
                            InterfaceOptionsFrame:Hide();
                            addon.Tutorials.ResetTutorial(addon.Tutorials.FeaturesTutorial);
                            addon.Tutorials.TriggerTutorial(addon.Tutorials.FeaturesTutorial, addon.Tutorials.FeaturesTutorialPages);
                        end
                    },
                    author = {
                        name = AF_COLOR_YELLOW .. addon.L["O_AUTHOR"] .. ": " .. AF_COLOR_END .. "Krowi",
                        type = "description",
                        width = "normal",
                        fontSize = "medium",
                        order = 2.1,
                    },
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
                        name = addon.L["O_CATEGORIESFRAME_WIDTH_OFFSET"],
                        desc = string.format(addon.L["O_CATEGORIESFRAME_WIDTH_OFFSET_DESC"], addon.L["T_TAB_TEXT"], addon.L["O_REQUIRES_RELOAD"]),
                        type = "range",
                        min = 0,
                        max = 250,
                        step = 1,
                        width = 1.5,
                        order = 1.1,
                        get = function ()
                            return addon.Options.db.CategoriesFrameWidthOffset;
                        end,
                        set = function(_, value)
                            if addon.Options.db.CategoriesFrameWidthOffset == value then
                                return;
                            end;

                            addon.Options.db.CategoriesFrameWidthOffset = value;
                            addon.Event:SendMessage("UpdateAchievementFrameWidth", addon.Options.db.CategoriesFrameWidthOffset);

                            diagnostics.Debug(addon.L["O_CATEGORIESFRAME_WIDTH_OFFSET"] .. ": " .. tostring(addon.Options.db.CategoriesFrameWidthOffset));
                        end,
                    },
                    achievementFrameHeightOffset = {
                        name = addon.L["O_ACHIEVEMENTFRAME_HEIGHT_OFFSET"],
                        desc = string.format(addon.L["O_ACHIEVEMENTFRAME_HEIGHT_OFFSET_DESC"], addon.L["T_TAB_TEXT"], addon.L["O_REQUIRES_RELOAD"]),
                        type = "range",
                        min = 0,
                        max = 500,
                        step = 1,
                        width = 1.5,
                        order = 1.2,
                        get = function ()
                            return addon.Options.db.AchievementFrameHeightOffset;
                        end,
                        set = function(_, value)
                            if addon.Options.db.AchievementFrameHeightOffset == value then
                                return;
                            end;

                            addon.Options.db.AchievementFrameHeightOffset = value;
                            local numberOfSearchPreviews = LibStub("AceConfigRegistry-3.0"):GetOptionsTable(AF_NAME, "cmd", "KROWIAF-0.0").args.Search.args.numberOfSearchPreviews; -- cmd and KROWIAF-0.0 are just to make the function work
                            numberOfSearchPreviews.max = maxNumberOfSearchPreviews();
                            if numberOfSearchPreviews.get() > numberOfSearchPreviews.max then
                                numberOfSearchPreviews.set(nil, numberOfSearchPreviews.max);
                            end
                            addon.Event:SendMessage("UpdateAchievementFrameHeight", addon.Options.db.AchievementFrameHeightOffset);

                            diagnostics.Debug(addon.L["O_ACHIEVEMENTFRAME_HEIGHT_OFFSET"] .. ": " .. tostring(addon.Options.db.AchievementFrameHeightOffset));
                            
                        end,
                    }
                }
            },
            Search = {
                name = addon.L["O_SEARCH"],
                type = "group",
                inline = true,
                order = 4,
                args = {
                    clearOnRightClick = {
                        name = addon.L["O_CLEAR_SEARCH_ON_RIGHT_CLICK"],
                        desc = addon.L["O_CLEAR_SEARCH_ON_RIGHT_CLICK_DESC"],
                        type = "toggle",
                        width = "full",
                        order = 1,
                        get = function () return addon.Options.db.SearchBox.ClearOnRightClick; end,
                        set = function()
                            addon.Options.db.SearchBox.ClearOnRightClick = not addon.Options.db.SearchBox.ClearOnRightClick;

                            diagnostics.Debug(addon.L["O_CLEAR_SEARCH_ON_RIGHT_CLICK"] .. ": " .. tostring(addon.Options.db.SearchBox.ClearOnRightClick));
                        end,
                    },
                    minimumCharactersToSearch = {
                        name = addon.L["O_MIN_CHAR_TO_SEARCH"],
                        desc = addon.L["O_MIN_CHAR_TO_SEARCH_DESC"],
                        type = "range",
                        min = 1,
                        max = 10,
                        step = 1,
                        width = 1.5,
                        order = 2.1,
                        get = function ()
                            return addon.Options.db.SearchBox.MinimumCharactersToSearch;
                        end,
                        set = function(_, value)
                            if addon.Options.db.SearchBox.MinimumCharactersToSearch == value then
                                return;
                            end;

                            addon.Options.db.SearchBox.MinimumCharactersToSearch = value;

                            diagnostics.Debug(addon.L["O_MIN_CHAR_TO_SEARCH"] .. ": " .. tostring(addon.Options.db.SearchBox.MinimumCharactersToSearch));
                        end,
                    },
                    numberOfSearchPreviews = {
                        name = addon.L["O_NUM_OF_SEARCH_PREVIEWS"],
                        desc = string.format(addon.L["O_NUM_OF_SEARCH_PREVIEWS_DESC"], addon.L["O_REQUIRES_RELOAD"]),
                        type = "range",
                        min = 1,
                        max = maxNumberOfSearchPreviews(),
                        step = 1,
                        width = 1.5,
                        order = 2.2,
                        get = function () return addon.Options.db.SearchBox.NumberOfSearchPreviews; end,
                        set = function(_, value)
                            if addon.Options.db.SearchBox.NumberOfSearchPreviews == value then
                                return;
                            end;

                            addon.Options.db.SearchBox.NumberOfSearchPreviews = value;

                            diagnostics.Debug(addon.L["O_NUM_OF_SEARCH_PREVIEWS"] .. ": " .. tostring(addon.Options.db.SearchBox.NumberOfSearchPreviews));
                        end,
                    }
                }
            },
            Debug = {
                name = addon.L["O_DEBUG"],
                type = "group",
                inline = true,
                order = 5,
                args = {
                    enableDebugInfo = {
                        name = addon.L["O_ENABLE_DEBUG_INFO"],
                        desc = addon.L["O_ENABLE_DEBUG_INFO_DESC"],
                        type = "toggle",
                        width = "full",
                        order = 1.1,
                        get = function () return addon.Options.db.EnableDebugInfo; end,
                        set = function()
                            addon.Options.db.EnableDebugInfo = not addon.Options.db.EnableDebugInfo;

                            diagnostics.Debug(addon.L["O_ENABLE_DEBUG_INFO"] .. ": " .. tostring(addon.Options.db.EnableDebugInfo));
                        end,
                    },
                    enableTraceInfo = {
                        name = addon.L["O_ENABLE_TRACE_INFO"],
                        desc = addon.L["O_ENABLE_TRACE_INFO_DESC"],
                        type = "toggle",
                        width = "full",
                        order = 2.1,
                        get = function () return addon.Options.db.EnableTraceInfo; end,
                        set = function()
                            addon.Options.db.EnableTraceInfo = not addon.Options.db.EnableTraceInfo;

                            diagnostics.Debug(addon.L["O_ENABLE_TRACE_INFO"] .. ": " .. tostring(addon.Options.db.EnableTraceInfo));
                        end,
                    }
                }
            }
        },
    }

    LibStub("AceConfig-3.0"):RegisterOptionsTable(AF_NAME, optionsTable);
    LibStub("AceConfigDialog-3.0"):AddToBlizOptions(AF_NAME, nil, nil);
end

-- Load the options
function options.Load()
    addon.Options = LibStub("AceDB-3.0"):New("Options", defaults, true);
    addon.Options.db = addon.Options.profile;

    -- add something to check if the options panel closes that we prompt for a reload
    CreatePanel();

    diagnostics.Debug("- Options loaded");
    diagnostics.Debug("     - " .. addon.L["O_SHOW_MINIMAP_ICON"] .. ": " .. tostring(addon.Options.db.ShowMinimapIcon));
    diagnostics.Debug("     - " .. addon.L["O_CATEGORIESFRAME_WIDTH_OFFSET"] .. ": " .. tostring(addon.Options.db.CategoriesFrameWidthOffset));
    diagnostics.Debug("     - " .. addon.L["O_MIN_CHAR_TO_SEARCH"] .. ": " .. tostring(addon.Options.db.SearchBox.MinimumCharactersToSearch));
    diagnostics.Debug("     - " .. addon.L["O_NUM_OF_SEARCH_PREVIEWS"] .. ": " .. tostring(addon.Options.db.SearchBox.NumberOfSearchPreviews));
    diagnostics.Debug("     - " .. addon.L["O_ENABLE_DEBUG_INFO"] .. ": " .. tostring(addon.Options.db.EnableDebugInfo));
    diagnostics.Debug("     - " .. addon.L["O_ENABLE_TRACE_INFO"] .. ": " .. tostring(addon.Options.db.EnableTraceInfo));
end