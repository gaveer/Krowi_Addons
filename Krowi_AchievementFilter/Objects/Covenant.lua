-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;
local objects = addon.Objects;

objects.Covenant = core.Enum{
    "NoCovenant", -- Also nil
    "Kyrian",
    "Venthyr",
    "NightFae",
    "Necrolord"
};

local covenant = objects.Covenant;

function covenant.GetActiveCovenant()
    return C_Covenants.GetActiveCovenantID() + 1; -- 1 offset since Covenant Enum is 1 based (lua) and Covenant Database Table 0 based 
end