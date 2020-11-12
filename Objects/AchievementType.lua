function KrowiAF.Enum(table)
    for i = 1, #table do
        table[table[i]] = i
    end
    return table
end

KrowiAF.AchievementType = KrowiAF.Enum {
    "Default",
    "FoS"
 };