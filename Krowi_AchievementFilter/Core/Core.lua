-- [[ Namespaces ]] --
local _, addon = ...;
addon.Core = {};
local core = addon.Core;

function core.InjectMetatable(tbl, meta)
    return setmetatable(tbl, setmetatable(meta, getmetatable(tbl)));
end

function core.ReplaceVars(str, vars)
    -- Allow replace_vars{str, vars} syntax as well as replace_vars(str, {vars})
    if not vars then
        vars = str
        str = vars[1]
    end
    return string.gsub(str, "({([^}]+)})", function(whole, i)
        return vars[i] or whole
    end);
end