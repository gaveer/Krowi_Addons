function enum(table)
    for i = 1, #table do
        table[table[i]] = i
    end
    return table
end

AchievementType = enum {
    "Default",
    "FoS"
 };