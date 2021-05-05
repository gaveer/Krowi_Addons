-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;
local diagnostics = addon.Diagnostics;
addon.Options = {}; -- Will be overwritten in Load (intended)
local options = addon.Options;

local popupDialog = LibStub("KrowiPopopDialog-1.0");

local defaults = {
    profile = {
        ShowMinimapIcon = false,
        ResetViewOnOpen = false,
        EnableDebugInfo = false,
        EnableTraceInfo = false,
        Window = {
            CategoriesFrameWidthOffset = 25,
            AchievementFrameHeightOffset = 250,
            MergeSmallCategoriesThreshold = 10,
            MergeSmallCategoriesThresholdChanged = false
        },
        Tooltip = {
            ShowPartOfAChain = true,
            ShowRequiredFor = true,
            ShowCurrentCharacterIcons = false
        },
        Minimap = {
            hide = true -- not ShowMinimapIcon
        },
        SearchBox = {
            MinimumCharactersToSearch = 3,
            NumberOfSearchPreviews = 5,
            ClearOnRightClick = true,
            ExcludeNextPatch = true
        },
        Filters = {
            Completion = {
                Completed = true,
                NotCompleted = true
            },
            Obtainability = {
                Obtainable = true,
                NotObtainable = false
            },
            Faction = {
                Neutral = true,
                Alliance = false,
                Horde = false
            },
            Covenant = {
                Neutral = true,
                Kyrian = false,
                Venthyr = false,
                NightFae = false,
                Necrolord = false
            },
            CollapseSeries = true,
            MergeSmallCategories = true,
            SortBy = {
                Criteria = addon.L["Default"],
                ReverseSort = false
            }
        },
        ElvUISkin = {
            Achievements = false,
            MiscFrames = false,
            Options = false,
            Tutorials = false
        }
    }
}

local maxNumberOfSearchPreviews = function()
    return 17 + math.floor(addon.Options.db.Window.AchievementFrameHeightOffset / 29);
end

