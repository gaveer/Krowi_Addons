-- [[ Exported at 2021-12-04 11-07-32 ]] --
-- [[ This code is automatically generated as an export from ]] --
-- [[ an SQLite database and is not meant for manual edit. ]] --

-- [[ Namespaces ]] --
local _, addon = ...;
local data = addon.Data;
data.ExportedNextPatchAchievements = {};
local exportedNextPatchAchievements = data.ExportedNextPatchAchievements;

function exportedNextPatchAchievements.Load(a)
    for i, _ in next, a do
        a[i] = nil;
    end

end

