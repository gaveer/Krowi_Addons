-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;
local objects = addon.Objects;

objects.Covenant = core.Enum{
    "None", -- Also nil
    "Kyrian",
    "Venthyr",
    "NightFae",
    "Necrolord"
};