-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;
local options = addon.Options;

local timeDisplaysLine1 = {
    addon.L["Start Time"],
    addon.L["End Time"],
    addon.L["Time Left"]
};

local timeDisplaysLine2 = {
    addon.L["None"],
    addon.L["Start Time"],
    addon.L["End Time"],
    addon.L["Time Left"]
};

local startTimeAndEndTimeDateTimeFormats, startTimeAndEndTimeDateTimeValues = {}, {};

local function AddFormat(formats, values, format)
    tinsert(formats, format);
    tinsert(values, date(format, time()));
end

local function AddStartTimeAndEndTimeFormat(format)
    AddFormat(startTimeAndEndTimeDateTimeFormats, startTimeAndEndTimeDateTimeValues, format);
end

AddStartTimeAndEndTimeFormat(options.Defaults.profile.EventAlert.DateTimeFormat.StartTimeAndEndTime);
AddStartTimeAndEndTimeFormat("%d/%m/%Y %I:%M %p");
AddStartTimeAndEndTimeFormat("%m/%d/%Y %R");
AddStartTimeAndEndTimeFormat("%m/%d/%Y %I:%M %p");
AddStartTimeAndEndTimeFormat("%Y/%m/%d %R");
AddStartTimeAndEndTimeFormat("%Y/%m/%d %I:%M %p");
AddStartTimeAndEndTimeFormat("%c");
tinsert(startTimeAndEndTimeDateTimeValues, "Custom");
tinsert(startTimeAndEndTimeDateTimeFormats, "%m/%d/%y %R");

