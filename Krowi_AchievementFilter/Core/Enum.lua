-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;

function core.Enum(table)
    for i, element in next, table do
        local tmp = element;
        table[tmp] = i;
    end
    return table;
end