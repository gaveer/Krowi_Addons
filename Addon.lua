KrowiAF = {
    Data = {};
    Categories = {};
    AchievementFunctions = {};
};

function KrowiAF.Enum(table)
    for i = 1, #table do
        table[table[i]] = i
    end
    return table
end