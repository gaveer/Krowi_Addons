-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;
local options = addon.Options;

local function SetMaxNumberOfSearchPreviews()
    local numberOfSearchPreviews = LibStub("AceConfigRegistry-3.0"):GetOptionsTable(addon.MetaData.Title, "cmd", "KROWIAF-0.0").args.General.args.Search.args.NumberOfSearchPreviews; -- cmd and KROWIAF-0.0 are just to make the function work
    numberOfSearchPreviews.max = options.MaxNumberOfSearchPreviews();
    if numberOfSearchPreviews.get() > numberOfSearchPreviews.max then
        numberOfSearchPreviews.set(nil, numberOfSearchPreviews.max);
    end
end

local function DrawFocusedSubCategories()
    if addon.GUI.SelectedTab ~= nil then -- If nil, not yet loaded
        -- Reset all
        addon.Data.FocusedCategory.Achievements = nil;
        addon.Data.FocusedCategory.Children = nil;
        addon.GUI.CategoriesFrame:Update(true);
        addon.GUI.AchievementsFrame:ForceUpdate();
        -- Draw again
        addon.Data.LoadFocusedAchievements(addon.Data.Achievements);
    end
end

local function ClearAllFocused()
    addon.Data.FocusedCategory.Achievements = nil;
    addon.Data.FocusedCategory.Children = nil;
    if addon.GUI.SelectedTab ~= nil then -- If nil, not yet loaded
        if SavedData.FocusedAchievements then
            for id, _ in next, SavedData.FocusedAchievements do
                addon.Data.Achievements[id]:ClearFocus();
            end
        end
        addon.GUI.CategoriesFrame:Update(true);
        addon.GUI.AchievementsFrame:ForceUpdate();
    end
    SavedData.FocusedAchievements = nil;
end

local function ShowExcludedCategory()
    if addon.GUI.SelectedTab ~= nil then -- If nil, not yet loaded
        if addon.Options.db.Categories.Excluded.Show then
            addon.Data.LoadExcludedAchievements(addon.Data.Achievements);
        else
            addon.Data.ExcludedCategory.Achievements = nil;
            addon.Data.ExcludedCategory.Children = nil;
            addon.GUI.CategoriesFrame:Update(true);
            addon.GUI.AchievementsFrame:ForceUpdate();
        end
    end
end

local function IncludeAllExcluded()
    addon.Data.ExcludedCategory.Achievements = nil;
    addon.Data.ExcludedCategory.Children = nil;
    if addon.GUI.SelectedTab ~= nil then -- If nil, not yet loaded
        if SavedData.ExcludedAchievements then
            for id, _ in next, SavedData.ExcludedAchievements do
                addon.Data.Achievements[id]:Include();
            end
        end
        addon.GUI.CategoriesFrame:Update(true);
        addon.GUI.AchievementsFrame:ForceUpdate();
    end
    SavedData.ExcludedAchievements = nil;
end

local function DrawExcludedSubCategories()
    if addon.GUI.SelectedTab ~= nil then -- If nil, not yet loaded
        -- Reset all
        addon.Data.ExcludedCategory.Achievements = nil;
        addon.Data.ExcludedCategory.Children = nil;
        addon.GUI.CategoriesFrame:Update(true);
        addon.GUI.AchievementsFrame:ForceUpdate();
        -- Draw again
        addon.Data.LoadExcludedAchievements(addon.Data.Achievements);
    end
end

