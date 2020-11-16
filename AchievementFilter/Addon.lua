KrowiAF = {
    Data = {};
    Categories_Old = {};
    AchievementFunctions = {};
    Compatibility = {
        Overachiever_Tabs = false;
    };
};

function KrowiAF.Enum(table)
    for i = 1, #table do
        table[table[i]] = i
    end
    return table
end