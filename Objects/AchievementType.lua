function enum(table)
    for i = 1, #table do
        table[table[i]] = i
    end
    return table
end

KrowiAF.AchievementType = enum {
    "Default",
    "FoS"
 };