options.OptionsTable.args["Layout"] = {
    order = 2, type = "group",
    name = addon.L["Layout"],
    args = {
        Window = {
            order = 1, type = "group",
            name = addon.L["Window"],
            inline = true,
            args = {
                Movable = {
                    order = 1, type = "toggle", width = "full",
                    name = addon.L["Make window movable"],
                    desc = addon.L["Make window movable Desc"],
                    get = function() return addon.Options.db.Window.Movable; end,
                    set = function()
                        addon.Options.db.Window.Movable = not addon.Options.db.Window.Movable;
                        addon.MakeWindowMovable();
                        if not addon.Options.db.Window.Movable then
                            C_UI.Reload();
                        end
                        options.Debug(addon.L["Make window movable"], addon.Options.db.Window.Movable);
                    end,
                    confirm = function()
                        if addon.Options.db.Window.Movable then return addon.L["Requires a reload"]; end
                    end
                },
                CategoriesFrameWidthOffset = {
                    order = 2.1, type = "range", width = 1.5,
                    name = addon.L["Categories width offset"],
                    desc = core.ReplaceVars{addon.L["Categories width offset Desc"],
                                            tabName = string.format(addon.Yellow, addon.L["Expansions"]),
                                            reloadRequired = addon.L["Requires a reload"]},
                    min = 0, max = 250, step = 1,
                    get = function () return addon.Options.db.Window.CategoriesFrameWidthOffset; end,
                    set = function(_, value)
                        if addon.Options.db.Window.CategoriesFrameWidthOffset == value then return; end
                        addon.Options.db.Window.CategoriesFrameWidthOffset = value;
                        addon.Event:SendMessage("UpdateAchievementFrameWidth", addon.Options.db.Window.CategoriesFrameWidthOffset);
                        options.Debug(addon.L["Categories width offset"], addon.Options.db.Window.CategoriesFrameWidthOffset);
                    end
                },
                AchievementFrameHeightOffset = {
                    order = 2.2, type = "range", width = 1.5,
                    name = addon.L["Achievement window height offset"],
                    desc = core.ReplaceVars{addon.L["Achievement window height offset Desc"],
                                            tabName = string.format(addon.Yellow, addon.L["Expansions"]),
                                            reloadRequired = addon.L["Requires a reload"]},
                    min = 0, max = 500, step = 1,
                    get = function () return addon.Options.db.Window.AchievementFrameHeightOffset; end,
                    set = function(_, value)
                        if addon.Options.db.Window.AchievementFrameHeightOffset == value then return; end
                        addon.Options.db.Window.AchievementFrameHeightOffset = value;
                        SetMaxNumberOfSearchPreviews();
                        addon.Event:SendMessage("UpdateAchievementFrameHeight", addon.Options.db.Window.AchievementFrameHeightOffset);
                        options.Debug(addon.L["Achievement window height offset"], addon.Options.db.Window.AchievementFrameHeightOffset);
                    end
                },
                MergeSmallCategoriesThreshold = {
                    order = 3.1, type = "range", width = 1.5,
                    name = addon.L["Merge small categories threshold"],
                    desc = core.ReplaceVars{addon.L["Merge small categories threshold Desc"],
                                            reloadRequired = addon.L["Requires a reload"]},
                    min = 1, max = 50, step = 1,
                    get = function () return addon.Options.db.Window.MergeSmallCategoriesThreshold; end,
                    set = function(_, value)
                        if addon.Options.db.Window.MergeSmallCategoriesThreshold == value then return; end
                        addon.Options.db.Window.MergeSmallCategoriesThreshold = value;
                        addon.Options.db.Window.MergeSmallCategoriesThresholdChanged = true;
                        options.Debug(addon.L["Categories width offset"], addon.Options.db.Window.MergeSmallCategoriesThreshold);
                    end
                },
            }
        },
        Categories = {
            order = 2, type = "group",
            name = addon.L["Categories"],
            inline = true,
            args = {
                Focused = {
                    order = 1, type = "header",
                    name = addon.L["Focused"]
                },
                ShowFocusedSubCategories = {
                    order = 2.1, type = "toggle", width = "double",
                    name = addon.L["Show Sub Categories"],
                    desc = addon.L["Show Sub Categories Desc"],
                    get = function() return addon.Options.db.Categories.Focused.ShowSubCategories; end,
                    set = function()
                        addon.Options.db.Categories.Focused.ShowSubCategories = not addon.Options.db.Categories.Focused.ShowSubCategories;
                        DrawFocusedSubCategories();
                        options.Debug(addon.L["Show Sub Categories"], addon.Options.db.Categories.Focused.ShowSubCategories);
                    end
                },
                ClearAll = {
                    order = 2.2, type = "execute",
                    name = addon.L["Clear all"],
                    desc = addon.L["Clear all Desc"],
                    func = ClearAllFocused
                },
                Excluded = {
                    order = 3, type = "header",
                    name = addon.L["Excluded"]
                },
                ShowExcludedCategory = {
                    order = 4.1, type = "toggle", width = "double",
                    name = addon.L["Show"],
                    desc = core.ReplaceVars{addon.L["Show Excluded Category Desc"],
                                            excluded = addon.L["Excluded"]},
                    get = function() return addon.Options.db.Categories.Excluded.Show; end,
                    set = function()
                        addon.Options.db.Categories.Excluded.Show = not addon.Options.db.Categories.Excluded.Show;
                        ShowExcludedCategory();
                        options.Debug(addon.L["Show"] .. " " .. addon.L["Excluded"], addon.Options.db.Categories.Excluded.Show);
                    end
                },
                IncludeAll = {
                    order = 4.2, type = "execute",
                    name = addon.L["Include all"],
                    desc = addon.L["Include all Desc"],
                    func = IncludeAllExcluded
                },
                ShowExcludedSubCategories = {
                    order = 5, type = "toggle", width = "full",
                    name = addon.L["Show Sub Categories"],
                    desc = addon.L["Show Sub Categories Desc"],
                    disabled = function() return not addon.Options.db.Categories.Excluded.Show; end,
                    get = function() return addon.Options.db.Categories.Excluded.ShowSubCategories; end,
                    set = function()
                        addon.Options.db.Categories.Excluded.ShowSubCategories = not addon.Options.db.Categories.Excluded.ShowSubCategories;
                        DrawExcludedSubCategories();
                        options.Debug(addon.L["Show Sub Categories"], addon.Options.db.Categories.Excluded.ShowSubCategories);
                    end
                },
            }
        },
        RightClickMenu = {
            order = 3, type = "group",
            name = addon.L["Right Click Menu"],
            inline = true,
            args = {
                ShowButtonOnAchievement = {
                    order = 1, type = "toggle", width = "full",
                    name = core.ReplaceVars{addon.L["Show Right Click Menu"],
                                            rightClickMenu = addon.L["Right Click Menu"]},
                    desc = core.ReplaceVars{addon.L["Show Right Click Menu Desc"],
                                            rightClickMenu = addon.L["Right Click Menu"],
                                            reloadRequired = addon.L["Requires a reload"]},
                    get = function () return addon.Options.db.RightClickMenu.ShowButtonOnAchievement; end,
                    set = function()
                        addon.Options.db.RightClickMenu.ShowButtonOnAchievement = not addon.Options.db.RightClickMenu.ShowButtonOnAchievement;
                        options.Debug(addon.L["Show Right Click Menu"], addon.Options.db.RightClickMenu.ShowButtonOnAchievement);
                    end
                }
            }
        },
        Tooltip = {
            order = 4, type = "group",
            name = addon.L["Tooltip"],
            inline = true,
            args = {
                Categories = {
                    order = 1, type = "header",
                    name = addon.L["Categories"]
                },
                ShowNotObtainable = {
                    order = 2, type = "toggle", width = "full",
                    name = core.ReplaceVars{addon.L["Show Not Obtainable"],
                                            notObtainable = addon.L["Not Obtainable"]},
                    desc = core.ReplaceVars{addon.L["Show Not Obtainable Desc"],
                                            notObtainable = addon.L["Not Obtainable"]},
                    get = function () return addon.Options.db.Tooltip.Categories.ShowNotObtainable; end,
                    set = function()
                        addon.Options.db.Tooltip.Categories.ShowNotObtainable = not addon.Options.db.Tooltip.Categories.ShowNotObtainable;
                        options.Debug(addon.L["Show Not Obtainable"], addon.Options.db.Tooltip.Categories.ShowNotObtainable);
                    end
                },
                Achievements = {
                    order = 3, type = "header",
                    name = addon.L["Achievements"]
                },
                ShowPartOfAChain = {
                    order = 4.1, type = "toggle", width = 1.5,
                    name = core.ReplaceVars{addon.L["Show Part of a Chain"],
                                            partOfAChain = addon.L["Part of a chain"]},
                    desc = core.ReplaceVars{addon.L["Show Part of a Chain Desc"],
                                            partOfAChain = addon.L["Part of a chain"]},
                    get = function () return addon.Options.db.Tooltip.Achievements.ShowPartOfAChain; end,
                    set = function()
                        addon.Options.db.Tooltip.Achievements.ShowPartOfAChain = not addon.Options.db.Tooltip.Achievements.ShowPartOfAChain;
                        options.Debug(addon.L["Show Part of a Chain"], addon.Options.db.Tooltip.Achievements.ShowPartOfAChain);
                    end
                },
                ShowRequiredFor = {
                    order = 4.2, type = "toggle", width = 1.5,
                    name = core.ReplaceVars{addon.L["Show Required for"],
                                            requiredFor = addon.L["Required for"]},
                    desc = core.ReplaceVars{addon.L["Show Required for Desc"],
                                            requiredFor = addon.L["Required for"]},
                    get = function () return addon.Options.db.Tooltip.Achievements.ShowRequiredFor; end,
                    set = function()
                        addon.Options.db.Tooltip.Achievements.ShowRequiredFor = not addon.Options.db.Tooltip.Achievements.ShowRequiredFor;
                        options.Debug(addon.L["Show Required for"], addon.Options.db.Tooltip.Achievements.ShowRequiredFor);
                    end
                },
                ShowCurrentCharacterIcons = {
                    order = 5, type = "toggle", width = "full",
                    name = addon.L["Show current character icons"],
                    desc = core.ReplaceVars{addon.L["Show current character icons Desc"],
                                            partOfAChain = addon.L["Part of a chain"],
                                            requiredFor = addon.L["Required for"]},
                    get = function () return addon.Options.db.Tooltip.Achievements.ShowCurrentCharacterIcons; end,
                    set = function()
                        addon.Options.db.Tooltip.Achievements.ShowCurrentCharacterIcons = not addon.Options.db.Tooltip.Achievements.ShowCurrentCharacterIcons;
                        options.Debug(addon.L["Show current character icons"], addon.Options.db.Tooltip.Achievements.ShowCurrentCharacterIcons);
                    end
                },
                ObjectivesProgressShow = {
                    order = 6, type = "toggle", width = "full",
                    name = core.ReplaceVars{addon.L["Show Objectives progress"],
                                            objectivesProgress = addon.L["Objectives progress"]},
                    desc = core.ReplaceVars{addon.L["Show Objectives progress Desc"],
                                            objectivesProgress = addon.L["Objectives progress"]},
                    get = function () return addon.Options.db.Tooltip.Achievements.ObjectivesProgress.Show; end,
                    set = function()
                        addon.Options.db.Tooltip.Achievements.ObjectivesProgress.Show = not addon.Options.db.Tooltip.Achievements.ObjectivesProgress.Show;
                        local objectivesProgressShowWhenAchievementCompleted = LibStub("AceConfigRegistry-3.0"):GetOptionsTable(addon.MetaData.Title, "cmd", "KROWIAF-0.0").args.Layout.args.Tooltip.args.ObjectivesProgressShowWhenAchievementCompleted; -- cmd and KROWIAF-0.0 are just to make the function work
                        objectivesProgressShowWhenAchievementCompleted.disabled = not addon.Options.db.Tooltip.Achievements.ObjectivesProgress.Show;                        
                        options.Debug(addon.L["Show Objectives progress"], addon.Options.db.Tooltip.Achievements.ObjectivesProgress.Show);
                    end
                },
                ObjectivesProgressShowWhenAchievementCompleted = {
                    order = 7, type = "toggle", width = "full",
                    name = core.ReplaceVars{addon.L["Show Objectives progress when achievement completed"],
                                            objectivesProgress = addon.L["Objectives progress"]},
                    desc = core.ReplaceVars{addon.L["Show Objectives progress when achievement completed Desc"],
                                            objectivesProgress = addon.L["Objectives progress"]},
                    get = function () return addon.Options.db.Tooltip.Achievements.ObjectivesProgress.ShowWhenAchievementCompleted; end,
                    set = function()
                        addon.Options.db.Tooltip.Achievements.ObjectivesProgress.ShowWhenAchievementCompleted = not addon.Options.db.Tooltip.Achievements.ObjectivesProgress.ShowWhenAchievementCompleted;
                        options.Debug(addon.L["Show Objectives progress"], addon.Options.db.Tooltip.Achievements.ObjectivesProgress.ShowWhenAchievementCompleted);
                    end
                },
                ObjectivesProgressSecondColumnThreshold = {
                    order = 8, type = "range", width = 1.5,
                    name = addon.L["Objectives progress second column threshold"],
                    desc = addon.L["Objectives progress second column threshold Desc"],
                    min = 0, max = 100, step = 1,
                    get = function () return addon.Options.db.Tooltip.Achievements.ObjectivesProgress.SecondColumnThreshold; end,
                    set = function(_, value)
                        if addon.Options.db.Tooltip.Achievements.ObjectivesProgress.SecondColumnThreshold == value then return; end
                        addon.Options.db.Tooltip.Achievements.ObjectivesProgress.SecondColumnThreshold = value;
                        options.Debug(addon.L["Objectives progress second column threshold"], addon.Options.db.Tooltip.Achievements.ObjectivesProgress.SecondColumnThreshold);
                    end
                },
            }
        }
    }
};