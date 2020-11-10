function Debug(value)
    if AFSetting and AFSetting.EnableDebugInfo then
        print(value);
    end
end

function DebugTable(table, level)
    if table then
        if not level then
            level = 0;
        end
        for k, v in pairs(table) do
            local indent = "";
            for i = 0, level do
                indent = indent .. "-";
            end
            Debug(indent .. " " .. tostring(k) .. " - " .. tostring(v));
            if type(v) == "table" then
                DebugTable(v, level + 1);
            end
        end
    end
end