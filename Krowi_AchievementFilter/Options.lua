local _, addon = ...; -- Global addon namespace
addon.Options = {}; -- Global options namespace
local options = addon.Options; -- Local options namespace
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace

local function LoadDefaults()
    local options = Krowi_AchievementFilterOptions;
    options.ShowMinimapIcon = options.ShowMinimapIcon or false;
    options.EnableDebugInfo = options.EnableDebugInfo or false;
    options.EnableTraceInfo = options.EnableTraceInfo or false;
    options.CategoriesFrameWidthOffset = options.CategoriesFrameWidthOffset or 0;
end

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
                        order = 1,
                    },
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
                        get = function () return Krowi_AchievementFilterOptions.ShowMinimapIcon; end,
                        set = function()
                            Krowi_AchievementFilterOptions.ShowMinimapIcon = not Krowi_AchievementFilterOptions.ShowMinimapIcon;
                            if Krowi_AchievementFilterOptions.ShowMinimapIcon then
                                addon.Icon:Show("Krowi_AchievementFilterLDB");
                            else
                                addon.Icon:Hide("Krowi_AchievementFilterLDB");
                            end
                            diagnostics.Debug(AF_OPTIONS_MINIMAP_ICON_TOGGLE .. ": " .. tostring(Krowi_AchievementFilterOptions.ShowMinimapIcon));
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
                        get = function () return Krowi_AchievementFilterOptions.CategoriesFrameWidthOffset; end,
                        set = function(_, value)
                            Krowi_AchievementFilterOptions.CategoriesFrameWidthOffset = value or 0;
                            print(AF_OPTIONS_CATEGORIESFRAMEWIDTHOFFSET .. ": " .. tostring(Krowi_AchievementFilterOptions.CategoriesFrameWidthOffset));
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
                        get = function () return Krowi_AchievementFilterOptions.EnableDebugInfo; end,
                        set = function()
                            Krowi_AchievementFilterOptions.EnableDebugInfo = not Krowi_AchievementFilterOptions.EnableDebugInfo;
                            print(AF_OPTIONS_DEBUG_INFO_TOGGLE .. ": " .. tostring(Krowi_AchievementFilterOptions.EnableDebugInfo));
                        end,
                    },
                    enableTraceInfo = {
                        name = AF_OPTIONS_TRACE_INFO_TOGGLE,
                        desc = AF_OPTIONS_TRACE_INFO_TOGGLE_TOOLTIP,
                        type = "toggle",
                        width = "full",
                        order = 2,
                        get = function () return Krowi_AchievementFilterOptions.EnableTraceInfo; end,
                        set = function()
                            Krowi_AchievementFilterOptions.EnableTraceInfo = not Krowi_AchievementFilterOptions.EnableTraceInfo;
                            print(AF_OPTIONS_TRACE_INFO_TOGGLE .. ": " .. tostring(Krowi_AchievementFilterOptions.EnableTraceInfo));
                        end,
                    }
                }
            }
        },
    }
    local AceConfig = LibStub("AceConfig-3.0")
    local AceConfigDialog = LibStub("AceConfigDialog-3.0")
    AceConfig:RegisterOptionsTable(AF_NAME, options)
    AceConfigDialog:AddToBlizOptions(AF_NAME, nil, nil)
end

-- Load the options
function options.Load()
    LoadDefaults();
    CreatePanel();

    -- showMinimapIconToggle:SetChecked(Krowi_AchievementFilterOptions.ShowMinimapIcon);
    -- enableDebugInfoToggle:SetChecked(Krowi_AchievementFilterOptions.EnableDebugInfo);
    -- enableTraceInfoToggle:SetChecked(Krowi_AchievementFilterOptions.EnableTraceInfo);
    diagnostics.Debug("- Options loaded");
    diagnostics.Debug("     - " .. AF_OPTIONS_MINIMAP_ICON_TOGGLE .. ": " .. tostring(Krowi_AchievementFilterOptions.ShowMinimapIcon));
    diagnostics.Debug("     - " .. AF_OPTIONS_DEBUG_INFO_TOGGLE .. ": " .. tostring(Krowi_AchievementFilterOptions.EnableDebugInfo));
    diagnostics.Debug("     - " .. AF_OPTIONS_TRACE_INFO_TOGGLE .. ": " .. tostring(Krowi_AchievementFilterOptions.EnableTraceInfo));
end