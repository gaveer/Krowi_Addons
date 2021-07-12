-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;
local diagnostics = addon.Diagnostics;
addon.Options = {}; -- Will be overwritten in Load (intended)
local options = addon.Options;

local popupDialog = LibStub("Krowi_PopopDialog-1.0");

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
        Categories = {
            ShowExcludedCategory = true
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
                ShowCurrentCharacterIcons = false,
                ObjectivesProgress = {
                    Show = true,
                    ShowWhenAchievementCompleted = true,
                    SecondColumnThreshold = 25
                }
            }
        },
        Minimap = {
            hide = true -- not ShowMinimapIcon
        },
        SearchBox = {
            MinimumCharactersToSearch = 3,
            NumberOfSearchPreviews = 5,
            ClearOnRightClick = true,
            ExcludeNextPatch = true,
            ExcludeExcluded = true
        }
    }
}

local maxNumberOfSearchPreviews = function()
    return 17 + math.floor(addon.Options.db.Window.AchievementFrameHeightOffset / 29);
end

local screenshotModeFrame;

local function CreatePanel()
    local optionsTable = {
        name = addon.MetaData.Title,
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
                            Version = {
                                name = string.format(addon.Yellow, addon.L["Version"] .. ": ") .. addon.MetaData.Version,
                                type = "description",
                                width = "normal",
                                fontSize = "medium",
                                order = 1.1,
                            },
                            Build = {
                                name = string.format(addon.Yellow, addon.L["Build"] .. ": ") .. addon.MetaData.Build,
                                type = "description",
                                width = "normal",
                                fontSize = "medium",
                                order = 1.2,
                            },
                            Tutorial = {
                                name = addon.L["Tutorial"],
                                desc = addon.L["Tutorial Desc"],
                                type = "execute",
                                order = 1.3,
                                func = function()
                                    local menu = LibStub("Krowi_Menu-1.0");
                                    local pages = addon.Tutorials.FeaturesTutorial.Pages;

                                    -- Reset menu
                                    menu:Clear();

                                    menu:AddFull({Text = addon.L["View Tutorial"], IsTitle = true});
                                    menu:AddFull({  Text = addon.L["From the start"],
                                                    Func = function()
                                                        InterfaceOptionsFrame:Hide();
                                                        addon.Tutorials.FeaturesTutorial:Reset();
                                                        addon.Tutorials.FeaturesTutorial:ShowTutorial();
                                                    end
                                                });
                                    for i, _ in next, pages do
                                        menu:AddFull({  Text = (pages[i].IsViewed and "" or "|T132049:0|t") .. string.format(addon.White, addon.RemoveColor(pages[i].SubTitle)),
                                                        Func = function()
                                                            InterfaceOptionsFrame:Hide();
                                                            diagnostics.Debug("Showing tutorial for " .. tostring(i));
                                                            addon.Tutorials.FeaturesTutorial:ShowTutorial(i, i, i, true);
                                                        end
                                                    });
                                    end

                                    menu:Open();
                                end
                            },
                            Author = {
                                name = string.format(addon.Yellow, addon.L["Author"] .. ": ") .. addon.MetaData.Author,
                                type = "description",
                                width = "normal",
                                fontSize = "medium",
                                order = 2.1,
                            },
                            blank22 = {
                                name = "",
                                type = "description",
                                width = "normal",
                                fontSize = "medium",
                                order = 2.2,
                            },
                            Discord = {
                                name = addon.L["Discord"],
                                desc = addon.L["Discord Desc"],
                                type = "execute",
                                order = 2.3,
                                func = function()
                                    InterfaceOptionsFrame:Hide();
                                    popupDialog.ShowExternalLink("https://discord.gg/" .. addon.MetaData.Discord);
                                end
                            },
                            blank31 = {
                                name = "",
                                type = "description",
                                width = "normal",
                                fontSize = "medium",
                                order = 3.1,
                            },
                            blank32 = {
                                name = "",
                                type = "description",
                                width = "normal",
                                fontSize = "medium",
                                order = 3.2,
                            },
                            CurseForge = {
                                name = addon.L["CurseForge"],
                                desc = core.ReplaceVars{addon.L["CurseForge Desc"],
                                                        addonName = addon.MetaData.Title,
                                                        curseForge = addon.L["CurseForge"]},
                                type = "execute",
                                order = 3.3,
                                func = function()
                                    InterfaceOptionsFrame:Hide();
                                    popupDialog.ShowExternalLink("https://www.curseforge.com/wow/addons/" .. addon.MetaData.CurseForge);
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
                            ClearOnRightClick = {
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
                                hidden = true,
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
                            ExcludeExcluded = {
                                name = addon.L["Exclude Excluded achievements"],
                                desc = addon.L["Exclude Excluded achievements Desc"],
                                type = "toggle",
                                width = "full",
                                order = 2.1,
                                get = function () return addon.Options.db.SearchBox.ExcludeExcluded; end,
                                set = function()
                                    addon.Options.db.SearchBox.ExcludeExcluded = not addon.Options.db.SearchBox.ExcludeExcluded;
        
                                    diagnostics.Debug(addon.L["Exclude Excluded achievements"] .. ": " .. tostring(addon.Options.db.SearchBox.ExcludeExcluded));
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
                                order = 3.1,
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
                            NumberOfSearchPreviews = {
                                name = addon.L["Number of search previews"],
                                desc = core.ReplaceVars{addon.L["Number of search previews Desc"],
                                                        reloadRequired = addon.L["Requires a reload"]},
                                type = "range",
                                min = 1,
                                max = maxNumberOfSearchPreviews(),
                                step = 1,
                                width = 1.5,
                                order = 3.2,
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
                                width = "normal",
                                order = 1.1,
                                get = function () return addon.Options.db.EnableDebugInfo; end,
                                set = function()
                                    addon.Options.db.EnableDebugInfo = not addon.Options.db.EnableDebugInfo;
        
                                    diagnostics.Debug(addon.L["Enable debug info"] .. ": " .. tostring(addon.Options.db.EnableDebugInfo));
                                end
                            },
                            blank12 = {
                                name = "",
                                type = "description",
                                width = "normal",
                                fontSize = "medium",
                                order = 1.2,
                            },
                            Discord = {
                                name = addon.L["Screenshot Mode"],
                                desc = addon.L["Screenshot Mode Desc"],
                                type = "execute",
                                order = 1.3,
                                func = function()
                                    InterfaceOptionsFrame:Hide();
                                    if screenshotModeFrame == nil then
                                        screenshotModeFrame = CreateFrame("Frame", nil, UIParent);
                                        screenshotModeFrame:SetAllPoints();
                                        screenshotModeFrame:SetPoint("CENTER");
                                        screenshotModeFrame:SetSize(64, 64);

                                        screenshotModeFrame.tex = screenshotModeFrame:CreateTexture();
                                        screenshotModeFrame.tex:SetAllPoints(f);
                                        screenshotModeFrame.tex:SetTexture("Interface\\AddOns\\Krowi_AchievementFilter\\Media\\Black");
                                    elseif screenshotModeFrame:IsShown() then
                                        screenshotModeFrame:Hide();
                                    else
                                        screenshotModeFrame:Show();
                                    end
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
                                    local numberOfSearchPreviews = LibStub("AceConfigRegistry-3.0"):GetOptionsTable(addon.MetaData.Title, "cmd", "KROWIAF-0.0").args.General.args.Search.args.NumberOfSearchPreviews; -- cmd and KROWIAF-0.0 are just to make the function work
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
                    Categories = {
                        name = addon.L["Categories"],
                        type = "group",
                        inline = true,
                        order = 2,
                        args = {
                            ShowExcludedCategory = {
                                name = core.ReplaceVars{addon.L["Show Excluded Category"],
                                                        excluded = addon.L["Excluded"]},
                                desc = core.ReplaceVars{addon.L["Show Excluded Category Desc"],
                                                        excluded = addon.L["Excluded"]},
                                type = "toggle",
                                width = "double",
                                order = 1.1,
                                get = function () return addon.Options.db.Categories.ShowExcludedCategory; end,
                                set = function()
                                    addon.Options.db.Categories.ShowExcludedCategory = not addon.Options.db.Categories.ShowExcludedCategory;
                                    
                                    if addon.Options.db.Categories.ShowExcludedCategory then
                                        addon.Data.LoadExcludedAchievements(addon.Data.Achievements);
                                    else
                                        addon.Data.ExcludedCategory.Achievements = nil;
                                        addon.GUI.CategoriesFrame:Update(true);
                                        addon.GUI.AchievementsFrame:ForceUpdate();
                                    end

                                    diagnostics.Debug(addon.L["Show Excluded Category"] .. ": " .. tostring(addon.Options.db.Categories.ShowExcludedCategory));
                                end
                            },
                            IncludeAll = {
                                name = addon.L["Include all"],
                                desc = addon.L["Include all Desc"],
                                type = "execute",
                                order = 1.3,
                                func = function()
                                    if addon.Data.ExcludedCategory.Achievements then
                                        for i = #addon.Data.ExcludedCategory.Achievements, 1, -1 do
                                            addon.IncludeAchievement(addon.Data.ExcludedCategory.Achievements[i], false);
                                        end
                                        addon.GUI.CategoriesFrame:Update(true);
                                        addon.GUI.AchievementsFrame:ForceUpdate();
                                    end
                                end
                            },
                        }
                    },
                    RightClickMenu = {
                        name = addon.L["Right Click Menu"],
                        type = "group",
                        inline = true,
                        order = 3,
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
                        order = 4,
                        args = {
                            Categories = {
                                name = addon.L["Categories"],
                                type = "header",
                                order = 1.1
                            },
                            ShowNotObtainable = {
                                name = core.ReplaceVars{addon.L["Show Not Obtainable"],
                                                        notObtainable = addon.L["Not Obtainable"]},
                                desc = core.ReplaceVars{addon.L["Show Not Obtainable Desc"],
                                                        notObtainable = addon.L["Not Obtainable"]},
                                type = "toggle",
                                width = "full",
                                order = 2.1,
                                get = function () return addon.Options.db.Tooltip.Categories.ShowNotObtainable; end,
                                set = function()
                                    addon.Options.db.Tooltip.Categories.ShowNotObtainable = not addon.Options.db.Tooltip.Categories.ShowNotObtainable;

                                    diagnostics.Debug(addon.L["Show Not Obtainable"] .. ": " .. tostring(addon.Options.db.Tooltip.Categories.ShowNotObtainable));
                                end
                            },
                            Achievements = {
                                name = addon.L["Achievements"],
                                type = "header",
                                order = 3.1
                            },
                            ShowPartOfAChain = {
                                name = core.ReplaceVars{addon.L["Show Part of a Chain"],
                                                        partOfAChain = addon.L["Part of a chain"]},
                                desc = core.ReplaceVars{addon.L["Show Part of a Chain Desc"],
                                                        partOfAChain = addon.L["Part of a chain"]},
                                type = "toggle",
                                width = 1.5,
                                order = 4.1,
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
                                width = 1.5,
                                order = 4.2,
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
                                order = 5.1,
                                get = function () return addon.Options.db.Tooltip.Achievements.ShowCurrentCharacterIcons; end,
                                set = function()
                                    addon.Options.db.Tooltip.Achievements.ShowCurrentCharacterIcons = not addon.Options.db.Tooltip.Achievements.ShowCurrentCharacterIcons;

                                    diagnostics.Debug(addon.L["Show current character icons"] .. ": " .. tostring(addon.Options.db.Tooltip.Achievements.ShowCurrentCharacterIcons));
                                end
                            },
                            ObjectivesProgressShow = {
                                name = core.ReplaceVars{addon.L["Show Objectives progress"],
                                                        objectivesProgress = addon.L["Objectives progress"]},
                                desc = core.ReplaceVars{addon.L["Show Objectives progress Desc"],
                                                        objectivesProgress = addon.L["Objectives progress"]},
                                type = "toggle",
                                width = "full",
                                order = 6.1,
                                get = function () return addon.Options.db.Tooltip.Achievements.ObjectivesProgress.Show; end,
                                set = function()
                                    addon.Options.db.Tooltip.Achievements.ObjectivesProgress.Show = not addon.Options.db.Tooltip.Achievements.ObjectivesProgress.Show;
                                    local objectivesProgressShowWhenAchievementCompleted = LibStub("AceConfigRegistry-3.0"):GetOptionsTable(addon.MetaData.Title, "cmd", "KROWIAF-0.0").args.Layout.args.Tooltip.args.ObjectivesProgressShowWhenAchievementCompleted; -- cmd and KROWIAF-0.0 are just to make the function work
                                    objectivesProgressShowWhenAchievementCompleted.disabled = not addon.Options.db.Tooltip.Achievements.ObjectivesProgress.Show;
                                    
                                    diagnostics.Debug(addon.L["Show Objectives progress"] .. ": " .. tostring(addon.Options.db.Tooltip.Achievements.ObjectivesProgress.Show));
                                end
                            },
                            ObjectivesProgressShowWhenAchievementCompleted = {
                                name = core.ReplaceVars{addon.L["Show Objectives progress when achievement completed"],
                                                        objectivesProgress = addon.L["Objectives progress"]},
                                desc = core.ReplaceVars{addon.L["Show Objectives progress when achievement completed Desc"],
                                                        objectivesProgress = addon.L["Objectives progress"]},
                                type = "toggle",
                                width = "full",
                                order = 7.1,
                                get = function () return addon.Options.db.Tooltip.Achievements.ObjectivesProgress.ShowWhenAchievementCompleted; end,
                                set = function()
                                    addon.Options.db.Tooltip.Achievements.ObjectivesProgress.ShowWhenAchievementCompleted = not addon.Options.db.Tooltip.Achievements.ObjectivesProgress.ShowWhenAchievementCompleted;

                                    diagnostics.Debug(addon.L["Show Objectives progress"] .. ": " .. tostring(addon.Options.db.Tooltip.Achievements.ObjectivesProgress.ShowWhenAchievementCompleted));
                                end
                            },
                            ObjectivesProgressSecondColumnThreshold = {
                                name = addon.L["Objectives progress second column threshold"],
                                desc = addon.L["Objectives progress second column threshold Desc"],
                                type = "range",
                                min = 0,
                                max = 100,
                                step = 1,
                                width = 1.5,
                                order = 8.1,
                                get = function ()
                                    return addon.Options.db.Tooltip.Achievements.ObjectivesProgress.SecondColumnThreshold;
                                end,
                                set = function(_, value)
                                    if addon.Options.db.Tooltip.Achievements.ObjectivesProgress.SecondColumnThreshold == value then
                                        return;
                                    end;
        
                                    addon.Options.db.Tooltip.Achievements.ObjectivesProgress.SecondColumnThreshold = value;
        
                                    diagnostics.Debug(addon.L["Objectives progress second column threshold"] .. ": " .. tostring(addon.Options.db.Tooltip.Achievements.ObjectivesProgress.SecondColumnThreshold));
                                end
                            },
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
                        get = function() print("Getting SavedData.ElvUISkin.Achievements " .. tostring(SavedData.ElvUISkin.Achievements)); return SavedData.ElvUISkin.Achievements; end
                    },
                    skinMiscFrames = {
                        name = addon.L["Skin Misc Frames"],
                        desc = addon.L["Skin Misc Frames Desc"],
                        descStyle = "inline",
                        disabled = true,
                        type = "toggle",
                        width = "full",
                        order = 3.1,
                        get = function() return SavedData.ElvUISkin.MiscFrames; end
                    },
                    skinTooltip = {
                        name = addon.L["Skin Tooltip"],
                        desc = addon.L["Skin Tooltip Desc"],
                        descStyle = "inline",
                        disabled = true,
                        type = "toggle",
                        width = "full",
                        order = 4.1,
                        get = function() return SavedData.ElvUISkin.Tooltip; end
                    },
                    skinTutorials = {
                        name = addon.L["Skin Tutorials"],
                        desc = addon.L["Skin Tutorials Desc"],
                        descStyle = "inline",
                        disabled = true,
                        type = "toggle",
                        width = "full",
                        order = 5.1,
                        get = function() return SavedData.ElvUISkin.Tutorials; end
                    },
                    skinAce3 = {
                        name = addon.L["Skin Ace3"],
                        desc = addon.L["Skin Ace3 Desc"],
                        descStyle = "inline",
                        disabled = true,
                        type = "toggle",
                        width = "full",
                        order = 6.1,
                        get = function() return SavedData.ElvUISkin.Options; end
                    }
                }
            },
            Credits = {
                name = addon.L["Credits"],
                type = "group",
                order = 4,
                args = {
                    SpecialThanks = {
                        name = addon.L["Special thanks"],
                        type = "group",
                        inline = true,
                        order = 1,
                        args = {
                            Names = {
                                name = addon.GetSpecialThanksAsString(),
                                type = "description",
                                fontSize = "medium"
                            }
                        }
                    },
                    Donations = {
                        name = addon.L["Donations"],
                        type = "group",
                        inline = true,
                        order = 2,
                        args = {
                            Names = {
                                name = addon.GetDonationsAsString(),
                                type = "description",
                                fontSize = "medium"
                            }
                        }
                    },
                }
            }
        }
    }

    LibStub("AceConfig-3.0"):RegisterOptionsTable(addon.MetaData.Title, optionsTable);
    LibStub("AceConfigDialog-3.0"):AddToBlizOptions(addon.MetaData.Title, nil, nil);
end

local function Open()
    InterfaceAddOnsList_Update(); -- This way the correct category will be shown when calling InterfaceOptionsFrame_OpenToCategory
    InterfaceOptionsFrame_OpenToCategory(addon.MetaData.Title);
end

-- Load the options
function options.Load()
    addon.Options = LibStub("AceDB-3.0"):New("Options", defaults, true);
    addon.Options.Open = Open;
    addon.Options.db = addon.Options.profile;

    -- TODO: add something to check if the options panel closes that we prompt for a reload
    CreatePanel();

    diagnostics.Debug("Options loaded");
    diagnostics.DebugTable(addon.Options.db, 1);
end