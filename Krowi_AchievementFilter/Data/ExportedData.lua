-- [[ Exported at 2021-04-27 22-43-25 ]] --
-- [[ This code is automatically generated as an export from ]] --
-- [[ an SQLite database and is not meant for manual edit. ]] --

-- [[ Namespaces ]] --
local _, addon = ...;
local objects = addon.Objects;
local faction = objects.Faction;
local covenant = objects.Covenant;
local achievementCategory = objects.AchievementCategory;
local achievement = objects.Achievement;
addon.ExportedData = {};
local exportedData = addon.ExportedData

local function InsertAndReturn(table, value)
    tinsert(table, value);
    return value;
end

function exportedData.Load(categories, achievements)
    for i, _ in next, categories do
        categories[i] = nil;
    end
    for i, _ in next, achievements do
        achievements[i] = nil;
    end

    local tmpCategories = {};
    tmpCategories[433] = InsertAndReturn(categories, achievementCategory:New(addon.L["Current Zone"])); -- Current Zone
    tmpCategories[433].AlwaysVisible = true;
    tmpCategories[433].HasFlexibleData = true;
    local currentZoneCategory = tmpCategories[433];
    tmpCategories[1] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(14864)))); -- Classic
    tmpCategories[648] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[1]:AddCategory(tmpCategories[648]);
    tmpCategories[648]:AddAchievement(InsertAndReturn(achievements, achievement:New(1206)));
    tmpCategories[648]:AddAchievement(InsertAndReturn(achievements, achievement:New(944)));
    tmpCategories[648]:AddAchievement(InsertAndReturn(achievements, achievement:New(942, faction.Alliance)));
    tmpCategories[648]:AddAchievement(InsertAndReturn(achievements, achievement:New(943, faction.Horde)));
    tmpCategories[687] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(13).name)); -- Eastern Kingdoms
    tmpCategories[648]:AddCategory(tmpCategories[687]);
    tmpCategories[687]:AddAchievement(InsertAndReturn(achievements, achievement:New(1676)));
    tmpCategories[687]:AddAchievement(InsertAndReturn(achievements, achievement:New(42)));
    tmpCategories[721] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(27).name, {27, 28, 29, 30, 31, 427, 469})); -- Dun Morogh
    tmpCategories[687]:AddCategory(tmpCategories[721]);
    tmpCategories[723] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[721]:AddCategory(tmpCategories[723]);
    tmpCategories[723]:AddAchievement(InsertAndReturn(achievements, achievement:New(627)));
    tmpCategories[722] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(37).name, {37, 38, 39, 40})); -- Elwynn Forest
    tmpCategories[687]:AddCategory(tmpCategories[722]);
    tmpCategories[724] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[722]:AddCategory(tmpCategories[724]);
    tmpCategories[724]:AddAchievement(InsertAndReturn(achievements, achievement:New(776)));
    tmpCategories[725] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(18).name, {18, 19, 20, 465})); -- Tirisfal Glades
    tmpCategories[687]:AddCategory(tmpCategories[725]);
    tmpCategories[726] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[725]:AddCategory(tmpCategories[726]);
    tmpCategories[726]:AddAchievement(InsertAndReturn(achievements, achievement:New(768)));
    tmpCategories[651] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(52).name, {52, 53, 54, 55})); -- Westfall
    tmpCategories[687]:AddCategory(tmpCategories[651]);
    tmpCategories[653] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[651]:AddCategory(tmpCategories[653]);
    tmpCategories[653]:AddAchievement(InsertAndReturn(achievements, achievement:New(4903, faction.Alliance)));
    tmpCategories[653]:AddAchievement(InsertAndReturn(achievements, achievement:New(12455, faction.Alliance)));
    tmpCategories[730] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[651]:AddCategory(tmpCategories[730]);
    tmpCategories[730]:AddAchievement(InsertAndReturn(achievements, achievement:New(802)));
    tmpCategories[655] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(48).name, {48})); -- Loch Modan
    tmpCategories[687]:AddCategory(tmpCategories[655]);
    tmpCategories[657] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[655]:AddCategory(tmpCategories[657]);
    tmpCategories[657]:AddAchievement(InsertAndReturn(achievements, achievement:New(4899, faction.Alliance)));
    tmpCategories[657]:AddAchievement(InsertAndReturn(achievements, achievement:New(12456, faction.Alliance)));
    tmpCategories[729] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[655]:AddCategory(tmpCategories[729]);
    tmpCategories[729]:AddAchievement(InsertAndReturn(achievements, achievement:New(779)));
    tmpCategories[681] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(21).name, {21})); -- Silverpine Forest
    tmpCategories[687]:AddCategory(tmpCategories[681]);
    tmpCategories[682] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[681]:AddCategory(tmpCategories[682]);
    tmpCategories[682]:AddAchievement(InsertAndReturn(achievements, achievement:New(4894, faction.Horde)));
    tmpCategories[732] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[681]:AddCategory(tmpCategories[732]);
    tmpCategories[732]:AddAchievement(InsertAndReturn(achievements, achievement:New(769)));
    tmpCategories[678] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(49).name, {49})); -- Redridge Mountains
    tmpCategories[687]:AddCategory(tmpCategories[678]);
    tmpCategories[677] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[678]:AddCategory(tmpCategories[677]);
    tmpCategories[677]:AddAchievement(InsertAndReturn(achievements, achievement:New(4902, faction.Alliance)));
    tmpCategories[734] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[678]:AddCategory(tmpCategories[734]);
    tmpCategories[734]:AddAchievement(InsertAndReturn(achievements, achievement:New(780)));
    tmpCategories[652] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(47).name, {47})); -- Duskwood
    tmpCategories[687]:AddCategory(tmpCategories[652]);
    tmpCategories[654] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[652]:AddCategory(tmpCategories[654]);
    tmpCategories[654]:AddAchievement(InsertAndReturn(achievements, achievement:New(12430, faction.Alliance)));
    tmpCategories[654]:AddAchievement(InsertAndReturn(achievements, achievement:New(12455, faction.Alliance)));
    tmpCategories[735] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[652]:AddCategory(tmpCategories[735]);
    tmpCategories[735]:AddAchievement(InsertAndReturn(achievements, achievement:New(778)));
    tmpCategories[656] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(56).name, {56})); -- Wetlands
    tmpCategories[687]:AddCategory(tmpCategories[656]);
    tmpCategories[658] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[656]:AddCategory(tmpCategories[658]);
    tmpCategories[658]:AddAchievement(InsertAndReturn(achievements, achievement:New(12429, faction.Alliance)));
    tmpCategories[658]:AddAchievement(InsertAndReturn(achievements, achievement:New(12456, faction.Alliance)));
    tmpCategories[731] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[656]:AddCategory(tmpCategories[731]);
    tmpCategories[731]:AddAchievement(InsertAndReturn(achievements, achievement:New(841)));
    tmpCategories[671] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(25).name, {25})); -- Hillsbrad Foothills
    tmpCategories[687]:AddCategory(tmpCategories[671]);
    tmpCategories[672] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[671]:AddCategory(tmpCategories[672]);
    tmpCategories[672]:AddAchievement(InsertAndReturn(achievements, achievement:New(4895, faction.Horde)));
    tmpCategories[736] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[671]:AddCategory(tmpCategories[736]);
    tmpCategories[736]:AddAchievement(InsertAndReturn(achievements, achievement:New(772)));
    tmpCategories[649] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(14).name, {14})); -- Arathi Highlands
    tmpCategories[687]:AddCategory(tmpCategories[649]);
    tmpCategories[650] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[649]:AddCategory(tmpCategories[650]);
    tmpCategories[650]:AddAchievement(InsertAndReturn(achievements, achievement:New(4896)));
    tmpCategories[741] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[649]:AddCategory(tmpCategories[741]);
    tmpCategories[741]:AddAchievement(InsertAndReturn(achievements, achievement:New(761)));
    tmpCategories[675] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(50).name, {50})); -- Northern Stranglethorn
    tmpCategories[687]:AddCategory(tmpCategories[675]);
    tmpCategories[676] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[675]:AddCategory(tmpCategories[676]);
    tmpCategories[676]:AddAchievement(InsertAndReturn(achievements, achievement:New(4906)));
    tmpCategories[676]:AddAchievement(InsertAndReturn(achievements, achievement:New(940)));
    tmpCategories[676]:AddAchievement(InsertAndReturn(achievements, achievement:New(941)));
    tmpCategories[739] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[675]:AddCategory(tmpCategories[739]);
    tmpCategories[739]:AddAchievement(InsertAndReturn(achievements, achievement:New(781)));
    tmpCategories[665] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(210).name, {210})); -- The Cape of Stranglethorn
    tmpCategories[687]:AddCategory(tmpCategories[665]);
    tmpCategories[666] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[665]:AddCategory(tmpCategories[666]);
    tmpCategories[666]:AddAchievement(InsertAndReturn(achievements, achievement:New(4905)));
    tmpCategories[740] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[665]:AddCategory(tmpCategories[740]);
    tmpCategories[740]:AddAchievement(InsertAndReturn(achievements, achievement:New(4995)));
    tmpCategories[685] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(22).name, {22})); -- Western Plaguelands
    tmpCategories[687]:AddCategory(tmpCategories[685]);
    tmpCategories[686] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[685]:AddCategory(tmpCategories[686]);
    tmpCategories[686]:AddAchievement(InsertAndReturn(achievements, achievement:New(4893)));
    tmpCategories[746] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[685]:AddCategory(tmpCategories[746]);
    tmpCategories[746]:AddAchievement(InsertAndReturn(achievements, achievement:New(770)));
    tmpCategories[673] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(26).name, {26})); -- The Hinterlands
    tmpCategories[687]:AddCategory(tmpCategories[673]);
    tmpCategories[674] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[673]:AddCategory(tmpCategories[674]);
    tmpCategories[674]:AddAchievement(InsertAndReturn(achievements, achievement:New(4897)));
    tmpCategories[742] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[673]:AddCategory(tmpCategories[742]);
    tmpCategories[742]:AddAchievement(InsertAndReturn(achievements, achievement:New(773)));
    tmpCategories[667] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(23).name, {23})); -- Eastern Plaguelands
    tmpCategories[687]:AddCategory(tmpCategories[667]);
    tmpCategories[668] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[667]:AddCategory(tmpCategories[668]);
    tmpCategories[668]:AddAchievement(InsertAndReturn(achievements, achievement:New(4892)));
    tmpCategories[668]:AddAchievement(InsertAndReturn(achievements, achievement:New(5442)));
    tmpCategories[747] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[667]:AddCategory(tmpCategories[747]);
    tmpCategories[747]:AddAchievement(InsertAndReturn(achievements, achievement:New(771)));
    tmpCategories[778] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[667]:AddCategory(tmpCategories[778]);
    tmpCategories[778]:AddAchievement(InsertAndReturn(achievements, achievement:New(946)));
    tmpCategories[778]:AddAchievement(InsertAndReturn(achievements, achievement:New(945)));
    tmpCategories[659] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(15).name, {15, 16})); -- Badlands
    tmpCategories[687]:AddCategory(tmpCategories[659]);
    tmpCategories[661] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[659]:AddCategory(tmpCategories[661]);
    tmpCategories[661]:AddAchievement(InsertAndReturn(achievements, achievement:New(4900)));
    tmpCategories[661]:AddAchievement(InsertAndReturn(achievements, achievement:New(5444)));
    tmpCategories[738] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[659]:AddCategory(tmpCategories[738]);
    tmpCategories[738]:AddAchievement(InsertAndReturn(achievements, achievement:New(765)));
    tmpCategories[679] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(32).name, {32, 35})); -- Searing Gorge
    tmpCategories[687]:AddCategory(tmpCategories[679]);
    tmpCategories[680] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[679]:AddCategory(tmpCategories[680]);
    tmpCategories[680]:AddAchievement(InsertAndReturn(achievements, achievement:New(4910)));
    tmpCategories[743] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[679]:AddCategory(tmpCategories[743]);
    tmpCategories[743]:AddAchievement(InsertAndReturn(achievements, achievement:New(774)));
    tmpCategories[683] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(51).name, {51})); -- Swamp of Sorrows
    tmpCategories[687]:AddCategory(tmpCategories[683]);
    tmpCategories[684] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[683]:AddCategory(tmpCategories[684]);
    tmpCategories[684]:AddAchievement(InsertAndReturn(achievements, achievement:New(4904)));
    tmpCategories[737] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[683]:AddCategory(tmpCategories[737]);
    tmpCategories[737]:AddAchievement(InsertAndReturn(achievements, achievement:New(782)));
    tmpCategories[663] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(36).name, {33, 34, 36})); -- Burning Steppes
    tmpCategories[687]:AddCategory(tmpCategories[663]);
    tmpCategories[664] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[663]:AddCategory(tmpCategories[664]);
    tmpCategories[664]:AddAchievement(InsertAndReturn(achievements, achievement:New(4901)));
    tmpCategories[745] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[663]:AddCategory(tmpCategories[745]);
    tmpCategories[745]:AddAchievement(InsertAndReturn(achievements, achievement:New(775)));
    tmpCategories[660] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(17).name, {17})); -- Blasted Lands
    tmpCategories[687]:AddCategory(tmpCategories[660]);
    tmpCategories[662] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[660]:AddCategory(tmpCategories[662]);
    tmpCategories[662]:AddAchievement(InsertAndReturn(achievements, achievement:New(4909)));
    tmpCategories[744] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[660]:AddCategory(tmpCategories[744]);
    tmpCategories[744]:AddAchievement(InsertAndReturn(achievements, achievement:New(766)));
    tmpCategories[748] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(42).name, {42, 43, 44, 45, 46})); -- Deadwind Pass
    tmpCategories[687]:AddCategory(tmpCategories[748]);
    tmpCategories[749] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[748]:AddCategory(tmpCategories[749]);
    tmpCategories[749]:AddAchievement(InsertAndReturn(achievements, achievement:New(777)));
    tmpCategories[688] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(12).name)); -- Kalimdor
    tmpCategories[648]:AddCategory(tmpCategories[688]);
    tmpCategories[688]:AddAchievement(InsertAndReturn(achievements, achievement:New(1678)));
    tmpCategories[688]:AddAchievement(InsertAndReturn(achievements, achievement:New(43)));
    tmpCategories[756] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(57).name, {57})); -- Teldrassil
    tmpCategories[688]:AddCategory(tmpCategories[756]);
    tmpCategories[757] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[756]:AddCategory(tmpCategories[757]);
    tmpCategories[757]:AddAchievement(InsertAndReturn(achievements, achievement:New(842)));
    tmpCategories[752] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1).name, {1, 2, 3, 4, 5, 6, 461})); -- Durotar
    tmpCategories[688]:AddCategory(tmpCategories[752]);
    tmpCategories[753] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[752]:AddCategory(tmpCategories[753]);
    tmpCategories[753]:AddAchievement(InsertAndReturn(achievements, achievement:New(728)));
    tmpCategories[754] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(7).name, {7, 8, 9, 462})); -- Mulgore
    tmpCategories[688]:AddCategory(tmpCategories[754]);
    tmpCategories[755] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[754]:AddCategory(tmpCategories[755]);
    tmpCategories[755]:AddAchievement(InsertAndReturn(achievements, achievement:New(736)));
    tmpCategories[774] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(80).name, {80})); -- Moonglade
    tmpCategories[688]:AddCategory(tmpCategories[774]);
    tmpCategories[775] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[774]:AddCategory(tmpCategories[775]);
    tmpCategories[775]:AddAchievement(InsertAndReturn(achievements, achievement:New(855)));
    tmpCategories[705] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(10).name, {10, 11})); -- Northern Barrens
    tmpCategories[688]:AddCategory(tmpCategories[705]);
    tmpCategories[706] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[705]:AddCategory(tmpCategories[706]);
    tmpCategories[706]:AddAchievement(InsertAndReturn(achievements, achievement:New(4933, faction.Horde)));
    tmpCategories[760] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[705]:AddCategory(tmpCategories[760]);
    tmpCategories[760]:AddAchievement(InsertAndReturn(achievements, achievement:New(750)));
    tmpCategories[695] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(62).name, {62})); -- Darkshore
    tmpCategories[688]:AddCategory(tmpCategories[695]);
    tmpCategories[696] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[695]:AddCategory(tmpCategories[696]);
    tmpCategories[696]:AddAchievement(InsertAndReturn(achievements, achievement:New(4928, faction.Alliance)));
    tmpCategories[696]:AddAchievement(InsertAndReturn(achievements, achievement:New(5453, faction.Alliance)));
    tmpCategories[762] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[695]:AddCategory(tmpCategories[762]);
    tmpCategories[762]:AddAchievement(InsertAndReturn(achievements, achievement:New(844)));
    tmpCategories[691] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(76).name, {76})); -- Azshara
    tmpCategories[688]:AddCategory(tmpCategories[691]);
    tmpCategories[692] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[691]:AddCategory(tmpCategories[692]);
    tmpCategories[692]:AddAchievement(InsertAndReturn(achievements, achievement:New(4927, faction.Horde)));
    tmpCategories[692]:AddAchievement(InsertAndReturn(achievements, achievement:New(5454, faction.Horde)));
    tmpCategories[692]:AddAchievement(InsertAndReturn(achievements, achievement:New(5448)));
    tmpCategories[692]:AddAchievement(InsertAndReturn(achievements, achievement:New(5546)));
    tmpCategories[692]:AddAchievement(InsertAndReturn(achievements, achievement:New(5547)));
    tmpCategories[771] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[691]:AddCategory(tmpCategories[771]);
    tmpCategories[771]:AddAchievement(InsertAndReturn(achievements, achievement:New(852)));
    tmpCategories[689] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(63).name, {63})); -- Ashenvale
    tmpCategories[688]:AddCategory(tmpCategories[689]);
    tmpCategories[690] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[689]:AddCategory(tmpCategories[690]);
    tmpCategories[690]:AddAchievement(InsertAndReturn(achievements, achievement:New(4925, faction.Alliance)));
    tmpCategories[690]:AddAchievement(InsertAndReturn(achievements, achievement:New(4976, faction.Horde)));
    tmpCategories[764] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[689]:AddCategory(tmpCategories[764]);
    tmpCategories[764]:AddAchievement(InsertAndReturn(achievements, achievement:New(845)));
    tmpCategories[709] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(65).name, {65})); -- Stonetalon Mountains
    tmpCategories[688]:AddCategory(tmpCategories[709]);
    tmpCategories[710] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[709]:AddCategory(tmpCategories[710]);
    tmpCategories[710]:AddAchievement(InsertAndReturn(achievements, achievement:New(4936, faction.Alliance)));
    tmpCategories[710]:AddAchievement(InsertAndReturn(achievements, achievement:New(4980, faction.Horde)));
    tmpCategories[766] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[709]:AddCategory(tmpCategories[766]);
    tmpCategories[766]:AddAchievement(InsertAndReturn(achievements, achievement:New(847)));
    tmpCategories[697] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(66).name, {66, 67, 68})); -- Desolace
    tmpCategories[688]:AddCategory(tmpCategories[697]);
    tmpCategories[698] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[697]:AddCategory(tmpCategories[698]);
    tmpCategories[698]:AddAchievement(InsertAndReturn(achievements, achievement:New(4930)));
    tmpCategories[767] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[697]:AddCategory(tmpCategories[767]);
    tmpCategories[767]:AddAchievement(InsertAndReturn(achievements, achievement:New(848)));
    tmpCategories[711] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(199).name, {199})); -- Southern Barrens
    tmpCategories[688]:AddCategory(tmpCategories[711]);
    tmpCategories[712] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[711]:AddCategory(tmpCategories[712]);
    tmpCategories[712]:AddAchievement(InsertAndReturn(achievements, achievement:New(4937, faction.Alliance)));
    tmpCategories[712]:AddAchievement(InsertAndReturn(achievements, achievement:New(4981, faction.Horde)));
    tmpCategories[761] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[711]:AddCategory(tmpCategories[761]);
    tmpCategories[761]:AddAchievement(InsertAndReturn(achievements, achievement:New(4996)));
    tmpCategories[703] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(69).name, {69})); -- Feralas
    tmpCategories[688]:AddCategory(tmpCategories[703]);
    tmpCategories[704] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[703]:AddCategory(tmpCategories[704]);
    tmpCategories[704]:AddAchievement(InsertAndReturn(achievements, achievement:New(4932, faction.Alliance)));
    tmpCategories[704]:AddAchievement(InsertAndReturn(achievements, achievement:New(4979, faction.Horde)));
    tmpCategories[769] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[703]:AddCategory(tmpCategories[769]);
    tmpCategories[769]:AddAchievement(InsertAndReturn(achievements, achievement:New(849)));
    tmpCategories[699] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(70).name, {70})); -- Dustwallow Marsh
    tmpCategories[688]:AddCategory(tmpCategories[699]);
    tmpCategories[700] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[699]:AddCategory(tmpCategories[700]);
    tmpCategories[700]:AddAchievement(InsertAndReturn(achievements, achievement:New(4929, faction.Alliance)));
    tmpCategories[700]:AddAchievement(InsertAndReturn(achievements, achievement:New(4978, faction.Horde)));
    tmpCategories[768] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[699]:AddCategory(tmpCategories[768]);
    tmpCategories[768]:AddAchievement(InsertAndReturn(achievements, achievement:New(850)));
    tmpCategories[715] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(64).name, {64})); -- Thousand Needles
    tmpCategories[688]:AddCategory(tmpCategories[715]);
    tmpCategories[716] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[715]:AddCategory(tmpCategories[716]);
    tmpCategories[716]:AddAchievement(InsertAndReturn(achievements, achievement:New(4938)));
    tmpCategories[765] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[715]:AddCategory(tmpCategories[765]);
    tmpCategories[765]:AddAchievement(InsertAndReturn(achievements, achievement:New(846)));
    tmpCategories[713] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(71).name, {71, 72, 73})); -- Tanaris
    tmpCategories[688]:AddCategory(tmpCategories[713]);
    tmpCategories[714] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[713]:AddCategory(tmpCategories[714]);
    tmpCategories[714]:AddAchievement(InsertAndReturn(achievements, achievement:New(4935)));
    tmpCategories[770] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[713]:AddCategory(tmpCategories[770]);
    tmpCategories[770]:AddAchievement(InsertAndReturn(achievements, achievement:New(851)));
    tmpCategories[701] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(77).name, {77})); -- Felwood
    tmpCategories[688]:AddCategory(tmpCategories[701]);
    tmpCategories[702] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[701]:AddCategory(tmpCategories[702]);
    tmpCategories[702]:AddAchievement(InsertAndReturn(achievements, achievement:New(4931)));
    tmpCategories[772] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[701]:AddCategory(tmpCategories[772]);
    tmpCategories[772]:AddAchievement(InsertAndReturn(achievements, achievement:New(853)));
    tmpCategories[717] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(78).name, {78, 79})); -- Un'Goro Crater
    tmpCategories[688]:AddCategory(tmpCategories[717]);
    tmpCategories[718] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[717]:AddCategory(tmpCategories[718]);
    tmpCategories[718]:AddAchievement(InsertAndReturn(achievements, achievement:New(4939)));
    tmpCategories[773] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[717]:AddCategory(tmpCategories[773]);
    tmpCategories[773]:AddAchievement(InsertAndReturn(achievements, achievement:New(854)));
    tmpCategories[707] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(81).name, {81, 82})); -- Silithus
    tmpCategories[688]:AddCategory(tmpCategories[707]);
    tmpCategories[708] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[707]:AddCategory(tmpCategories[708]);
    tmpCategories[708]:AddAchievement(InsertAndReturn(achievements, achievement:New(4934)));
    tmpCategories[776] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[707]:AddCategory(tmpCategories[776]);
    tmpCategories[776]:AddAchievement(InsertAndReturn(achievements, achievement:New(856)));
    tmpCategories[783] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[707]:AddCategory(tmpCategories[783]);
    tmpCategories[783]:AddAchievement(InsertAndReturn(achievements, achievement:New(953, faction.Horde)));
    tmpCategories[719] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(83).name, {83})); -- Winterspring
    tmpCategories[688]:AddCategory(tmpCategories[719]);
    tmpCategories[720] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[719]:AddCategory(tmpCategories[720]);
    tmpCategories[720]:AddAchievement(InsertAndReturn(achievements, achievement:New(4940)));
    tmpCategories[720]:AddAchievement(InsertAndReturn(achievements, achievement:New(5443)));
    tmpCategories[777] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[719]:AddCategory(tmpCategories[777]);
    tmpCategories[777]:AddAchievement(InsertAndReturn(achievements, achievement:New(857)));
    tmpCategories[2] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15272)))); -- Dungeons
    tmpCategories[1]:AddCategory(tmpCategories[2]);
    tmpCategories[2]:AddAchievement(InsertAndReturn(achievements, achievement:New(1283)));
    tmpCategories[5] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(226)), {213})); -- Ragefire Chasm
    tmpCategories[2]:AddCategory(tmpCategories[5]);
    tmpCategories[5]:AddAchievement(InsertAndReturn(achievements, achievement:New(629)));
    tmpCategories[8] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(240)), {279})); -- Wailing Caverns
    tmpCategories[2]:AddCategory(tmpCategories[8]);
    tmpCategories[8]:AddAchievement(InsertAndReturn(achievements, achievement:New(630)));
    tmpCategories[10] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(227)), {221, 222, 223})); -- Blackfathom Deeps
    tmpCategories[2]:AddCategory(tmpCategories[10]);
    tmpCategories[10]:AddAchievement(InsertAndReturn(achievements, achievement:New(632)));
    tmpCategories[11] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(238)), {225})); -- The Stockade
    tmpCategories[2]:AddCategory(tmpCategories[11]);
    tmpCategories[11]:AddAchievement(InsertAndReturn(achievements, achievement:New(633)));
    tmpCategories[12] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(231)), {226, 227, 228, 229})); -- Gnomeregan
    tmpCategories[2]:AddCategory(tmpCategories[12]);
    tmpCategories[12]:AddAchievement(InsertAndReturn(achievements, achievement:New(634)));
    tmpCategories[13] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(233)), {301})); -- Razorfen Kraul
    tmpCategories[2]:AddCategory(tmpCategories[13]);
    tmpCategories[13]:AddAchievement(InsertAndReturn(achievements, achievement:New(635)));
    tmpCategories[14] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(234)), {300})); -- Razorfen Downs
    tmpCategories[2]:AddCategory(tmpCategories[14]);
    tmpCategories[14]:AddAchievement(InsertAndReturn(achievements, achievement:New(636)));
    tmpCategories[17] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(239)), {230, 231})); -- Uldaman
    tmpCategories[2]:AddCategory(tmpCategories[17]);
    tmpCategories[17]:AddAchievement(InsertAndReturn(achievements, achievement:New(638)));
    tmpCategories[18] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(241)), {219})); -- Zul'Farrak
    tmpCategories[2]:AddCategory(tmpCategories[18]);
    tmpCategories[18]:AddAchievement(InsertAndReturn(achievements, achievement:New(639)));
    tmpCategories[19] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(232)), {280, 281})); -- Maraudon
    tmpCategories[2]:AddCategory(tmpCategories[19]);
    tmpCategories[19]:AddAchievement(InsertAndReturn(achievements, achievement:New(640)));
    tmpCategories[20] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(237)), {220})); -- The Temple Of Atal'hakkar
    tmpCategories[2]:AddCategory(tmpCategories[20]);
    tmpCategories[20]:AddAchievement(InsertAndReturn(achievements, achievement:New(641)));
    tmpCategories[21] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(228)), {242, 243})); -- Blackrock Depths
    tmpCategories[2]:AddCategory(tmpCategories[21]);
    tmpCategories[21]:AddAchievement(InsertAndReturn(achievements, achievement:New(642)));
    tmpCategories[22] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(229)), {250, 251, 252, 253, 254, 255})); -- Lower Blackrock Spire
    tmpCategories[2]:AddCategory(tmpCategories[22]);
    tmpCategories[22]:AddAchievement(InsertAndReturn(achievements, achievement:New(643)));
    tmpCategories[23] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(230)), {235, 236, 237, 238, 239, 240})); -- Dire Maul
    tmpCategories[2]:AddCategory(tmpCategories[23]);
    tmpCategories[23]:AddAchievement(InsertAndReturn(achievements, achievement:New(644)));
    tmpCategories[25] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(236)), {317, 318})); -- Stratholme
    tmpCategories[2]:AddCategory(tmpCategories[25]);
    tmpCategories[25]:AddAchievement(InsertAndReturn(achievements, achievement:New(646)));
    tmpCategories[25]:AddAchievement(InsertAndReturn(achievements, achievement:New(729)));
    tmpCategories[3] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15271)))); -- Raids
    tmpCategories[1]:AddCategory(tmpCategories[3]);
    tmpCategories[3]:AddAchievement(InsertAndReturn(achievements, achievement:New(1285)));
    tmpCategories[7] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(741)), {232})); -- Molten Core
    tmpCategories[3]:AddCategory(tmpCategories[7]);
    tmpCategories[7]:AddAchievement(InsertAndReturn(achievements, achievement:New(686)));
    tmpCategories[779] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[7]:AddCategory(tmpCategories[779]);
    tmpCategories[779]:AddAchievement(InsertAndReturn(achievements, achievement:New(955)));
    tmpCategories[779]:AddAchievement(InsertAndReturn(achievements, achievement:New(2496, nil, nil, false)));
    tmpCategories[26] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(760)) .. " (" .. (GetCategoryInfo(15234)) .. ")", {248})); -- Onyxia's Lair (Legacy)
    tmpCategories[3]:AddCategory(tmpCategories[26]);
    tmpCategories[26]:AddAchievement(InsertAndReturn(achievements, achievement:New(684, nil, nil, false)));
    tmpCategories[27] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(742)), {287, 288, 289, 290})); -- Blackwing Lair
    tmpCategories[3]:AddCategory(tmpCategories[27]);
    tmpCategories[27]:AddAchievement(InsertAndReturn(achievements, achievement:New(685)));
    tmpCategories[28] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(76)) .. " (" .. (GetCategoryInfo(15234)) .. ")", {337})); -- Zul'Gurub (Legacy)
    tmpCategories[3]:AddCategory(tmpCategories[28]);
    tmpCategories[28]:AddAchievement(InsertAndReturn(achievements, achievement:New(560, nil, nil, false)));
    tmpCategories[28]:AddAchievement(InsertAndReturn(achievements, achievement:New(688, nil, nil, false)));
    tmpCategories[28]:AddAchievement(InsertAndReturn(achievements, achievement:New(880, nil, nil, false)));
    tmpCategories[28]:AddAchievement(InsertAndReturn(achievements, achievement:New(881, nil, nil, false)));
    tmpCategories[29] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(743)), {247})); -- Ruins of Ahn'Qiraj
    tmpCategories[3]:AddCategory(tmpCategories[29]);
    tmpCategories[29]:AddAchievement(InsertAndReturn(achievements, achievement:New(689)));
    tmpCategories[784] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)))); -- Reputation
    tmpCategories[29]:AddCategory(tmpCategories[784]);
    tmpCategories[784]:AddAchievement(InsertAndReturn(achievements, achievement:New(953, faction.Horde)));
    tmpCategories[30] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(744)), {319, 320, 321})); -- Temple of Ahn'Qiraj
    tmpCategories[3]:AddCategory(tmpCategories[30]);
    tmpCategories[30]:AddAchievement(InsertAndReturn(achievements, achievement:New(687)));
    tmpCategories[30]:AddAchievement(InsertAndReturn(achievements, achievement:New(424)));
    tmpCategories[780] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[30]:AddCategory(tmpCategories[780]);
    tmpCategories[780]:AddAchievement(InsertAndReturn(achievements, achievement:New(956)));
    tmpCategories[55] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(14865)))); -- The Burning Crusade
    tmpCategories[616] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[55]:AddCategory(tmpCategories[616]);
    tmpCategories[616]:AddAchievement(InsertAndReturn(achievements, achievement:New(1262)));
    tmpCategories[616]:AddAchievement(InsertAndReturn(achievements, achievement:New(1311)));
    tmpCategories[616]:AddAchievement(InsertAndReturn(achievements, achievement:New(1312)));
    tmpCategories[616]:AddAchievement(InsertAndReturn(achievements, achievement:New(44)));
    tmpCategories[616]:AddAchievement(InsertAndReturn(achievements, achievement:New(763, faction.Horde)));
    tmpCategories[616]:AddAchievement(InsertAndReturn(achievements, achievement:New(764, faction.Alliance)));
    tmpCategories[616]:AddAchievement(InsertAndReturn(achievements, achievement:New(894)));
    tmpCategories[616]:AddAchievement(InsertAndReturn(achievements, achievement:New(897)));
    tmpCategories[616]:AddAchievement(InsertAndReturn(achievements, achievement:New(902)));
    tmpCategories[758] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(97).name)); -- Azuremyst Isle
    tmpCategories[616]:AddCategory(tmpCategories[758]);
    tmpCategories[759] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[758]:AddCategory(tmpCategories[759]);
    tmpCategories[759]:AddAchievement(InsertAndReturn(achievements, achievement:New(860)));
    tmpCategories[693] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(106).name, {106})); -- Bloodmyst Isle
    tmpCategories[616]:AddCategory(tmpCategories[693]);
    tmpCategories[694] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)))); -- Quests
    tmpCategories[693]:AddCategory(tmpCategories[694]);
    tmpCategories[694]:AddAchievement(InsertAndReturn(achievements, achievement:New(4926, faction.Alliance)));
    tmpCategories[763] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[693]:AddCategory(tmpCategories[763]);
    tmpCategories[763]:AddAchievement(InsertAndReturn(achievements, achievement:New(861)));
    tmpCategories[727] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(94).name, {94})); -- Eversong Woods
    tmpCategories[616]:AddCategory(tmpCategories[727]);
    tmpCategories[728] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[727]:AddCategory(tmpCategories[728]);
    tmpCategories[728]:AddAchievement(InsertAndReturn(achievements, achievement:New(859)));
    tmpCategories[669] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(95).name, {95})); -- Ghostlands
    tmpCategories[616]:AddCategory(tmpCategories[669]);
    tmpCategories[670] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[669]:AddCategory(tmpCategories[670]);
    tmpCategories[670]:AddAchievement(InsertAndReturn(achievements, achievement:New(4908, faction.Horde)));
    tmpCategories[733] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[669]:AddCategory(tmpCategories[733]);
    tmpCategories[733]:AddAchievement(InsertAndReturn(achievements, achievement:New(858)));
    tmpCategories[617] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(100).name, {100})); -- Hellfire Peninsula
    tmpCategories[616]:AddCategory(tmpCategories[617]);
    tmpCategories[624] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[617]:AddCategory(tmpCategories[624]);
    tmpCategories[624]:AddAchievement(InsertAndReturn(achievements, achievement:New(1189, faction.Alliance)));
    tmpCategories[624]:AddAchievement(InsertAndReturn(achievements, achievement:New(1271, faction.Horde)));
    tmpCategories[631] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[617]:AddCategory(tmpCategories[631]);
    tmpCategories[631]:AddAchievement(InsertAndReturn(achievements, achievement:New(862)));
    tmpCategories[618] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(102).name, {102})); -- Zangarmarsh
    tmpCategories[616]:AddCategory(tmpCategories[618]);
    tmpCategories[625] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[618]:AddCategory(tmpCategories[625]);
    tmpCategories[625]:AddAchievement(InsertAndReturn(achievements, achievement:New(1190)));
    tmpCategories[632] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[618]:AddCategory(tmpCategories[632]);
    tmpCategories[632]:AddAchievement(InsertAndReturn(achievements, achievement:New(863)));
    tmpCategories[643] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[618]:AddCategory(tmpCategories[643]);
    tmpCategories[643]:AddAchievement(InsertAndReturn(achievements, achievement:New(893)));
    tmpCategories[643]:AddAchievement(InsertAndReturn(achievements, achievement:New(953, faction.Horde)));
    tmpCategories[643]:AddAchievement(InsertAndReturn(achievements, achievement:New(900)));
    tmpCategories[643]:AddAchievement(InsertAndReturn(achievements, achievement:New(942, faction.Alliance)));
    tmpCategories[643]:AddAchievement(InsertAndReturn(achievements, achievement:New(943, faction.Horde)));
    tmpCategories[619] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(108).name, {108})); -- Terokkar Forest
    tmpCategories[616]:AddCategory(tmpCategories[619]);
    tmpCategories[626] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[619]:AddCategory(tmpCategories[626]);
    tmpCategories[626]:AddAchievement(InsertAndReturn(achievements, achievement:New(1191, faction.Alliance)));
    tmpCategories[626]:AddAchievement(InsertAndReturn(achievements, achievement:New(1272, faction.Horde)));
    tmpCategories[626]:AddAchievement(InsertAndReturn(achievements, achievement:New(1275)));
    tmpCategories[633] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[619]:AddCategory(tmpCategories[633]);
    tmpCategories[633]:AddAchievement(InsertAndReturn(achievements, achievement:New(867)));
    tmpCategories[642] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[619]:AddCategory(tmpCategories[642]);
    tmpCategories[642]:AddAchievement(InsertAndReturn(achievements, achievement:New(903)));
    tmpCategories[642]:AddAchievement(InsertAndReturn(achievements, achievement:New(1205)));
    tmpCategories[620] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(107).name, {107})); -- Nagrand
    tmpCategories[616]:AddCategory(tmpCategories[620]);
    tmpCategories[627] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[620]:AddCategory(tmpCategories[627]);
    tmpCategories[627]:AddAchievement(InsertAndReturn(achievements, achievement:New(1192, faction.Alliance)));
    tmpCategories[627]:AddAchievement(InsertAndReturn(achievements, achievement:New(1273, faction.Horde)));
    tmpCategories[627]:AddAchievement(InsertAndReturn(achievements, achievement:New(939)));
    tmpCategories[627]:AddAchievement(InsertAndReturn(achievements, achievement:New(941)));
    tmpCategories[627]:AddAchievement(InsertAndReturn(achievements, achievement:New(1576)));
    tmpCategories[627]:AddAchievement(InsertAndReturn(achievements, achievement:New(4958)));
    tmpCategories[634] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[620]:AddCategory(tmpCategories[634]);
    tmpCategories[634]:AddAchievement(InsertAndReturn(achievements, achievement:New(866)));
    tmpCategories[641] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[620]:AddCategory(tmpCategories[641]);
    tmpCategories[641]:AddAchievement(InsertAndReturn(achievements, achievement:New(899, faction.Alliance)));
    tmpCategories[641]:AddAchievement(InsertAndReturn(achievements, achievement:New(901, faction.Horde)));
    tmpCategories[641]:AddAchievement(InsertAndReturn(achievements, achievement:New(942, faction.Alliance)));
    tmpCategories[641]:AddAchievement(InsertAndReturn(achievements, achievement:New(943, faction.Horde)));
    tmpCategories[621] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(105).name, {105})); -- Blade's Edge Mountains
    tmpCategories[616]:AddCategory(tmpCategories[621]);
    tmpCategories[628] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[621]:AddCategory(tmpCategories[628]);
    tmpCategories[628]:AddAchievement(InsertAndReturn(achievements, achievement:New(1193)));
    tmpCategories[628]:AddAchievement(InsertAndReturn(achievements, achievement:New(1276)));
    tmpCategories[635] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[621]:AddCategory(tmpCategories[635]);
    tmpCategories[635]:AddAchievement(InsertAndReturn(achievements, achievement:New(865)));
    tmpCategories[640] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[621]:AddCategory(tmpCategories[640]);
    tmpCategories[640]:AddAchievement(InsertAndReturn(achievements, achievement:New(896)));
    tmpCategories[622] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(109).name, {109})); -- Netherstorm
    tmpCategories[616]:AddCategory(tmpCategories[622]);
    tmpCategories[629] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[622]:AddCategory(tmpCategories[629]);
    tmpCategories[629]:AddAchievement(InsertAndReturn(achievements, achievement:New(1194)));
    tmpCategories[636] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[622]:AddCategory(tmpCategories[636]);
    tmpCategories[636]:AddAchievement(InsertAndReturn(achievements, achievement:New(843)));
    tmpCategories[623] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(104).name, {104})); -- Shadowmoon Valley
    tmpCategories[616]:AddCategory(tmpCategories[623]);
    tmpCategories[630] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[623]:AddCategory(tmpCategories[630]);
    tmpCategories[630]:AddAchievement(InsertAndReturn(achievements, achievement:New(1195)));
    tmpCategories[637] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[623]:AddCategory(tmpCategories[637]);
    tmpCategories[637]:AddAchievement(InsertAndReturn(achievements, achievement:New(864)));
    tmpCategories[638] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[623]:AddCategory(tmpCategories[638]);
    tmpCategories[638]:AddAchievement(InsertAndReturn(achievements, achievement:New(898)));
    tmpCategories[638]:AddAchievement(InsertAndReturn(achievements, achievement:New(1638)));
    tmpCategories[750] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(122).name, {122})); -- Isle of Quel'Danas
    tmpCategories[616]:AddCategory(tmpCategories[750]);
    tmpCategories[751] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[750]:AddCategory(tmpCategories[751]);
    tmpCategories[751]:AddAchievement(InsertAndReturn(achievements, achievement:New(868)));
    tmpCategories[56] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15272)))); -- Dungeons
    tmpCategories[55]:AddCategory(tmpCategories[56]);
    tmpCategories[56]:AddAchievement(InsertAndReturn(achievements, achievement:New(1284)));
    tmpCategories[56]:AddAchievement(InsertAndReturn(achievements, achievement:New(1287)));
    tmpCategories[57] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(248)), {347})); -- Hellfire Ramparts
    tmpCategories[56]:AddCategory(tmpCategories[57]);
    tmpCategories[57]:AddAchievement(InsertAndReturn(achievements, achievement:New(647)));
    tmpCategories[57]:AddAchievement(InsertAndReturn(achievements, achievement:New(667)));
    tmpCategories[58] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(256)), {261})); -- The Blood Furnace
    tmpCategories[56]:AddCategory(tmpCategories[58]);
    tmpCategories[58]:AddAchievement(InsertAndReturn(achievements, achievement:New(648)));
    tmpCategories[58]:AddAchievement(InsertAndReturn(achievements, achievement:New(668)));
    tmpCategories[59] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(259)), {246})); -- The Shattered Halls
    tmpCategories[56]:AddCategory(tmpCategories[59]);
    tmpCategories[59]:AddAchievement(InsertAndReturn(achievements, achievement:New(657)));
    tmpCategories[59]:AddAchievement(InsertAndReturn(achievements, achievement:New(678)));
    tmpCategories[60] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(260)), {265})); -- The Slave Pens
    tmpCategories[56]:AddCategory(tmpCategories[60]);
    tmpCategories[60]:AddAchievement(InsertAndReturn(achievements, achievement:New(649)));
    tmpCategories[60]:AddAchievement(InsertAndReturn(achievements, achievement:New(669)));
    tmpCategories[61] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(262)), {262})); -- The Underbog
    tmpCategories[56]:AddCategory(tmpCategories[61]);
    tmpCategories[61]:AddAchievement(InsertAndReturn(achievements, achievement:New(650)));
    tmpCategories[61]:AddAchievement(InsertAndReturn(achievements, achievement:New(670)));
    tmpCategories[62] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(261)), {263, 264})); -- The Steamvault
    tmpCategories[56]:AddCategory(tmpCategories[62]);
    tmpCategories[62]:AddAchievement(InsertAndReturn(achievements, achievement:New(656)));
    tmpCategories[62]:AddAchievement(InsertAndReturn(achievements, achievement:New(677)));
    tmpCategories[63] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(250)), {272})); -- Mana-Tombs
    tmpCategories[56]:AddCategory(tmpCategories[63]);
    tmpCategories[63]:AddAchievement(InsertAndReturn(achievements, achievement:New(651)));
    tmpCategories[63]:AddAchievement(InsertAndReturn(achievements, achievement:New(671)));
    tmpCategories[64] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(247)), {256, 257})); -- Auchenai Crypts
    tmpCategories[56]:AddCategory(tmpCategories[64]);
    tmpCategories[64]:AddAchievement(InsertAndReturn(achievements, achievement:New(666)));
    tmpCategories[64]:AddAchievement(InsertAndReturn(achievements, achievement:New(672)));
    tmpCategories[65] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(252)), {258, 259})); -- Sethekk Halls
    tmpCategories[56]:AddCategory(tmpCategories[65]);
    tmpCategories[65]:AddAchievement(InsertAndReturn(achievements, achievement:New(653)));
    tmpCategories[65]:AddAchievement(InsertAndReturn(achievements, achievement:New(674)));
    tmpCategories[65]:AddAchievement(InsertAndReturn(achievements, achievement:New(883)));
    tmpCategories[66] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(253)), {260})); -- Shadow Labyrinth
    tmpCategories[56]:AddCategory(tmpCategories[66]);
    tmpCategories[66]:AddAchievement(InsertAndReturn(achievements, achievement:New(654)));
    tmpCategories[66]:AddAchievement(InsertAndReturn(achievements, achievement:New(675)));
    tmpCategories[67] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(251)), {274})); -- Old Hillsbrad Foothills
    tmpCategories[56]:AddCategory(tmpCategories[67]);
    tmpCategories[67]:AddAchievement(InsertAndReturn(achievements, achievement:New(652)));
    tmpCategories[67]:AddAchievement(InsertAndReturn(achievements, achievement:New(673)));
    tmpCategories[68] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(255)), {273})); -- The Black Morass
    tmpCategories[56]:AddCategory(tmpCategories[68]);
    tmpCategories[68]:AddAchievement(InsertAndReturn(achievements, achievement:New(655)));
    tmpCategories[68]:AddAchievement(InsertAndReturn(achievements, achievement:New(676)));
    tmpCategories[69] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(258)), {267, 268})); -- The Mechanar
    tmpCategories[56]:AddCategory(tmpCategories[69]);
    tmpCategories[69]:AddAchievement(InsertAndReturn(achievements, achievement:New(658)));
    tmpCategories[69]:AddAchievement(InsertAndReturn(achievements, achievement:New(679)));
    tmpCategories[70] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(257)), {266})); -- The Botanica
    tmpCategories[56]:AddCategory(tmpCategories[70]);
    tmpCategories[70]:AddAchievement(InsertAndReturn(achievements, achievement:New(659)));
    tmpCategories[70]:AddAchievement(InsertAndReturn(achievements, achievement:New(680)));
    tmpCategories[71] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(254)), {269, 270, 271})); -- The Arcatraz
    tmpCategories[56]:AddCategory(tmpCategories[71]);
    tmpCategories[71]:AddAchievement(InsertAndReturn(achievements, achievement:New(660)));
    tmpCategories[71]:AddAchievement(InsertAndReturn(achievements, achievement:New(681)));
    tmpCategories[72] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(249)), {348, 349})); -- Magisters Terrace
    tmpCategories[56]:AddCategory(tmpCategories[72]);
    tmpCategories[72]:AddAchievement(InsertAndReturn(achievements, achievement:New(661)));
    tmpCategories[72]:AddAchievement(InsertAndReturn(achievements, achievement:New(682)));
    tmpCategories[72]:AddAchievement(InsertAndReturn(achievements, achievement:New(884)));
    tmpCategories[73] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15271)))); -- Raids
    tmpCategories[55]:AddCategory(tmpCategories[73]);
    tmpCategories[73]:AddAchievement(InsertAndReturn(achievements, achievement:New(1286)));
    tmpCategories[74] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(745)), {350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366})); -- Karazhan
    tmpCategories[73]:AddCategory(tmpCategories[74]);
    tmpCategories[74]:AddAchievement(InsertAndReturn(achievements, achievement:New(690)));
    tmpCategories[74]:AddAchievement(InsertAndReturn(achievements, achievement:New(882)));
    tmpCategories[647] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[74]:AddCategory(tmpCategories[647]);
    tmpCategories[647]:AddAchievement(InsertAndReturn(achievements, achievement:New(960)));
    tmpCategories[75] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(746)), {330})); -- Gruul's Lair
    tmpCategories[73]:AddCategory(tmpCategories[75]);
    tmpCategories[75]:AddAchievement(InsertAndReturn(achievements, achievement:New(692)));
    tmpCategories[76] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(747)), {331})); -- Magtheridon's Lair
    tmpCategories[73]:AddCategory(tmpCategories[76]);
    tmpCategories[76]:AddAchievement(InsertAndReturn(achievements, achievement:New(693)));
    tmpCategories[77] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(748)), {332})); -- Serpentshrine Cavern
    tmpCategories[73]:AddCategory(tmpCategories[77]);
    tmpCategories[77]:AddAchievement(InsertAndReturn(achievements, achievement:New(694)));
    tmpCategories[78] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(749)), {334})); -- The Eye
    tmpCategories[73]:AddCategory(tmpCategories[78]);
    tmpCategories[78]:AddAchievement(InsertAndReturn(achievements, achievement:New(696)));
    tmpCategories[78]:AddAchievement(InsertAndReturn(achievements, achievement:New(885)));
    tmpCategories[79] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(750)), {329})); -- The Battle for Mount Hyjal
    tmpCategories[73]:AddCategory(tmpCategories[79]);
    tmpCategories[79]:AddAchievement(InsertAndReturn(achievements, achievement:New(695)));
    tmpCategories[646] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[79]:AddCategory(tmpCategories[646]);
    tmpCategories[646]:AddAchievement(InsertAndReturn(achievements, achievement:New(959)));
    tmpCategories[80] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(751)), {339, 340, 341, 342, 343, 344, 345, 346})); -- Black Temple
    tmpCategories[73]:AddCategory(tmpCategories[80]);
    tmpCategories[80]:AddAchievement(InsertAndReturn(achievements, achievement:New(697)));
    tmpCategories[80]:AddAchievement(InsertAndReturn(achievements, achievement:New(9016, nil, nil, false)));
    tmpCategories[645] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[80]:AddCategory(tmpCategories[645]);
    tmpCategories[645]:AddAchievement(InsertAndReturn(achievements, achievement:New(958)));
    tmpCategories[81] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(77)) .. " (" .. (GetCategoryInfo(15234)) .. ")", {333})); -- Zul'Aman (Legacy)
    tmpCategories[73]:AddCategory(tmpCategories[81]);
    tmpCategories[81]:AddAchievement(InsertAndReturn(achievements, achievement:New(691, nil, nil, false)));
    tmpCategories[81]:AddAchievement(InsertAndReturn(achievements, achievement:New(430, nil, nil, false)));
    tmpCategories[82] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(752)), {335, 336})); -- Sunwell Plateau
    tmpCategories[73]:AddCategory(tmpCategories[82]);
    tmpCategories[82]:AddAchievement(InsertAndReturn(achievements, achievement:New(698)));
    tmpCategories[83] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(14866)))); -- Wrath of the Lich King
    tmpCategories[577] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[83]:AddCategory(tmpCategories[577]);
    tmpCategories[577]:AddAchievement(InsertAndReturn(achievements, achievement:New(41)));
    tmpCategories[577]:AddAchievement(InsertAndReturn(achievements, achievement:New(2256)));
    tmpCategories[577]:AddAchievement(InsertAndReturn(achievements, achievement:New(2257)));
    tmpCategories[577]:AddAchievement(InsertAndReturn(achievements, achievement:New(2557)));
    tmpCategories[577]:AddAchievement(InsertAndReturn(achievements, achievement:New(45, faction.Alliance)));
    tmpCategories[577]:AddAchievement(InsertAndReturn(achievements, achievement:New(1008)));
    tmpCategories[577]:AddAchievement(InsertAndReturn(achievements, achievement:New(1009)));
    tmpCategories[577]:AddAchievement(InsertAndReturn(achievements, achievement:New(1010)));
    tmpCategories[577]:AddAchievement(InsertAndReturn(achievements, achievement:New(1011, faction.Horde)));
    tmpCategories[577]:AddAchievement(InsertAndReturn(achievements, achievement:New(1012, faction.Alliance)));
    tmpCategories[614] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(125).name, {125, 126})); -- Dalaran
    tmpCategories[577]:AddCategory(tmpCategories[614]);
    tmpCategories[614]:AddAchievement(InsertAndReturn(achievements, achievement:New(1956)));
    tmpCategories[578] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(114).name, {114})); -- Borean Tundra
    tmpCategories[577]:AddCategory(tmpCategories[578]);
    tmpCategories[586] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[578]:AddCategory(tmpCategories[586]);
    tmpCategories[586]:AddAchievement(InsertAndReturn(achievements, achievement:New(33, faction.Alliance)));
    tmpCategories[586]:AddAchievement(InsertAndReturn(achievements, achievement:New(1358, faction.Horde)));
    tmpCategories[586]:AddAchievement(InsertAndReturn(achievements, achievement:New(561)));
    tmpCategories[587] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[578]:AddCategory(tmpCategories[587]);
    tmpCategories[587]:AddAchievement(InsertAndReturn(achievements, achievement:New(1264)));
    tmpCategories[588] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[578]:AddCategory(tmpCategories[588]);
    tmpCategories[588]:AddAchievement(InsertAndReturn(achievements, achievement:New(949)));
    tmpCategories[579] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(117).name, {117})); -- Howling Fjord
    tmpCategories[577]:AddCategory(tmpCategories[579]);
    tmpCategories[589] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[579]:AddCategory(tmpCategories[589]);
    tmpCategories[589]:AddAchievement(InsertAndReturn(achievements, achievement:New(34, faction.Alliance)));
    tmpCategories[589]:AddAchievement(InsertAndReturn(achievements, achievement:New(1356, faction.Horde)));
    tmpCategories[590] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[579]:AddCategory(tmpCategories[590]);
    tmpCategories[590]:AddAchievement(InsertAndReturn(achievements, achievement:New(1263)));
    tmpCategories[590]:AddAchievement(InsertAndReturn(achievements, achievement:New(1254)));
    tmpCategories[580] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(115).name, {115})); -- Dragonblight
    tmpCategories[577]:AddCategory(tmpCategories[580]);
    tmpCategories[592] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[580]:AddCategory(tmpCategories[592]);
    tmpCategories[592]:AddAchievement(InsertAndReturn(achievements, achievement:New(35, faction.Alliance)));
    tmpCategories[592]:AddAchievement(InsertAndReturn(achievements, achievement:New(1359, faction.Horde)));
    tmpCategories[592]:AddAchievement(InsertAndReturn(achievements, achievement:New(547)));
    tmpCategories[592]:AddAchievement(InsertAndReturn(achievements, achievement:New(1277)));
    tmpCategories[593] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[580]:AddCategory(tmpCategories[593]);
    tmpCategories[593]:AddAchievement(InsertAndReturn(achievements, achievement:New(1265)));
    tmpCategories[594] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[580]:AddCategory(tmpCategories[594]);
    tmpCategories[594]:AddAchievement(InsertAndReturn(achievements, achievement:New(1007)));
    tmpCategories[581] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(116).name, {116})); -- Grizzly Hills
    tmpCategories[577]:AddCategory(tmpCategories[581]);
    tmpCategories[595] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[581]:AddCategory(tmpCategories[595]);
    tmpCategories[595]:AddAchievement(InsertAndReturn(achievements, achievement:New(37, faction.Alliance)));
    tmpCategories[595]:AddAchievement(InsertAndReturn(achievements, achievement:New(1357, faction.Horde)));
    tmpCategories[595]:AddAchievement(InsertAndReturn(achievements, achievement:New(1596)));
    tmpCategories[596] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[581]:AddCategory(tmpCategories[596]);
    tmpCategories[596]:AddAchievement(InsertAndReturn(achievements, achievement:New(1266)));
    tmpCategories[782] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[581]:AddCategory(tmpCategories[782]);
    tmpCategories[782]:AddAchievement(InsertAndReturn(achievements, achievement:New(2016, faction.Alliance)));
    tmpCategories[782]:AddAchievement(InsertAndReturn(achievements, achievement:New(2017, faction.Horde)));
    tmpCategories[582] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(121).name, {121})); -- Zul'Drak
    tmpCategories[577]:AddCategory(tmpCategories[582]);
    tmpCategories[598] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[582]:AddCategory(tmpCategories[598]);
    tmpCategories[598]:AddAchievement(InsertAndReturn(achievements, achievement:New(36)));
    tmpCategories[598]:AddAchievement(InsertAndReturn(achievements, achievement:New(1596)));
    tmpCategories[598]:AddAchievement(InsertAndReturn(achievements, achievement:New(1576)));
    tmpCategories[598]:AddAchievement(InsertAndReturn(achievements, achievement:New(4958)));
    tmpCategories[599] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[582]:AddCategory(tmpCategories[599]);
    tmpCategories[599]:AddAchievement(InsertAndReturn(achievements, achievement:New(1267)));
    tmpCategories[583] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(119).name, {119})); -- Sholazar Basin
    tmpCategories[577]:AddCategory(tmpCategories[583]);
    tmpCategories[601] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[583]:AddCategory(tmpCategories[601]);
    tmpCategories[601]:AddAchievement(InsertAndReturn(achievements, achievement:New(39)));
    tmpCategories[601]:AddAchievement(InsertAndReturn(achievements, achievement:New(961)));
    tmpCategories[601]:AddAchievement(InsertAndReturn(achievements, achievement:New(962)));
    tmpCategories[601]:AddAchievement(InsertAndReturn(achievements, achievement:New(938)));
    tmpCategories[601]:AddAchievement(InsertAndReturn(achievements, achievement:New(941)));
    tmpCategories[602] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[583]:AddCategory(tmpCategories[602]);
    tmpCategories[602]:AddAchievement(InsertAndReturn(achievements, achievement:New(1268)));
    tmpCategories[603] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[583]:AddCategory(tmpCategories[603]);
    tmpCategories[603]:AddAchievement(InsertAndReturn(achievements, achievement:New(950)));
    tmpCategories[603]:AddAchievement(InsertAndReturn(achievements, achievement:New(951)));
    tmpCategories[603]:AddAchievement(InsertAndReturn(achievements, achievement:New(952)));
    tmpCategories[610] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(127).name, {127})); -- Crystalsong Forest
    tmpCategories[577]:AddCategory(tmpCategories[610]);
    tmpCategories[610]:AddAchievement(InsertAndReturn(achievements, achievement:New(1457)));
    tmpCategories[584] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(120).name, {120})); -- Storm Peaks
    tmpCategories[577]:AddCategory(tmpCategories[584]);
    tmpCategories[604] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[584]:AddCategory(tmpCategories[604]);
    tmpCategories[604]:AddAchievement(InsertAndReturn(achievements, achievement:New(38)));
    tmpCategories[604]:AddAchievement(InsertAndReturn(achievements, achievement:New(1428)));
    tmpCategories[612] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[584]:AddCategory(tmpCategories[612]);
    tmpCategories[612]:AddAchievement(InsertAndReturn(achievements, achievement:New(1269)));
    tmpCategories[606] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[584]:AddCategory(tmpCategories[606]);
    tmpCategories[606]:AddAchievement(InsertAndReturn(achievements, achievement:New(2082)));
    tmpCategories[606]:AddAchievement(InsertAndReturn(achievements, achievement:New(2083)));
    tmpCategories[585] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(118).name, {118, 170})); -- Icecrown
    tmpCategories[577]:AddCategory(tmpCategories[585]);
    tmpCategories[607] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[585]:AddCategory(tmpCategories[607]);
    tmpCategories[607]:AddAchievement(InsertAndReturn(achievements, achievement:New(40)));
    tmpCategories[608] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[585]:AddCategory(tmpCategories[608]);
    tmpCategories[608]:AddAchievement(InsertAndReturn(achievements, achievement:New(1270)));
    tmpCategories[609] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[585]:AddCategory(tmpCategories[609]);
    tmpCategories[609]:AddAchievement(InsertAndReturn(achievements, achievement:New(947)));
    tmpCategories[609]:AddAchievement(InsertAndReturn(achievements, achievement:New(945)));
    tmpCategories[84] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15272)))); -- Dungeons
    tmpCategories[83]:AddCategory(tmpCategories[84]);
    tmpCategories[84]:AddAchievement(InsertAndReturn(achievements, achievement:New(1288)));
    tmpCategories[84]:AddAchievement(InsertAndReturn(achievements, achievement:New(1289)));
    tmpCategories[84]:AddAchievement(InsertAndReturn(achievements, achievement:New(1658)));
    tmpCategories[84]:AddAchievement(InsertAndReturn(achievements, achievement:New(2136)));
    tmpCategories[86] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(285)), {133, 134, 135})); -- Utgarde Keep
    tmpCategories[84]:AddCategory(tmpCategories[86]);
    tmpCategories[86]:AddAchievement(InsertAndReturn(achievements, achievement:New(1919)));
    tmpCategories[86]:AddAchievement(InsertAndReturn(achievements, achievement:New(477)));
    tmpCategories[86]:AddAchievement(InsertAndReturn(achievements, achievement:New(489)));
    tmpCategories[87] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(281)), {129})); -- The Nexus
    tmpCategories[84]:AddCategory(tmpCategories[87]);
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(2150)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(2037)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(2036)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(478)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(490)));
    tmpCategories[88] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(272)), {157, 158, 159})); -- Azjol-Nerub
    tmpCategories[84]:AddCategory(tmpCategories[88]);
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(1296)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(1297)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(1860)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(480)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(491)));
    tmpCategories[89] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(271)), {132})); -- Ahn'kahet: The Old Kingdom
    tmpCategories[84]:AddCategory(tmpCategories[89]);
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(2038)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(2056)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(1862)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(481)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(492)));
    tmpCategories[90] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(273)), {160, 161})); -- Drak'Tharon Keep
    tmpCategories[84]:AddCategory(tmpCategories[90]);
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(2151)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(2057)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(2039)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(482)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(493)));
    tmpCategories[91] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(283)), {168})); -- The Violet Hold
    tmpCategories[84]:AddCategory(tmpCategories[91]);
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(1865)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(2041)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(2153)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(1816)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(483)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(494)));
    tmpCategories[92] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(274)), {154})); -- Gundrak
    tmpCategories[84]:AddCategory(tmpCategories[92]);
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(2058)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(2040)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(1864)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(2152)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(484)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(495)));
    tmpCategories[93] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(277)), {140})); -- Halls of Stone
    tmpCategories[84]:AddCategory(tmpCategories[93]);
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(1866)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(2154)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(2155)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(485)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(496)));
    tmpCategories[94] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(275)), {138, 139})); -- Halls of Lightning
    tmpCategories[84]:AddCategory(tmpCategories[94]);
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(1834)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(2042)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(1867)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(486)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(497)));
    tmpCategories[95] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(282)), {143, 144, 145, 146})); -- The Oculus
    tmpCategories[84]:AddCategory(tmpCategories[95]);
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(1868)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(2046)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(2045)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(2044)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(1871)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(487)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(498)));
    tmpCategories[97] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(286)), {136, 137})); -- Utgarde Pinnacle
    tmpCategories[84]:AddCategory(tmpCategories[97]);
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(2043)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(1873)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(2156)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(2157)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(488)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(499)));
    tmpCategories[96] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(279)), {130, 131})); -- The Culling of Stratholme
    tmpCategories[84]:AddCategory(tmpCategories[96]);
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(1872)));
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(1817)));
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(479)));
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(500)));
    tmpCategories[98] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(284)), {171})); -- Trial of the Champion
    tmpCategories[84]:AddCategory(tmpCategories[98]);
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(3803)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(3802)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(3804)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(4296, faction.Alliance)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(4298, faction.Alliance)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(3778, faction.Horde)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(4297, faction.Horde)));
    tmpCategories[99] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(280)), {183})); -- The Forge of Souls
    tmpCategories[84]:AddCategory(tmpCategories[99]);
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4522)));
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4523)));
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4516)));
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4519)));
    tmpCategories[100] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(278)), {184})); -- Pit of Saron
    tmpCategories[84]:AddCategory(tmpCategories[100]);
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4524)));
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4525)));
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4517)));
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4520)));
    tmpCategories[101] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(276)), {185})); -- Halls of Reflection
    tmpCategories[84]:AddCategory(tmpCategories[101]);
    tmpCategories[101]:AddAchievement(InsertAndReturn(achievements, achievement:New(4526)));
    tmpCategories[101]:AddAchievement(InsertAndReturn(achievements, achievement:New(4518)));
    tmpCategories[101]:AddAchievement(InsertAndReturn(achievements, achievement:New(4521)));
    tmpCategories[85] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15271)))); -- Raids
    tmpCategories[83]:AddCategory(tmpCategories[85]);
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(1658)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2137)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2138)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(12401)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(4602)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(4603)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2957, nil, nil, false)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2958, nil, nil, false)));
    tmpCategories[102] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(753)), {156})); -- Vault of Archavon
    tmpCategories[85]:AddCategory(tmpCategories[102]);
    tmpCategories[103] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(3)))); -- Vault of Archavon 10
    tmpCategories[102]:AddCategory(tmpCategories[103]);
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(4016)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(1722)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(3136)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(3836)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(4585)));
    tmpCategories[104] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(4)))); -- Vault of Archavon 25
    tmpCategories[102]:AddCategory(tmpCategories[104]);
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(4017)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(1721)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(3137)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(3837)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(4586)));
    tmpCategories[105] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(754)), {162, 163, 164, 165, 166, 167})); -- Naxxramas
    tmpCategories[85]:AddCategory(tmpCategories[105]);
    tmpCategories[106] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(3)))); -- Naxxramas 10
    tmpCategories[105]:AddCategory(tmpCategories[106]);
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1997)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1858)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1856)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2178)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2180)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1996)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2182)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2176)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2146)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2184)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(578)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(562)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(564)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(566)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(568)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(572)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(574)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(576)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2187, nil, nil, false)));
    tmpCategories[107] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(4)))); -- Naxxramas 25
    tmpCategories[105]:AddCategory(tmpCategories[107]);
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2140)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(1859)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(1857)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2179)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2181)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2139)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2183)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2177)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2147)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2185)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(579)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(563)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(565)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(567)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(569)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(573)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(575)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(577)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2186, nil, nil, false)));
    tmpCategories[108] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(755)), {155})); -- The Obsidian Sanctum
    tmpCategories[85]:AddCategory(tmpCategories[108]);
    tmpCategories[109] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(3)))); -- The Obsidian Sanctum 10
    tmpCategories[108]:AddCategory(tmpCategories[109]);
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2047)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2049)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2050)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2051)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(624)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(1876)));
    tmpCategories[110] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(4)))); -- The Obsidian Sanctum 25
    tmpCategories[108]:AddCategory(tmpCategories[110]);
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2048)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2052)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2053)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2054)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(1877)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(625)));
    tmpCategories[111] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(756)), {141})); -- The Eye of Eternity
    tmpCategories[85]:AddCategory(tmpCategories[111]);
    tmpCategories[112] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(3)))); -- The Eye of Eternity 10
    tmpCategories[111]:AddCategory(tmpCategories[112]);
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(2148)));
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(1874)));
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(1869)));
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(622)));
    tmpCategories[113] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(4)))); -- The Eye of Eternity 25
    tmpCategories[111]:AddCategory(tmpCategories[113]);
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(2149)));
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(1875)));
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(1870)));
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(623)));
    tmpCategories[114] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(759)), {147, 148, 149, 150, 151, 152})); -- Ulduar
    tmpCategories[85]:AddCategory(tmpCategories[114]);
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12312)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12314)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12313)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12316)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12315)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12317)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12318)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12319)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12320)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12323)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12324)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12325)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12321)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12322)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12326)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12327)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12328)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12329)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12330)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12335)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12336)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12332)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12333)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12334)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12339)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12340)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12337)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12338)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12342)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12341)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12343)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12344)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12345)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12346)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12347)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12348)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12349)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12350)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12351)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12352)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12360)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12361)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12362)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12363)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12364)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12365)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12366)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12367)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12368)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12369)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12372)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12373)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12384)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12395)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12396)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12397)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12398)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12385)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12386)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12387)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12388)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12400)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12297)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12302)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12309)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12310)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12311)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12399)));
    tmpCategories[115] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(3)) .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Ulduar 10 (Legacy)
    tmpCategories[114]:AddCategory(tmpCategories[115]);
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3097, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2907, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2905, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2911, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2909, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2913, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2914, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2915, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3056, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2925, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2927, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2930, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2919, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2923, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2931, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2933, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2934, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2937, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3058, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2945, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2947, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2939, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2940, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2941, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2955, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2959, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2951, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2953, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3076, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3006, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2961, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2963, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2967, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2969, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3182, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2971, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2973, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2975, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2977, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3176, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2979, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2980, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2985, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2982, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3177, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3178, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3179, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2989, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3138, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3180, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2996, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3181, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3009, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3008, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3012, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3014, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3015, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3157, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3141, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3158, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3159, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3003, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2886, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2888, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2890, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2892, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2894, nil, nil, false)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3036, nil, nil, false)));
    tmpCategories[116] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(4)) .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Ulduar 25 (Legacy)
    tmpCategories[114]:AddCategory(tmpCategories[116]);
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3098, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2908, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2906, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2912, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2910, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2918, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2916, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2917, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3057, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2926, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2928, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2929, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2921, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2924, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2932, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2935, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2936, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2938, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3059, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2946, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2948, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2942, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2943, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2944, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2956, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2960, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2952, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2954, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3077, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3007, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2962, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2965, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2968, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2970, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3184, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2972, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2974, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2976, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2978, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3183, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3118, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2981, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2984, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2983, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3185, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3186, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3187, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3237, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2995, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3189, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2997, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3188, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3011, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3010, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3013, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3017, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3016, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3161, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3162, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3163, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3164, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3002, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2887, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2889, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2891, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2893, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2895, nil, nil, false)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3037, nil, nil, false)));
    tmpCategories[117] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(757)), {172, 173})); -- Trial of the Crusader
    tmpCategories[85]:AddCategory(tmpCategories[117]);
    tmpCategories[118] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(3)))); -- Trial of the Crusader 10
    tmpCategories[117]:AddCategory(tmpCategories[118]);
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3797)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3936)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3996)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3798)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3799)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3800)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3917)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3918)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3808, nil, nil, false)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3809, nil, nil, false)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3810, nil, nil, false)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(4080, nil, nil, false)));
    tmpCategories[119] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(4)))); -- Trial of the Crusader 25
    tmpCategories[117]:AddCategory(tmpCategories[119]);
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3813)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3937)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3997)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3815)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3816)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3916)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3812)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3817, nil, nil, false)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3818, nil, nil, false)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3819, nil, nil, false)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(4156, faction.Alliance, nil, false)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(4079, faction.Horde, nil, false)));
    tmpCategories[120] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(760)), {248})); -- Onyxia's Lair
    tmpCategories[85]:AddCategory(tmpCategories[120]);
    tmpCategories[121] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(3)))); -- Onyxia's Lair 10
    tmpCategories[120]:AddCategory(tmpCategories[121]);
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4402)));
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4403)));
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4404)));
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4396)));
    tmpCategories[122] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(4)))); -- Onyxia's Lair 25
    tmpCategories[120]:AddCategory(tmpCategories[122]);
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4405)));
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4406)));
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4407)));
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4397)));
    tmpCategories[123] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(758)), {186, 187, 188, 189, 190, 191, 192, 193})); -- Icecrown Citadel
    tmpCategories[85]:AddCategory(tmpCategories[123]);
    tmpCategories[124] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(3)))); -- Icecrown Citadel 10
    tmpCategories[123]:AddCategory(tmpCategories[124]);
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4534)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4535)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4536)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4537)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4577)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4538)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4578)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4582)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4539)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4579)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4580)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4601)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4581)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4531)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4528)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4529)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4527)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4530)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4532)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4628)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4629)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4630)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4631)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4583)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4636)));
    tmpCategories[125] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(4)))); -- Icecrown Citadel 25
    tmpCategories[123]:AddCategory(tmpCategories[125]);
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4610)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4611)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4612)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4613)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4615)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4614)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4616)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4617)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4618)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4619)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4620)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4621)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4622)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4604)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4605)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4606)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4607)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4597)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4608)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4632)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4633)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4634)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4635)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4584)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4637)));
    tmpCategories[615] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[123]:AddCategory(tmpCategories[615]);
    tmpCategories[615]:AddAchievement(InsertAndReturn(achievements, achievement:New(4598)));
    tmpCategories[126] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(761)), {200})); -- The Ruby Sanctum
    tmpCategories[85]:AddCategory(tmpCategories[126]);
    tmpCategories[127] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(3)))); -- The Ruby Sanctum 10
    tmpCategories[126]:AddCategory(tmpCategories[127]);
    tmpCategories[127]:AddAchievement(InsertAndReturn(achievements, achievement:New(4817)));
    tmpCategories[127]:AddAchievement(InsertAndReturn(achievements, achievement:New(4818)));
    tmpCategories[128] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(4)))); -- The Ruby Sanctum 25
    tmpCategories[126]:AddCategory(tmpCategories[128]);
    tmpCategories[128]:AddAchievement(InsertAndReturn(achievements, achievement:New(4815)));
    tmpCategories[128]:AddAchievement(InsertAndReturn(achievements, achievement:New(4816)));
    tmpCategories[781] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(14941)), {118, 170})); -- Argent Tournament
    tmpCategories[83]:AddCategory(tmpCategories[781]);
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2756)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2758)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2772)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2836)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2773)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(3736)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2777, faction.Alliance)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2760, faction.Alliance)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2778, faction.Alliance)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2761, faction.Alliance)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2779, faction.Alliance)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2762, faction.Alliance)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2780, faction.Alliance)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2763, faction.Alliance)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2781, faction.Alliance)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2764, faction.Alliance)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2782, faction.Alliance)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2770, faction.Alliance)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2817, faction.Alliance)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2783, faction.Horde)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2765, faction.Horde)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2784, faction.Horde)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2766, faction.Horde)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2785, faction.Horde)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2767, faction.Horde)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2786, faction.Horde)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2768, faction.Horde)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2787, faction.Horde)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2769, faction.Horde)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2788, faction.Horde)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2771, faction.Horde)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(2816, faction.Horde)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(3676, faction.Alliance)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(3677, faction.Horde)));
    tmpCategories[781]:AddAchievement(InsertAndReturn(achievements, achievement:New(4596)));
    tmpCategories[129] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15072)))); -- Cataclysm
    tmpCategories[550] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[129]:AddCategory(tmpCategories[550]);
    tmpCategories[550]:AddAchievement(InsertAndReturn(achievements, achievement:New(4875)));
    tmpCategories[550]:AddAchievement(InsertAndReturn(achievements, achievement:New(4827)));
    tmpCategories[550]:AddAchievement(InsertAndReturn(achievements, achievement:New(5518)));
    tmpCategories[550]:AddAchievement(InsertAndReturn(achievements, achievement:New(5548)));
    tmpCategories[550]:AddAchievement(InsertAndReturn(achievements, achievement:New(5754)));
    tmpCategories[550]:AddAchievement(InsertAndReturn(achievements, achievement:New(5753)));
    tmpCategories[550]:AddAchievement(InsertAndReturn(achievements, achievement:New(4868)));
    tmpCategories[550]:AddAchievement(InsertAndReturn(achievements, achievement:New(4881)));
    tmpCategories[551] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(203).name, {201, 203, 204, 205})); -- Vashj'ir
    tmpCategories[550]:AddCategory(tmpCategories[551]);
    tmpCategories[557] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[551]:AddCategory(tmpCategories[557]);
    tmpCategories[557]:AddAchievement(InsertAndReturn(achievements, achievement:New(4869, faction.Alliance)));
    tmpCategories[557]:AddAchievement(InsertAndReturn(achievements, achievement:New(4982, faction.Horde)));
    tmpCategories[557]:AddAchievement(InsertAndReturn(achievements, achievement:New(5452)));
    tmpCategories[557]:AddAchievement(InsertAndReturn(achievements, achievement:New(5318, faction.Alliance)));
    tmpCategories[557]:AddAchievement(InsertAndReturn(achievements, achievement:New(5319, faction.Horde)));
    tmpCategories[564] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[551]:AddCategory(tmpCategories[564]);
    tmpCategories[564]:AddAchievement(InsertAndReturn(achievements, achievement:New(4825)));
    tmpCategories[564]:AddAchievement(InsertAndReturn(achievements, achievement:New(4975)));
    tmpCategories[552] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(198).name, {198})); -- Mount Hyjal
    tmpCategories[550]:AddCategory(tmpCategories[552]);
    tmpCategories[558] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[552]:AddCategory(tmpCategories[558]);
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(4870)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(4959)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5860)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5483)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5859)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5866)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5861)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5870)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5862)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5868)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5864)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5865)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5869)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5879)));
    tmpCategories[565] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[552]:AddCategory(tmpCategories[565]);
    tmpCategories[565]:AddAchievement(InsertAndReturn(achievements, achievement:New(4863)));
    tmpCategories[571] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[552]:AddCategory(tmpCategories[571]);
    tmpCategories[571]:AddAchievement(InsertAndReturn(achievements, achievement:New(4882)));
    tmpCategories[553] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(207).name, {207, 208, 209, 729})); -- Deepholm
    tmpCategories[550]:AddCategory(tmpCategories[553]);
    tmpCategories[559] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[553]:AddCategory(tmpCategories[559]);
    tmpCategories[559]:AddAchievement(InsertAndReturn(achievements, achievement:New(4871)));
    tmpCategories[559]:AddAchievement(InsertAndReturn(achievements, achievement:New(5445)));
    tmpCategories[559]:AddAchievement(InsertAndReturn(achievements, achievement:New(5446)));
    tmpCategories[559]:AddAchievement(InsertAndReturn(achievements, achievement:New(5449)));
    tmpCategories[559]:AddAchievement(InsertAndReturn(achievements, achievement:New(5450)));
    tmpCategories[559]:AddAchievement(InsertAndReturn(achievements, achievement:New(5447)));
    tmpCategories[566] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[553]:AddCategory(tmpCategories[566]);
    tmpCategories[566]:AddAchievement(InsertAndReturn(achievements, achievement:New(4864)));
    tmpCategories[572] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[553]:AddCategory(tmpCategories[572]);
    tmpCategories[572]:AddAchievement(InsertAndReturn(achievements, achievement:New(4883)));
    tmpCategories[554] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(249).name, {249})); -- Uldum
    tmpCategories[550]:AddCategory(tmpCategories[554]);
    tmpCategories[554]:AddAchievement(InsertAndReturn(achievements, achievement:New(5767)));
    tmpCategories[560] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[554]:AddCategory(tmpCategories[560]);
    tmpCategories[560]:AddAchievement(InsertAndReturn(achievements, achievement:New(4872)));
    tmpCategories[560]:AddAchievement(InsertAndReturn(achievements, achievement:New(4961)));
    tmpCategories[560]:AddAchievement(InsertAndReturn(achievements, achievement:New(5317)));
    tmpCategories[567] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[554]:AddCategory(tmpCategories[567]);
    tmpCategories[567]:AddAchievement(InsertAndReturn(achievements, achievement:New(4865)));
    tmpCategories[574] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[554]:AddCategory(tmpCategories[574]);
    tmpCategories[574]:AddAchievement(InsertAndReturn(achievements, achievement:New(4884)));
    tmpCategories[555] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(241).name, {241})); -- Twilight Highlands
    tmpCategories[550]:AddCategory(tmpCategories[555]);
    tmpCategories[561] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[555]:AddCategory(tmpCategories[561]);
    tmpCategories[561]:AddAchievement(InsertAndReturn(achievements, achievement:New(4873, faction.Alliance)));
    tmpCategories[561]:AddAchievement(InsertAndReturn(achievements, achievement:New(5501, faction.Horde)));
    tmpCategories[561]:AddAchievement(InsertAndReturn(achievements, achievement:New(4960)));
    tmpCategories[561]:AddAchievement(InsertAndReturn(achievements, achievement:New(5481, faction.Alliance)));
    tmpCategories[561]:AddAchievement(InsertAndReturn(achievements, achievement:New(5482, faction.Horde)));
    tmpCategories[561]:AddAchievement(InsertAndReturn(achievements, achievement:New(5320, faction.Alliance)));
    tmpCategories[561]:AddAchievement(InsertAndReturn(achievements, achievement:New(5321, faction.Horde)));
    tmpCategories[561]:AddAchievement(InsertAndReturn(achievements, achievement:New(5451)));
    tmpCategories[561]:AddAchievement(InsertAndReturn(achievements, achievement:New(4958)));
    tmpCategories[568] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[555]:AddCategory(tmpCategories[568]);
    tmpCategories[568]:AddAchievement(InsertAndReturn(achievements, achievement:New(4866)));
    tmpCategories[573] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[555]:AddCategory(tmpCategories[573]);
    tmpCategories[573]:AddAchievement(InsertAndReturn(achievements, achievement:New(4885, faction.Alliance)));
    tmpCategories[573]:AddAchievement(InsertAndReturn(achievements, achievement:New(4886, faction.Horde)));
    tmpCategories[556] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(338).name, {338})); -- Molten Front
    tmpCategories[550]:AddCategory(tmpCategories[556]);
    tmpCategories[556]:AddAchievement(InsertAndReturn(achievements, achievement:New(5859)));
    tmpCategories[556]:AddAchievement(InsertAndReturn(achievements, achievement:New(5866)));
    tmpCategories[556]:AddAchievement(InsertAndReturn(achievements, achievement:New(5867)));
    tmpCategories[556]:AddAchievement(InsertAndReturn(achievements, achievement:New(5871)));
    tmpCategories[556]:AddAchievement(InsertAndReturn(achievements, achievement:New(5872)));
    tmpCategories[556]:AddAchievement(InsertAndReturn(achievements, achievement:New(5874)));
    tmpCategories[556]:AddAchievement(InsertAndReturn(achievements, achievement:New(5873)));
    tmpCategories[556]:AddAchievement(InsertAndReturn(achievements, achievement:New(5879)));
    tmpCategories[130] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15272)))); -- Dungeons
    tmpCategories[129]:AddCategory(tmpCategories[130]);
    tmpCategories[130]:AddAchievement(InsertAndReturn(achievements, achievement:New(4844)));
    tmpCategories[130]:AddAchievement(InsertAndReturn(achievements, achievement:New(5506)));
    tmpCategories[130]:AddAchievement(InsertAndReturn(achievements, achievement:New(4845)));
    tmpCategories[132] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(66)), {283, 284})); -- Blackrock Caverns
    tmpCategories[130]:AddCategory(tmpCategories[132]);
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5281)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5282)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5283)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5284)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(4833)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5060)));
    tmpCategories[133] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(65)), {322, 323})); -- Throne of the Tides
    tmpCategories[130]:AddCategory(tmpCategories[133]);
    tmpCategories[133]:AddAchievement(InsertAndReturn(achievements, achievement:New(5285)));
    tmpCategories[133]:AddAchievement(InsertAndReturn(achievements, achievement:New(5286)));
    tmpCategories[133]:AddAchievement(InsertAndReturn(achievements, achievement:New(4839)));
    tmpCategories[133]:AddAchievement(InsertAndReturn(achievements, achievement:New(5061)));
    tmpCategories[134] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(67)), {324})); -- The Stonecore
    tmpCategories[130]:AddCategory(tmpCategories[134]);
    tmpCategories[134]:AddAchievement(InsertAndReturn(achievements, achievement:New(5287)));
    tmpCategories[134]:AddAchievement(InsertAndReturn(achievements, achievement:New(4846)));
    tmpCategories[134]:AddAchievement(InsertAndReturn(achievements, achievement:New(5063)));
    tmpCategories[135] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(68)), {325})); -- The Vortex Pinnacle
    tmpCategories[130]:AddCategory(tmpCategories[135]);
    tmpCategories[135]:AddAchievement(InsertAndReturn(achievements, achievement:New(5289)));
    tmpCategories[135]:AddAchievement(InsertAndReturn(achievements, achievement:New(5288)));
    tmpCategories[135]:AddAchievement(InsertAndReturn(achievements, achievement:New(4847)));
    tmpCategories[135]:AddAchievement(InsertAndReturn(achievements, achievement:New(5064)));
    tmpCategories[136] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(71)), {293})); -- Grim Batol
    tmpCategories[130]:AddCategory(tmpCategories[136]);
    tmpCategories[136]:AddAchievement(InsertAndReturn(achievements, achievement:New(5297)));
    tmpCategories[136]:AddAchievement(InsertAndReturn(achievements, achievement:New(5298)));
    tmpCategories[136]:AddAchievement(InsertAndReturn(achievements, achievement:New(4840)));
    tmpCategories[136]:AddAchievement(InsertAndReturn(achievements, achievement:New(5062)));
    tmpCategories[137] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(70)), {297, 298, 299})); -- Halls of Origination
    tmpCategories[130]:AddCategory(tmpCategories[137]);
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5293)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5294)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5296)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5295)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(4841)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5065)));
    tmpCategories[138] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(69)), {277})); -- Lost City of the Tol'vir
    tmpCategories[130]:AddCategory(tmpCategories[138]);
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(5291)));
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(5290)));
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(5292)));
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(4848)));
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(5066)));
    tmpCategories[139] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(63)), {291, 292})); -- Deadmines
    tmpCategories[130]:AddCategory(tmpCategories[139]);
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5366)));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5367)));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5368)));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5369)));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5370)));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5371)));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(628)));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5083)));
    tmpCategories[140] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(64)), {310, 311, 312, 313, 314, 315, 316})); -- Shadowfang Keep
    tmpCategories[130]:AddCategory(tmpCategories[140]);
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(5503)));
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(5504)));
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(5505)));
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(631)));
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(5093)));
    tmpCategories[141] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(76)), {337})); -- Zul'Gurub
    tmpCategories[130]:AddCategory(tmpCategories[141]);
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5743)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5762)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5765)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5759)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5744)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5768)));
    tmpCategories[142] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(77)), {333})); -- Zul'Aman
    tmpCategories[130]:AddCategory(tmpCategories[142]);
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5858)));
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5750)));
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5761)));
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5760)));
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5769)));
    tmpCategories[143] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(184)), {401, 402, 403, 404, 405, 406})); -- End Time
    tmpCategories[130]:AddCategory(tmpCategories[143]);
    tmpCategories[143]:AddAchievement(InsertAndReturn(achievements, achievement:New(5995)));
    tmpCategories[143]:AddAchievement(InsertAndReturn(achievements, achievement:New(6130)));
    tmpCategories[143]:AddAchievement(InsertAndReturn(achievements, achievement:New(6117)));
    tmpCategories[144] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(185)), {398})); -- Well of Eternity
    tmpCategories[130]:AddCategory(tmpCategories[144]);
    tmpCategories[144]:AddAchievement(InsertAndReturn(achievements, achievement:New(6127)));
    tmpCategories[144]:AddAchievement(InsertAndReturn(achievements, achievement:New(6070)));
    tmpCategories[144]:AddAchievement(InsertAndReturn(achievements, achievement:New(6118)));
    tmpCategories[145] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(186)), {399, 400})); -- Hour of Twilight
    tmpCategories[130]:AddCategory(tmpCategories[145]);
    tmpCategories[145]:AddAchievement(InsertAndReturn(achievements, achievement:New(6132)));
    tmpCategories[145]:AddAchievement(InsertAndReturn(achievements, achievement:New(6119)));
    tmpCategories[131] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15271)))); -- Raids
    tmpCategories[129]:AddCategory(tmpCategories[131]);
    tmpCategories[131]:AddAchievement(InsertAndReturn(achievements, achievement:New(5506)));
    tmpCategories[131]:AddAchievement(InsertAndReturn(achievements, achievement:New(4853)));
    tmpCategories[131]:AddAchievement(InsertAndReturn(achievements, achievement:New(5828)));
    tmpCategories[131]:AddAchievement(InsertAndReturn(achievements, achievement:New(6169)));
    tmpCategories[146] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(75)), {282})); -- Baradin Hold
    tmpCategories[131]:AddCategory(tmpCategories[146]);
    tmpCategories[146]:AddAchievement(InsertAndReturn(achievements, achievement:New(5416)));
    tmpCategories[146]:AddAchievement(InsertAndReturn(achievements, achievement:New(6045)));
    tmpCategories[146]:AddAchievement(InsertAndReturn(achievements, achievement:New(6108)));
    tmpCategories[147] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(73)), {285, 286})); -- Blackwing Descent
    tmpCategories[131]:AddCategory(tmpCategories[147]);
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5306)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5307)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5309)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5308)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5310)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(4849)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(4842)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5094)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5107)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5115)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5109)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5108)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5116)));
    tmpCategories[148] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(72)), {294, 295, 296})); -- The Bastion of Twilight
    tmpCategories[131]:AddCategory(tmpCategories[148]);
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5300)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(4852)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5311)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5312)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5118)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5117)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5119)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5120)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5121)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(4850)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5313, nil, nil, false)));
    tmpCategories[149] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(74)), {328})); -- Throne of the Four Winds
    tmpCategories[131]:AddCategory(tmpCategories[149]);
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(5304)));
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(5305)));
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(5122)));
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(5123)));
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(4851)));
    tmpCategories[150] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(78)), {367, 368, 369})); -- Firelands
    tmpCategories[131]:AddCategory(tmpCategories[150]);
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5821)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5813)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5810)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5829)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5830)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5799)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5855)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5807)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5809)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5808)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5806)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5805)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5804)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5803)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5802)));
    tmpCategories[576] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[150]:AddCategory(tmpCategories[576]);
    tmpCategories[576]:AddAchievement(InsertAndReturn(achievements, achievement:New(5827)));
    tmpCategories[151] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(187)), {409, 410, 411, 412, 413, 414, 415})); -- Dragon Soul
    tmpCategories[131]:AddCategory(tmpCategories[151]);
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6174)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6128)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6129)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6175)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6084)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6105)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6133)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6180)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6109)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6110)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6111)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6112)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6113)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6114)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6115)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6116)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6106)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6107)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6177)));
    tmpCategories[547] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15075)), {244, 245})); -- Tol Barad
    tmpCategories[129]:AddCategory(tmpCategories[547]);
    tmpCategories[547]:AddAchievement(InsertAndReturn(achievements, achievement:New(5489, faction.Alliance)));
    tmpCategories[547]:AddAchievement(InsertAndReturn(achievements, achievement:New(5490, faction.Horde)));
    tmpCategories[563] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[547]:AddCategory(tmpCategories[563]);
    tmpCategories[563]:AddAchievement(InsertAndReturn(achievements, achievement:New(4874)));
    tmpCategories[563]:AddAchievement(InsertAndReturn(achievements, achievement:New(5718, faction.Alliance)));
    tmpCategories[563]:AddAchievement(InsertAndReturn(achievements, achievement:New(5719, faction.Horde)));
    tmpCategories[569] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[547]:AddCategory(tmpCategories[569]);
    tmpCategories[569]:AddAchievement(InsertAndReturn(achievements, achievement:New(5412)));
    tmpCategories[569]:AddAchievement(InsertAndReturn(achievements, achievement:New(5418, faction.Horde)));
    tmpCategories[569]:AddAchievement(InsertAndReturn(achievements, achievement:New(5417, faction.Alliance)));
    tmpCategories[569]:AddAchievement(InsertAndReturn(achievements, achievement:New(5415)));
    tmpCategories[569]:AddAchievement(InsertAndReturn(achievements, achievement:New(5488)));
    tmpCategories[569]:AddAchievement(InsertAndReturn(achievements, achievement:New(5487)));
    tmpCategories[569]:AddAchievement(InsertAndReturn(achievements, achievement:New(5486)));
    tmpCategories[575] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[547]:AddCategory(tmpCategories[575]);
    tmpCategories[575]:AddAchievement(InsertAndReturn(achievements, achievement:New(5375, faction.Alliance)));
    tmpCategories[575]:AddAchievement(InsertAndReturn(achievements, achievement:New(5376, faction.Horde)));
    tmpCategories[189] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15164)))); -- Mists of Pandaria
    tmpCategories[491] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[189]:AddCategory(tmpCategories[491]);
    tmpCategories[491]:AddAchievement(InsertAndReturn(achievements, achievement:New(6926)));
    tmpCategories[526] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(424).name)); -- Pandaria
    tmpCategories[491]:AddCategory(tmpCategories[526]);
    tmpCategories[527] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[526]:AddCategory(tmpCategories[527]);
    tmpCategories[527]:AddAchievement(InsertAndReturn(achievements, achievement:New(6541)));
    tmpCategories[527]:AddAchievement(InsertAndReturn(achievements, achievement:New(7285)));
    tmpCategories[527]:AddAchievement(InsertAndReturn(achievements, achievement:New(7928, faction.Alliance)));
    tmpCategories[527]:AddAchievement(InsertAndReturn(achievements, achievement:New(7929, faction.Horde)));
    tmpCategories[528] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[526]:AddCategory(tmpCategories[528]);
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(6716)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(6754)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(6846)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(6850)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(6847)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(6855)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(6856)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(6858)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7230)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7281)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7994)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7995)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7996)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7997)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7282)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7283)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7284)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7437)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7438)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7439)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(8078)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(6350)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7329)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7330)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(6974)));
    tmpCategories[529] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[526]:AddCategory(tmpCategories[529]);
    tmpCategories[529]:AddAchievement(InsertAndReturn(achievements, achievement:New(7479)));
    tmpCategories[529]:AddAchievement(InsertAndReturn(achievements, achievement:New(6543)));
    tmpCategories[529]:AddAchievement(InsertAndReturn(achievements, achievement:New(6547)));
    tmpCategories[529]:AddAchievement(InsertAndReturn(achievements, achievement:New(6548)));
    tmpCategories[529]:AddAchievement(InsertAndReturn(achievements, achievement:New(6827, faction.Horde)));
    tmpCategories[529]:AddAchievement(InsertAndReturn(achievements, achievement:New(6828, faction.Alliance)));
    tmpCategories[492] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(371).name, {371, 372, 373, 374, 375})); -- The Jade Forest
    tmpCategories[491]:AddCategory(tmpCategories[492]);
    tmpCategories[519] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[492]:AddCategory(tmpCategories[519]);
    tmpCategories[519]:AddAchievement(InsertAndReturn(achievements, achievement:New(6300, faction.Alliance)));
    tmpCategories[519]:AddAchievement(InsertAndReturn(achievements, achievement:New(6534, faction.Horde)));
    tmpCategories[519]:AddAchievement(InsertAndReturn(achievements, achievement:New(7289)));
    tmpCategories[519]:AddAchievement(InsertAndReturn(achievements, achievement:New(7290)));
    tmpCategories[519]:AddAchievement(InsertAndReturn(achievements, achievement:New(7291)));
    tmpCategories[545] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[492]:AddCategory(tmpCategories[545]);
    tmpCategories[545]:AddAchievement(InsertAndReturn(achievements, achievement:New(6351)));
    tmpCategories[545]:AddAchievement(InsertAndReturn(achievements, achievement:New(7381)));
    tmpCategories[546] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[492]:AddCategory(tmpCategories[546]);
    tmpCategories[546]:AddAchievement(InsertAndReturn(achievements, achievement:New(6550)));
    tmpCategories[493] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(376).name, {376, 377})); -- Valley of the Four Winds
    tmpCategories[491]:AddCategory(tmpCategories[493]);
    tmpCategories[493]:AddAchievement(InsertAndReturn(achievements, achievement:New(6517)));
    tmpCategories[516] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[493]:AddCategory(tmpCategories[516]);
    tmpCategories[516]:AddAchievement(InsertAndReturn(achievements, achievement:New(6301)));
    tmpCategories[516]:AddAchievement(InsertAndReturn(achievements, achievement:New(7292)));
    tmpCategories[516]:AddAchievement(InsertAndReturn(achievements, achievement:New(7293)));
    tmpCategories[516]:AddAchievement(InsertAndReturn(achievements, achievement:New(7294)));
    tmpCategories[516]:AddAchievement(InsertAndReturn(achievements, achievement:New(7295)));
    tmpCategories[516]:AddAchievement(InsertAndReturn(achievements, achievement:New(7296)));
    tmpCategories[516]:AddAchievement(InsertAndReturn(achievements, achievement:New(7502)));
    tmpCategories[544] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[493]:AddCategory(tmpCategories[544]);
    tmpCategories[544]:AddAchievement(InsertAndReturn(achievements, achievement:New(6969)));
    tmpCategories[518] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[493]:AddCategory(tmpCategories[518]);
    tmpCategories[518]:AddAchievement(InsertAndReturn(achievements, achievement:New(6544)));
    tmpCategories[518]:AddAchievement(InsertAndReturn(achievements, achievement:New(6551)));
    tmpCategories[518]:AddAchievement(InsertAndReturn(achievements, achievement:New(6552)));
    tmpCategories[494] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(418).name, {418, 419, 420, 421})); -- Krasarang Wilds
    tmpCategories[491]:AddCategory(tmpCategories[494]);
    tmpCategories[513] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[494]:AddCategory(tmpCategories[513]);
    tmpCategories[513]:AddAchievement(InsertAndReturn(achievements, achievement:New(6535, faction.Alliance)));
    tmpCategories[513]:AddAchievement(InsertAndReturn(achievements, achievement:New(6536, faction.Horde)));
    tmpCategories[513]:AddAchievement(InsertAndReturn(achievements, achievement:New(7287)));
    tmpCategories[514] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[494]:AddCategory(tmpCategories[514]);
    tmpCategories[514]:AddAchievement(InsertAndReturn(achievements, achievement:New(6975)));
    tmpCategories[514]:AddAchievement(InsertAndReturn(achievements, achievement:New(7518)));
    tmpCategories[514]:AddAchievement(InsertAndReturn(achievements, achievement:New(7932)));
    tmpCategories[543] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[494]:AddCategory(tmpCategories[543]);
    tmpCategories[543]:AddAchievement(InsertAndReturn(achievements, achievement:New(8205, faction.Alliance)));
    tmpCategories[543]:AddAchievement(InsertAndReturn(achievements, achievement:New(8206, faction.Horde)));
    tmpCategories[495] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(379).name, {379, 380, 381, 382, 383, 384, 385, 386, 387, 434})); -- Kun-Lai Summit
    tmpCategories[491]:AddCategory(tmpCategories[495]);
    tmpCategories[495]:AddAchievement(InsertAndReturn(achievements, achievement:New(6480)));
    tmpCategories[510] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[495]:AddCategory(tmpCategories[510]);
    tmpCategories[510]:AddAchievement(InsertAndReturn(achievements, achievement:New(6537, faction.Alliance)));
    tmpCategories[510]:AddAchievement(InsertAndReturn(achievements, achievement:New(6538, faction.Horde)));
    tmpCategories[510]:AddAchievement(InsertAndReturn(achievements, achievement:New(7286)));
    tmpCategories[542] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[495]:AddCategory(tmpCategories[542]);
    tmpCategories[542]:AddAchievement(InsertAndReturn(achievements, achievement:New(6976)));
    tmpCategories[496] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(388).name, {388, 389})); -- Townlong Steppes
    tmpCategories[491]:AddCategory(tmpCategories[496]);
    tmpCategories[507] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[496]:AddCategory(tmpCategories[507]);
    tmpCategories[507]:AddAchievement(InsertAndReturn(achievements, achievement:New(6539)));
    tmpCategories[507]:AddAchievement(InsertAndReturn(achievements, achievement:New(7288)));
    tmpCategories[507]:AddAchievement(InsertAndReturn(achievements, achievement:New(7297)));
    tmpCategories[507]:AddAchievement(InsertAndReturn(achievements, achievement:New(7298)));
    tmpCategories[507]:AddAchievement(InsertAndReturn(achievements, achievement:New(7299)));
    tmpCategories[507]:AddAchievement(InsertAndReturn(achievements, achievement:New(7307)));
    tmpCategories[507]:AddAchievement(InsertAndReturn(achievements, achievement:New(7308)));
    tmpCategories[507]:AddAchievement(InsertAndReturn(achievements, achievement:New(7309)));
    tmpCategories[507]:AddAchievement(InsertAndReturn(achievements, achievement:New(7310)));
    tmpCategories[540] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[496]:AddCategory(tmpCategories[540]);
    tmpCategories[540]:AddAchievement(InsertAndReturn(achievements, achievement:New(6977)));
    tmpCategories[541] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[496]:AddCategory(tmpCategories[541]);
    tmpCategories[541]:AddAchievement(InsertAndReturn(achievements, achievement:New(6366)));
    tmpCategories[497] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(422).name, {422})); -- Dread Wastes
    tmpCategories[491]:AddCategory(tmpCategories[497]);
    tmpCategories[504] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[497]:AddCategory(tmpCategories[504]);
    tmpCategories[504]:AddAchievement(InsertAndReturn(achievements, achievement:New(6540)));
    tmpCategories[504]:AddAchievement(InsertAndReturn(achievements, achievement:New(7312)));
    tmpCategories[504]:AddAchievement(InsertAndReturn(achievements, achievement:New(7313)));
    tmpCategories[504]:AddAchievement(InsertAndReturn(achievements, achievement:New(7314)));
    tmpCategories[504]:AddAchievement(InsertAndReturn(achievements, achievement:New(7316)));
    tmpCategories[538] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[497]:AddCategory(tmpCategories[538]);
    tmpCategories[538]:AddAchievement(InsertAndReturn(achievements, achievement:New(6978)));
    tmpCategories[538]:AddAchievement(InsertAndReturn(achievements, achievement:New(6857)));
    tmpCategories[539] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[497]:AddCategory(tmpCategories[539]);
    tmpCategories[539]:AddAchievement(InsertAndReturn(achievements, achievement:New(6545)));
    tmpCategories[539]:AddAchievement(InsertAndReturn(achievements, achievement:New(8023)));
    tmpCategories[498] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(390).name, {390, 391, 392, 393, 394, 395, 396})); -- Vale of Eternal Blossoms
    tmpCategories[491]:AddCategory(tmpCategories[498]);
    tmpCategories[501] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[498]:AddCategory(tmpCategories[501]);
    tmpCategories[501]:AddAchievement(InsertAndReturn(achievements, achievement:New(7317)));
    tmpCategories[501]:AddAchievement(InsertAndReturn(achievements, achievement:New(7318)));
    tmpCategories[501]:AddAchievement(InsertAndReturn(achievements, achievement:New(7319)));
    tmpCategories[501]:AddAchievement(InsertAndReturn(achievements, achievement:New(7320)));
    tmpCategories[501]:AddAchievement(InsertAndReturn(achievements, achievement:New(7321)));
    tmpCategories[501]:AddAchievement(InsertAndReturn(achievements, achievement:New(7322)));
    tmpCategories[501]:AddAchievement(InsertAndReturn(achievements, achievement:New(7323)));
    tmpCategories[501]:AddAchievement(InsertAndReturn(achievements, achievement:New(7324)));
    tmpCategories[536] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[498]:AddCategory(tmpCategories[536]);
    tmpCategories[536]:AddAchievement(InsertAndReturn(achievements, achievement:New(6979)));
    tmpCategories[537] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[498]:AddCategory(tmpCategories[537]);
    tmpCategories[537]:AddAchievement(InsertAndReturn(achievements, achievement:New(6546)));
    tmpCategories[534] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(507).name, {507})); -- Isle of Giants
    tmpCategories[491]:AddCategory(tmpCategories[534]);
    tmpCategories[534]:AddAchievement(InsertAndReturn(achievements, achievement:New(8123)));
    tmpCategories[534]:AddAchievement(InsertAndReturn(achievements, achievement:New(8092)));
    tmpCategories[522] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(504).name, {504, 505, 506})); -- Isle of Thunder
    tmpCategories[491]:AddCategory(tmpCategories[522]);
    tmpCategories[522]:AddAchievement(InsertAndReturn(achievements, achievement:New(8028)));
    tmpCategories[523] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[522]:AddCategory(tmpCategories[523]);
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8099)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8100)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8101)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8104)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8105)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8107)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8108)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8109)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8110)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8111)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8112)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8114)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8115)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8116)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8117)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8118)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8119)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8120)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8212)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8121)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8106, nil, nil, false)));
    tmpCategories[524] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[522]:AddCategory(tmpCategories[524]);
    tmpCategories[524]:AddAchievement(InsertAndReturn(achievements, achievement:New(8103)));
    tmpCategories[524]:AddAchievement(InsertAndReturn(achievements, achievement:New(8049)));
    tmpCategories[524]:AddAchievement(InsertAndReturn(achievements, achievement:New(8050)));
    tmpCategories[524]:AddAchievement(InsertAndReturn(achievements, achievement:New(8051)));
    tmpCategories[525] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[522]:AddCategory(tmpCategories[525]);
    tmpCategories[525]:AddAchievement(InsertAndReturn(achievements, achievement:New(8208, faction.Alliance)));
    tmpCategories[525]:AddAchievement(InsertAndReturn(achievements, achievement:New(8209, faction.Horde)));
    tmpCategories[525]:AddAchievement(InsertAndReturn(achievements, achievement:New(8210)));
    tmpCategories[530] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(554).name)); -- Timeless Isle
    tmpCategories[491]:AddCategory(tmpCategories[530]);
    tmpCategories[530]:AddAchievement(InsertAndReturn(achievements, achievement:New(8535)));
    tmpCategories[531] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[530]:AddCategory(tmpCategories[531]);
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8712)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8714)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8722)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8724)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8723)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8784)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8725)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8726)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8727)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8729)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8730)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8743)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8716)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8717)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8718)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8719)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8720)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8721)));
    tmpCategories[535] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[530]:AddCategory(tmpCategories[535]);
    tmpCategories[535]:AddAchievement(InsertAndReturn(achievements, achievement:New(8715)));
    tmpCategories[190] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15272)))); -- Dungeons
    tmpCategories[189]:AddCategory(tmpCategories[190]);
    tmpCategories[190]:AddAchievement(InsertAndReturn(achievements, achievement:New(6925)));
    tmpCategories[190]:AddAchievement(InsertAndReturn(achievements, achievement:New(6926)));
    tmpCategories[190]:AddAchievement(InsertAndReturn(achievements, achievement:New(6927)));
    tmpCategories[193] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(313)), {429, 430})); -- Temple of the Jade Serpent
    tmpCategories[190]:AddCategory(tmpCategories[193]);
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6475)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6460)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6671)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6757)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6758)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6884, nil, nil, false)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6885, nil, nil, false)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6886, nil, nil, false)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6887, nil, nil, false)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(8430, nil, nil, false)));
    tmpCategories[194] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(302)), {439, 440, 441, 442})); -- Stormstout Brewery
    tmpCategories[190]:AddCategory(tmpCategories[194]);
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6402)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6089)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6400)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6420)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6457)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6456)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6888, nil, nil, false)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6889, nil, nil, false)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6890, nil, nil, false)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6891, nil, nil, false)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(8431, nil, nil, false)));
    tmpCategories[195] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(321)), {453, 454, 455})); -- Mogu'shan Palace
    tmpCategories[190]:AddCategory(tmpCategories[195]);
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6713)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6478)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6736)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6755)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6756)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6892, nil, nil, false)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6899, nil, nil, false)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6900, nil, nil, false)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6901, nil, nil, false)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(8433, nil, nil, false)));
    tmpCategories[196] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(312)), {443, 444, 445, 446})); -- Shado-Pan Monastery
    tmpCategories[190]:AddCategory(tmpCategories[196]);
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6477)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6472)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6471)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6469)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6470)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6893, nil, nil, false)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6902, nil, nil, false)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6903, nil, nil, false)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6904, nil, nil, false)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(8432, nil, nil, false)));
    tmpCategories[197] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(303)), {437, 438})); -- Gate of the Setting Sun
    tmpCategories[190]:AddCategory(tmpCategories[197]);
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6479)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6476)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6945)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(10010)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6759)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6894, nil, nil, false)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6905, nil, nil, false)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6906, nil, nil, false)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6907, nil, nil, false)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(8434, nil, nil, false)));
    tmpCategories[198] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(324)), {457, 458, 459})); -- Siege of Niuzao Temple
    tmpCategories[190]:AddCategory(tmpCategories[198]);
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6688)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6485)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6822)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(10011)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6763)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6898, nil, nil, false)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6917, nil, nil, false)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6918, nil, nil, false)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6919, nil, nil, false)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(8439, nil, nil, false)));
    tmpCategories[199] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(311)), {431, 432})); -- Scarlet Halls
    tmpCategories[190]:AddCategory(tmpCategories[199]);
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6684)));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6427)));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(7413)));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6760)));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6895, nil, nil, false)));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6908, nil, nil, false)));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6909, nil, nil, false)));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6910, nil, nil, false)));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(8436, nil, nil, false)));
    tmpCategories[200] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(316)), {435, 436})); -- Scarlet Monastery
    tmpCategories[190]:AddCategory(tmpCategories[200]);
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6946)));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6928)));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6929)));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(637)));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6761)));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6896, nil, nil, false)));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6911, nil, nil, false)));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6912, nil, nil, false)));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6913, nil, nil, false)));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(8437, nil, nil, false)));
    tmpCategories[201] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(246)), {476, 477, 478, 479})); -- Scholomance
    tmpCategories[190]:AddCategory(tmpCategories[201]);
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6531)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6394)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6396)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6715)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6821)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(645)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6762)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6897, nil, nil, false)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6914, nil, nil, false)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6915, nil, nil, false)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6916, nil, nil, false)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(8438, nil, nil, false)));
    tmpCategories[191] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15271)))); -- Raids
    tmpCategories[189]:AddCategory(tmpCategories[191]);
    tmpCategories[191]:AddAchievement(InsertAndReturn(achievements, achievement:New(6926)));
    tmpCategories[191]:AddAchievement(InsertAndReturn(achievements, achievement:New(6932)));
    tmpCategories[191]:AddAchievement(InsertAndReturn(achievements, achievement:New(8124)));
    tmpCategories[191]:AddAchievement(InsertAndReturn(achievements, achievement:New(8454)));
    tmpCategories[202] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(317)), {471, 472, 473})); -- Mogu'shan Vaults
    tmpCategories[191]:AddCategory(tmpCategories[202]);
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6823)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6674)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(7056)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(7933)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6687)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6686)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6455)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6719)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6720)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6721)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6722)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6723)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6724)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6458)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6844)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6954, nil, nil, false)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(7485, nil, nil, false)));
    tmpCategories[203] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(330)), {474, 475})); -- Heart of Fear
    tmpCategories[191]:AddCategory(tmpCategories[203]);
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6937)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6936)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6553)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6683)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6518)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6922)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6725)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6726)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6727)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6728)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6729)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6730)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6718)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6845)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(8246, nil, nil, false)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(7486, nil, nil, false)));
    tmpCategories[204] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(320)), {456})); -- Terrace of Endless Spring
    tmpCategories[191]:AddCategory(tmpCategories[204]);
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6717)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6933)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6824)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6825)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6731)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6732)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6733)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6734)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6689)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(8248, nil, nil, false)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(7487, nil, nil, false)));
    tmpCategories[205] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(362)), {508, 509, 510, 511, 512, 513, 514, 515})); -- Throne of Thunder
    tmpCategories[191]:AddCategory(tmpCategories[205]);
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8094)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8038)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8073)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8077)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8082)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8097)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8098)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8037)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8081)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8087)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8086)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8090)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8056)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8057)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8058)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8059)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8060)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8061)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8062)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8063)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8064)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8065)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8066)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8067)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8068)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8069)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8070)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8071)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8072)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8089, nil, nil, false)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8249, nil, nil, false)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8238, nil, nil, false)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8260, nil, nil, false)));
    tmpCategories[206] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(369)), {556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570})); -- Siege of Orgrimmar
    tmpCategories[191]:AddCategory(tmpCategories[206]);
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8536)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8528)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8532)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8521)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8530)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8520)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8453)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8448)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8538)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8529)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8527)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8543)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8531)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8537)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8463)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8465)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8466)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8467)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8468)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8469)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8470)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8471)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8472)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8478)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8479)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8480)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8481)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8482)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8458)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8459)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8461)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8462)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8679, faction.Alliance)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8680, faction.Horde)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8398, nil, nil, false)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8399, nil, nil, false)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8400, nil, nil, false)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8401, nil, nil, false)));
    tmpCategories[549] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15117)))); -- Pet Battles
    tmpCategories[189]:AddCategory(tmpCategories[549]);
    tmpCategories[549]:AddAchievement(InsertAndReturn(achievements, achievement:New(6616)));
    tmpCategories[549]:AddAchievement(InsertAndReturn(achievements, achievement:New(6589)));
    tmpCategories[549]:AddAchievement(InsertAndReturn(achievements, achievement:New(8519)));
    tmpCategories[549]:AddAchievement(InsertAndReturn(achievements, achievement:New(13469)));
    tmpCategories[549]:AddAchievement(InsertAndReturn(achievements, achievement:New(6606)));
    tmpCategories[549]:AddAchievement(InsertAndReturn(achievements, achievement:New(8410)));
    tmpCategories[549]:AddAchievement(InsertAndReturn(achievements, achievement:New(8518)));
    tmpCategories[549]:AddAchievement(InsertAndReturn(achievements, achievement:New(7908)));
    tmpCategories[549]:AddAchievement(InsertAndReturn(achievements, achievement:New(7936)));
    tmpCategories[549]:AddAchievement(InsertAndReturn(achievements, achievement:New(8080)));
    tmpCategories[192] = InsertAndReturn(categories, achievementCategory:New(addon.L["Scenarios"])); -- Scenarios
    tmpCategories[189]:AddCategory(tmpCategories[192]);
    tmpCategories[192]:AddAchievement(InsertAndReturn(achievements, achievement:New(6943)));
    tmpCategories[192]:AddAchievement(InsertAndReturn(achievements, achievement:New(7385)));
    tmpCategories[192]:AddAchievement(InsertAndReturn(achievements, achievement:New(6874, faction.Alliance)));
    tmpCategories[192]:AddAchievement(InsertAndReturn(achievements, achievement:New(7509, faction.Horde)));
    tmpCategories[207] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(517)), {447})); -- A Brewing Storm
    tmpCategories[192]:AddCategory(tmpCategories[207]);
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(7252)));
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(8310)));
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(7257)));
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(7261)));
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(7258)));
    tmpCategories[499] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(589)), {487})); -- A Little Patience
    tmpCategories[192]:AddCategory(tmpCategories[499]);
    tmpCategories[499]:AddAchievement(InsertAndReturn(achievements, achievement:New(7988)));
    tmpCategories[499]:AddAchievement(InsertAndReturn(achievements, achievement:New(7989)));
    tmpCategories[499]:AddAchievement(InsertAndReturn(achievements, achievement:New(7990)));
    tmpCategories[499]:AddAchievement(InsertAndReturn(achievements, achievement:New(7992)));
    tmpCategories[499]:AddAchievement(InsertAndReturn(achievements, achievement:New(7993)));
    tmpCategories[499]:AddAchievement(InsertAndReturn(achievements, achievement:New(7991)));
    tmpCategories[208] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(511)), {480})); -- Arena of Annihilation
    tmpCategories[192]:AddCategory(tmpCategories[208]);
    tmpCategories[208]:AddAchievement(InsertAndReturn(achievements, achievement:New(7271)));
    tmpCategories[208]:AddAchievement(InsertAndReturn(achievements, achievement:New(7273)));
    tmpCategories[208]:AddAchievement(InsertAndReturn(achievements, achievement:New(7272)));
    tmpCategories[214] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(593)), {451})); -- Assault on Zan'vess
    tmpCategories[192]:AddCategory(tmpCategories[214]);
    tmpCategories[214]:AddAchievement(InsertAndReturn(achievements, achievement:New(8016)));
    tmpCategories[214]:AddAchievement(InsertAndReturn(achievements, achievement:New(8017)));
    tmpCategories[220] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(646)))); -- Blood in the Snow
    tmpCategories[192]:AddCategory(tmpCategories[220]);
    tmpCategories[220]:AddAchievement(InsertAndReturn(achievements, achievement:New(8316)));
    tmpCategories[220]:AddAchievement(InsertAndReturn(achievements, achievement:New(8312)));
    tmpCategories[220]:AddAchievement(InsertAndReturn(achievements, achievement:New(8329)));
    tmpCategories[220]:AddAchievement(InsertAndReturn(achievements, achievement:New(8330)));
    tmpCategories[209] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(539)), {452})); -- Brewmoon Festival
    tmpCategories[192]:AddCategory(tmpCategories[209]);
    tmpCategories[209]:AddAchievement(InsertAndReturn(achievements, achievement:New(6923)));
    tmpCategories[209]:AddAchievement(InsertAndReturn(achievements, achievement:New(6931)));
    tmpCategories[209]:AddAchievement(InsertAndReturn(achievements, achievement:New(6930)));
    tmpCategories[210] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(504)), {481, 482})); -- Crypt of Forgotten Kings
    tmpCategories[192]:AddCategory(tmpCategories[210]);
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(7522)));
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(8311)));
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(7276)));
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(7275)));
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(8368)));
    tmpCategories[215] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(616)), {488, 489})); -- Dagger in the Dark
    tmpCategories[192]:AddCategory(tmpCategories[215]);
    tmpCategories[215]:AddAchievement(InsertAndReturn(achievements, achievement:New(8009)));
    tmpCategories[215]:AddAchievement(InsertAndReturn(achievements, achievement:New(7987)));
    tmpCategories[215]:AddAchievement(InsertAndReturn(achievements, achievement:New(7984)));
    tmpCategories[215]:AddAchievement(InsertAndReturn(achievements, achievement:New(7986)));
    tmpCategories[221] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(647)), {520, 521})); -- Dark Heart of Pandaria
    tmpCategories[192]:AddCategory(tmpCategories[221]);
    tmpCategories[221]:AddAchievement(InsertAndReturn(achievements, achievement:New(8317)));
    tmpCategories[221]:AddAchievement(InsertAndReturn(achievements, achievement:New(8318)));
    tmpCategories[221]:AddAchievement(InsertAndReturn(achievements, achievement:New(8319)));
    tmpCategories[218] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(595)), {498})); -- Domination Point
    tmpCategories[192]:AddCategory(tmpCategories[218]);
    tmpCategories[218]:AddAchievement(InsertAndReturn(achievements, achievement:New(8013, faction.Horde)));
    tmpCategories[218]:AddAchievement(InsertAndReturn(achievements, achievement:New(8014, faction.Horde)));
    tmpCategories[218]:AddAchievement(InsertAndReturn(achievements, achievement:New(8015, faction.Horde)));
    tmpCategories[211] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(492)), {448})); -- Greenstone Village
    tmpCategories[192]:AddCategory(tmpCategories[211]);
    tmpCategories[211]:AddAchievement(InsertAndReturn(achievements, achievement:New(7265)));
    tmpCategories[211]:AddAchievement(InsertAndReturn(achievements, achievement:New(7267)));
    tmpCategories[211]:AddAchievement(InsertAndReturn(achievements, achievement:New(7266)));
    tmpCategories[216] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(590)), {486})); -- Lion's Landing
    tmpCategories[192]:AddCategory(tmpCategories[216]);
    tmpCategories[216]:AddAchievement(InsertAndReturn(achievements, achievement:New(8010, faction.Alliance)));
    tmpCategories[216]:AddAchievement(InsertAndReturn(achievements, achievement:New(8011, faction.Alliance)));
    tmpCategories[216]:AddAchievement(InsertAndReturn(achievements, achievement:New(8012, faction.Alliance)));
    tmpCategories[500] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(417).name .. " (" .. (GetCategoryInfo(15234)) .. ")", {417})); -- Temple of Kotmogu (Legacy)
    tmpCategories[192]:AddCategory(tmpCategories[500]);
    tmpCategories[500]:AddAchievement(InsertAndReturn(achievements, achievement:New(7268, nil, nil, false, false)));
    tmpCategories[500]:AddAchievement(InsertAndReturn(achievements, achievement:New(7270, nil, nil, false, false)));
    tmpCategories[500]:AddAchievement(InsertAndReturn(achievements, achievement:New(7269, nil, nil, false, false)));
    tmpCategories[222] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(649)), {522})); -- The Secrets of Ragefire
    tmpCategories[192]:AddCategory(tmpCategories[222]);
    tmpCategories[222]:AddAchievement(InsertAndReturn(achievements, achievement:New(8294)));
    tmpCategories[222]:AddAchievement(InsertAndReturn(achievements, achievement:New(8327)));
    tmpCategories[222]:AddAchievement(InsertAndReturn(achievements, achievement:New(8295)));
    tmpCategories[212] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(566)), {416, 483})); -- Theramore's Fall
    tmpCategories[192]:AddCategory(tmpCategories[212]);
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7523, faction.Alliance)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7524, faction.Horde)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7526, faction.Alliance)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7529, faction.Horde)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7527, faction.Alliance)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7530, faction.Horde)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7467, faction.Alliance, nil, false)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7468, faction.Horde, nil, false)));
    tmpCategories[213] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(499)), {450})); -- Unga Ingoo
    tmpCategories[192]:AddCategory(tmpCategories[213]);
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7249)));
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7232)));
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7239)));
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7248)));
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7231)));
    tmpCategories[219] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(655)), {524})); -- Battle on the High Seas
    tmpCategories[192]:AddCategory(tmpCategories[219]);
    tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8314, faction.Alliance)));
    tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8364, faction.Alliance)));
    tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8315, faction.Horde)));
    tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8366, faction.Horde)));
    tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8347)));
    tmpCategories[490] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15222)), {480})); -- Proving Grounds
    tmpCategories[189]:AddCategory(tmpCategories[490]);
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9572)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9573)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9574)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9575)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9576)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9577)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9578)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9579)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9580)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9581)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9582)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9583)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9584)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9585)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9586)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9587)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9588)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9589)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9590)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9597)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8486, nil, nil, false)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8491, nil, nil, false)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8496, nil, nil, false)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8501, nil, nil, false)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8504, nil, nil, false)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8507, nil, nil, false)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8487, nil, nil, false)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8492, nil, nil, false)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8497, nil, nil, false)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8502, nil, nil, false)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8505, nil, nil, false)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8508, nil, nil, false)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8488, nil, nil, false)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8493, nil, nil, false)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8498, nil, nil, false)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8503, nil, nil, false)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8506, nil, nil, false)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8509, nil, nil, false)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8697, nil, nil, false)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8812, nil, nil, false)));
    tmpCategories[223] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15233)))); -- Warlords of Dreanor
    tmpCategories[449] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[223]:AddCategory(tmpCategories[449]);
    tmpCategories[486] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(572).name)); -- Draenor
    tmpCategories[449]:AddCategory(tmpCategories[486]);
    tmpCategories[487] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[486]:AddCategory(tmpCategories[487]);
    tmpCategories[487]:AddAchievement(InsertAndReturn(achievements, achievement:New(8921, faction.Alliance)));
    tmpCategories[487]:AddAchievement(InsertAndReturn(achievements, achievement:New(8922, faction.Horde)));
    tmpCategories[487]:AddAchievement(InsertAndReturn(achievements, achievement:New(9491, faction.Alliance)));
    tmpCategories[487]:AddAchievement(InsertAndReturn(achievements, achievement:New(9492, faction.Horde)));
    tmpCategories[487]:AddAchievement(InsertAndReturn(achievements, achievement:New(9564, faction.Alliance)));
    tmpCategories[487]:AddAchievement(InsertAndReturn(achievements, achievement:New(9562, faction.Horde)));
    tmpCategories[487]:AddAchievement(InsertAndReturn(achievements, achievement:New(9833, faction.Alliance)));
    tmpCategories[487]:AddAchievement(InsertAndReturn(achievements, achievement:New(9923, faction.Horde)));
    tmpCategories[488] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[486]:AddCategory(tmpCategories[488]);
    tmpCategories[488]:AddAchievement(InsertAndReturn(achievements, achievement:New(10018)));
    tmpCategories[488]:AddAchievement(InsertAndReturn(achievements, achievement:New(9726)));
    tmpCategories[488]:AddAchievement(InsertAndReturn(achievements, achievement:New(9727)));
    tmpCategories[488]:AddAchievement(InsertAndReturn(achievements, achievement:New(10348)));
    tmpCategories[488]:AddAchievement(InsertAndReturn(achievements, achievement:New(9728)));
    tmpCategories[488]:AddAchievement(InsertAndReturn(achievements, achievement:New(9502)));
    tmpCategories[488]:AddAchievement(InsertAndReturn(achievements, achievement:New(14728)));
    tmpCategories[488]:AddAchievement(InsertAndReturn(achievements, achievement:New(8935)));
    tmpCategories[489] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[486]:AddCategory(tmpCategories[489]);
    tmpCategories[489]:AddAchievement(InsertAndReturn(achievements, achievement:New(9477, faction.Horde)));
    tmpCategories[489]:AddAchievement(InsertAndReturn(achievements, achievement:New(9478, faction.Alliance)));
    tmpCategories[450] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(539).name, {539, 540, 541})); -- Shadowmoon Valley
    tmpCategories[449]:AddCategory(tmpCategories[450]);
    tmpCategories[457] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[450]:AddCategory(tmpCategories[457]);
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(8845, faction.Alliance)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9602, faction.Alliance)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9528, faction.Alliance)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9433)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9434)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9432)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9436)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9435)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9437)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9483)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9479)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9481)));
    tmpCategories[458] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[450]:AddCategory(tmpCategories[458]);
    tmpCategories[458]:AddAchievement(InsertAndReturn(achievements, achievement:New(8938)));
    tmpCategories[460] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[450]:AddCategory(tmpCategories[460]);
    tmpCategories[460]:AddAchievement(InsertAndReturn(achievements, achievement:New(9470, faction.Alliance)));
    tmpCategories[451] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(525).name, {525, 526, 527, 528, 529, 530, 531, 532, 533})); -- Frostfire Ridge
    tmpCategories[449]:AddCategory(tmpCategories[451]);
    tmpCategories[461] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[451]:AddCategory(tmpCategories[461]);
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(8671, faction.Horde)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9606, faction.Horde)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9529, faction.Horde)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9533)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9530, faction.Alliance)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9531, faction.Horde)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9534)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9537)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9536)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9535)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9710)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9711)));
    tmpCategories[462] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[451]:AddCategory(tmpCategories[462]);
    tmpCategories[462]:AddAchievement(InsertAndReturn(achievements, achievement:New(8937)));
    tmpCategories[464] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[451]:AddCategory(tmpCategories[464]);
    tmpCategories[464]:AddAchievement(InsertAndReturn(achievements, achievement:New(9471, faction.Horde)));
    tmpCategories[452] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(543).name, {543, 544, 545, 546, 547, 548, 549})); -- Gorgrond
    tmpCategories[449]:AddCategory(tmpCategories[452]);
    tmpCategories[465] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[452]:AddCategory(tmpCategories[465]);
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(8923, faction.Alliance)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(8924, faction.Horde)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(9607)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(9655)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(9656)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(9659)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(9678)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(9667)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(9654)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(9658)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(9663)));
    tmpCategories[466] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[452]:AddCategory(tmpCategories[466]);
    tmpCategories[466]:AddAchievement(InsertAndReturn(achievements, achievement:New(8939)));
    tmpCategories[466]:AddAchievement(InsertAndReturn(achievements, achievement:New(9400)));
    tmpCategories[466]:AddAchievement(InsertAndReturn(achievements, achievement:New(9401)));
    tmpCategories[466]:AddAchievement(InsertAndReturn(achievements, achievement:New(9402)));
    tmpCategories[468] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[452]:AddCategory(tmpCategories[468]);
    tmpCategories[468]:AddAchievement(InsertAndReturn(achievements, achievement:New(9475, faction.Horde)));
    tmpCategories[453] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(535).name, {535, 536, 537, 538})); -- Talador
    tmpCategories[449]:AddCategory(tmpCategories[453]);
    tmpCategories[469] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[453]:AddCategory(tmpCategories[469]);
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(8920, faction.Alliance)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(8919, faction.Horde)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(9674)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(9633)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(9638)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(9635)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(9634)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(9636)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(9632)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(9637)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(9486)));
    tmpCategories[470] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[453]:AddCategory(tmpCategories[470]);
    tmpCategories[470]:AddAchievement(InsertAndReturn(achievements, achievement:New(8940)));
    tmpCategories[472] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[453]:AddCategory(tmpCategories[472]);
    tmpCategories[472]:AddAchievement(InsertAndReturn(achievements, achievement:New(9476, faction.Alliance)));
    tmpCategories[454] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(542).name, {542})); -- Spires of Arak
    tmpCategories[449]:AddCategory(tmpCategories[454]);
    tmpCategories[473] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[454]:AddCategory(tmpCategories[473]);
    tmpCategories[473]:AddAchievement(InsertAndReturn(achievements, achievement:New(8925, faction.Alliance)));
    tmpCategories[473]:AddAchievement(InsertAndReturn(achievements, achievement:New(8926, faction.Horde)));
    tmpCategories[473]:AddAchievement(InsertAndReturn(achievements, achievement:New(9605)));
    tmpCategories[473]:AddAchievement(InsertAndReturn(achievements, achievement:New(9612)));
    tmpCategories[473]:AddAchievement(InsertAndReturn(achievements, achievement:New(9613)));
    tmpCategories[473]:AddAchievement(InsertAndReturn(achievements, achievement:New(9601)));
    tmpCategories[473]:AddAchievement(InsertAndReturn(achievements, achievement:New(9600)));
    tmpCategories[474] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[454]:AddCategory(tmpCategories[474]);
    tmpCategories[474]:AddAchievement(InsertAndReturn(achievements, achievement:New(8941)));
    tmpCategories[476] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[454]:AddCategory(tmpCategories[476]);
    tmpCategories[476]:AddAchievement(InsertAndReturn(achievements, achievement:New(9469)));
    tmpCategories[476]:AddAchievement(InsertAndReturn(achievements, achievement:New(9072)));
    tmpCategories[455] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(550).name, {550, 551, 552, 553})); -- Nagrand
    tmpCategories[449]:AddCategory(tmpCategories[455]);
    tmpCategories[477] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[455]:AddCategory(tmpCategories[477]);
    tmpCategories[477]:AddAchievement(InsertAndReturn(achievements, achievement:New(8927, faction.Alliance)));
    tmpCategories[477]:AddAchievement(InsertAndReturn(achievements, achievement:New(8928, faction.Horde)));
    tmpCategories[477]:AddAchievement(InsertAndReturn(achievements, achievement:New(9615)));
    tmpCategories[477]:AddAchievement(InsertAndReturn(achievements, achievement:New(9610)));
    tmpCategories[477]:AddAchievement(InsertAndReturn(achievements, achievement:New(9571)));
    tmpCategories[477]:AddAchievement(InsertAndReturn(achievements, achievement:New(9548)));
    tmpCategories[477]:AddAchievement(InsertAndReturn(achievements, achievement:New(9541)));
    tmpCategories[477]:AddAchievement(InsertAndReturn(achievements, achievement:New(9617)));
    tmpCategories[478] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[455]:AddCategory(tmpCategories[478]);
    tmpCategories[478]:AddAchievement(InsertAndReturn(achievements, achievement:New(8942)));
    tmpCategories[480] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[455]:AddCategory(tmpCategories[480]);
    tmpCategories[480]:AddAchievement(InsertAndReturn(achievements, achievement:New(9472)));
    tmpCategories[456] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(534).name, {534})); -- Tanaan Jungle
    tmpCategories[449]:AddCategory(tmpCategories[456]);
    tmpCategories[481] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[456]:AddCategory(tmpCategories[481]);
    tmpCategories[481]:AddAchievement(InsertAndReturn(achievements, achievement:New(10067, faction.Alliance)));
    tmpCategories[481]:AddAchievement(InsertAndReturn(achievements, achievement:New(10074, faction.Horde)));
    tmpCategories[481]:AddAchievement(InsertAndReturn(achievements, achievement:New(10068, faction.Alliance)));
    tmpCategories[481]:AddAchievement(InsertAndReturn(achievements, achievement:New(10075, faction.Horde)));
    tmpCategories[481]:AddAchievement(InsertAndReturn(achievements, achievement:New(10072, faction.Alliance)));
    tmpCategories[481]:AddAchievement(InsertAndReturn(achievements, achievement:New(10265, faction.Horde)));
    tmpCategories[482] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[456]:AddCategory(tmpCategories[482]);
    tmpCategories[482]:AddAchievement(InsertAndReturn(achievements, achievement:New(10261)));
    tmpCategories[482]:AddAchievement(InsertAndReturn(achievements, achievement:New(10262)));
    tmpCategories[482]:AddAchievement(InsertAndReturn(achievements, achievement:New(10260)));
    tmpCategories[482]:AddAchievement(InsertAndReturn(achievements, achievement:New(10069)));
    tmpCategories[482]:AddAchievement(InsertAndReturn(achievements, achievement:New(10061)));
    tmpCategories[482]:AddAchievement(InsertAndReturn(achievements, achievement:New(10259)));
    tmpCategories[482]:AddAchievement(InsertAndReturn(achievements, achievement:New(10070)));
    tmpCategories[482]:AddAchievement(InsertAndReturn(achievements, achievement:New(10334)));
    tmpCategories[484] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[456]:AddCategory(tmpCategories[484]);
    tmpCategories[484]:AddAchievement(InsertAndReturn(achievements, achievement:New(10349, faction.Horde)));
    tmpCategories[484]:AddAchievement(InsertAndReturn(achievements, achievement:New(10350, faction.Alliance)));
    tmpCategories[224] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15272)))); -- Dungeons
    tmpCategories[223]:AddCategory(tmpCategories[224]);
    tmpCategories[224]:AddAchievement(InsertAndReturn(achievements, achievement:New(9391)));
    tmpCategories[224]:AddAchievement(InsertAndReturn(achievements, achievement:New(9619)));
    tmpCategories[224]:AddAchievement(InsertAndReturn(achievements, achievement:New(9396)));
    tmpCategories[226] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(385)), {573})); -- Bloodmaul Slag Mines
    tmpCategories[224]:AddCategory(tmpCategories[226]);
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9005)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8993)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9008)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9037)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9046)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(10076)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8875, nil, nil, false)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8876, nil, nil, false)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8877, nil, nil, false)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8878, nil, nil, false)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9620, nil, nil, false)));
    tmpCategories[227] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(558)), {595})); -- Iron Docks
    tmpCategories[224]:AddCategory(tmpCategories[227]);
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9081)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9083)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9082)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9038)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9047)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(10079)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(8997, nil, nil, false)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(8998, nil, nil, false)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(8999, nil, nil, false)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9000, nil, nil, false)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9621, nil, nil, false)));
    tmpCategories[228] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(547)), {593})); -- Auchindoun
    tmpCategories[224]:AddCategory(tmpCategories[228]);
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9023)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9551)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9552)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9039)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9049)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(10080)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(8879, nil, nil, false)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(8880, nil, nil, false)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(8881, nil, nil, false)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(8882, nil, nil, false)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9622, nil, nil, false)));
    tmpCategories[229] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(476)), {601, 602})); -- Skyreach
    tmpCategories[224]:AddCategory(tmpCategories[229]);
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9033)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9035)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9034)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9036)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8843)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8844)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(10081)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8871, nil, nil, false)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8872, nil, nil, false)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8873, nil, nil, false)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8874, nil, nil, false)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9623, nil, nil, false)));
    tmpCategories[230] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(536)), {606, 607, 608, 609})); -- Grimrail Depot
    tmpCategories[224]:AddCategory(tmpCategories[230]);
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9024)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9007)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9043)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9052)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(10082)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(8887, nil, nil, false)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(8888, nil, nil, false)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(8889, nil, nil, false)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(8890, nil, nil, false)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9625, nil, nil, false)));
    tmpCategories[231] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(556)), {620, 621})); -- The Everbloom
    tmpCategories[224]:AddCategory(tmpCategories[231]);
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9017)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9493)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9223)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9044)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9053)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(10083)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9001, nil, nil, false)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9002, nil, nil, false)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9003, nil, nil, false)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9004, nil, nil, false)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9624, nil, nil, false)));
    tmpCategories[232] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(537)), {574, 575, 576})); -- Shadowmoon Burial Grounds
    tmpCategories[224]:AddCategory(tmpCategories[232]);
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9018)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9025)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9026)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9041)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9054)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(10084)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(8883, nil, nil, false)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(8884, nil, nil, false)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(8885, nil, nil, false)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(8886, nil, nil, false)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9626, nil, nil, false)));
    tmpCategories[233] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(559)), {616, 617, 618})); -- Upper Blackrock Spire
    tmpCategories[224]:AddCategory(tmpCategories[233]);
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9045)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9058)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9056)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9057)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9042)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9055)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(10085)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(8891, nil, nil, false)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(8892, nil, nil, false)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(8893, nil, nil, false)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(8894, nil, nil, false)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9627, nil, nil, false)));
    tmpCategories[225] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15271)))); -- Raids
    tmpCategories[223]:AddCategory(tmpCategories[225]);
    tmpCategories[225]:AddAchievement(InsertAndReturn(achievements, achievement:New(9619)));
    tmpCategories[225]:AddAchievement(InsertAndReturn(achievements, achievement:New(8985)));
    tmpCategories[225]:AddAchievement(InsertAndReturn(achievements, achievement:New(10149)));
    tmpCategories[234] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(477)), {610, 611, 612, 613, 614, 615})); -- Highmaul
    tmpCategories[225]:AddCategory(tmpCategories[234]);
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8948)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8947)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8974)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8975)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8958)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8976)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8977)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8949)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8960)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8961)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8962)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8963)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8964)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8965)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8986)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8987)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8988)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(9441, nil, nil, false)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(9442, nil, nil, false)));
    tmpCategories[235] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(457)), {596, 597, 598, 599, 600})); -- Blackrock Foundry
    tmpCategories[225]:AddCategory(tmpCategories[235]);
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8979)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8978)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8930)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8980)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8929)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8983)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8981)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8982)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8984)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8952)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8967)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8966)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8970)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8968)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8932)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8971)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8956)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8969)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8972)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8973)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8989)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8990)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8991)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8992)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(9444, nil, nil, false)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(9443, nil, nil, false)));
    tmpCategories[236] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(669)), {661, 662, 663, 664, 665, 666, 667, 668, 669, 670})); -- Hellfire Citadel
    tmpCategories[225]:AddCategory(tmpCategories[236]);
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10026)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10057)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10013)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10054)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9972)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9979)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9988)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10086)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9989)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10012)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10087)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10030)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10073)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10027)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10032)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10033)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10034)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10035)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10253)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10037)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10040)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10041)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10038)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10039)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10042)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10043)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10023)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10024)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10025)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10020)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10019)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9680, nil, nil, false)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10044, nil, nil, false)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10045, nil, nil, false)));
    tmpCategories[548] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15117)))); -- Pet Battles
    tmpCategories[223]:AddCategory(tmpCategories[548]);
    tmpCategories[548]:AddAchievement(InsertAndReturn(achievements, achievement:New(9685)));
    tmpCategories[548]:AddAchievement(InsertAndReturn(achievements, achievement:New(9069)));
    tmpCategories[548]:AddAchievement(InsertAndReturn(achievements, achievement:New(9463)));
    tmpCategories[548]:AddAchievement(InsertAndReturn(achievements, achievement:New(9724)));
    tmpCategories[548]:AddAchievement(InsertAndReturn(achievements, achievement:New(10052)));
    tmpCategories[432] = InsertAndReturn(categories, achievementCategory:New(addon.L["Garrison"], {579, 580, 581, 582, 585, 586, 587, 590})); -- Garrison
    tmpCategories[223]:AddCategory(tmpCategories[432]);
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9100, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9101, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9545, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9546, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9210, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9132, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(8933)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9901, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9928, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9828, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9912, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10015, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9897, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9914, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10016, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9125)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9126)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9128)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9095)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9096)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9097)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9094)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9487)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9076)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9077)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9080, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9078, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9429)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9099)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9098)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9405)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9406)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9407)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9450)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9565)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9451)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9452)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9468)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9495)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9497)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9498)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9499)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9538)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9526)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9539, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9705, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9540, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9706, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9527)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9703)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9516, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9517, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9518, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9519, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9520, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9521, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9522, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9509, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9510, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9511, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9512, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9513, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9514, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9515, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9639)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9508, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9738, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9107)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9108)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9109)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9494)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9110)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9111)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9129)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9130)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9131)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9211)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9212)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9213)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9243)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9152)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9167)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9543)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9244)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9205)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9206)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9203)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9204)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9207)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9208)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9162)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9164)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9165)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9826)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9209)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9827)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9181)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9858)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9133)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9134)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9138)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9139)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9140)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9141)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9142)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9143)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9145)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9524)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9146)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9523)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9147)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9150)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9900)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9246)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9248, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9630, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9255, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9631, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9264)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9265)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10177)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10169)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10168)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10170)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10172, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10173, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10255, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10275, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10276, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10174, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10156)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10154)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10159)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10160)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10161)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10155)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10162)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10163)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10017)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10036)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10164)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10165)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10166)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10256, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10167, faction.Alliance)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10258, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10307, faction.Horde)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9640, nil, nil, false)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9641, nil, nil, false)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9642, nil, nil, false)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10021, nil, nil, false)));
    tmpCategories[485] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[432]:AddCategory(tmpCategories[485]);
    tmpCategories[485]:AddAchievement(InsertAndReturn(achievements, achievement:New(9825, faction.Alliance)));
    tmpCategories[485]:AddAchievement(InsertAndReturn(achievements, achievement:New(9836, faction.Horde)));
    tmpCategories[237] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15258)))); -- Legion
    tmpCategories[381] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[237]:AddCategory(tmpCategories[381]);
    tmpCategories[396] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(619).name)); -- Broken Isles
    tmpCategories[381]:AddCategory(tmpCategories[396]);
    tmpCategories[397] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[396]:AddCategory(tmpCategories[397]);
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11157)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(10877)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11189)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11427)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11186)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11240)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11544)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11846)));
    tmpCategories[398] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[396]:AddCategory(tmpCategories[398]);
    tmpCategories[398]:AddAchievement(InsertAndReturn(achievements, achievement:New(11190)));
    tmpCategories[398]:AddAchievement(InsertAndReturn(achievements, achievement:New(11446)));
    tmpCategories[398]:AddAchievement(InsertAndReturn(achievements, achievement:New(14729)));
    tmpCategories[398]:AddAchievement(InsertAndReturn(achievements, achievement:New(11188)));
    tmpCategories[413] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[396]:AddCategory(tmpCategories[413]);
    tmpCategories[413]:AddAchievement(InsertAndReturn(achievements, achievement:New(11474)));
    tmpCategories[414] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[396]:AddCategory(tmpCategories[414]);
    tmpCategories[414]:AddAchievement(InsertAndReturn(achievements, achievement:New(10672)));
    tmpCategories[414]:AddAchievement(InsertAndReturn(achievements, achievement:New(11159)));
    tmpCategories[414]:AddAchievement(InsertAndReturn(achievements, achievement:New(11652)));
    tmpCategories[414]:AddAchievement(InsertAndReturn(achievements, achievement:New(11653)));
    tmpCategories[414]:AddAchievement(InsertAndReturn(achievements, achievement:New(11941)));
    tmpCategories[382] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(626).name, {627, 628, 629})); -- Dalaran
    tmpCategories[381]:AddCategory(tmpCategories[382]);
    tmpCategories[383] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[382]:AddCategory(tmpCategories[383]);
    tmpCategories[383]:AddAchievement(InsertAndReturn(achievements, achievement:New(12416)));
    tmpCategories[383]:AddAchievement(InsertAndReturn(achievements, achievement:New(12431)));
    tmpCategories[383]:AddAchievement(InsertAndReturn(achievements, achievement:New(12439)));
    tmpCategories[405] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[382]:AddCategory(tmpCategories[405]);
    tmpCategories[405]:AddAchievement(InsertAndReturn(achievements, achievement:New(11066)));
    tmpCategories[384] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(630).name, {630, 631, 632, 633})); -- Azsuna
    tmpCategories[381]:AddCategory(tmpCategories[384]);
    tmpCategories[385] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[384]:AddCategory(tmpCategories[385]);
    tmpCategories[385]:AddAchievement(InsertAndReturn(achievements, achievement:New(10763)));
    tmpCategories[399] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[384]:AddCategory(tmpCategories[399]);
    tmpCategories[399]:AddAchievement(InsertAndReturn(achievements, achievement:New(10665)));
    tmpCategories[399]:AddAchievement(InsertAndReturn(achievements, achievement:New(11175)));
    tmpCategories[399]:AddAchievement(InsertAndReturn(achievements, achievement:New(11256)));
    tmpCategories[399]:AddAchievement(InsertAndReturn(achievements, achievement:New(11261)));
    tmpCategories[412] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[384]:AddCategory(tmpCategories[412]);
    tmpCategories[412]:AddAchievement(InsertAndReturn(achievements, achievement:New(11475)));
    tmpCategories[387] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(641).name, {641, 642, 643, 644})); -- Val'sharah
    tmpCategories[381]:AddCategory(tmpCategories[387]);
    tmpCategories[391] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[387]:AddCategory(tmpCategories[391]);
    tmpCategories[391]:AddAchievement(InsertAndReturn(achievements, achievement:New(10698)));
    tmpCategories[400] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[387]:AddCategory(tmpCategories[400]);
    tmpCategories[400]:AddAchievement(InsertAndReturn(achievements, achievement:New(10666)));
    tmpCategories[400]:AddAchievement(InsertAndReturn(achievements, achievement:New(11258)));
    tmpCategories[400]:AddAchievement(InsertAndReturn(achievements, achievement:New(11262)));
    tmpCategories[411] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[387]:AddCategory(tmpCategories[411]);
    tmpCategories[411]:AddAchievement(InsertAndReturn(achievements, achievement:New(11477)));
    tmpCategories[388] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(650).name, {650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 750})); -- Highmountain
    tmpCategories[381]:AddCategory(tmpCategories[388]);
    tmpCategories[392] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[388]:AddCategory(tmpCategories[392]);
    tmpCategories[392]:AddAchievement(InsertAndReturn(achievements, achievement:New(10059)));
    tmpCategories[392]:AddAchievement(InsertAndReturn(achievements, achievement:New(10774)));
    tmpCategories[392]:AddAchievement(InsertAndReturn(achievements, achievement:New(10626)));
    tmpCategories[392]:AddAchievement(InsertAndReturn(achievements, achievement:New(10398)));
    tmpCategories[401] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[388]:AddCategory(tmpCategories[401]);
    tmpCategories[401]:AddAchievement(InsertAndReturn(achievements, achievement:New(10667)));
    tmpCategories[401]:AddAchievement(InsertAndReturn(achievements, achievement:New(11257)));
    tmpCategories[401]:AddAchievement(InsertAndReturn(achievements, achievement:New(11264)));
    tmpCategories[410] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[388]:AddCategory(tmpCategories[410]);
    tmpCategories[410]:AddAchievement(InsertAndReturn(achievements, achievement:New(11478)));
    tmpCategories[416] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[388]:AddCategory(tmpCategories[416]);
    tmpCategories[416]:AddAchievement(InsertAndReturn(achievements, achievement:New(12292)));
    tmpCategories[386] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(634).name, {634, 635, 636, 637, 638, 639, 640, 649})); -- Stormheim
    tmpCategories[381]:AddCategory(tmpCategories[386]);
    tmpCategories[390] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[386]:AddCategory(tmpCategories[390]);
    tmpCategories[390]:AddAchievement(InsertAndReturn(achievements, achievement:New(10790)));
    tmpCategories[390]:AddAchievement(InsertAndReturn(achievements, achievement:New(10793)));
    tmpCategories[390]:AddAchievement(InsertAndReturn(achievements, achievement:New(11232)));
    tmpCategories[402] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[386]:AddCategory(tmpCategories[402]);
    tmpCategories[402]:AddAchievement(InsertAndReturn(achievements, achievement:New(10668)));
    tmpCategories[402]:AddAchievement(InsertAndReturn(achievements, achievement:New(10627)));
    tmpCategories[402]:AddAchievement(InsertAndReturn(achievements, achievement:New(11259)));
    tmpCategories[402]:AddAchievement(InsertAndReturn(achievements, achievement:New(11263)));
    tmpCategories[402]:AddAchievement(InsertAndReturn(achievements, achievement:New(11178)));
    tmpCategories[409] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[386]:AddCategory(tmpCategories[409]);
    tmpCategories[409]:AddAchievement(InsertAndReturn(achievements, achievement:New(11476)));
    tmpCategories[389] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(680).name, {680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691})); -- Suramar
    tmpCategories[381]:AddCategory(tmpCategories[389]);
    tmpCategories[393] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[389]:AddCategory(tmpCategories[393]);
    tmpCategories[393]:AddAchievement(InsertAndReturn(achievements, achievement:New(10617)));
    tmpCategories[393]:AddAchievement(InsertAndReturn(achievements, achievement:New(11124)));
    tmpCategories[393]:AddAchievement(InsertAndReturn(achievements, achievement:New(10756)));
    tmpCategories[393]:AddAchievement(InsertAndReturn(achievements, achievement:New(11125)));
    tmpCategories[393]:AddAchievement(InsertAndReturn(achievements, achievement:New(11133)));
    tmpCategories[393]:AddAchievement(InsertAndReturn(achievements, achievement:New(11340)));
    tmpCategories[403] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[389]:AddCategory(tmpCategories[403]);
    tmpCategories[403]:AddAchievement(InsertAndReturn(achievements, achievement:New(10669)));
    tmpCategories[403]:AddAchievement(InsertAndReturn(achievements, achievement:New(11260)));
    tmpCategories[403]:AddAchievement(InsertAndReturn(achievements, achievement:New(11265)));
    tmpCategories[415] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[389]:AddCategory(tmpCategories[415]);
    tmpCategories[415]:AddAchievement(InsertAndReturn(achievements, achievement:New(10778)));
    tmpCategories[394] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(646).name, {646})); -- Broken Shore
    tmpCategories[381]:AddCategory(tmpCategories[394]);
    tmpCategories[395] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[394]:AddCategory(tmpCategories[395]);
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11607)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11546)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11681)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11731)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11732)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11735)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11736)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11737)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11738)));
    tmpCategories[404] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[394]:AddCategory(tmpCategories[404]);
    tmpCategories[404]:AddAchievement(InsertAndReturn(achievements, achievement:New(11543)));
    tmpCategories[404]:AddAchievement(InsertAndReturn(achievements, achievement:New(11802)));
    tmpCategories[404]:AddAchievement(InsertAndReturn(achievements, achievement:New(11841)));
    tmpCategories[417] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[394]:AddCategory(tmpCategories[417]);
    tmpCategories[417]:AddAchievement(InsertAndReturn(achievements, achievement:New(11545)));
    tmpCategories[417]:AddAchievement(InsertAndReturn(achievements, achievement:New(11796)));
    tmpCategories[406] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(905).name, {830, 831, 832, 833, 882, 883, 884, 885, 886, 887, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932})); -- Argus
    tmpCategories[381]:AddCategory(tmpCategories[406]);
    tmpCategories[407] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[406]:AddCategory(tmpCategories[407]);
    tmpCategories[407]:AddAchievement(InsertAndReturn(achievements, achievement:New(12066)));
    tmpCategories[407]:AddAchievement(InsertAndReturn(achievements, achievement:New(12073)));
    tmpCategories[408] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[406]:AddCategory(tmpCategories[408]);
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12074)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12084)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12028)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12026)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12069)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12077)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12078)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12083)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12101)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12102)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12103)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12104)));
    tmpCategories[418] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[406]:AddCategory(tmpCategories[418]);
    tmpCategories[418]:AddAchievement(InsertAndReturn(achievements, achievement:New(12076)));
    tmpCategories[418]:AddAchievement(InsertAndReturn(achievements, achievement:New(12081)));
    tmpCategories[238] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15272)))); -- Dungeons
    tmpCategories[237]:AddCategory(tmpCategories[238]);
    tmpCategories[238]:AddAchievement(InsertAndReturn(achievements, achievement:New(11164)));
    tmpCategories[238]:AddAchievement(InsertAndReturn(achievements, achievement:New(11163)));
    tmpCategories[240] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(716)), {713})); -- Eye of Azshara
    tmpCategories[238]:AddCategory(tmpCategories[240]);
    tmpCategories[240]:AddAchievement(InsertAndReturn(achievements, achievement:New(10456)));
    tmpCategories[240]:AddAchievement(InsertAndReturn(achievements, achievement:New(10457)));
    tmpCategories[240]:AddAchievement(InsertAndReturn(achievements, achievement:New(10458)));
    tmpCategories[240]:AddAchievement(InsertAndReturn(achievements, achievement:New(10780)));
    tmpCategories[240]:AddAchievement(InsertAndReturn(achievements, achievement:New(10781)));
    tmpCategories[240]:AddAchievement(InsertAndReturn(achievements, achievement:New(10782)));
    tmpCategories[241] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(762)), {733})); -- Darkheart Thicket
    tmpCategories[238]:AddCategory(tmpCategories[241]);
    tmpCategories[241]:AddAchievement(InsertAndReturn(achievements, achievement:New(10766)));
    tmpCategories[241]:AddAchievement(InsertAndReturn(achievements, achievement:New(10769)));
    tmpCategories[241]:AddAchievement(InsertAndReturn(achievements, achievement:New(10783)));
    tmpCategories[241]:AddAchievement(InsertAndReturn(achievements, achievement:New(10784)));
    tmpCategories[241]:AddAchievement(InsertAndReturn(achievements, achievement:New(10785)));
    tmpCategories[242] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(721)), {703, 704, 705})); -- Halls of Valor
    tmpCategories[238]:AddCategory(tmpCategories[242]);
    tmpCategories[242]:AddAchievement(InsertAndReturn(achievements, achievement:New(10544)));
    tmpCategories[242]:AddAchievement(InsertAndReturn(achievements, achievement:New(10542)));
    tmpCategories[242]:AddAchievement(InsertAndReturn(achievements, achievement:New(10543)));
    tmpCategories[242]:AddAchievement(InsertAndReturn(achievements, achievement:New(10786)));
    tmpCategories[242]:AddAchievement(InsertAndReturn(achievements, achievement:New(10788)));
    tmpCategories[242]:AddAchievement(InsertAndReturn(achievements, achievement:New(10789)));
    tmpCategories[243] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(767)), {731})); -- Neltharions Lair
    tmpCategories[238]:AddCategory(tmpCategories[243]);
    tmpCategories[243]:AddAchievement(InsertAndReturn(achievements, achievement:New(10996)));
    tmpCategories[243]:AddAchievement(InsertAndReturn(achievements, achievement:New(10875)));
    tmpCategories[243]:AddAchievement(InsertAndReturn(achievements, achievement:New(10795)));
    tmpCategories[243]:AddAchievement(InsertAndReturn(achievements, achievement:New(10796)));
    tmpCategories[243]:AddAchievement(InsertAndReturn(achievements, achievement:New(10797)));
    tmpCategories[244] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(777)), {732})); -- Assault on Violet Hold
    tmpCategories[238]:AddCategory(tmpCategories[244]);
    tmpCategories[244]:AddAchievement(InsertAndReturn(achievements, achievement:New(10554)));
    tmpCategories[244]:AddAchievement(InsertAndReturn(achievements, achievement:New(10553)));
    tmpCategories[244]:AddAchievement(InsertAndReturn(achievements, achievement:New(10798)));
    tmpCategories[244]:AddAchievement(InsertAndReturn(achievements, achievement:New(10799)));
    tmpCategories[244]:AddAchievement(InsertAndReturn(achievements, achievement:New(10800)));
    tmpCategories[245] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(707)), {710, 711, 712})); -- Vault of the Wardens
    tmpCategories[238]:AddCategory(tmpCategories[245]);
    tmpCategories[245]:AddAchievement(InsertAndReturn(achievements, achievement:New(10679)));
    tmpCategories[245]:AddAchievement(InsertAndReturn(achievements, achievement:New(10680)));
    tmpCategories[245]:AddAchievement(InsertAndReturn(achievements, achievement:New(10707)));
    tmpCategories[245]:AddAchievement(InsertAndReturn(achievements, achievement:New(10801)));
    tmpCategories[245]:AddAchievement(InsertAndReturn(achievements, achievement:New(10802)));
    tmpCategories[245]:AddAchievement(InsertAndReturn(achievements, achievement:New(10803)));
    tmpCategories[246] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(740)), {751, 752, 753, 754, 755, 756})); -- Black Rook Hold
    tmpCategories[238]:AddCategory(tmpCategories[246]);
    tmpCategories[246]:AddAchievement(InsertAndReturn(achievements, achievement:New(10710)));
    tmpCategories[246]:AddAchievement(InsertAndReturn(achievements, achievement:New(10709)));
    tmpCategories[246]:AddAchievement(InsertAndReturn(achievements, achievement:New(10711)));
    tmpCategories[246]:AddAchievement(InsertAndReturn(achievements, achievement:New(10804)));
    tmpCategories[246]:AddAchievement(InsertAndReturn(achievements, achievement:New(10805)));
    tmpCategories[246]:AddAchievement(InsertAndReturn(achievements, achievement:New(10806)));
    tmpCategories[247] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(727)), {706, 707, 708})); -- Maw of Souls
    tmpCategories[238]:AddCategory(tmpCategories[247]);
    tmpCategories[247]:AddAchievement(InsertAndReturn(achievements, achievement:New(10413)));
    tmpCategories[247]:AddAchievement(InsertAndReturn(achievements, achievement:New(10411)));
    tmpCategories[247]:AddAchievement(InsertAndReturn(achievements, achievement:New(10412)));
    tmpCategories[247]:AddAchievement(InsertAndReturn(achievements, achievement:New(10807)));
    tmpCategories[247]:AddAchievement(InsertAndReturn(achievements, achievement:New(10808)));
    tmpCategories[247]:AddAchievement(InsertAndReturn(achievements, achievement:New(10809)));
    tmpCategories[248] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(726)), {749})); -- The Arcway
    tmpCategories[238]:AddCategory(tmpCategories[248]);
    tmpCategories[248]:AddAchievement(InsertAndReturn(achievements, achievement:New(10773)));
    tmpCategories[248]:AddAchievement(InsertAndReturn(achievements, achievement:New(10775)));
    tmpCategories[248]:AddAchievement(InsertAndReturn(achievements, achievement:New(10776)));
    tmpCategories[248]:AddAchievement(InsertAndReturn(achievements, achievement:New(10813)));
    tmpCategories[249] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(800)), {761, 762, 763})); -- Court of Stars
    tmpCategories[238]:AddCategory(tmpCategories[249]);
    tmpCategories[249]:AddAchievement(InsertAndReturn(achievements, achievement:New(10610)));
    tmpCategories[249]:AddAchievement(InsertAndReturn(achievements, achievement:New(10611)));
    tmpCategories[249]:AddAchievement(InsertAndReturn(achievements, achievement:New(10816)));
    tmpCategories[250] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(860)), {809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822})); -- Return to Karazhan
    tmpCategories[238]:AddCategory(tmpCategories[250]);
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11430)));
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11335)));
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11338)));
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11432)));
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11433)));
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11929)));
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11429)));
    tmpCategories[251] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(900)), {845, 846, 847, 848, 849})); -- Cathedral of Eternal Night
    tmpCategories[238]:AddCategory(tmpCategories[251]);
    tmpCategories[251]:AddAchievement(InsertAndReturn(achievements, achievement:New(11768)));
    tmpCategories[251]:AddAchievement(InsertAndReturn(achievements, achievement:New(11769)));
    tmpCategories[251]:AddAchievement(InsertAndReturn(achievements, achievement:New(11703)));
    tmpCategories[251]:AddAchievement(InsertAndReturn(achievements, achievement:New(11700)));
    tmpCategories[251]:AddAchievement(InsertAndReturn(achievements, achievement:New(11701)));
    tmpCategories[251]:AddAchievement(InsertAndReturn(achievements, achievement:New(11702)));
    tmpCategories[252] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(945)), {903})); -- Seat of the Triumvirate
    tmpCategories[238]:AddCategory(tmpCategories[252]);
    tmpCategories[252]:AddAchievement(InsertAndReturn(achievements, achievement:New(12004)));
    tmpCategories[252]:AddAchievement(InsertAndReturn(achievements, achievement:New(12005)));
    tmpCategories[252]:AddAchievement(InsertAndReturn(achievements, achievement:New(12009)));
    tmpCategories[252]:AddAchievement(InsertAndReturn(achievements, achievement:New(12007)));
    tmpCategories[252]:AddAchievement(InsertAndReturn(achievements, achievement:New(12008)));
    tmpCategories[239] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15271)))); -- Raids
    tmpCategories[237]:AddCategory(tmpCategories[239]);
    tmpCategories[239]:AddAchievement(InsertAndReturn(achievements, achievement:New(11180)));
    tmpCategories[239]:AddAchievement(InsertAndReturn(achievements, achievement:New(11763)));
    tmpCategories[239]:AddAchievement(InsertAndReturn(achievements, achievement:New(11987)));
    tmpCategories[253] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(768)), {777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789})); -- The Emerald Nightmare
    tmpCategories[239]:AddCategory(tmpCategories[253]);
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10555)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10830)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10771)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10753)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10663)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10772)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10755)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10821)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10823)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10822)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10824)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10825)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10826)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10827)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10818)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10819)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10820)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(11194, nil, nil, false)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(11191, nil, nil, false)));
    tmpCategories[254] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(786)), {764, 765, 766, 767, 768, 769, 770, 771, 772})); -- The Nighthold
    tmpCategories[239]:AddCategory(tmpCategories[254]);
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10678)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10697)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10742)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10817)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10851)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10754)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10575)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10704)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10699)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10696)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10840)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10842)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10843)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10844)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10845)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10846)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10848)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10847)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10849)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10850)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10829)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10837)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10838)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10839)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(11195, nil, nil, false)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(11192, nil, nil, false)));
    tmpCategories[255] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(861)), {806, 807, 808})); -- Trial of Valor
    tmpCategories[239]:AddCategory(tmpCategories[255]);
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11337)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11386)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11377)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11396)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11397)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11398)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11394)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11426)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11387, nil, nil, false)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11581, nil, nil, false)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11580, nil, nil, false)));
    tmpCategories[256] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(875)), {850, 851, 852, 853, 854, 855, 856})); -- Tomb of Sargeras
    tmpCategories[239]:AddCategory(tmpCategories[256]);
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11724)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11699)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11676)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11696)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11773)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11674)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11675)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11683)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11770)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11767)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11775)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11776)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11774)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11777)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11778)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11779)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11780)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11781)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11787)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11788)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11789)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11790)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11874, nil, nil, false)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11875, nil, nil, false)));
    tmpCategories[257] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(946)), {909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920})); -- Antorus, the Burning Throne
    tmpCategories[239]:AddCategory(tmpCategories[257]);
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11930)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12065)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12129)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11928)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12067)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11949)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12030)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11948)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12046)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11915)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12257)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11992)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11993)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11994)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11995)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11996)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11997)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11998)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11999)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12000)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12001)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12002)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11988)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11990)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11989)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11991)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12110, nil, nil, false)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12111, nil, nil, false)));
    tmpCategories[430] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15117)))); -- Pet Battles
    tmpCategories[237]:AddCategory(tmpCategories[430]);
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(11233)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(10876)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9686)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9687)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9688)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9689)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9690)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9691)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9692)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9693)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9694)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9695)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9696)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12088)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12089)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12091)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12092)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12093)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12094)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12095)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12096)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12097)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12098)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12099)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12100)));
    tmpCategories[429] = InsertAndReturn(categories, achievementCategory:New(addon.L["Class Hall"], {24, 626, 647, 648, 695, 702, 709, 717, 718, 719, 720, 721, 725, 726, 734, 735, 739, 747, 1468})); -- Class Hall
    tmpCategories[237]:AddCategory(tmpCategories[429]);
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10994)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11135)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11136)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10706)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11212)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11213)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11214)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11215)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11216)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11217)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11219)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11220)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11221)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11222)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11223)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11298)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10746)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10459)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10743, faction.Alliance)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10745, faction.Horde)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10460)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10461)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10747)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10748)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11173, faction.Horde)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10749, faction.Alliance)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10750)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11171)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11137)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11611, nil, nil, false)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11612, nil, nil, false)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11144, nil, nil, false)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11772, nil, nil, false)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11609, nil, nil, false)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11610, nil, nil, false)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10852, nil, nil, false)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10853, nil, nil, false)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(12071, nil, nil, false)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(12072, nil, nil, false)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11218, nil, nil, false)));
    tmpCategories[258] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15305)))); -- Battle for Azeroth
    tmpCategories[259] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[258]:AddCategory(tmpCategories[259]);
    tmpCategories[271] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(876).name .. " & " .. C_Map.GetMapInfo(875).name)); -- Kul Tiras & Zandalar
    tmpCategories[259]:AddCategory(tmpCategories[271]);
    tmpCategories[272] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[271]:AddCategory(tmpCategories[272]);
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12582, faction.Alliance)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12997, faction.Alliance)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12593, faction.Alliance)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12891, faction.Alliance)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12555, faction.Horde)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12479, faction.Horde)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13294, faction.Horde)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13512)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13384, faction.Alliance)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12510, faction.Alliance)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13467, faction.Alliance)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13925, faction.Alliance)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12509, faction.Horde)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13466, faction.Horde)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13924, faction.Horde)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13517)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13283, faction.Alliance)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13251, faction.Alliance)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13284, faction.Horde)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13144)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13263, faction.Horde)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(14157)));
    tmpCategories[273] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[271]:AddCategory(tmpCategories[273]);
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(12989)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(13250)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(13061)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(12482)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(13036)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(13029)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(13027)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(14730)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(12988)));
    tmpCategories[274] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[271]:AddCategory(tmpCategories[274]);
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13429)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13317)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12572)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12571)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12573)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12605, faction.Alliance)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12604, faction.Horde)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12856)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12857)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12858)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12860)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12863)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12859)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12861)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12862)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13387, faction.Alliance)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13388, faction.Horde)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13402, faction.Alliance)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13403, faction.Horde)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13623)));
    tmpCategories[275] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[271]:AddCategory(tmpCategories[275]);
    tmpCategories[275]:AddAchievement(InsertAndReturn(achievements, achievement:New(12947)));
    tmpCategories[275]:AddAchievement(InsertAndReturn(achievements, achievement:New(12955)));
    tmpCategories[275]:AddAchievement(InsertAndReturn(achievements, achievement:New(12956)));
    tmpCategories[276] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(895).name, {895, 1161, 1169, 1171, 1172, 1184, 1185})); -- Tiragarde Sound
    tmpCategories[259]:AddCategory(tmpCategories[276]);
    tmpCategories[281] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[276]:AddCategory(tmpCategories[281]);
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(12473, faction.Alliance)));
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(13060, faction.Alliance)));
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(13059, faction.Alliance)));
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(13050)));
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(13049, faction.Alliance)));
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(12087, faction.Alliance)));
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(13285, faction.Alliance)));
    tmpCategories[278] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[276]:AddCategory(tmpCategories[278]);
    tmpCategories[278]:AddAchievement(InsertAndReturn(achievements, achievement:New(12556)));
    tmpCategories[278]:AddAchievement(InsertAndReturn(achievements, achievement:New(12939)));
    tmpCategories[278]:AddAchievement(InsertAndReturn(achievements, achievement:New(12852)));
    tmpCategories[278]:AddAchievement(InsertAndReturn(achievements, achievement:New(13057)));
    tmpCategories[278]:AddAchievement(InsertAndReturn(achievements, achievement:New(13058)));
    tmpCategories[279] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[276]:AddCategory(tmpCategories[279]);
    tmpCategories[279]:AddAchievement(InsertAndReturn(achievements, achievement:New(12577)));
    tmpCategories[280] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[276]:AddCategory(tmpCategories[280]);
    tmpCategories[280]:AddAchievement(InsertAndReturn(achievements, achievement:New(12951, faction.Alliance)));
    tmpCategories[280]:AddAchievement(InsertAndReturn(achievements, achievement:New(12954, faction.Alliance)));
    tmpCategories[282] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(896).name, {896, 1045})); -- Drustvar
    tmpCategories[259]:AddCategory(tmpCategories[282]);
    tmpCategories[283] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[282]:AddCategory(tmpCategories[283]);
    tmpCategories[283]:AddAchievement(InsertAndReturn(achievements, achievement:New(12497, faction.Alliance)));
    tmpCategories[283]:AddAchievement(InsertAndReturn(achievements, achievement:New(13435, faction.Horde)));
    tmpCategories[284] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[282]:AddCategory(tmpCategories[284]);
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(12557)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(12941)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(12995)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(13087)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(13083)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(13082, faction.Alliance)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(13064)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(13094)));
    tmpCategories[285] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[282]:AddCategory(tmpCategories[285]);
    tmpCategories[285]:AddAchievement(InsertAndReturn(achievements, achievement:New(12579)));
    tmpCategories[286] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[282]:AddCategory(tmpCategories[286]);
    tmpCategories[286]:AddAchievement(InsertAndReturn(achievements, achievement:New(12952, faction.Alliance)));
    tmpCategories[287] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(942).name, {942, 1179, 1180, 1182, 1183})); -- Stormsong Valley
    tmpCategories[259]:AddCategory(tmpCategories[287]);
    tmpCategories[288] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[287]:AddCategory(tmpCategories[288]);
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(12496, faction.Alliance)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13054)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13053, faction.Alliance)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13047)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13046)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13045)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13042)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13062, faction.Alliance)));
    tmpCategories[289] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[287]:AddCategory(tmpCategories[289]);
    tmpCategories[289]:AddAchievement(InsertAndReturn(achievements, achievement:New(12558)));
    tmpCategories[289]:AddAchievement(InsertAndReturn(achievements, achievement:New(12940)));
    tmpCategories[289]:AddAchievement(InsertAndReturn(achievements, achievement:New(12853)));
    tmpCategories[289]:AddAchievement(InsertAndReturn(achievements, achievement:New(13051)));
    tmpCategories[290] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[287]:AddCategory(tmpCategories[290]);
    tmpCategories[290]:AddAchievement(InsertAndReturn(achievements, achievement:New(12578)));
    tmpCategories[291] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[287]:AddCategory(tmpCategories[291]);
    tmpCategories[291]:AddAchievement(InsertAndReturn(achievements, achievement:New(12953, faction.Alliance)));
    tmpCategories[292] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(862).name, {862, 1165, 1173, 1174, 1176, 1177})); -- Zuldazar
    tmpCategories[259]:AddCategory(tmpCategories[292]);
    tmpCategories[293] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[292]:AddCategory(tmpCategories[293]);
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13440, faction.Alliance)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(11861, faction.Horde)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(12480, faction.Horde)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(12481, faction.Horde)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13441, faction.Horde)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13039, faction.Horde)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13048)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13038, faction.Horde)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13037, faction.Horde)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(12719, faction.Horde)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13020, faction.Horde)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(12614, faction.Horde)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13030, faction.Horde)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13573, faction.Horde)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13542, faction.Horde)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13035)));
    tmpCategories[294] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[292]:AddCategory(tmpCategories[294]);
    tmpCategories[294]:AddAchievement(InsertAndReturn(achievements, achievement:New(12559)));
    tmpCategories[294]:AddAchievement(InsertAndReturn(achievements, achievement:New(12944)));
    tmpCategories[294]:AddAchievement(InsertAndReturn(achievements, achievement:New(12851)));
    tmpCategories[295] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[292]:AddCategory(tmpCategories[295]);
    tmpCategories[295]:AddAchievement(InsertAndReturn(achievements, achievement:New(12575)));
    tmpCategories[295]:AddAchievement(InsertAndReturn(achievements, achievement:New(13439, faction.Alliance)));
    tmpCategories[295]:AddAchievement(InsertAndReturn(achievements, achievement:New(13438, faction.Horde)));
    tmpCategories[296] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[292]:AddCategory(tmpCategories[296]);
    tmpCategories[296]:AddAchievement(InsertAndReturn(achievements, achievement:New(12950, faction.Horde)));
    tmpCategories[296]:AddAchievement(InsertAndReturn(achievements, achievement:New(12957, faction.Horde)));
    tmpCategories[297] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(863).name, {863})); -- Nazmir
    tmpCategories[259]:AddCategory(tmpCategories[297]);
    tmpCategories[298] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[297]:AddCategory(tmpCategories[298]);
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13426, faction.Alliance)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13026, faction.Alliance)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(11868, faction.Horde)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13048)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13025, faction.Horde)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13023)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13022, faction.Horde)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13021, faction.Horde)));
    tmpCategories[299] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[297]:AddCategory(tmpCategories[299]);
    tmpCategories[299]:AddAchievement(InsertAndReturn(achievements, achievement:New(12561)));
    tmpCategories[299]:AddAchievement(InsertAndReturn(achievements, achievement:New(12942)));
    tmpCategories[299]:AddAchievement(InsertAndReturn(achievements, achievement:New(12771)));
    tmpCategories[299]:AddAchievement(InsertAndReturn(achievements, achievement:New(12588)));
    tmpCategories[299]:AddAchievement(InsertAndReturn(achievements, achievement:New(13024)));
    tmpCategories[299]:AddAchievement(InsertAndReturn(achievements, achievement:New(13028)));
    tmpCategories[300] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[297]:AddCategory(tmpCategories[300]);
    tmpCategories[300]:AddAchievement(InsertAndReturn(achievements, achievement:New(12574)));
    tmpCategories[301] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[297]:AddCategory(tmpCategories[301]);
    tmpCategories[301]:AddAchievement(InsertAndReturn(achievements, achievement:New(12948, faction.Horde)));
    tmpCategories[302] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(864).name, {864})); -- Vol'dun
    tmpCategories[259]:AddCategory(tmpCategories[302]);
    tmpCategories[303] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[302]:AddCategory(tmpCategories[303]);
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(12478, faction.Horde)));
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(13437, faction.Horde)));
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(13009, faction.Horde)));
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(13011)));
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(13014, faction.Horde)));
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(13041, faction.Horde)));
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(13017, faction.Horde)));
    tmpCategories[304] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[302]:AddCategory(tmpCategories[304]);
    tmpCategories[304]:AddAchievement(InsertAndReturn(achievements, achievement:New(12560)));
    tmpCategories[304]:AddAchievement(InsertAndReturn(achievements, achievement:New(12943)));
    tmpCategories[304]:AddAchievement(InsertAndReturn(achievements, achievement:New(12849)));
    tmpCategories[304]:AddAchievement(InsertAndReturn(achievements, achievement:New(13016)));
    tmpCategories[304]:AddAchievement(InsertAndReturn(achievements, achievement:New(13018)));
    tmpCategories[305] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[302]:AddCategory(tmpCategories[305]);
    tmpCategories[305]:AddAchievement(InsertAndReturn(achievements, achievement:New(12576)));
    tmpCategories[306] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[302]:AddCategory(tmpCategories[306]);
    tmpCategories[306]:AddAchievement(InsertAndReturn(achievements, achievement:New(12949, faction.Horde)));
    tmpCategories[307] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1462).name, {1462})); -- Mechagon Island
    tmpCategories[259]:AddCategory(tmpCategories[307]);
    tmpCategories[308] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[307]:AddCategory(tmpCategories[308]);
    tmpCategories[308]:AddAchievement(InsertAndReturn(achievements, achievement:New(13553, faction.Alliance)));
    tmpCategories[308]:AddAchievement(InsertAndReturn(achievements, achievement:New(13700, faction.Horde)));
    tmpCategories[308]:AddAchievement(InsertAndReturn(achievements, achievement:New(13790)));
    tmpCategories[308]:AddAchievement(InsertAndReturn(achievements, achievement:New(13791)));
    tmpCategories[309] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[307]:AddCategory(tmpCategories[309]);
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13776)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13470)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13472)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13482)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13473)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13474)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13696)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13686)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13475)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13477)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13476)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13555)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13478)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13479)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13556)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13541)));
    tmpCategories[310] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[307]:AddCategory(tmpCategories[310]);
    tmpCategories[310]:AddAchievement(InsertAndReturn(achievements, achievement:New(13570)));
    tmpCategories[311] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[307]:AddCategory(tmpCategories[311]);
    tmpCategories[311]:AddAchievement(InsertAndReturn(achievements, achievement:New(13557)));
    tmpCategories[312] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1355).name, {1355, 1528})); -- Nazjatar
    tmpCategories[259]:AddCategory(tmpCategories[312]);
    tmpCategories[313] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[312]:AddCategory(tmpCategories[313]);
    tmpCategories[313]:AddAchievement(InsertAndReturn(achievements, achievement:New(13710, faction.Alliance)));
    tmpCategories[313]:AddAchievement(InsertAndReturn(achievements, achievement:New(13709, faction.Horde)));
    tmpCategories[314] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[312]:AddCategory(tmpCategories[314]);
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13712)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13635)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13690)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13691)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13692)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13743, faction.Alliance)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13753, faction.Alliance)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13758, faction.Alliance)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13744, faction.Alliance)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13754, faction.Alliance)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13759, faction.Alliance)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13745, faction.Alliance)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13755, faction.Alliance)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13760, faction.Alliance)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13704, faction.Alliance)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13762, faction.Alliance)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13746, faction.Horde)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13749, faction.Horde)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13750, faction.Horde)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13747, faction.Horde)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13751, faction.Horde)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13756, faction.Horde)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13748, faction.Horde)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13752, faction.Horde)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13757, faction.Horde)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13645, faction.Horde)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13761, faction.Horde)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13711)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13765)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13549)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13722)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13699)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13713)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13707)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13763)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13764)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13836)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13638)));
    tmpCategories[315] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[312]:AddCategory(tmpCategories[315]);
    tmpCategories[315]:AddAchievement(InsertAndReturn(achievements, achievement:New(13569)));
    tmpCategories[315]:AddAchievement(InsertAndReturn(achievements, achievement:New(13568)));
    tmpCategories[315]:AddAchievement(InsertAndReturn(achievements, achievement:New(13720)));
    tmpCategories[316] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[312]:AddCategory(tmpCategories[316]);
    tmpCategories[316]:AddAchievement(InsertAndReturn(achievements, achievement:New(13558, faction.Alliance)));
    tmpCategories[316]:AddAchievement(InsertAndReturn(achievements, achievement:New(13559, faction.Horde)));
    tmpCategories[317] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1530).name, {391, 392, 393, 394, 395, 396, 1530})); -- Vale of Eternal Blossoms
    tmpCategories[259]:AddCategory(tmpCategories[317]);
    tmpCategories[318] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[317]:AddCategory(tmpCategories[318]);
    tmpCategories[318]:AddAchievement(InsertAndReturn(achievements, achievement:New(14154)));
    tmpCategories[318]:AddAchievement(InsertAndReturn(achievements, achievement:New(14161)));
    tmpCategories[447] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[317]:AddCategory(tmpCategories[447]);
    tmpCategories[447]:AddAchievement(InsertAndReturn(achievements, achievement:New(14160)));
    tmpCategories[447]:AddAchievement(InsertAndReturn(achievements, achievement:New(14159)));
    tmpCategories[447]:AddAchievement(InsertAndReturn(achievements, achievement:New(14158)));
    tmpCategories[321] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[317]:AddCategory(tmpCategories[321]);
    tmpCategories[321]:AddAchievement(InsertAndReturn(achievements, achievement:New(14156)));
    tmpCategories[322] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1527).name, {1527})); -- Uldum
    tmpCategories[259]:AddCategory(tmpCategories[322]);
    tmpCategories[323] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[322]:AddCategory(tmpCategories[323]);
    tmpCategories[323]:AddAchievement(InsertAndReturn(achievements, achievement:New(14153)));
    tmpCategories[323]:AddAchievement(InsertAndReturn(achievements, achievement:New(14161)));
    tmpCategories[448] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[322]:AddCategory(tmpCategories[448]);
    tmpCategories[448]:AddAchievement(InsertAndReturn(achievements, achievement:New(14160)));
    tmpCategories[448]:AddAchievement(InsertAndReturn(achievements, achievement:New(14159)));
    tmpCategories[448]:AddAchievement(InsertAndReturn(achievements, achievement:New(14158)));
    tmpCategories[324] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[322]:AddCategory(tmpCategories[324]);
    tmpCategories[324]:AddAchievement(InsertAndReturn(achievements, achievement:New(14155)));
    tmpCategories[325] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15272)))); -- Dungeons
    tmpCategories[258]:AddCategory(tmpCategories[325]);
    tmpCategories[325]:AddAchievement(InsertAndReturn(achievements, achievement:New(12807)));
    tmpCategories[325]:AddAchievement(InsertAndReturn(achievements, achievement:New(12812)));
    tmpCategories[325]:AddAchievement(InsertAndReturn(achievements, achievement:New(13075)));
    tmpCategories[327] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1001)), {936})); -- Freelhold
    tmpCategories[325]:AddCategory(tmpCategories[327]);
    tmpCategories[327]:AddAchievement(InsertAndReturn(achievements, achievement:New(12550)));
    tmpCategories[327]:AddAchievement(InsertAndReturn(achievements, achievement:New(12548)));
    tmpCategories[327]:AddAchievement(InsertAndReturn(achievements, achievement:New(12998)));
    tmpCategories[327]:AddAchievement(InsertAndReturn(achievements, achievement:New(12831)));
    tmpCategories[327]:AddAchievement(InsertAndReturn(achievements, achievement:New(12832)));
    tmpCategories[327]:AddAchievement(InsertAndReturn(achievements, achievement:New(12833)));
    tmpCategories[328] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1021)), {1015, 1016, 1017, 1018, 1029})); -- Waycrest Manor
    tmpCategories[325]:AddCategory(tmpCategories[328]);
    tmpCategories[328]:AddAchievement(InsertAndReturn(achievements, achievement:New(12495)));
    tmpCategories[328]:AddAchievement(InsertAndReturn(achievements, achievement:New(12490)));
    tmpCategories[328]:AddAchievement(InsertAndReturn(achievements, achievement:New(12489)));
    tmpCategories[328]:AddAchievement(InsertAndReturn(achievements, achievement:New(12483)));
    tmpCategories[328]:AddAchievement(InsertAndReturn(achievements, achievement:New(12484)));
    tmpCategories[328]:AddAchievement(InsertAndReturn(achievements, achievement:New(12488)));
    tmpCategories[329] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1036)), {1039, 1040})); -- Shrine of the Storm
    tmpCategories[325]:AddCategory(tmpCategories[329]);
    tmpCategories[329]:AddAchievement(InsertAndReturn(achievements, achievement:New(12600)));
    tmpCategories[329]:AddAchievement(InsertAndReturn(achievements, achievement:New(12601)));
    tmpCategories[329]:AddAchievement(InsertAndReturn(achievements, achievement:New(12602)));
    tmpCategories[329]:AddAchievement(InsertAndReturn(achievements, achievement:New(12835)));
    tmpCategories[329]:AddAchievement(InsertAndReturn(achievements, achievement:New(12837)));
    tmpCategories[329]:AddAchievement(InsertAndReturn(achievements, achievement:New(12838)));
    tmpCategories[330] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(968)), {934, 935})); -- Atal'Dazar
    tmpCategories[325]:AddCategory(tmpCategories[330]);
    tmpCategories[330]:AddAchievement(InsertAndReturn(achievements, achievement:New(12270)));
    tmpCategories[330]:AddAchievement(InsertAndReturn(achievements, achievement:New(12272)));
    tmpCategories[330]:AddAchievement(InsertAndReturn(achievements, achievement:New(12273)));
    tmpCategories[330]:AddAchievement(InsertAndReturn(achievements, achievement:New(12824)));
    tmpCategories[330]:AddAchievement(InsertAndReturn(achievements, achievement:New(12825)));
    tmpCategories[330]:AddAchievement(InsertAndReturn(achievements, achievement:New(12826)));
    tmpCategories[331] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1022)), {1041, 1042})); -- The Underrot
    tmpCategories[325]:AddCategory(tmpCategories[331]);
    tmpCategories[331]:AddAchievement(InsertAndReturn(achievements, achievement:New(12498)));
    tmpCategories[331]:AddAchievement(InsertAndReturn(achievements, achievement:New(12549)));
    tmpCategories[331]:AddAchievement(InsertAndReturn(achievements, achievement:New(12499)));
    tmpCategories[331]:AddAchievement(InsertAndReturn(achievements, achievement:New(12500)));
    tmpCategories[331]:AddAchievement(InsertAndReturn(achievements, achievement:New(12501)));
    tmpCategories[331]:AddAchievement(InsertAndReturn(achievements, achievement:New(12502)));
    tmpCategories[332] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1030)), {1038, 1043})); -- Temple of Sethraliss
    tmpCategories[325]:AddCategory(tmpCategories[332]);
    tmpCategories[332]:AddAchievement(InsertAndReturn(achievements, achievement:New(12507)));
    tmpCategories[332]:AddAchievement(InsertAndReturn(achievements, achievement:New(12503)));
    tmpCategories[332]:AddAchievement(InsertAndReturn(achievements, achievement:New(12508)));
    tmpCategories[332]:AddAchievement(InsertAndReturn(achievements, achievement:New(12504)));
    tmpCategories[332]:AddAchievement(InsertAndReturn(achievements, achievement:New(12505)));
    tmpCategories[332]:AddAchievement(InsertAndReturn(achievements, achievement:New(12506)));
    tmpCategories[333] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1002)), {974, 975, 976, 977, 978, 979, 980})); -- Tol Dagor
    tmpCategories[325]:AddCategory(tmpCategories[333]);
    tmpCategories[333]:AddAchievement(InsertAndReturn(achievements, achievement:New(12457)));
    tmpCategories[333]:AddAchievement(InsertAndReturn(achievements, achievement:New(12462)));
    tmpCategories[333]:AddAchievement(InsertAndReturn(achievements, achievement:New(12840)));
    tmpCategories[333]:AddAchievement(InsertAndReturn(achievements, achievement:New(12841)));
    tmpCategories[333]:AddAchievement(InsertAndReturn(achievements, achievement:New(12842)));
    tmpCategories[334] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1012)), {1010})); -- The MOTHERLODE!!
    tmpCategories[325]:AddCategory(tmpCategories[334]);
    tmpCategories[334]:AddAchievement(InsertAndReturn(achievements, achievement:New(12855)));
    tmpCategories[334]:AddAchievement(InsertAndReturn(achievements, achievement:New(12854)));
    tmpCategories[334]:AddAchievement(InsertAndReturn(achievements, achievement:New(12844)));
    tmpCategories[334]:AddAchievement(InsertAndReturn(achievements, achievement:New(12845)));
    tmpCategories[334]:AddAchievement(InsertAndReturn(achievements, achievement:New(12846)));
    tmpCategories[335] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1023)), {1162})); -- Siege of Boralus
    tmpCategories[325]:AddCategory(tmpCategories[335]);
    tmpCategories[335]:AddAchievement(InsertAndReturn(achievements, achievement:New(12727)));
    tmpCategories[335]:AddAchievement(InsertAndReturn(achievements, achievement:New(12726)));
    tmpCategories[335]:AddAchievement(InsertAndReturn(achievements, achievement:New(12489)));
    tmpCategories[335]:AddAchievement(InsertAndReturn(achievements, achievement:New(12847)));
    tmpCategories[336] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1041)), {1004})); -- Kings' Rest
    tmpCategories[325]:AddCategory(tmpCategories[336]);
    tmpCategories[336]:AddAchievement(InsertAndReturn(achievements, achievement:New(12722)));
    tmpCategories[336]:AddAchievement(InsertAndReturn(achievements, achievement:New(12721)));
    tmpCategories[336]:AddAchievement(InsertAndReturn(achievements, achievement:New(12723)));
    tmpCategories[336]:AddAchievement(InsertAndReturn(achievements, achievement:New(12848)));
    tmpCategories[337] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1178)), {1490, 1491, 1493, 1494, 1497})); -- Operation: Mechagon
    tmpCategories[325]:AddCategory(tmpCategories[337]);
    tmpCategories[337]:AddAchievement(InsertAndReturn(achievements, achievement:New(13706)));
    tmpCategories[337]:AddAchievement(InsertAndReturn(achievements, achievement:New(13698)));
    tmpCategories[337]:AddAchievement(InsertAndReturn(achievements, achievement:New(13723)));
    tmpCategories[337]:AddAchievement(InsertAndReturn(achievements, achievement:New(13545)));
    tmpCategories[337]:AddAchievement(InsertAndReturn(achievements, achievement:New(13624)));
    tmpCategories[337]:AddAchievement(InsertAndReturn(achievements, achievement:New(13789)));
    tmpCategories[326] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15271)))); -- Raids
    tmpCategories[258]:AddCategory(tmpCategories[326]);
    tmpCategories[326]:AddAchievement(InsertAndReturn(achievements, achievement:New(12806)));
    tmpCategories[326]:AddAchievement(InsertAndReturn(achievements, achievement:New(13315)));
    tmpCategories[326]:AddAchievement(InsertAndReturn(achievements, achievement:New(13687)));
    tmpCategories[326]:AddAchievement(InsertAndReturn(achievements, achievement:New(14146)));
    tmpCategories[338] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1031)), {1148, 1149, 1150, 1151, 1152, 1153, 1154, 1155})); -- Uldir
    tmpCategories[326]:AddCategory(tmpCategories[338]);
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12937)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12938)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12828)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12823)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12772)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12830)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12836)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12551)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12521)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12522)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12523)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12524)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12526)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12527)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12530)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12529)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12531)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12532)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12533)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12536, nil, nil, false)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12535, nil, nil, false)));
    tmpCategories[339] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1176)), {1352, 1353, 1354, 1356, 1357, 1358, 1364, 1367})); -- Battle of Dazar'alor
    tmpCategories[326]:AddCategory(tmpCategories[339]);
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13316)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13431)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13383)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13345)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13325)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13425)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13401)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13430)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13410)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13286, faction.Alliance)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13289, faction.Horde)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13287, faction.Alliance)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13290, faction.Horde)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13288, faction.Alliance)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13291, faction.Horde)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13292)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13298, faction.Alliance)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13293)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13295, faction.Horde)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13299)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13300)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13311)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13312)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13313)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13314)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13322, nil, nil, false)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13323, nil, nil, false)));
    tmpCategories[340] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1177)), {1345, 1346})); -- Crucible of Storms
    tmpCategories[326]:AddCategory(tmpCategories[340]);
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13501)));
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13506)));
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13414)));
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13416)));
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13417)));
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13418, nil, nil, false)));
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13419, nil, nil, false)));
    tmpCategories[341] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1179)), {1512, 1513, 1514, 1516, 1517, 1518, 1519, 1520})); -- The Eternal Palace
    tmpCategories[326]:AddCategory(tmpCategories[341]);
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13684)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13628)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13767)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13629)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13724)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13633)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13716)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13768)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13718)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13719)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13725)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13726)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13728)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13727)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13729)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13730)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13731)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13732)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13733)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13784, nil, nil, false)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13785, nil, nil, false)));
    tmpCategories[342] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1180)), {1580, 1581, 1582, 1590, 1591, 1592, 1593, 1594, 1595, 1596, 1597})); -- Ny'alotha, the Waking City
    tmpCategories[326]:AddCategory(tmpCategories[342]);
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14019)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14008)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14037)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14024)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14139)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14023)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(13999)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(13990)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14026)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14038)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14147)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14148)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14193)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14194)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14195)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14196)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14041)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14043)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14044)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14045)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14050)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14046)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14051)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14048)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14049)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14052)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14054)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14055)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14068, nil, nil, false)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14069, nil, nil, false)));
    tmpCategories[343] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15117)))); -- Pet Battles
    tmpCategories[258]:AddCategory(tmpCategories[343]);
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(12930)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13693)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13694)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13715)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(12936)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13280)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13270)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13271)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13272)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13273)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13274)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13281)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13275)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13277)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13278)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13279)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13625)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13626)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13695)));
    tmpCategories[425] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15307)))); -- Island Expeditions
    tmpCategories[258]:AddCategory(tmpCategories[425]);
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13142)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13122)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13141)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(12596)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(12594)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(12595)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(12597)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13120)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13121)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13129)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13123)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13124)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13125)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13126)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13127)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13128)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13132)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13133, faction.Alliance)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13135, faction.Horde)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13134)));
    tmpCategories[436] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1687)), {981})); -- Un'gol Ruins
    tmpCategories[425]:AddCategory(tmpCategories[436]);
    tmpCategories[436]:AddAchievement(InsertAndReturn(achievements, achievement:New(12590)));
    tmpCategories[436]:AddAchievement(InsertAndReturn(achievements, achievement:New(12589)));
    tmpCategories[436]:AddAchievement(InsertAndReturn(achievements, achievement:New(12591)));
    tmpCategories[436]:AddAchievement(InsertAndReturn(achievements, achievement:New(12592)));
    tmpCategories[437] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1734)), {1036})); -- The Dread Chain
    tmpCategories[425]:AddCategory(tmpCategories[437]);
    tmpCategories[437]:AddAchievement(InsertAndReturn(achievements, achievement:New(13095)));
    tmpCategories[437]:AddAchievement(InsertAndReturn(achievements, achievement:New(13096)));
    tmpCategories[437]:AddAchievement(InsertAndReturn(achievements, achievement:New(13097)));
    tmpCategories[437]:AddAchievement(InsertAndReturn(achievements, achievement:New(13098)));
    tmpCategories[438] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1723)), {1033})); -- The Rotting Mire
    tmpCategories[425]:AddCategory(tmpCategories[438]);
    tmpCategories[438]:AddAchievement(InsertAndReturn(achievements, achievement:New(13103)));
    tmpCategories[438]:AddAchievement(InsertAndReturn(achievements, achievement:New(13104)));
    tmpCategories[438]:AddAchievement(InsertAndReturn(achievements, achievement:New(13105)));
    tmpCategories[438]:AddAchievement(InsertAndReturn(achievements, achievement:New(13106)));
    tmpCategories[439] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1750)), {1035})); -- The Molten Cay
    tmpCategories[425]:AddCategory(tmpCategories[439]);
    tmpCategories[439]:AddAchievement(InsertAndReturn(achievements, achievement:New(13099)));
    tmpCategories[439]:AddAchievement(InsertAndReturn(achievements, achievement:New(13100)));
    tmpCategories[439]:AddAchievement(InsertAndReturn(achievements, achievement:New(13101)));
    tmpCategories[439]:AddAchievement(InsertAndReturn(achievements, achievement:New(13102)));
    tmpCategories[440] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1724)), {1034})); -- Verdant Wilds
    tmpCategories[425]:AddCategory(tmpCategories[440]);
    tmpCategories[440]:AddAchievement(InsertAndReturn(achievements, achievement:New(13111)));
    tmpCategories[440]:AddAchievement(InsertAndReturn(achievements, achievement:New(13112)));
    tmpCategories[440]:AddAchievement(InsertAndReturn(achievements, achievement:New(13113)));
    tmpCategories[440]:AddAchievement(InsertAndReturn(achievements, achievement:New(13114)));
    tmpCategories[441] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1725)), {1032})); -- Skittering Hollow
    tmpCategories[425]:AddCategory(tmpCategories[441]);
    tmpCategories[441]:AddAchievement(InsertAndReturn(achievements, achievement:New(13107)));
    tmpCategories[441]:AddAchievement(InsertAndReturn(achievements, achievement:New(13108)));
    tmpCategories[441]:AddAchievement(InsertAndReturn(achievements, achievement:New(13109)));
    tmpCategories[441]:AddAchievement(InsertAndReturn(achievements, achievement:New(13110)));
    tmpCategories[442] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1735)), {1037})); -- The Whispering Reef
    tmpCategories[425]:AddCategory(tmpCategories[442]);
    tmpCategories[442]:AddAchievement(InsertAndReturn(achievements, achievement:New(13119)));
    tmpCategories[442]:AddAchievement(InsertAndReturn(achievements, achievement:New(13118)));
    tmpCategories[442]:AddAchievement(InsertAndReturn(achievements, achievement:New(13116)));
    tmpCategories[442]:AddAchievement(InsertAndReturn(achievements, achievement:New(13115)));
    tmpCategories[443] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1932)), {1337})); -- Jorundall
    tmpCategories[425]:AddCategory(tmpCategories[443]);
    tmpCategories[443]:AddAchievement(InsertAndReturn(achievements, achievement:New(13389)));
    tmpCategories[443]:AddAchievement(InsertAndReturn(achievements, achievement:New(13394)));
    tmpCategories[443]:AddAchievement(InsertAndReturn(achievements, achievement:New(13395)));
    tmpCategories[443]:AddAchievement(InsertAndReturn(achievements, achievement:New(13399)));
    tmpCategories[444] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1928)), {1336})); -- Havenswood
    tmpCategories[425]:AddCategory(tmpCategories[444]);
    tmpCategories[444]:AddAchievement(InsertAndReturn(achievements, achievement:New(13396)));
    tmpCategories[444]:AddAchievement(InsertAndReturn(achievements, achievement:New(13397)));
    tmpCategories[444]:AddAchievement(InsertAndReturn(achievements, achievement:New(13398)));
    tmpCategories[444]:AddAchievement(InsertAndReturn(achievements, achievement:New(13400)));
    tmpCategories[445] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1984)), {1501})); -- Crestfall
    tmpCategories[425]:AddCategory(tmpCategories[445]);
    tmpCategories[445]:AddAchievement(InsertAndReturn(achievements, achievement:New(13577)));
    tmpCategories[445]:AddAchievement(InsertAndReturn(achievements, achievement:New(13578)));
    tmpCategories[445]:AddAchievement(InsertAndReturn(achievements, achievement:New(13579)));
    tmpCategories[445]:AddAchievement(InsertAndReturn(achievements, achievement:New(13580)));
    tmpCategories[446] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1983)), {1502})); -- Snowblossom Village
    tmpCategories[425]:AddCategory(tmpCategories[446]);
    tmpCategories[446]:AddAchievement(InsertAndReturn(achievements, achievement:New(13581)));
    tmpCategories[446]:AddAchievement(InsertAndReturn(achievements, achievement:New(13582)));
    tmpCategories[446]:AddAchievement(InsertAndReturn(achievements, achievement:New(13583)));
    tmpCategories[446]:AddAchievement(InsertAndReturn(achievements, achievement:New(13584)));
    tmpCategories[426] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15308)), {1161, 1165})); -- War Effort
    tmpCategories[258]:AddCategory(tmpCategories[426]);
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12867, faction.Horde)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12896, faction.Alliance)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12869, faction.Horde)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12898, faction.Alliance)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12870, faction.Horde)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12899, faction.Alliance)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12872)));
    tmpCategories[434] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1615)), {943, 1044})); -- Battle for Stromgarde
    tmpCategories[426]:AddCategory(tmpCategories[434]);
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12873, faction.Horde)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(13735, faction.Horde)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12881, faction.Alliance)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(13737, faction.Alliance)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12877, faction.Horde)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12876, faction.Horde)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12888, faction.Alliance)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12889, faction.Alliance)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12878, faction.Horde)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12884, faction.Alliance)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12879, faction.Horde)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(13738, faction.Horde)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12886, faction.Alliance)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(13739, faction.Alliance)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12874)));
    tmpCategories[435] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1901)), {1203, 1332, 1333, 1338})); -- The Battle for Darkshore
    tmpCategories[426]:AddCategory(tmpCategories[435]);
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13296, faction.Horde)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(14149, faction.Horde)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13297, faction.Alliance)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(14150, faction.Alliance)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13301, faction.Horde)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13306, faction.Horde)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13302, faction.Alliance)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13305, faction.Alliance)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13307, faction.Horde)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13308, faction.Alliance)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13309, faction.Horde)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13310, faction.Alliance)));
    tmpCategories[427] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15417)), {1021, 1473, 1604})); -- Heart of Azeroth
    tmpCategories[258]:AddCategory(tmpCategories[427]);
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(12918)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13998)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13572)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13769)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13770)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13771)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13772)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13773)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13775)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13777)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13779, nil, nil, false)));
    tmpCategories[428] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15426)), {1021, 1469, 1470, 1473, 1604})); -- Visions of N'Zoth	
    tmpCategories[258]:AddCategory(tmpCategories[428]);
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14143)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(13994)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14060)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14061)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14062)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14064)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14066)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14063)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14065)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14067)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14162)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14165)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14166)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14167)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14168)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14169)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14170)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14171)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14172)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14173)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14140, nil, nil, false)));
    tmpCategories[6] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15439)))); -- Shadowlands
    tmpCategories[344] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[6]:AddCategory(tmpCategories[344]);
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14280)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14790)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14758)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14825)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14731)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14515)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14516)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14519)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14315)));
    tmpCategories[345] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1533).name, {1533, 1690, 1713, 1714})); -- Bastion
    tmpCategories[344]:AddCategory(tmpCategories[345]);
    tmpCategories[346] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[345]:AddCategory(tmpCategories[346]);
    tmpCategories[346]:AddAchievement(InsertAndReturn(achievements, achievement:New(14281)));
    tmpCategories[346]:AddAchievement(InsertAndReturn(achievements, achievement:New(14801)));
    tmpCategories[346]:AddAchievement(InsertAndReturn(achievements, achievement:New(14737)));
    tmpCategories[346]:AddAchievement(InsertAndReturn(achievements, achievement:New(14735)));
    tmpCategories[346]:AddAchievement(InsertAndReturn(achievements, achievement:New(14741)));
    tmpCategories[346]:AddAchievement(InsertAndReturn(achievements, achievement:New(14762)));
    tmpCategories[347] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[345]:AddCategory(tmpCategories[347]);
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14303)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14307)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14311)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14339)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14734)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14767)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14768)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14733)));
    tmpCategories[348] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[345]:AddCategory(tmpCategories[348]);
    tmpCategories[348]:AddAchievement(InsertAndReturn(achievements, achievement:New(14514)));
    tmpCategories[349] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[345]:AddCategory(tmpCategories[349]);
    tmpCategories[349]:AddAchievement(InsertAndReturn(achievements, achievement:New(14335)));
    tmpCategories[350] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1536).name, {1536, 1649, 1650, 1651, 1652})); -- Maldraxxus
    tmpCategories[344]:AddCategory(tmpCategories[350]);
    tmpCategories[351] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[350]:AddCategory(tmpCategories[351]);
    tmpCategories[351]:AddAchievement(InsertAndReturn(achievements, achievement:New(14206)));
    tmpCategories[351]:AddAchievement(InsertAndReturn(achievements, achievement:New(14799)));
    tmpCategories[352] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[350]:AddCategory(tmpCategories[352]);
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14305)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14308)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14312)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14626)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14802)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14721)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14634)));
    tmpCategories[353] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[350]:AddCategory(tmpCategories[353]);
    tmpCategories[353]:AddAchievement(InsertAndReturn(achievements, achievement:New(14513)));
    tmpCategories[354] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[350]:AddCategory(tmpCategories[354]);
    tmpCategories[354]:AddAchievement(InsertAndReturn(achievements, achievement:New(14336)));
    tmpCategories[355] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1565).name, {1565, 1816, 1818, 1819, 1824, 1825, 1826, 1827, 1829})); -- Ardenweald
    tmpCategories[344]:AddCategory(tmpCategories[355]);
    tmpCategories[356] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[355]:AddCategory(tmpCategories[356]);
    tmpCategories[356]:AddAchievement(InsertAndReturn(achievements, achievement:New(14164)));
    tmpCategories[356]:AddAchievement(InsertAndReturn(achievements, achievement:New(14800)));
    tmpCategories[356]:AddAchievement(InsertAndReturn(achievements, achievement:New(14671)));
    tmpCategories[356]:AddAchievement(InsertAndReturn(achievements, achievement:New(14672)));
    tmpCategories[357] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[355]:AddCategory(tmpCategories[357]);
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14304)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14309)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14313)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14353)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14791)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14774)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14788)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14779)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14504)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14505)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14506)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14507)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14508)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14509)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14510)));
    tmpCategories[358] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[355]:AddCategory(tmpCategories[358]);
    tmpCategories[358]:AddAchievement(InsertAndReturn(achievements, achievement:New(14511)));
    tmpCategories[359] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[355]:AddCategory(tmpCategories[359]);
    tmpCategories[359]:AddAchievement(InsertAndReturn(achievements, achievement:New(14337)));
    tmpCategories[360] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1525).name, {1525})); -- Revendreth
    tmpCategories[344]:AddCategory(tmpCategories[360]);
    tmpCategories[361] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[360]:AddCategory(tmpCategories[361]);
    tmpCategories[361]:AddAchievement(InsertAndReturn(achievements, achievement:New(13878)));
    tmpCategories[361]:AddAchievement(InsertAndReturn(achievements, achievement:New(14798)));
    tmpCategories[361]:AddAchievement(InsertAndReturn(achievements, achievement:New(14233)));
    tmpCategories[361]:AddAchievement(InsertAndReturn(achievements, achievement:New(14765)));
    tmpCategories[361]:AddAchievement(InsertAndReturn(achievements, achievement:New(14766)));
    tmpCategories[361]:AddAchievement(InsertAndReturn(achievements, achievement:New(14772)));
    tmpCategories[362] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[360]:AddCategory(tmpCategories[362]);
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14306)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14310)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14314)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14277)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14274)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14272)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14276)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14769)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14771)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14770)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14273)));
    tmpCategories[363] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[360]:AddCategory(tmpCategories[363]);
    tmpCategories[363]:AddAchievement(InsertAndReturn(achievements, achievement:New(14512)));
    tmpCategories[364] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[360]:AddCategory(tmpCategories[364]);
    tmpCategories[364]:AddAchievement(InsertAndReturn(achievements, achievement:New(14338)));
    tmpCategories[365] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1543).name, {1543, 1820, 1821, 1822, 1823})); -- The Maw
    tmpCategories[344]:AddCategory(tmpCategories[365]);
    tmpCategories[366] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[365]:AddCategory(tmpCategories[366]);
    tmpCategories[366]:AddAchievement(InsertAndReturn(achievements, achievement:New(14334)));
    tmpCategories[367] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[365]:AddCategory(tmpCategories[367]);
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14663)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14658)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14659)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14660)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14738)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14742)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14743)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14744)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14745)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14746)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14747)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14761)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14894)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14895)));
    tmpCategories[368] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[365]:AddCategory(tmpCategories[368]);
    tmpCategories[368]:AddAchievement(InsertAndReturn(achievements, achievement:New(14656)));
    tmpCategories[369] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15272)))); -- Dungeons
    tmpCategories[6]:AddCategory(tmpCategories[369]);
    tmpCategories[369]:AddAchievement(InsertAndReturn(achievements, achievement:New(14418)));
    tmpCategories[369]:AddAchievement(InsertAndReturn(achievements, achievement:New(14322)));
    tmpCategories[371] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1182)), {1666, 1667, 1668})); -- The Necrotic Wake
    tmpCategories[369]:AddCategory(tmpCategories[371]);
    tmpCategories[371]:AddAchievement(InsertAndReturn(achievements, achievement:New(14295)));
    tmpCategories[371]:AddAchievement(InsertAndReturn(achievements, achievement:New(14320)));
    tmpCategories[371]:AddAchievement(InsertAndReturn(achievements, achievement:New(14285)));
    tmpCategories[371]:AddAchievement(InsertAndReturn(achievements, achievement:New(14366)));
    tmpCategories[371]:AddAchievement(InsertAndReturn(achievements, achievement:New(14367)));
    tmpCategories[371]:AddAchievement(InsertAndReturn(achievements, achievement:New(14368)));
    tmpCategories[372] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1183)), {1674, 1697})); -- Plaguefall
    tmpCategories[369]:AddCategory(tmpCategories[372]);
    tmpCategories[372]:AddAchievement(InsertAndReturn(achievements, achievement:New(14292)));
    tmpCategories[372]:AddAchievement(InsertAndReturn(achievements, achievement:New(14347)));
    tmpCategories[372]:AddAchievement(InsertAndReturn(achievements, achievement:New(14296)));
    tmpCategories[372]:AddAchievement(InsertAndReturn(achievements, achievement:New(14369)));
    tmpCategories[372]:AddAchievement(InsertAndReturn(achievements, achievement:New(14414)));
    tmpCategories[372]:AddAchievement(InsertAndReturn(achievements, achievement:New(14415)));
    tmpCategories[373] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1184)), {1669})); -- Mists of Tirna Scithe
    tmpCategories[369]:AddCategory(tmpCategories[373]);
    tmpCategories[373]:AddAchievement(InsertAndReturn(achievements, achievement:New(14503)));
    tmpCategories[373]:AddAchievement(InsertAndReturn(achievements, achievement:New(14291)));
    tmpCategories[373]:AddAchievement(InsertAndReturn(achievements, achievement:New(14375)));
    tmpCategories[373]:AddAchievement(InsertAndReturn(achievements, achievement:New(14371)));
    tmpCategories[373]:AddAchievement(InsertAndReturn(achievements, achievement:New(14412)));
    tmpCategories[373]:AddAchievement(InsertAndReturn(achievements, achievement:New(14413)));
    tmpCategories[374] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1185)), {1663, 1664, 1665})); -- Halls of Atonement
    tmpCategories[369]:AddCategory(tmpCategories[374]);
    tmpCategories[374]:AddAchievement(InsertAndReturn(achievements, achievement:New(14567)));
    tmpCategories[374]:AddAchievement(InsertAndReturn(achievements, achievement:New(14284)));
    tmpCategories[374]:AddAchievement(InsertAndReturn(achievements, achievement:New(14352)));
    tmpCategories[374]:AddAchievement(InsertAndReturn(achievements, achievement:New(14370)));
    tmpCategories[374]:AddAchievement(InsertAndReturn(achievements, achievement:New(14410)));
    tmpCategories[374]:AddAchievement(InsertAndReturn(achievements, achievement:New(14411)));
    tmpCategories[375] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1186)), {1692, 1693, 1694, 1695})); -- Spires of Ascension
    tmpCategories[369]:AddCategory(tmpCategories[375]);
    tmpCategories[375]:AddAchievement(InsertAndReturn(achievements, achievement:New(14331)));
    tmpCategories[375]:AddAchievement(InsertAndReturn(achievements, achievement:New(14323)));
    tmpCategories[375]:AddAchievement(InsertAndReturn(achievements, achievement:New(14327)));
    tmpCategories[375]:AddAchievement(InsertAndReturn(achievements, achievement:New(14326)));
    tmpCategories[375]:AddAchievement(InsertAndReturn(achievements, achievement:New(14324)));
    tmpCategories[375]:AddAchievement(InsertAndReturn(achievements, achievement:New(14325)));
    tmpCategories[376] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1187)), {1683, 1684, 1685, 1686, 1687})); -- Theater of Pain
    tmpCategories[369]:AddCategory(tmpCategories[376]);
    tmpCategories[376]:AddAchievement(InsertAndReturn(achievements, achievement:New(14297)));
    tmpCategories[376]:AddAchievement(InsertAndReturn(achievements, achievement:New(14607)));
    tmpCategories[376]:AddAchievement(InsertAndReturn(achievements, achievement:New(14533)));
    tmpCategories[376]:AddAchievement(InsertAndReturn(achievements, achievement:New(14372)));
    tmpCategories[376]:AddAchievement(InsertAndReturn(achievements, achievement:New(14416)));
    tmpCategories[376]:AddAchievement(InsertAndReturn(achievements, achievement:New(14417)));
    tmpCategories[377] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1188)), {1677, 1678, 1679, 1680})); -- De Other Side
    tmpCategories[369]:AddCategory(tmpCategories[377]);
    tmpCategories[377]:AddAchievement(InsertAndReturn(achievements, achievement:New(14354)));
    tmpCategories[377]:AddAchievement(InsertAndReturn(achievements, achievement:New(14374)));
    tmpCategories[377]:AddAchievement(InsertAndReturn(achievements, achievement:New(14606)));
    tmpCategories[377]:AddAchievement(InsertAndReturn(achievements, achievement:New(14373)));
    tmpCategories[377]:AddAchievement(InsertAndReturn(achievements, achievement:New(14408)));
    tmpCategories[377]:AddAchievement(InsertAndReturn(achievements, achievement:New(14409)));
    tmpCategories[378] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1189)), {1675, 1676})); -- Sanguine Depths
    tmpCategories[369]:AddCategory(tmpCategories[378]);
    tmpCategories[378]:AddAchievement(InsertAndReturn(achievements, achievement:New(14286)));
    tmpCategories[378]:AddAchievement(InsertAndReturn(achievements, achievement:New(14290)));
    tmpCategories[378]:AddAchievement(InsertAndReturn(achievements, achievement:New(14289)));
    tmpCategories[378]:AddAchievement(InsertAndReturn(achievements, achievement:New(14197)));
    tmpCategories[378]:AddAchievement(InsertAndReturn(achievements, achievement:New(14198)));
    tmpCategories[378]:AddAchievement(InsertAndReturn(achievements, achievement:New(14199)));
    tmpCategories[370] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15271)))); -- Raids
    tmpCategories[6]:AddCategory(tmpCategories[370]);
    tmpCategories[370]:AddAchievement(InsertAndReturn(achievements, achievement:New(14355)));
    tmpCategories[379] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1190)), {1735, 1744, 1745, 1746, 1747, 1748, 1750})); -- Castle Nathria
    tmpCategories[370]:AddCategory(tmpCategories[379]);
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14293)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14523)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14376)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14524)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14617)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14608)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14619)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14294)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14525)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14610)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14715)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14717)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14718)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14356)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14357)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14358)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14361)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14359)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14360)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14362)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14363)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14364)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14365)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14460)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14461)));
    tmpCategories[380] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15117)))); -- Pet Battles
    tmpCategories[6]:AddCategory(tmpCategories[380]);
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14867)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14625)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14868)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14869)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14870)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14871)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14872)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14873)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14874)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14875)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14876)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14877)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14879)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14881)));
    tmpCategories[424] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15440)), {1618, 1619, 1620, 1621, 1623, 1624, 1627, 1628, 1629, 1630, 1631, 1632, 1635, 1636, 1641, 1645, 1656, 1705, 1712, 1716, 1720, 1721, 1736, 1749, 1751, 1752, 1753, 1754, 1756, 1757, 1758, 1759, 1760, 1761, 1762, 1763, 1764, 1765, 1766, 1767, 1768, 1769, 1770, 1771, 1772, 1773, 1774, 1776, 1777, 1778, 1779, 1780, 1781, 1782, 1783, 1784, 1785, 1786, 1787, 1788, 1789, 1791, 1792, 1793, 1794, 1795, 1796, 1797, 1798, 1799, 1800, 1801, 1802, 1803, 1804, 1805, 1806, 1807, 1808, 1809, 1810, 1811, 1812, 1833, 1834, 1835, 1836, 1837, 1838, 1839, 1840, 1841, 1842, 1843, 1844, 1845, 1846, 1847, 1848, 1849, 1850, 1851, 1852, 1853, 1854, 1855, 1856, 1857, 1858, 1859, 1860, 1861, 1862, 1863, 1864, 1865, 1867, 1868, 1869, 1870, 1871, 1872, 1873, 1874, 1875, 1876, 1877, 1878, 1879, 1880, 1881, 1882, 1883, 1884, 1885, 1886, 1887, 1888, 1889, 1890, 1891, 1892, 1893, 1894, 1895, 1896, 1897, 1898, 1899, 1900, 1901, 1902, 1903, 1904, 1905, 1907, 1908, 1909, 1910, 1911, 1912, 1913, 1914, 1920, 1921})); -- Torghast
    tmpCategories[6]:AddCategory(tmpCategories[424]);
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14463)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14473)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14478)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14483)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14488)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14493)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14808)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14809)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14810)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14499)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14500)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14501)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14468)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14469)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14470)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14471)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14472)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14568)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14569)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14570)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14498)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14773)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14776)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14778)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14754)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14755)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14759)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14760)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14795)));
    tmpCategories[419] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15441)), {1644, 1698, 1699, 1700, 1701, 1702, 1703, 1707, 1708})); -- Covenant Sanctums
    tmpCategories[6]:AddCategory(tmpCategories[419]);
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14627)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14834)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14835)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14836)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14837)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14628)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14629)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14630)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14631)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14632)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14633)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14636)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14839)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14840)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14841)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14842)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14843)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14844)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14845)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14846)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14847)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14637)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14638)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14639)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14777)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(15023)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(15024)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(15025)));
    tmpCategories[423] = InsertAndReturn(categories, achievementCategory:New(C_Covenants.GetCovenantData(1).name, {1707, 1708}, true)); -- Kyrian
    tmpCategories[419]:AddCategory(tmpCategories[423]);
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14851, nil, covenant.Kyrian)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14852, nil, covenant.Kyrian)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14853, nil, covenant.Kyrian)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14854, nil, covenant.Kyrian)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14856, nil, covenant.Kyrian)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14857, nil, covenant.Kyrian)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14858, nil, covenant.Kyrian)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14859, nil, covenant.Kyrian)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14860, nil, covenant.Kyrian)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14861, nil, covenant.Kyrian)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14862, nil, covenant.Kyrian)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14863, nil, covenant.Kyrian)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14864, nil, covenant.Kyrian)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14865, nil, covenant.Kyrian)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14866, nil, covenant.Kyrian)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14887, nil, covenant.Kyrian)));
    tmpCategories[421] = InsertAndReturn(categories, achievementCategory:New(C_Covenants.GetCovenantData(2).name, {1644, 1699, 1700}, true)); -- Venthyr
    tmpCategories[419]:AddCategory(tmpCategories[421]);
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14678, nil, covenant.Venthyr)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14679, nil, covenant.Venthyr)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14680, nil, covenant.Venthyr)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14681, nil, covenant.Venthyr)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14682, nil, covenant.Venthyr)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14683, nil, covenant.Venthyr)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14723, nil, covenant.Venthyr)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14724, nil, covenant.Venthyr)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14725, nil, covenant.Venthyr)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14726, nil, covenant.Venthyr)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14727, nil, covenant.Venthyr)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14749, nil, covenant.Venthyr)));
    tmpCategories[422] = InsertAndReturn(categories, achievementCategory:New(C_Covenants.GetCovenantData(3).name, {1662, 1701, 1702, 1703}, true)); -- Night Fae
    tmpCategories[419]:AddCategory(tmpCategories[422]);
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14670, nil, covenant.NightFae)));
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14675, nil, covenant.NightFae)));
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14676, nil, covenant.NightFae)));
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14677, nil, covenant.NightFae)));
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14775, nil, covenant.NightFae)));
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14780, nil, covenant.NightFae)));
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14789, nil, covenant.NightFae)));
    tmpCategories[420] = InsertAndReturn(categories, achievementCategory:New(C_Covenants.GetCovenantData(4).name, {1698}, true)); -- Necrolord
    tmpCategories[419]:AddCategory(tmpCategories[420]);
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14684, nil, covenant.Necrolord)));
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14748, nil, covenant.Necrolord)));
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14751, nil, covenant.Necrolord)));
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14752, nil, covenant.Necrolord)));
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14753, nil, covenant.Necrolord)));
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14764, nil, covenant.Necrolord)));
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14833, nil, covenant.Necrolord)));
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14763, nil, covenant.Necrolord)));

    return currentZoneCategory;
end

