-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;
local diagnostics = addon.Diagnostics;
local options = addon.Options;

local popupDialog = LibStub("Krowi_PopopDialog-1.0");

local function OpenTutorialsMenu()
    local menu = LibStub("Krowi_Menu-1.0");
    local pages = addon.Tutorials.FeaturesTutorial.Pages;

    menu:Clear(); -- Reset menu

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

local function ShowHideIcon()
    if addon.Options.db.ShowMinimapIcon then
        addon.Icon:Show("Krowi_AchievementFilterLDB");
    else
        addon.Icon:Hide("Krowi_AchievementFilterLDB");
    end
end

local screenshotModeFrame;
local function HandleScreenshotMode()
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

options.OptionsTable.args["General"] = {
    order = 1,
    name = addon.L["General"],
    type = "group",
    args = {
        Info = {
            order = 1, type = "group",
            name = addon.L["Info"],
            inline = true,
            args = {
                Version = {
                    order = 1.1, type = "description", width = "normal",
                    name = string.format(addon.Yellow, addon.L["Version"] .. ": ") .. addon.MetaData.Version,
                    fontSize = "medium",
                },
                Build = {
                    order = 1.2, type = "description", width = "normal",
                    name = string.format(addon.Yellow, addon.L["Build"] .. ": ") .. addon.MetaData.Build,
                    fontSize = "medium",
                },
                Tutorial = {
                    order = 1.3, type = "execute",
                    name = addon.L["Tutorial"],
                    desc = addon.L["Tutorial Desc"],
                    func = OpenTutorialsMenu
                },
                Author = {
                    order = 2.1, type = "description", width = "double",
                    name = string.format(addon.Yellow, addon.L["Author"] .. ": ") .. addon.MetaData.Author,
                    fontSize = "medium",
                },
                Discord = {
                    order = 2.3, type = "execute",
                    name = addon.L["Discord"],
                    desc = addon.L["Discord Desc"],
                    func = function()
                        InterfaceOptionsFrame:Hide();
                        popupDialog.ShowExternalLink("https://discord.gg/" .. addon.MetaData.Discord);
                    end
                },
                Blank31 = {order = 3.1, type = "description", width = "normal", name = ""},
                Blank32 = {order = 3.2, type = "description", width = "normal", name = ""},
                CurseForge = {
                    order = 3.3, type = "execute",
                    name = addon.L["CurseForge"],
                    desc = core.ReplaceVars{addon.L["CurseForge Desc"],
                                            addonName = addon.MetaData.Title,
                                            curseForge = addon.L["CurseForge"]},
                    func = function()
                        InterfaceOptionsFrame:Hide();
                        popupDialog.ShowExternalLink("https://www.curseforge.com/wow/addons/" .. addon.MetaData.CurseForge);
                    end
                }
            }
        },
        Icon = {
            order = 2, type = "group",
            name = addon.L["Icon"],
            inline = true,
            args = {
                ShowMinimapIcon = {
                    order = 1, type = "toggle", width = "full",
                    name = addon.L["Show minimap icon"],
                    desc = addon.L["Show minimap icon Desc"],
                    get = function () return addon.Options.db.ShowMinimapIcon; end,
                    set = function()
                        addon.Options.db.ShowMinimapIcon = not addon.Options.db.ShowMinimapIcon;
                        ShowHideIcon();
                        options.Debug(addon.L["Show minimap icon"], addon.Options.db.ShowMinimapIcon);
                    end
                }
            }
        },
        KeyBinding = {
            order = 3, type = "group",
            name = addon.L["Key Binding"],
            inline = true,
            args = {
                ResetViewOnOpen = {
                    order = 1, type = "toggle", width = "full",
                    name = addon.L["Reset view on open"],
                    desc = addon.L["Reset view on open Desc"],
                    get = function () return addon.Options.db.ResetViewOnOpen; end,
                    set = function()
                        addon.Options.db.ResetViewOnOpen = not addon.Options.db.ResetViewOnOpen;
                        options.Debug(addon.L["Reset view on open"], addon.Options.db.ResetViewOnOpen);
                    end
                }
            }
        },
        Search = {
            order = 5, type = "group",
            name = addon.L["Search"],
            inline = true,
            args = {
                ClearOnRightClick = {
                    order = 1.1, type = "toggle", width = 1.5,
                    name = addon.L["Clear search field on Right Click"],
                    desc = addon.L["Clear search field on Right Click Desc"],
                    get = function() return addon.Options.db.SearchBox.ClearOnRightClick; end,
                    set = function()
                        addon.Options.db.SearchBox.ClearOnRightClick = not addon.Options.db.SearchBox.ClearOnRightClick;
                        options.Debug(addon.L["Clear search field on Right Click"], addon.Options.db.SearchBox.ClearOnRightClick);
                    end
                },
                ExcludeExcluded = {
                    order = 1.2, type = "toggle", width = 1.5,
                    name = addon.L["Exclude Excluded achievements"],
                    desc = addon.L["Exclude Excluded achievements Desc"],
                    get = function() return addon.Options.db.SearchBox.ExcludeExcluded; end,
                    set = function()
                        addon.Options.db.SearchBox.ExcludeExcluded = not addon.Options.db.SearchBox.ExcludeExcluded;
                        options.Debug(addon.L["Exclude Excluded achievements"], addon.Options.db.SearchBox.ExcludeExcluded);
                    end
                },
                ExcludeNextPatch = {
                    hidden = true,
                    order = 2, type = "toggle", width = "full",
                    name = addon.L["Exclude Next Patch"],
                    desc = core.ReplaceVars{addon.L["Exclude Next Patch Desc"],
                                            spoilerWarning = string.format(addon.Orange, addon.L["* SPOILER WARNING *"])},
                    confirm = function() return addon.Options.db.SearchBox.ExcludeNextPatch; end,
                    confirmText = string.format(addon.Orange, addon.L["* SPOILER WARNING *"] .. "\n\n" .. addon.L["Exclude Next Patch Confirm"] .. "\n\n" .. addon.L["* SPOILER WARNING *"]),
                    get = function() return addon.Options.db.SearchBox.ExcludeNextPatch; end,
                    set = function()
                        addon.Options.db.SearchBox.ExcludeNextPatch = not addon.Options.db.SearchBox.ExcludeNextPatch;
                        options.Debug(addon.L["Exclude Next Patch"], addon.Options.db.SearchBox.ExcludeNextPatch);
                    end
                },
                MinimumCharactersToSearch = {
                    order = 3.1, type = "range", width = 1.5,
                    name = addon.L["Minimum characters to search"],
                    desc = addon.L["Minimum characters to search Desc"],
                    min = 1, max = 10, step = 1,
                    get = function() return addon.Options.db.SearchBox.MinimumCharactersToSearch; end,
                    set = function(_, value)
                        if addon.Options.db.SearchBox.MinimumCharactersToSearch == value then return; end
                        addon.Options.db.SearchBox.MinimumCharactersToSearch = value;
                        options.Debug(addon.L["Minimum characters to search"], addon.Options.db.SearchBox.MinimumCharactersToSearch);
                    end
                },
                NumberOfSearchPreviews = {
                    order = 3.2, type = "range", width = 1.5,
                    name = addon.L["Number of search previews"],
                    desc = core.ReplaceVars{addon.L["Number of search previews Desc"],
                                            reloadRequired = addon.L["Requires a reload"]},
                    min = 1, max = 1000, step = 1, -- max is set by options.MaxNumberOfSearchPreviews after loading has finished
                    get = function() return addon.Options.db.SearchBox.NumberOfSearchPreviews; end,
                    set = function(_, value)
                        if addon.Options.db.SearchBox.NumberOfSearchPreviews == value then return; end
                        addon.Options.db.SearchBox.NumberOfSearchPreviews = value;
                        options.Debug(addon.L["Number of search previews"], addon.Options.db.SearchBox.NumberOfSearchPreviews);
                    end
                }
            }
        },
        Debug = {
            order = 6, type = "group",
            name = addon.L["Debug"],
            inline = true,
            args = {
                EnableDebugInfo = {
                    order = 1.1, type = "toggle", width = "normal",
                    name = addon.L["Enable debug info"],
                    desc = addon.L["Enable debug info Desc"],
                    get = function() return addon.Options.db.EnableDebugInfo; end,
                    set = function()
                        addon.Options.db.EnableDebugInfo = not addon.Options.db.EnableDebugInfo;
                        options.Debug(addon.L["Enable debug info"], addon.Options.db.EnableDebugInfo);
                    end
                },
                Blank12 = {order = 1.2, type = "description", width = "normal", name = ""},
                ScreenshotMode = {
                    order = 1.3, type = "execute",
                    name = addon.L["Screenshot Mode"],
                    desc = addon.L["Screenshot Mode Desc"],
                    func = function()
                        HandleScreenshotMode();
                    end
                },
                EnableTraceInfo = {
                    order = 2.1, type = "toggle", width = "full",
                    name = addon.L["Enable trace info"],
                    desc = addon.L["Enable trace info Desc"],
                    get = function () return addon.Options.db.EnableTraceInfo; end,
                    set = function()
                        addon.Options.db.EnableTraceInfo = not addon.Options.db.EnableTraceInfo;
                        options.Debug(addon.L["Enable trace info"], addon.Options.db.EnableTraceInfo);
                    end
                }
            }
        }
    }
};