local function CreatePanel()
    local optionsTable = {
        name = AF_NAME,
        type = "group",
        childGroups = "tab",
        args = {
            General = {
                name = addon.L["General"],
                type = "group",
                order = 1,
                args = {
                    Info = {
                        name = addon.L["Info"],
                        type = "group",
                        inline = true,
                        order = 1,
                        args = {
                            version = {
                                name = AF_COLOR_YELLOW .. addon.L["Version"] .. ": " .. AF_COLOR_END .. AF_VERSION,
                                type = "description",
                                width = "normal",
                                fontSize = "medium",
                                order = 1.1,
                            },
                            build = {
                                name = AF_COLOR_YELLOW .. addon.L["Build"] .. ": " .. AF_COLOR_END .. AF_BUILD,
                                type = "description",
                                width = "normal",
                                fontSize = "medium",
                                order = 1.2,
                            },
                            tutorial = {
                                name = addon.L["Tutorial"],
                                desc = addon.L["O_TUTORIAL_DESC"],
                                type = "execute",
                                order = 1.3,
                                func = function()
                                    InterfaceOptionsFrame:Hide();
                                    addon.Tutorials.ResetTutorial(addon.Tutorials.FeaturesTutorial);
                                    addon.Tutorials.TriggerTutorial(addon.Tutorials.FeaturesTutorial, addon.Tutorials.FeaturesTutorialPages);
                                end
                            },
                            author = {
                                name = AF_COLOR_YELLOW .. addon.L["Author"] .. ": " .. AF_COLOR_END .. "Krowi",
                                type = "description",
                                width = "normal",
                                fontSize = "medium",
                                order = 2.1,
                            },
                            blank = {
                                name = "",
                                type = "description",
                                width = "normal",
                                fontSize = "medium",
                                order = 2.2,
                            },
                            discord = {
                                name = addon.L["Discord"],
                                desc = addon.L["O_DISCORD_DESC"],
                                type = "execute",
                                order = 2.3,
                                func = function()
                                    InterfaceOptionsFrame:Hide();
                                    popupDialog.ShowExternalLink("https://discord.gg/XGkergM2");
                                end
                            }
                        }
                    },
                    Icon = {
                        name = addon.L["Icon"],
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
                                end
                            }
                        }
                    },
                    KeyBinding = {
                        name = addon.L["Key Binding"],
                        type = "group",
                        inline = true,
                        order = 3,
                        args = {
                            ResetViewOnOpen = {
                                name = addon.L["O_ResetViewOnOpen"],
                                desc = addon.L["O_ResetViewOnOpen_Desc"],
                                type = "toggle",
                                width = "full",
                                order = 1,
                                get = function () return addon.Options.db.ResetViewOnOpen; end,
                                set = function()
                                    addon.Options.db.ResetViewOnOpen = not addon.Options.db.ResetViewOnOpen;

                                    diagnostics.Debug(addon.L["O_ResetViewOnOpen"] .. ": " .. tostring(addon.Options.db.ResetViewOnOpen));
                                end
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
                                order = 1.1,
                                get = function () return addon.Options.db.SearchBox.ClearOnRightClick; end,
                                set = function()
                                    addon.Options.db.SearchBox.ClearOnRightClick = not addon.Options.db.SearchBox.ClearOnRightClick;
        
                                    diagnostics.Debug(addon.L["O_CLEAR_SEARCH_ON_RIGHT_CLICK"] .. ": " .. tostring(addon.Options.db.SearchBox.ClearOnRightClick));
                                end
                            },
                            ExcludeNextPatch = {
                                name = addon.L["Exclude Next Patch"],
                                desc = core.ReplaceVars{addon.L["Exclude Next Patch Desc"],
                                                        spoilerWarning = AF_COLOR_ORANGE .. addon.L["* SPOILER WARNING *"] .. AF_COLOR_END},
                                type = "toggle",
                                width = "full",
                                order = 1.2,
                                confirm = function() return addon.Options.db.SearchBox.ExcludeNextPatch; end,
                                confirmText = AF_COLOR_ORANGE .. addon.L["* SPOILER WARNING *"] .. "\n\n" .. addon.L["Exclude Next Patch Confirm"] .. "\n\n" .. addon.L["* SPOILER WARNING *"] .. AF_COLOR_END,
                                get = function () return addon.Options.db.SearchBox.ExcludeNextPatch; end,
                                set = function()
                                    addon.Options.db.SearchBox.ExcludeNextPatch = not addon.Options.db.SearchBox.ExcludeNextPatch;
        
                                    diagnostics.Debug(addon.L["Exclude Next Patch"] .. ": " .. tostring(addon.Options.db.SearchBox.ExcludeNextPatch));
                                end
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
                                end
                            },
                            numberOfSearchPreviews = {
                                name = addon.L["O_NUM_OF_SEARCH_PREVIEWS"],
                                desc = core.ReplaceVars{addon.L["O_NUM_OF_SEARCH_PREVIEWS_DESC"],
                                                        reloadRequired = addon.L["O_REQUIRES_RELOAD"]},
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
                                end
                            }
                        }
                    },
                    Debug = {
                        name = addon.L["O_DEBUG"],
                        type = "group",
                        inline = true,
                        order = 5,
                        args = {
                            EnableDebugInfo = {
                                name = addon.L["O_ENABLE_DEBUG_INFO"],
                                desc = addon.L["O_ENABLE_DEBUG_INFO_DESC"],
                                type = "toggle",
                                width = "full",
                                order = 1.1,
                                get = function () return addon.Options.db.EnableDebugInfo; end,
                                set = function()
                                    addon.Options.db.EnableDebugInfo = not addon.Options.db.EnableDebugInfo;
        
                                    diagnostics.Debug(addon.L["O_ENABLE_DEBUG_INFO"] .. ": " .. tostring(addon.Options.db.EnableDebugInfo));
                                end
                            },
                            EnableTraceInfo = {
                                name = addon.L["O_ENABLE_TRACE_INFO"],
                                desc = addon.L["O_ENABLE_TRACE_INFO_DESC"],
                                type = "toggle",
                                width = "full",
                                order = 2.1,
                                get = function () return addon.Options.db.EnableTraceInfo; end,
                                set = function()
                                    addon.Options.db.EnableTraceInfo = not addon.Options.db.EnableTraceInfo;
        
                                    diagnostics.Debug(addon.L["O_ENABLE_TRACE_INFO"] .. ": " .. tostring(addon.Options.db.EnableTraceInfo));
                                end
                            },
                            -- tutorial = {
                            --     name = "ExportTest",
                            --     type = "execute",
                            --     order = 3.1,
                            --     func = function()
                            --         TEST = {};
                            --         TEST2 = {};
                            --         TEST3 = {};
                            --         TEST4 = {};
                            --         local nils, i = 0, 1;
                            --         while nils < 500 do
                            --             local id, name, points, completed, month, day, year, description, flags, icon, rewardText, isGuild, wasEarnedByMe, earnedBy = GetAchievementInfo(i);
                            --             if id then
                            --                 tinsert(TEST, id);
                            --                 if not isGuild then
                            --                     tinsert(TEST2, id);
                            --                 end
                            --                 local numCriteria = GetAchievementNumCriteria(id);
                            --                 if numCriteria > 0 then
                            --                     tinsert(TEST3, id);
                            --                 end
                            --                 if not isGuild and numCriteria > 0 then
                            --                     tinsert(TEST4, id);
                            --                 end
                            --                 -- for j = 1, numCriteria do
                            --                 --     local criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString, criteriaID, eligible = GetAchievementCriteriaInfo(id, j);
                            --                 --     if criteriaType == 8 then
                            --                 --         tinsert(TEST, {criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString, criteriaID, eligible});
                            --                 --     end
                            --                 -- end
                            --                 nils = 0;
                            --             else
                            --                 nils = nils + 1;
                            --             end
                            --             i = i + 1;
                            --         end
                            --     end
                            -- },
                        }
                    }
                }
            },
            Layout = {
                name = addon.L["Layout"],
                type = "group",
                order = 2,
                args = {
                    Window = {
                        name = addon.L["Window"],
                        type = "group",
                        inline = true,
                        order = 1,
                        args = {
                            CategoriesFrameWidthOffset = {
                                name = addon.L["O_CATEGORIESFRAME_WIDTH_OFFSET"],
                                desc = core.ReplaceVars{addon.L["O_CATEGORIESFRAME_WIDTH_OFFSET_DESC"],
                                                        tabName = AF_COLOR_YELLOW .. addon.L["T_TAB_TEXT"] .. AF_COLOR_END,
                                                        reloadRequired = addon.L["O_REQUIRES_RELOAD"]},
                                type = "range",
                                min = 0,
                                max = 250,
                                step = 1,
                                width = 1.5,
                                order = 1.1,
                                get = function ()
                                    return addon.Options.db.Window.CategoriesFrameWidthOffset;
                                end,
                                set = function(_, value)
                                    if addon.Options.db.Window.CategoriesFrameWidthOffset == value then
                                        return;
                                    end;
        
                                    addon.Options.db.Window.CategoriesFrameWidthOffset = value;
                                    addon.Event:SendMessage("UpdateAchievementFrameWidth", addon.Options.db.Window.CategoriesFrameWidthOffset);
        
                                    diagnostics.Debug(addon.L["O_CATEGORIESFRAME_WIDTH_OFFSET"] .. ": " .. tostring(addon.Options.db.Window.CategoriesFrameWidthOffset));
                                end
                            },
                            AchievementFrameHeightOffset = {
                                name = addon.L["O_ACHIEVEMENTFRAME_HEIGHT_OFFSET"],
                                desc = core.ReplaceVars{addon.L["O_ACHIEVEMENTFRAME_HEIGHT_OFFSET_DESC"],
                                                        tabName = AF_COLOR_YELLOW .. addon.L["T_TAB_TEXT"] .. AF_COLOR_END,
                                                        reloadRequired = addon.L["O_REQUIRES_RELOAD"]},
                                type = "range",
                                min = 0,
                                max = 500,
                                step = 1,
                                width = 1.5,
                                order = 1.2,
                                get = function ()
                                    return addon.Options.db.Window.AchievementFrameHeightOffset;
                                end,
                                set = function(_, value)
                                    if addon.Options.db.Window.AchievementFrameHeightOffset == value then
                                        return;
                                    end;
        
                                    addon.Options.db.Window.AchievementFrameHeightOffset = value;
                                    local numberOfSearchPreviews = LibStub("AceConfigRegistry-3.0"):GetOptionsTable(AF_NAME, "cmd", "KROWIAF-0.0").args.Search.args.numberOfSearchPreviews; -- cmd and KROWIAF-0.0 are just to make the function work
                                    numberOfSearchPreviews.max = maxNumberOfSearchPreviews();
                                    if numberOfSearchPreviews.get() > numberOfSearchPreviews.max then
                                        numberOfSearchPreviews.set(nil, numberOfSearchPreviews.max);
                                    end
                                    addon.Event:SendMessage("UpdateAchievementFrameHeight", addon.Options.db.Window.AchievementFrameHeightOffset);
        
                                    diagnostics.Debug(addon.L["O_ACHIEVEMENTFRAME_HEIGHT_OFFSET"] .. ": " .. tostring(addon.Options.db.Window.AchievementFrameHeightOffset));
                                end
                            },
                            MergeSmallCategoriesThreshold = {
                                name = addon.L["Merge small categories threshold"],
                                desc = core.ReplaceVars{addon.L["Merge small categories threshold Desc"],
                                                        reloadRequired = addon.L["O_REQUIRES_RELOAD"]},
                                type = "range",
                                min = 1,
                                max = 50,
                                step = 1,
                                width = 1.5,
                                order = 2.1,
                                get = function ()
                                    return addon.Options.db.Window.MergeSmallCategoriesThreshold;
                                end,
                                set = function(_, value)
                                    if addon.Options.db.Window.MergeSmallCategoriesThreshold == value then
                                        return;
                                    end;
        
                                    addon.Options.db.Window.MergeSmallCategoriesThreshold = value;
                                    addon.Options.db.Window.MergeSmallCategoriesThresholdChanged = true;
        
                                    diagnostics.Debug(addon.L["O_CATEGORIESFRAME_WIDTH_OFFSET"] .. ": " .. tostring(addon.Options.db.Window.MergeSmallCategoriesThreshold));
                                end
                            },
                        }
                    },
                    Tooltip = {
                        name = addon.L["Tooltip"],
                        type = "group",
                        inline = true,
                        order = 2,
                        args = {
                            ShowPartOfAChain = {
                                name = core.ReplaceVars{addon.L["ShowPartOfAChain"],
                                                        partOfAChain = addon.L["Part of a chain"]},
                                desc = core.ReplaceVars{addon.L["ShowPartOfAChain_Desc"],
                                                        partOfAChain = addon.L["Part of a chain"]},
                                type = "toggle",
                                width = "full",
                                order = 1,
                                get = function () return addon.Options.db.Tooltip.ShowPartOfAChain; end,
                                set = function()
                                    addon.Options.db.Tooltip.ShowPartOfAChain = not addon.Options.db.Tooltip.ShowPartOfAChain;

                                    diagnostics.Debug(addon.L["ShowPartOfAChain"] .. ": " .. tostring(addon.Options.db.Tooltip.ShowPartOfAChain));
                                end
                            },
                            ShowRequiredFor = {
                                name = core.ReplaceVars{addon.L["ShowRequiredFor"],
                                                        requiredFor = addon.L["Required for"]},
                                desc = core.ReplaceVars{addon.L["ShowRequiredFor_Desc"],
                                                        requiredFor = addon.L["Required for"]},
                                type = "toggle",
                                width = "full",
                                order = 1,
                                get = function () return addon.Options.db.Tooltip.ShowRequiredFor; end,
                                set = function()
                                    addon.Options.db.Tooltip.ShowRequiredFor = not addon.Options.db.Tooltip.ShowRequiredFor;

                                    diagnostics.Debug(addon.L["ShowRequiredFor"] .. ": " .. tostring(addon.Options.db.Tooltip.ShowRequiredFor));
                                end
                            },
                            ShowCurrentCharacterIcons = {
                                name = addon.L["ShowCurrentCharacterIcons"],
                                desc = core.ReplaceVars{addon.L["ShowCurrentCharacterIcons_Desc"],
                                                        partOfAChain = addon.L["Part of a chain"],
                                                        requiredFor = addon.L["Required for"]},
                                type = "toggle",
                                width = "full",
                                order = 3,
                                get = function () return addon.Options.db.Tooltip.ShowCurrentCharacterIcons; end,
                                set = function()
                                    addon.Options.db.Tooltip.ShowCurrentCharacterIcons = not addon.Options.db.Tooltip.ShowCurrentCharacterIcons;

                                    diagnostics.Debug(addon.L["ShowCurrentCharacterIcons"] .. ": " .. tostring(addon.Options.db.Tooltip.ShowCurrentCharacterIcons));
                                end
                            }
                        }
                    }
                }
            },
            Style = {
                name = addon.L["O_STYLE"],
                type = "group",
                order = 3,
                args = {
                    description = {
                        name = addon.L["O_STYLE_DESC"],
                        type = "description",
                        width = "full",
                        order = 1.1
                    },
                    skinAchievement = {
                        name = addon.L["O_SKIN_ACHIEVEMENT"],
                        desc = addon.L["O_SKIN_ACHIEVEMENT_DESC"],
                        descStyle = "inline",
                        disabled = true,
                        type = "toggle",
                        width = "full",
                        order = 2.1,
                        get = function () return addon.Options.db.ElvUISkin.Achievements; end
                    },
                    skinMiscFrames = {
                        name = addon.L["O_SKIN_MISC_FRAMES"],
                        desc = addon.L["O_SKIN_MISC_FRAMES_DESC"],
                        descStyle = "inline",
                        disabled = true,
                        type = "toggle",
                        width = "full",
                        order = 3.1,
                        get = function () return addon.Options.db.ElvUISkin.MiscFrames; end
                    },
                    skinAce3 = {
                        name = addon.L["O_SKIN_OPTIONS"],
                        desc = addon.L["O_SKIN_OPTIONS_DESC"],
                        descStyle = "inline",
                        disabled = true,
                        type = "toggle",
                        width = "full",
                        order = 4.1,
                        get = function () return addon.Options.db.ElvUISkin.Options; end
                    },
                    skinTutorials = {
                        name = addon.L["O_SKIN_TUTORIALS"],
                        desc = addon.L["O_SKIN_TUTORIALS_DESC"],
                        descStyle = "inline",
                        disabled = true,
                        type = "toggle",
                        width = "full",
                        order = 5.1,
                        get = function () return addon.Options.db.ElvUISkin.Tutorials; end
                    }
                }
            },
        }
    }

    LibStub("AceConfig-3.0"):RegisterOptionsTable(AF_NAME, optionsTable);
    LibStub("AceConfigDialog-3.0"):AddToBlizOptions(AF_NAME, nil, nil);
