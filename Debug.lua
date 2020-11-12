function KrowiAF.Debug(value)
    if AFSetting and AFSetting.EnableDebugInfo then
        print(value);
    end
end

function KrowiAF.DebugTable(tbl, charactersPerLine)
    if AFSetting and AFSetting.EnableDebugInfo then
        if type(charactersPerLine) ~= "number" then
            charactersPerLine = 100;
        end
        local printTable = string.split(table.tostring(tbl, charactersPerLine),"\n");
        for i in next, printTable do
            print(printTable[i]);
        end
    end
end