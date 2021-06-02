-- [[ Exported at 2021-05-29 17-18-20 ]] --
-- [[ This code is automatically generated as an export from ]] --
-- [[ an SQLite database and is not meant for manual edit. ]] --

-- [[ Namespaces ]] --
local _, addon = ...;
local data = addon.Data;
data.Maps = {};
local maps = data.Maps;

function maps.Load(maps, achievements)
    for i, _ in next, maps do
        maps[i] = nil;
    end

    maps[1] = {Achievements = {achievements[1186], achievements[1186], achievements[728], }};
    maps[2] = {Achievements = {achievements[1186], achievements[1186], achievements[728], }};
    maps[3] = {Achievements = {achievements[1186], achievements[1186], achievements[728], }};
    maps[4] = {Achievements = {achievements[1186], achievements[1186], achievements[728], }};
    maps[5] = {Achievements = {achievements[1186], achievements[1186], achievements[728], }};
end

