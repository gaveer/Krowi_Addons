function enum(table)
    for i = 1, #table do
        table[table[i]] = i
    end
    return table
end

AchievementFilter.AchievementType = enum {
    "Default",
    "FoS"
 };