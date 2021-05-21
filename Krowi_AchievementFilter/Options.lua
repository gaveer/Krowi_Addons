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
        RightClickMenu = {
            ShowButtonOnAchievement = false
        },
        Tooltip = {
            Categories = {
                ShowNotObtainable = true
            },
            Achievements = {
                ShowPartOfAChain = true,
                ShowRequiredFor = true,
                ShowCurrentCharacterIcons = false
            }
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
                                name = string.format(addon.Yellow, addon.L["Version"] .. ": ") .. AF_VERSION,
                                type = "description",
                                width = "normal",
                                fontSize = "medium",
                                order = 1.1,
                            },
                            build = {
                                name = string.format(addon.Yellow, addon.L["Build"] .. ": ") .. AF_BUILD,
                                type = "description",
                                width = "normal",
                                fontSize = "medium",
                                order = 1.2,
                            },
                            tutorial = {
                                name = addon.L["Tutorial"],
                                desc = addon.L["Tutorial Desc"],
                                type = "execute",
                                order = 1.3,
                                func = function()
                                    -- InterfaceOptionsFrame:Hide();
                                    -- addon.Tutorials.ResetTutorial(addon.Tutorials.FeaturesTutorial);
                                    -- addon.Tutorials.TriggerTutorial(addon.Tutorials.FeaturesTutorial, addon.Tutorials.FeaturesTutorialPages);

                                    local menu = LibStub("KrowiMenu-1.0");
                                    local tutorial = addon.Tutorials.GetTutorial(addon.Tutorials.FeaturesTutorial);

                                    -- Reset menu
                                    menu:Clear();

                                    menu:AddFull({Text = addon.L["View Tutorial"], IsTitle = true});
                                    menu:AddFull({  Text = addon.L["From the start"],
                                                    Func = function()
                                                        InterfaceOptionsFrame:Hide();
                                                        addon.Tutorials.ResetTutorial(addon.Tutorials.FeaturesTutorial);
                                                        addon.Tutorials.TriggerTutorial(addon.Tutorials.FeaturesTutorial, addon.Tutorials.FeaturesTutorialPages);
                                                    end
                                                });
                                    menu:AddFull({  Text = tutorial[1].subTitle,
                                                    Func = function()
                                                        InterfaceOptionsFrame:Hide();
                                                        addon.Tutorials.FeaturesTutorial:ShowPage(2, 2); -- does not work

                                                    end
                                                });
                                                
                                    menu:Open();
                                end
                            },
                            author = {
                                name = string.format(addon.Yellow, addon.L["Author"] .. ": ") .. "Krowi",
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
                                desc = addon.L["Discord Desc"],
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
                                name = addon.L["Show minimap icon"],
                                desc = addon.L["Show minimap icon Desc"],
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
                                    diagnostics.Debug(addon.L["Show minimap icon"] .. ": " .. tostring(addon.Options.db.ShowMinimapIcon));
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
                                name = addon.L["Reset view on open"],
                                desc = addon.L["Reset view on open Desc"],
                                type = "toggle",
                                width = "full",
                                order = 1,
                                get = function () return addon.Options.db.ResetViewOnOpen; end,
                                set = function()
                                    addon.Options.db.ResetViewOnOpen = not addon.Options.db.ResetViewOnOpen;

                                    diagnostics.Debug(addon.L["Reset view on open"] .. ": " .. tostring(addon.Options.db.ResetViewOnOpen));
                                end
                            }
                        }
                    },
                    Search = {
                        name = addon.L["Search"],
                        type = "group",
                        inline = true,
                        order = 4,
                        args = {
                            clearOnRightClick = {
                                name = addon.L["Clear search field on Right Click"],
                                desc = addon.L["Clear search field on Right Click Desc"],
                                type = "toggle",
                                width = "full",
                                order = 1.1,
                                get = function () return addon.Options.db.SearchBox.ClearOnRightClick; end,
                                set = function()
                                    addon.Options.db.SearchBox.ClearOnRightClick = not addon.Options.db.SearchBox.ClearOnRightClick;
        
                                    diagnostics.Debug(addon.L["Clear search field on Right Click"] .. ": " .. tostring(addon.Options.db.SearchBox.ClearOnRightClick));
                                end
                            },
                            ExcludeNextPatch = {
                                name = addon.L["Exclude Next Patch"],
                                desc = core.ReplaceVars{addon.L["Exclude Next Patch Desc"],
                                                        spoilerWarning = string.format(addon.Orange, addon.L["* SPOILER WARNING *"])},
                                type = "toggle",
                                width = "full",
                                order = 1.2,
                                confirm = function() return addon.Options.db.SearchBox.ExcludeNextPatch; end,
                                confirmText = string.format(addon.Orange, addon.L["* SPOILER WARNING *"] .. "\n\n" .. addon.L["Exclude Next Patch Confirm"] .. "\n\n" .. addon.L["* SPOILER WARNING *"]),
                                get = function () return addon.Options.db.SearchBox.ExcludeNextPatch; end,
                                set = function()
                                    addon.Options.db.SearchBox.ExcludeNextPatch = not addon.Options.db.SearchBox.ExcludeNextPatch;
        
                                    diagnostics.Debug(addon.L["Exclude Next Patch"] .. ": " .. tostring(addon.Options.db.SearchBox.ExcludeNextPatch));
                                end
                            },
                            minimumCharactersToSearch = {
                                name = addon.L["Minimum characters to search"],
                                desc = addon.L["Minimum characters to search Desc"],
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
        
                                    diagnostics.Debug(addon.L["Minimum characters to search"] .. ": " .. tostring(addon.Options.db.SearchBox.MinimumCharactersToSearch));
                                end
                            },
                            numberOfSearchPreviews = {
                                name = addon.L["Number of search previews"],
                                desc = core.ReplaceVars{addon.L["Number of search previews Desc"],
                                                        reloadRequired = addon.L["Requires a reload"]},
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
        
                                    diagnostics.Debug(addon.L["Number of search previews"] .. ": " .. tostring(addon.Options.db.SearchBox.NumberOfSearchPreviews));
                                end
                            }
                        }
                    },
                    Debug = {
                        name = addon.L["Debug"],
                        type = "group",
                        inline = true,
                        order = 5,
                        args = {
                            EnableDebugInfo = {
                                name = addon.L["Enable debug info"],
                                desc = addon.L["Enable debug info Desc"],
                                type = "toggle",
                                width = "full",
                                order = 1.1,
                                get = function () return addon.Options.db.EnableDebugInfo; end,
                                set = function()
                                    addon.Options.db.EnableDebugInfo = not addon.Options.db.EnableDebugInfo;
        
                                    diagnostics.Debug(addon.L["Enable debug info"] .. ": " .. tostring(addon.Options.db.EnableDebugInfo));
                                end
                            },
                            EnableTraceInfo = {
                                name = addon.L["Enable trace info"],
                                desc = addon.L["Enable trace info Desc"],
                                type = "toggle",
                                width = "full",
                                order = 2.1,
                                get = function () return addon.Options.db.EnableTraceInfo; end,
                                set = function()
                                    addon.Options.db.EnableTraceInfo = not addon.Options.db.EnableTraceInfo;
        
                                    diagnostics.Debug(addon.L["Enable trace info"] .. ": " .. tostring(addon.Options.db.EnableTraceInfo));
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
                                name = addon.L["Categories width offset"],
                                desc = core.ReplaceVars{addon.L["Categories width offset Desc"],
                                                        tabName = string.format(addon.Yellow, addon.L["T_TAB_TEXT"]),
                                                        reloadRequired = addon.L["Requires a reload"]},
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
        
                                    diagnostics.Debug(addon.L["Categories width offset"] .. ": " .. tostring(addon.Options.db.Window.CategoriesFrameWidthOffset));
                                end
                            },
                            AchievementFrameHeightOffset = {
                                name = addon.L["Achievement window height offset"],
                                desc = core.ReplaceVars{addon.L["Achievement window height offset Desc"],
                                                        tabName = string.format(addon.Yellow, addon.L["T_TAB_TEXT"]),
                                                        reloadRequired = addon.L["Requires a reload"]},
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
        
                                    diagnostics.Debug(addon.L["Achievement window height offset"] .. ": " .. tostring(addon.Options.db.Window.AchievementFrameHeightOffset));
                                end
                            },
                            MergeSmallCategoriesThreshold = {
                                name = addon.L["Merge small categories threshold"],
                                desc = core.ReplaceVars{addon.L["Merge small categories threshold Desc"],
                                                        reloadRequired = addon.L["Requires a reload"]},
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
        
                                    diagnostics.Debug(addon.L["Categories width offset"] .. ": " .. tostring(addon.Options.db.Window.MergeSmallCategoriesThreshold));
                                end
                            },
                        }
                    },
                    RightClickMenu = {
                        name = addon.L["Right Click Menu"],
                        type = "group",
                        inline = true,
                        order = 2,
                        args = {
                            ShowRightClickMenuButtonOnAchievement = {
                                name = core.ReplaceVars{addon.L["Show Right Click Menu"],
                                                        rightClickMenu = addon.L["Right Click Menu"]},
                                desc = core.ReplaceVars{addon.L["Show Right Click Menu Desc"],
                                                        rightClickMenu = addon.L["Right Click Menu"],
                                                        reloadRequired = addon.L["Requires a reload"]},
                                type = "toggle",
                                width = "full",
                                order = 1,
                                get = function () return addon.Options.db.RightClickMenu.ShowButtonOnAchievement; end,
                                set = function()
                                    addon.Options.db.RightClickMenu.ShowButtonOnAchievement = not addon.Options.db.RightClickMenu.ShowButtonOnAchievement;

                                    diagnostics.Debug(addon.L["Show Right Click Menu"] .. ": " .. tostring(addon.Options.db.RightClickMenu.ShowButtonOnAchievement));
                                end
                            }
                        }
                    },
                    Tooltip = {
                        name = addon.L["Tooltip"],
                        type = "group",
                        inline = true,
                        order = 3,
                        args = {
                            Categories = {
                                name = addon.L["Categories"],
                                type = "header",
                                order = 1
                            },
                            ShowNotObtainable = {
                                name = core.ReplaceVars{addon.L["Show Not Obtainable"],
                                                        notObtainable = addon.L["Not Obtainable"]},
                                desc = core.ReplaceVars{addon.L["Show Not Obtainable Desc"],
                                                        notObtainable = addon.L["Not Obtainable"]},
                                type = "toggle",
                                width = "full",
                                order = 2,
                                get = function () return addon.Options.db.Tooltip.Categories.ShowNotObtainable; end,
                                set = function()
                                    addon.Options.db.Tooltip.Categories.ShowNotObtainable = not addon.Options.db.Tooltip.Categories.ShowNotObtainable;

                                    diagnostics.Debug(addon.L["Show Not Obtainable"] .. ": " .. tostring(addon.Options.db.Tooltip.Categories.ShowNotObtainable));
                                end
                            },
                            Achievements = {
                                name = addon.L["Achievements"],
                                type = "header",
                                order = 3
                            },
                            ShowPartOfAChain = {
                                name = core.ReplaceVars{addon.L["Show Part of a Chain"],
                                                        partOfAChain = addon.L["Part of a chain"]},
                                desc = core.ReplaceVars{addon.L["Show Part of a Chain Desc"],
                                                        partOfAChain = addon.L["Part of a chain"]},
                                type = "toggle",
                                width = "full",
                                order = 4,
                                get = function () return addon.Options.db.Tooltip.Achievements.ShowPartOfAChain; end,
                                set = function()
                                    addon.Options.db.Tooltip.Achievements.ShowPartOfAChain = not addon.Options.db.Tooltip.Achievements.ShowPartOfAChain;

                                    diagnostics.Debug(addon.L["Show Part of a Chain"] .. ": " .. tostring(addon.Options.db.Tooltip.Achievements.ShowPartOfAChain));
                                end
                            },
                            ShowRequiredFor = {
                                name = core.ReplaceVars{addon.L["Show Required for"],
                                                        requiredFor = addon.L["Required for"]},
                                desc = core.ReplaceVars{addon.L["Show Required for Desc"],
                                                        requiredFor = addon.L["Required for"]},
                                type = "toggle",
                                width = "full",
                                order = 5,
                                get = function () return addon.Options.db.Tooltip.Achievements.ShowRequiredFor; end,
                                set = function()
                                    addon.Options.db.Tooltip.Achievements.ShowRequiredFor = not addon.Options.db.Tooltip.Achievements.ShowRequiredFor;

                                    diagnostics.Debug(addon.L["Show Required for"] .. ": " .. tostring(addon.Options.db.Tooltip.Achievements.ShowRequiredFor));
                                end
                            },
                            ShowCurrentCharacterIcons = {
                                name = addon.L["Show current character icons"],
                                desc = core.ReplaceVars{addon.L["Show current character icons Desc"],
                                                        partOfAChain = addon.L["Part of a chain"],
                                                        requiredFor = addon.L["Required for"]},
                                type = "toggle",
                                width = "full",
                                order = 6,
                                get = function () return addon.Options.db.Tooltip.Achievements.ShowCurrentCharacterIcons; end,
                                set = function()
                                    addon.Options.db.Tooltip.Achievements.ShowCurrentCharacterIcons = not addon.Options.db.Tooltip.Achievements.ShowCurrentCharacterIcons;

                                    diagnostics.Debug(addon.L["Show current character icons"] .. ": " .. tostring(addon.Options.db.Tooltip.Achievements.ShowCurrentCharacterIcons));
                                end
                            }
                        }
                    }
                }
            },
            Style = {
                name = addon.L["ElvUI Skins Status"],
                type = "group",
                order = 3,
                args = {
                    description = {
                        name = addon.L["ElvUI Skins Status Desc"],
                        type = "description",
                        width = "full",
                        fontSize = "medium",
                        order = 1.1
                    },
                    skinAchievement = {
                        name = addon.L["Skin Achievements"],
                        desc = addon.L["Skin Achievements Desc"],
                        descStyle = "inline",
                        disabled = true,
                        type = "toggle",
                        width = "full",
                        order = 2.1,
                        get = function () return addon.Options.db.ElvUISkin.Achievements; end
                    },
                    skinMiscFrames = {
                        name = addon.L["Skin Misc Frames"],
                        desc = addon.L["Skin Misc Frames Desc"],
                        descStyle = "inline",
                        disabled = true,
                        type = "toggle",
                        width = "full",
                        order = 3.1,
                        get = function () return addon.Options.db.ElvUISkin.MiscFrames; end
                    },
                    skinAce3 = {
                        name = addon.L["Skin Ace3"],
                        desc = addon.L["Skin Ace3 Desc"],
                        descStyle = "inline",
                        disabled = true,
                        type = "toggle",
                        width = "full",
                        order = 4.1,
                        get = function () return addon.Options.db.ElvUISkin.Options; end
                    },
                    skinTutorials = {
                        name = addon.L["Skin Tutorials"],
                        desc = addon.L["Skin Tutorials Desc"],
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
    addon.Options.Open = Open;
    addon.Options.db = addon.Options.profile;

    addon.GUI.ElvUISkin.Load();

    -- TODO: add something to check if the options panel closes that we prompt for a reload
    CreatePanel();

    diagnostics.Debug("Options loaded");
    diagnostics.DebugTable(addon.Options.db, 1);
end