end

local function SetFilters()
    -- Always reset faction filter
    addon.Options.db.Filters.Faction.Neutral = true;
    addon.Options.db.Filters.Faction.Alliance = addon.Faction.IsAlliance;
    addon.Options.db.Filters.Faction.Horde = addon.Faction.IsHorde;

    -- Always reset covenant filter
    for covenant, _ in next, addon.Options.db.Filters.Covenant do
        addon.Options.db.Filters.Covenant[covenant] = false;
    end
    addon.Options.db.Filters.Covenant.Neutral = true;
    addon.Options.db.Filters.Covenant[addon.Objects.Covenant[addon.GetActiveCovenant()]] = true;
end

local function Open()
    InterfaceAddOnsList_Update(); -- This way the correct category will be shown when calling InterfaceOptionsFrame_OpenToCategory
    InterfaceOptionsFrame_OpenToCategory(AF_NAME);
end

-- Load the options
function options.Load()
    addon.Options = LibStub("AceDB-3.0"):New("Options", defaults, true);
    addon.Options.SetFilters = SetFilters;
    addon.Options.db = addon.Options.profile;
    addon.Options.Open = Open;

    addon.GUI.ElvUISkin.Load();

    -- TODO: add something to check if the options panel closes that we prompt for a reload
    CreatePanel();

    diagnostics.Debug("- Options loaded");
    diagnostics.Debug("     - " .. addon.L["O_SHOW_MINIMAP_ICON"] .. ": " .. tostring(addon.Options.db.ShowMinimapIcon));
    diagnostics.Debug("     - " .. addon.L["O_CATEGORIESFRAME_WIDTH_OFFSET"] .. ": " .. tostring(addon.Options.db.Window.CategoriesFrameWidthOffset));
    diagnostics.Debug("     - " .. addon.L["O_MIN_CHAR_TO_SEARCH"] .. ": " .. tostring(addon.Options.db.SearchBox.MinimumCharactersToSearch));
    diagnostics.Debug("     - " .. addon.L["O_NUM_OF_SEARCH_PREVIEWS"] .. ": " .. tostring(addon.Options.db.SearchBox.NumberOfSearchPreviews));
    diagnostics.Debug("     - " .. addon.L["O_ENABLE_DEBUG_INFO"] .. ": " .. tostring(addon.Options.db.EnableDebugInfo));
    diagnostics.Debug("     - " .. addon.L["O_ENABLE_TRACE_INFO"] .. ": " .. tostring(addon.Options.db.EnableTraceInfo));
end