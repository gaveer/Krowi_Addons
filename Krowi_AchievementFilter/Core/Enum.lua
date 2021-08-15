-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;

-- [[ Enum class ]] --
function core.Enum(table)
    for i, element in next, table do
        local tmp = element;
        table[tmp] = i;
    end
    return table;
end

-- This one does not have indexes and only the elements as name and value
function core.Enum2(table)
    for i = #table, 1, -1 do
        local tmp = table[i];
        table[i] = nil;
        table[tmp] = tmp;
    end
    return table;
end