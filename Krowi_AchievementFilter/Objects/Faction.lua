-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;
local objects = addon.Objects;

objects.Faction = core.Enum{
    "NoFaction", -- Also nil
    "Alliance",
    "Horde"
};