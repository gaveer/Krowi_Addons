-- [[ Namespaces ]] --
local _, addon = ...;
local options = addon.Options;

options.Defaults = {
    profile = {
        ShowMinimapIcon = false,
        ResetViewOnOpen = false,
        EnableDebugInfo = false,
        EnableTraceInfo = false,
        Window = {
            Movable = true,
            CategoriesFrameWidthOffset = 25,
            AchievementFrameHeightOffset = 250,
            MergeSmallCategoriesThreshold = 10,
            MergeSmallCategoriesThresholdChanged = false
        },
        Categories = {
            Focused = {
                ShowSubCategories = false
            },
            Excluded = {
                Show = true,
                ShowSubCategories = false
            }
        },
        Achievements = {
            Compact = false,
            ButtonCollapsedHeight = ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT or 84 -- can return nil
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
        },
        EventAlert = {
            FadeDelay = 30,
            DateTimeFormat = {
                StartTimeAndEndTime = "%d/%m/%Y %R"
            },
            TimeDisplay = {
                Line1 = 2,
                Line2 = 4
            }
        }
    }
};