options.OptionsTable.args["EventAlert"] = {
    order = 3, type = "group",
    name = addon.L["Event alert"],
    args = {
        General = {
            order = 1, type = "group",
            name = addon.L["General"],
            inline = true,
            args = {
                FadeDelay = {
                    order = 1, type = "range", width = 1.5,
                    name = addon.L["Fade delay"],
                    desc = addon.L["Fade delay Desc"],
                    min = 1, max = 120, step = 1,
                    get = function () return addon.Options.db.EventAlert.FadeDelay; end,
                    set = function(_, value)
                        if addon.Options.db.EventAlert.FadeDelay == value then return; end
                        addon.Options.db.EventAlert.FadeDelay = value;
                        options.Debug(addon.L["Fade delay"], addon.Options.db.EventAlert.FadeDelay);
                    end
                }
            }
        },
        TimeDisplay = {
            order = 2, type = "group",
            name = addon.L["Time display"],
            inline = true,
            args = {
                Line1 = {
                    order = 1.1, type = "select", width = 1.5,
                    name = addon.L["Line"] .. " 1",
                    values = timeDisplaysLine1,
                    get = function () return addon.Options.db.EventAlert.TimeDisplay.Line1; end,
                    set = function(_, value)
                        if addon.Options.db.EventAlert.TimeDisplay.Line1 == value then return; end;
                        addon.Options.db.EventAlert.TimeDisplay.Line1 = value;
                        for _, sideButton in next, addon.GUI.SideButtons do
                            sideButton:UpdateRuntime();
                        end
                        options.Debug(addon.L["Line"] .. " 1", addon.Options.db.EventAlert.TimeDisplay.Line1);
                    end
                },
                Line2 = {
                    order = 1.2, type = "select", width = 1.5,
                    name = addon.L["Line"] .. " 2",
                    values = timeDisplaysLine2,
                    get = function () return addon.Options.db.EventAlert.TimeDisplay.Line2; end,
                    set = function(_, value)
                        if addon.Options.db.EventAlert.TimeDisplay.Line2 == value then return; end;
                        addon.Options.db.EventAlert.TimeDisplay.Line2 = value;
                        for _, sideButton in next, addon.GUI.SideButtons do
                            sideButton:UpdateRuntime();
                        end
                        options.Debug(addon.L["Line"] .. " 1", addon.Options.db.EventAlert.TimeDisplay.Line2);
                    end
                }
            }
        },
        DateTimeFormat = {
            name = addon.L["Date and Time format"],
            type = "group",
            inline = true,
            order = 3,
            args = {
                StartTimeAndEndTime = {
                    order = 1, type = "header",
                    name = addon.L["Start Time"] .. " & " .. addon.L["End Time"]
                },
                StartTimeAndEndTimePresets = {
                    order = 2.1, type = "select", width = 1.5,
                    name = addon.L["Presets"],
                    values = startTimeAndEndTimeDateTimeValues,
                    get = function ()
                        for i, format in next, startTimeAndEndTimeDateTimeFormats do
                            if format == addon.Options.db.EventAlert.DateTimeFormat.StartTimeAndEndTime then
                                return i;
                            end
                        end
                        return #startTimeAndEndTimeDateTimeFormats;
                    end,
                    set = function(_, value)
                        local custom = LibStub("AceConfigRegistry-3.0"):GetOptionsTable(addon.MetaData.Title, "cmd", "KROWIAF-0.0").args.EventAlert.args.DateTimeFormat.args.StartTimeAndEndTimeCustom; -- cmd and KROWIAF-0.0 are just to make the function work
                        custom.set(nil, startTimeAndEndTimeDateTimeFormats[value]);
                        options.Debug(addon.L["Presets"], addon.Options.db.EventAlert.DateTimeFormat.StartTimeAndEndTime);
                    end
                },
                StartTimeAndEndTimeCustom = {
                    order = 2.2, type = "input", width = 1.5,
                    name = addon.L["Custom"],
                    get = function () return addon.Options.db.EventAlert.DateTimeFormat.StartTimeAndEndTime; end,
                    set = function(_, value)
                        if addon.Options.db.EventAlert.DateTimeFormat.StartTimeAndEndTime == value then return; end;
                        addon.Options.db.EventAlert.DateTimeFormat.StartTimeAndEndTime = value;
                        for _, sideButton in next, addon.GUI.SideButtons do
                            sideButton:UpdateRuntime();
                        end
                        options.Debug(addon.L["Custom"], addon.Options.db.EventAlert.DateTimeFormat.StartTimeAndEndTime);
                    end
                },
                DateTimeFormattingGuideLine = {
                    order = 3, type = "header",
                    name = addon.L["Date and Time formatting guide"]
                },
                DateTimeFormattingGuide = {
                    order = 4, type = "description",
                    name = core.ReplaceVars{addon.L["Date and Time formatting guide Desc"],
                                            a = string.format(addon.Yellow, "%a"),
                                            A = string.format(addon.Yellow, "%A"),
                                            b = string.format(addon.Yellow, "%b"),
                                            B = string.format(addon.Yellow, "%B"),
                                            c = string.format(addon.Yellow, "%c"),
                                            C = string.format(addon.Yellow, "%C"),
                                            d = string.format(addon.Yellow, "%d"),
                                            D = string.format(addon.Yellow, "%D"),
                                            e = string.format(addon.Yellow, "%e"),
                                            H = string.format(addon.Yellow, "%H"),
                                            I = string.format(addon.Yellow, "%I"),
                                            j = string.format(addon.Yellow, "%j"),
                                            k = string.format(addon.Yellow, "%k"),
                                            l = string.format(addon.Yellow, "%l"),
                                            m = string.format(addon.Yellow, "%m"),
                                            M = string.format(addon.Yellow, "%M"),
                                            p = string.format(addon.Yellow, "%p"),
                                            P = string.format(addon.Yellow, "%P"),
                                            R = string.format(addon.Yellow, "%R"),
                                            s = string.format(addon.Yellow, "%s"),
                                            S = string.format(addon.Yellow, "%S"),
                                            u = string.format(addon.Yellow, "%u"),
                                            U = string.format(addon.Yellow, "%U"),
                                            w = string.format(addon.Yellow, "%w"),
                                            W = string.format(addon.Yellow, "%W"),
                                            x = string.format(addon.Yellow, "%x"),
                                            X = string.format(addon.Yellow, "%X"),
                                            y = string.format(addon.Yellow, "%y"),
                                            Y = string.format(addon.Yellow, "%Y"),
                                            z = string.format(addon.Yellow, "%z"),
                                            Z = string.format(addon.Yellow, "%Z")}
                }
            }
        }
    }
};