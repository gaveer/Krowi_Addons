KrowiAF = {
    Data = {};
    IsAlliance = UnitFactionGroup("player") == "Alliance";
    IsHorde = UnitFactionGroup("player") == "Horde";
    IsNeutral = UnitFactionGroup("player") == "Neutral";
};

function KrowiAF.Enum(table)
    for i = 1, #table do
        table[table[i]] = i
    end
    return table
end