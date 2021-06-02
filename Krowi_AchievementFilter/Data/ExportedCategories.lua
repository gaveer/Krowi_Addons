-- [[ Exported at 2021-05-29 17-23-04 ]] --
-- [[ This code is automatically generated as an export from ]] --
-- [[ an SQLite database and is not meant for manual edit. ]] --

-- [[ Namespaces ]] --
local _, addon = ...;
local objects = addon.Objects;
local achievementCategory = objects.AchievementCategory;
local data = addon.Data;
data.ExportedCategories = {};
local exportedCategories = data.ExportedCategories;

local function InsertAndReturn(table, value)
    tinsert(table, value);
    return value;
end

function exportedCategories.Load(categories, achievements)
    for i, _ in next, categories do
        categories[i] = nil;
    end

    local tmpCategories = {};
    tmpCategories[433] = InsertAndReturn(categories, achievementCategory:New(addon.L["Current Zone"])); -- Current Zone
    tmpCategories[433].AlwaysVisible = true;
    tmpCategories[433].HasFlexibleData = true;
    local currentZoneCategory = tmpCategories[433];
    tmpCategories[1] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(14864)))); -- Classic
    tmpCategories[648] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[1]:AddCategory(tmpCategories[648]);
    tmpCategories[648]:AddAchievement(achievements[1206]) -- To All The Squirrels I've Loved Before
    tmpCategories[648]:AddAchievement(achievements[944]) -- They Love Me In That Tunnel
    tmpCategories[648]:AddAchievement(achievements[942]) -- The Diplomat
    tmpCategories[648]:AddAchievement(achievements[943]) -- The Diplomat
    tmpCategories[687] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(13).name)); -- Eastern Kingdoms
    tmpCategories[648]:AddCategory(tmpCategories[687]);
    tmpCategories[687]:AddAchievement(achievements[1676]) -- Loremaster of Eastern Kingdoms
    tmpCategories[687]:AddAchievement(achievements[42]) -- Eastern Kingdoms Explorer
    tmpCategories[721] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(27).name, {27, 28, 29, 30, 31, 427, 469})); -- Dun Morogh
    tmpCategories[687]:AddCategory(tmpCategories[721]);
    tmpCategories[721]:AddAchievement(achievements[1186]) -- Down With The Dark Iron
    tmpCategories[723] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {27, 28, 29, 30, 31, 427, 469}, nil, true)); -- Exploration
    tmpCategories[721]:AddCategory(tmpCategories[723]);
    tmpCategories[723]:AddAchievement(achievements[627]) -- Explore Dun Morogh
    tmpCategories[722] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(37).name, {37, 38, 39, 40})); -- Elwynn Forest
    tmpCategories[687]:AddCategory(tmpCategories[722]);
    tmpCategories[724] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {37, 38, 39, 40}, nil, true)); -- Exploration
    tmpCategories[722]:AddCategory(tmpCategories[724]);
    tmpCategories[724]:AddAchievement(achievements[776]) -- Explore Elwynn Forest
    tmpCategories[725] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(18).name, {18, 19, 20, 465})); -- Tirisfal Glades
    tmpCategories[687]:AddCategory(tmpCategories[725]);
    tmpCategories[726] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {18, 19, 20, 465}, nil, true)); -- Exploration
    tmpCategories[725]:AddCategory(tmpCategories[726]);
    tmpCategories[726]:AddAchievement(achievements[768]) -- Explore Tirisfal Glades
    tmpCategories[651] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(52).name, {52, 53, 54, 55})); -- Westfall
    tmpCategories[687]:AddCategory(tmpCategories[651]);
    tmpCategories[653] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {52, 53, 54, 55}, nil, true)); -- Quests
    tmpCategories[651]:AddCategory(tmpCategories[653]);
    tmpCategories[653]:AddAchievement(achievements[4903]) -- Westfall Quests
    tmpCategories[653]:AddAchievement(achievements[12455]) -- Westfall & Duskwood Quests
    tmpCategories[730] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {52, 53, 54, 55}, nil, true)); -- Exploration
    tmpCategories[651]:AddCategory(tmpCategories[730]);
    tmpCategories[730]:AddAchievement(achievements[802]) -- Explore Westfall
    tmpCategories[655] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(48).name, {48})); -- Loch Modan
    tmpCategories[687]:AddCategory(tmpCategories[655]);
    tmpCategories[657] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {48}, nil, true)); -- Quests
    tmpCategories[655]:AddCategory(tmpCategories[657]);
    tmpCategories[657]:AddAchievement(achievements[4899]) -- Loch Modan Quests
    tmpCategories[657]:AddAchievement(achievements[12456]) -- Loch Modan & Wetlands Quests
    tmpCategories[729] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {48}, nil, true)); -- Exploration
    tmpCategories[655]:AddCategory(tmpCategories[729]);
    tmpCategories[729]:AddAchievement(achievements[779]) -- Explore Loch Modan
    tmpCategories[681] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(21).name, {21})); -- Silverpine Forest
    tmpCategories[687]:AddCategory(tmpCategories[681]);
    tmpCategories[682] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {21}, nil, true)); -- Quests
    tmpCategories[681]:AddCategory(tmpCategories[682]);
    tmpCategories[682]:AddAchievement(achievements[4894]) -- Silverpine Forest Quests
    tmpCategories[732] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {21}, nil, true)); -- Exploration
    tmpCategories[681]:AddCategory(tmpCategories[732]);
    tmpCategories[732]:AddAchievement(achievements[769]) -- Explore Silverpine Forest
    tmpCategories[678] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(49).name, {49})); -- Redridge Mountains
    tmpCategories[687]:AddCategory(tmpCategories[678]);
    tmpCategories[677] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {49}, nil, true)); -- Quests
    tmpCategories[678]:AddCategory(tmpCategories[677]);
    tmpCategories[677]:AddAchievement(achievements[4902]) -- Redridge Mountains Quests
    tmpCategories[734] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {49}, nil, true)); -- Exploration
    tmpCategories[678]:AddCategory(tmpCategories[734]);
    tmpCategories[734]:AddAchievement(achievements[780]) -- Explore Redridge Mountains
    tmpCategories[652] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(47).name, {47})); -- Duskwood
    tmpCategories[687]:AddCategory(tmpCategories[652]);
    tmpCategories[654] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {47}, nil, true)); -- Quests
    tmpCategories[652]:AddCategory(tmpCategories[654]);
    tmpCategories[654]:AddAchievement(achievements[12430]) -- Duskwood Quests
    tmpCategories[654]:AddAchievement(achievements[12455]) -- Westfall & Duskwood Quests
    tmpCategories[735] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {47}, nil, true)); -- Exploration
    tmpCategories[652]:AddCategory(tmpCategories[735]);
    tmpCategories[735]:AddAchievement(achievements[778]) -- Explore Duskwood
    tmpCategories[656] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(56).name, {56})); -- Wetlands
    tmpCategories[687]:AddCategory(tmpCategories[656]);
    tmpCategories[658] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {56}, nil, true)); -- Quests
    tmpCategories[656]:AddCategory(tmpCategories[658]);
    tmpCategories[658]:AddAchievement(achievements[12429]) -- Wetlands Quests
    tmpCategories[658]:AddAchievement(achievements[12456]) -- Loch Modan & Wetlands Quests
    tmpCategories[731] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {56}, nil, true)); -- Exploration
    tmpCategories[656]:AddCategory(tmpCategories[731]);
    tmpCategories[731]:AddAchievement(achievements[841]) -- Explore Wetlands
    tmpCategories[671] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(25).name, {25})); -- Hillsbrad Foothills
    tmpCategories[687]:AddCategory(tmpCategories[671]);
    tmpCategories[672] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {25}, nil, true)); -- Quests
    tmpCategories[671]:AddCategory(tmpCategories[672]);
    tmpCategories[672]:AddAchievement(achievements[4895]) -- Hillsbrad Foothills Quests
    tmpCategories[736] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {25}, nil, true)); -- Exploration
    tmpCategories[671]:AddCategory(tmpCategories[736]);
    tmpCategories[736]:AddAchievement(achievements[772]) -- Explore Hillsbrad Foothills
    tmpCategories[649] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(14).name, {14})); -- Arathi Highlands
    tmpCategories[687]:AddCategory(tmpCategories[649]);
    tmpCategories[650] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {14}, nil, true)); -- Quests
    tmpCategories[649]:AddCategory(tmpCategories[650]);
    tmpCategories[650]:AddAchievement(achievements[4896]) -- Arathi Highlands Quests
    tmpCategories[741] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {14}, nil, true)); -- Exploration
    tmpCategories[649]:AddCategory(tmpCategories[741]);
    tmpCategories[741]:AddAchievement(achievements[761]) -- Explore Arathi Highlands
    tmpCategories[675] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(50).name, {50})); -- Northern Stranglethorn
    tmpCategories[687]:AddCategory(tmpCategories[675]);
    tmpCategories[676] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {50}, nil, true)); -- Quests
    tmpCategories[675]:AddCategory(tmpCategories[676]);
    tmpCategories[676]:AddAchievement(achievements[4906]) -- Northern Stranglethorn Quests
    tmpCategories[676]:AddAchievement(achievements[940]) -- The Green Hills of Stranglethorn
    tmpCategories[676]:AddAchievement(achievements[941]) -- Hemet Nesingwary: The Collected Quests
    tmpCategories[739] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {50}, nil, true)); -- Exploration
    tmpCategories[675]:AddCategory(tmpCategories[739]);
    tmpCategories[739]:AddAchievement(achievements[781]) -- Explore Northern Stranglethorn
    tmpCategories[665] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(210).name, {210})); -- The Cape of Stranglethorn
    tmpCategories[687]:AddCategory(tmpCategories[665]);
    tmpCategories[666] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {210}, nil, true)); -- Quests
    tmpCategories[665]:AddCategory(tmpCategories[666]);
    tmpCategories[666]:AddAchievement(achievements[4905]) -- Cape of Stranglethorn Quests
    tmpCategories[740] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {210}, nil, true)); -- Exploration
    tmpCategories[665]:AddCategory(tmpCategories[740]);
    tmpCategories[740]:AddAchievement(achievements[4995]) -- Explore the Cape of Stranglethorn
    tmpCategories[685] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(22).name, {22})); -- Western Plaguelands
    tmpCategories[687]:AddCategory(tmpCategories[685]);
    tmpCategories[686] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {22}, nil, true)); -- Quests
    tmpCategories[685]:AddCategory(tmpCategories[686]);
    tmpCategories[686]:AddAchievement(achievements[4893]) -- Western Plaguelands Quests
    tmpCategories[746] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {22}, nil, true)); -- Exploration
    tmpCategories[685]:AddCategory(tmpCategories[746]);
    tmpCategories[746]:AddAchievement(achievements[770]) -- Explore Western Plaguelands
    tmpCategories[673] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(26).name, {26})); -- The Hinterlands
    tmpCategories[687]:AddCategory(tmpCategories[673]);
    tmpCategories[674] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {26}, nil, true)); -- Quests
    tmpCategories[673]:AddCategory(tmpCategories[674]);
    tmpCategories[674]:AddAchievement(achievements[4897]) -- Hinterlands Quests
    tmpCategories[742] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {26}, nil, true)); -- Exploration
    tmpCategories[673]:AddCategory(tmpCategories[742]);
    tmpCategories[742]:AddAchievement(achievements[773]) -- Explore The Hinterlands
    tmpCategories[667] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(23).name, {23})); -- Eastern Plaguelands
    tmpCategories[687]:AddCategory(tmpCategories[667]);
    tmpCategories[668] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {23}, nil, true)); -- Quests
    tmpCategories[667]:AddCategory(tmpCategories[668]);
    tmpCategories[668]:AddAchievement(achievements[4892]) -- Eastern Plaguelands Quests
    tmpCategories[668]:AddAchievement(achievements[5442]) -- Full Caravan
    tmpCategories[747] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {23}, nil, true)); -- Exploration
    tmpCategories[667]:AddCategory(tmpCategories[747]);
    tmpCategories[747]:AddAchievement(achievements[771]) -- Explore Eastern Plaguelands
    tmpCategories[778] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {23}, nil, true)); -- Reputation
    tmpCategories[667]:AddCategory(tmpCategories[778]);
    tmpCategories[778]:AddAchievement(achievements[946]) -- The Argent Dawn
    tmpCategories[778]:AddAchievement(achievements[945]) -- The Argent Champion
    tmpCategories[659] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(15).name, {15, 16})); -- Badlands
    tmpCategories[687]:AddCategory(tmpCategories[659]);
    tmpCategories[661] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {15, 16}, nil, true)); -- Quests
    tmpCategories[659]:AddCategory(tmpCategories[661]);
    tmpCategories[661]:AddAchievement(achievements[4900]) -- Badlands Quests
    tmpCategories[661]:AddAchievement(achievements[5444]) -- "Ready, Set, Goat!"
    tmpCategories[738] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {15, 16}, nil, true)); -- Exploration
    tmpCategories[659]:AddCategory(tmpCategories[738]);
    tmpCategories[738]:AddAchievement(achievements[765]) -- Explore Badlands
    tmpCategories[679] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(32).name, {32, 35})); -- Searing Gorge
    tmpCategories[687]:AddCategory(tmpCategories[679]);
    tmpCategories[680] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {32, 35}, nil, true)); -- Quests
    tmpCategories[679]:AddCategory(tmpCategories[680]);
    tmpCategories[680]:AddAchievement(achievements[4910]) -- Searing Gorge Quests
    tmpCategories[743] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {32, 35}, nil, true)); -- Exploration
    tmpCategories[679]:AddCategory(tmpCategories[743]);
    tmpCategories[743]:AddAchievement(achievements[774]) -- Explore Searing Gorge
    tmpCategories[683] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(51).name, {51})); -- Swamp of Sorrows
    tmpCategories[687]:AddCategory(tmpCategories[683]);
    tmpCategories[684] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {51}, nil, true)); -- Quests
    tmpCategories[683]:AddCategory(tmpCategories[684]);
    tmpCategories[684]:AddAchievement(achievements[4904]) -- Swamp of Sorrows Quests
    tmpCategories[737] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {51}, nil, true)); -- Exploration
    tmpCategories[683]:AddCategory(tmpCategories[737]);
    tmpCategories[737]:AddAchievement(achievements[782]) -- Explore Swamp of Sorrows
    tmpCategories[663] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(36).name, {33, 34, 36})); -- Burning Steppes
    tmpCategories[687]:AddCategory(tmpCategories[663]);
    tmpCategories[664] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {33, 34, 36}, nil, true)); -- Quests
    tmpCategories[663]:AddCategory(tmpCategories[664]);
    tmpCategories[664]:AddAchievement(achievements[4901]) -- Burning Steppes Quests
    tmpCategories[745] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {33, 34, 36}, nil, true)); -- Exploration
    tmpCategories[663]:AddCategory(tmpCategories[745]);
    tmpCategories[745]:AddAchievement(achievements[775]) -- Explore Burning Steppes
    tmpCategories[660] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(17).name, {17})); -- Blasted Lands
    tmpCategories[687]:AddCategory(tmpCategories[660]);
    tmpCategories[660]:AddAchievement(achievements[9618]) -- The Iron Invasion
    tmpCategories[662] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {17}, nil, true)); -- Quests
    tmpCategories[660]:AddCategory(tmpCategories[662]);
    tmpCategories[662]:AddAchievement(achievements[4909]) -- Blasted Lands Quests
    tmpCategories[744] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {17}, nil, true)); -- Exploration
    tmpCategories[660]:AddCategory(tmpCategories[744]);
    tmpCategories[744]:AddAchievement(achievements[766]) -- Explore Blasted Lands
    tmpCategories[748] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(42).name, {42, 43, 44, 45, 46})); -- Deadwind Pass
    tmpCategories[687]:AddCategory(tmpCategories[748]);
    tmpCategories[749] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {42, 43, 44, 45, 46}, nil, true)); -- Exploration
    tmpCategories[748]:AddCategory(tmpCategories[749]);
    tmpCategories[749]:AddAchievement(achievements[777]) -- Explore Deadwind Pass
    tmpCategories[688] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(12).name)); -- Kalimdor
    tmpCategories[648]:AddCategory(tmpCategories[688]);
    tmpCategories[688]:AddAchievement(achievements[1678]) -- Loremaster of Kalimdor
    tmpCategories[688]:AddAchievement(achievements[43]) -- Kalimdor Explorer
    tmpCategories[756] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(57).name, {57})); -- Teldrassil
    tmpCategories[688]:AddCategory(tmpCategories[756]);
    tmpCategories[757] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {57}, nil, true)); -- Exploration
    tmpCategories[756]:AddCategory(tmpCategories[757]);
    tmpCategories[757]:AddAchievement(achievements[842]) -- Explore Teldrassil
    tmpCategories[752] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1).name, {1, 2, 3, 4, 5, 6, 461})); -- Durotar
    tmpCategories[688]:AddCategory(tmpCategories[752]);
    tmpCategories[752]:AddAchievement(achievements[1186]) -- Down With The Dark Iron
    tmpCategories[753] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {1, 2, 3, 4, 5, 6, 461}, nil, true)); -- Exploration
    tmpCategories[752]:AddCategory(tmpCategories[753]);
    tmpCategories[753]:AddAchievement(achievements[728]) -- Explore Durotar
    tmpCategories[754] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(7).name, {7, 8, 9, 462})); -- Mulgore
    tmpCategories[688]:AddCategory(tmpCategories[754]);
    tmpCategories[755] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {7, 8, 9, 462}, nil, true)); -- Exploration
    tmpCategories[754]:AddCategory(tmpCategories[755]);
    tmpCategories[755]:AddAchievement(achievements[736]) -- Explore Mulgore
    tmpCategories[774] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(80).name, {80})); -- Moonglade
    tmpCategories[688]:AddCategory(tmpCategories[774]);
    tmpCategories[775] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {80}, nil, true)); -- Exploration
    tmpCategories[774]:AddCategory(tmpCategories[775]);
    tmpCategories[775]:AddAchievement(achievements[855]) -- Explore Moonglade
    tmpCategories[705] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(10).name, {10, 11})); -- Northern Barrens
    tmpCategories[688]:AddCategory(tmpCategories[705]);
    tmpCategories[706] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {10, 11}, nil, true)); -- Quests
    tmpCategories[705]:AddCategory(tmpCategories[706]);
    tmpCategories[706]:AddAchievement(achievements[4933]) -- Northern Barrens Quests
    tmpCategories[760] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {10, 11}, nil, true)); -- Exploration
    tmpCategories[705]:AddCategory(tmpCategories[760]);
    tmpCategories[760]:AddAchievement(achievements[750]) -- Explore Northern Barrens
    tmpCategories[695] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(62).name, {62})); -- Darkshore
    tmpCategories[688]:AddCategory(tmpCategories[695]);
    tmpCategories[696] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {62}, nil, true)); -- Quests
    tmpCategories[695]:AddCategory(tmpCategories[696]);
    tmpCategories[696]:AddAchievement(achievements[4928]) -- Darkshore Quests
    tmpCategories[696]:AddAchievement(achievements[5453]) -- Ghosts in the Dark
    tmpCategories[762] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {62}, nil, true)); -- Exploration
    tmpCategories[695]:AddCategory(tmpCategories[762]);
    tmpCategories[762]:AddAchievement(achievements[844]) -- Explore Darkshore
    tmpCategories[691] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(76).name, {76})); -- Azshara
    tmpCategories[688]:AddCategory(tmpCategories[691]);
    tmpCategories[692] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {76}, nil, true)); -- Quests
    tmpCategories[691]:AddCategory(tmpCategories[692]);
    tmpCategories[692]:AddAchievement(achievements[4927]) -- Azshara Quests
    tmpCategories[692]:AddAchievement(achievements[5454]) -- Joy Ride
    tmpCategories[692]:AddAchievement(achievements[5448]) -- Glutton for Fiery Punishment
    tmpCategories[692]:AddAchievement(achievements[5546]) -- Glutton for Icy Punishment
    tmpCategories[692]:AddAchievement(achievements[5547]) -- Glutton for Shadowy Punishment
    tmpCategories[771] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {76}, nil, true)); -- Exploration
    tmpCategories[691]:AddCategory(tmpCategories[771]);
    tmpCategories[771]:AddAchievement(achievements[852]) -- Explore Azshara
    tmpCategories[689] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(63).name, {63})); -- Ashenvale
    tmpCategories[688]:AddCategory(tmpCategories[689]);
    tmpCategories[690] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {63}, nil, true)); -- Quests
    tmpCategories[689]:AddCategory(tmpCategories[690]);
    tmpCategories[690]:AddAchievement(achievements[4925]) -- Ashenvale Quests
    tmpCategories[690]:AddAchievement(achievements[4976]) -- Ashenvale Quests
    tmpCategories[764] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {63}, nil, true)); -- Exploration
    tmpCategories[689]:AddCategory(tmpCategories[764]);
    tmpCategories[764]:AddAchievement(achievements[845]) -- Explore Ashenvale
    tmpCategories[709] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(65).name, {65})); -- Stonetalon Mountains
    tmpCategories[688]:AddCategory(tmpCategories[709]);
    tmpCategories[710] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {65}, nil, true)); -- Quests
    tmpCategories[709]:AddCategory(tmpCategories[710]);
    tmpCategories[710]:AddAchievement(achievements[4936]) -- Stonetalon Mountains Quests
    tmpCategories[710]:AddAchievement(achievements[4980]) -- Stonetalon Mountains Quests
    tmpCategories[766] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {65}, nil, true)); -- Exploration
    tmpCategories[709]:AddCategory(tmpCategories[766]);
    tmpCategories[766]:AddAchievement(achievements[847]) -- Explore Stonetalon Mountains
    tmpCategories[697] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(66).name, {66, 67, 68})); -- Desolace
    tmpCategories[688]:AddCategory(tmpCategories[697]);
    tmpCategories[698] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {66, 67, 68}, nil, true)); -- Quests
    tmpCategories[697]:AddCategory(tmpCategories[698]);
    tmpCategories[698]:AddAchievement(achievements[4930]) -- Desolace Quests
    tmpCategories[767] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {66, 67, 68}, nil, true)); -- Exploration
    tmpCategories[697]:AddCategory(tmpCategories[767]);
    tmpCategories[767]:AddAchievement(achievements[848]) -- Explore Desolace
    tmpCategories[711] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(199).name, {199})); -- Southern Barrens
    tmpCategories[688]:AddCategory(tmpCategories[711]);
    tmpCategories[712] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {199}, nil, true)); -- Quests
    tmpCategories[711]:AddCategory(tmpCategories[712]);
    tmpCategories[712]:AddAchievement(achievements[4937]) -- Southern Barrens Quests
    tmpCategories[712]:AddAchievement(achievements[4981]) -- Southern Barrens Quests
    tmpCategories[761] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {199}, nil, true)); -- Exploration
    tmpCategories[711]:AddCategory(tmpCategories[761]);
    tmpCategories[761]:AddAchievement(achievements[4996]) -- Explore Southern Barrens
    tmpCategories[703] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(69).name, {69})); -- Feralas
    tmpCategories[688]:AddCategory(tmpCategories[703]);
    tmpCategories[704] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {69}, nil, true)); -- Quests
    tmpCategories[703]:AddCategory(tmpCategories[704]);
    tmpCategories[704]:AddAchievement(achievements[4932]) -- Feralas Quests
    tmpCategories[704]:AddAchievement(achievements[4979]) -- Feralas Quests
    tmpCategories[769] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {69}, nil, true)); -- Exploration
    tmpCategories[703]:AddCategory(tmpCategories[769]);
    tmpCategories[769]:AddAchievement(achievements[849]) -- Explore Feralas
    tmpCategories[699] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(70).name, {70})); -- Dustwallow Marsh
    tmpCategories[688]:AddCategory(tmpCategories[699]);
    tmpCategories[700] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {70}, nil, true)); -- Quests
    tmpCategories[699]:AddCategory(tmpCategories[700]);
    tmpCategories[700]:AddAchievement(achievements[4929]) -- Dustwallow Marsh Quests
    tmpCategories[700]:AddAchievement(achievements[4978]) -- Dustwallow Marsh Quests
    tmpCategories[768] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {70}, nil, true)); -- Exploration
    tmpCategories[699]:AddCategory(tmpCategories[768]);
    tmpCategories[768]:AddAchievement(achievements[850]) -- Explore Dustwallow Marsh
    tmpCategories[715] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(64).name, {64})); -- Thousand Needles
    tmpCategories[688]:AddCategory(tmpCategories[715]);
    tmpCategories[716] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {64}, nil, true)); -- Quests
    tmpCategories[715]:AddCategory(tmpCategories[716]);
    tmpCategories[716]:AddAchievement(achievements[4938]) -- Thousand Needles Quests
    tmpCategories[765] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {64}, nil, true)); -- Exploration
    tmpCategories[715]:AddCategory(tmpCategories[765]);
    tmpCategories[765]:AddAchievement(achievements[846]) -- Explore Thousand Needles
    tmpCategories[713] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(71).name, {71, 72, 73})); -- Tanaris
    tmpCategories[688]:AddCategory(tmpCategories[713]);
    tmpCategories[714] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {71, 72, 73}, nil, true)); -- Quests
    tmpCategories[713]:AddCategory(tmpCategories[714]);
    tmpCategories[714]:AddAchievement(achievements[4935]) -- Tanaris Quests
    tmpCategories[770] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {71, 72, 73}, nil, true)); -- Exploration
    tmpCategories[713]:AddCategory(tmpCategories[770]);
    tmpCategories[770]:AddAchievement(achievements[851]) -- Explore Tanaris
    tmpCategories[701] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(77).name, {77})); -- Felwood
    tmpCategories[688]:AddCategory(tmpCategories[701]);
    tmpCategories[702] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {77}, nil, true)); -- Quests
    tmpCategories[701]:AddCategory(tmpCategories[702]);
    tmpCategories[702]:AddAchievement(achievements[4931]) -- Felwood Quests
    tmpCategories[772] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {77}, nil, true)); -- Exploration
    tmpCategories[701]:AddCategory(tmpCategories[772]);
    tmpCategories[772]:AddAchievement(achievements[853]) -- Explore Felwood
    tmpCategories[717] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(78).name, {78, 79})); -- Un'Goro Crater
    tmpCategories[688]:AddCategory(tmpCategories[717]);
    tmpCategories[717]:AddAchievement(achievements[3357]) -- Venomhide Ravasaur
    tmpCategories[718] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {78, 79}, nil, true)); -- Quests
    tmpCategories[717]:AddCategory(tmpCategories[718]);
    tmpCategories[718]:AddAchievement(achievements[4939]) -- Un'Goro Crater Quests
    tmpCategories[773] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {78, 79}, nil, true)); -- Exploration
    tmpCategories[717]:AddCategory(tmpCategories[773]);
    tmpCategories[773]:AddAchievement(achievements[854]) -- Explore Un'Goro Crater
    tmpCategories[707] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(81).name, {81, 82})); -- Silithus
    tmpCategories[688]:AddCategory(tmpCategories[707]);
    tmpCategories[707]:AddAchievement(achievements[416]) -- Scarab Lord
    tmpCategories[708] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {81, 82}, nil, true)); -- Quests
    tmpCategories[707]:AddCategory(tmpCategories[708]);
    tmpCategories[708]:AddAchievement(achievements[4934]) -- Silithus Quests
    tmpCategories[776] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {81, 82}, nil, true)); -- Exploration
    tmpCategories[707]:AddCategory(tmpCategories[776]);
    tmpCategories[776]:AddAchievement(achievements[856]) -- Explore Silithus
    tmpCategories[783] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {81, 82}, nil, true)); -- Reputation
    tmpCategories[707]:AddCategory(tmpCategories[783]);
    tmpCategories[783]:AddAchievement(achievements[953]) -- Guardian of Cenarius
    tmpCategories[719] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(83).name, {83})); -- Winterspring
    tmpCategories[688]:AddCategory(tmpCategories[719]);
    tmpCategories[719]:AddAchievement(achievements[3356]) -- Winterspring Frostsaber
    tmpCategories[720] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {83}, nil, true)); -- Quests
    tmpCategories[719]:AddCategory(tmpCategories[720]);
    tmpCategories[720]:AddAchievement(achievements[4940]) -- Winterspring Quests
    tmpCategories[720]:AddAchievement(achievements[5443]) -- E'ko Madness
    tmpCategories[777] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {83}, nil, true)); -- Exploration
    tmpCategories[719]:AddCategory(tmpCategories[777]);
    tmpCategories[777]:AddAchievement(achievements[857]) -- Explore Winterspring
    tmpCategories[2] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15272)))); -- Dungeons
    tmpCategories[1]:AddCategory(tmpCategories[2]);
    tmpCategories[2]:AddAchievement(achievements[1283]) -- Classic Dungeonmaster
    tmpCategories[5] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(226)), {213})); -- Ragefire Chasm
    tmpCategories[2]:AddCategory(tmpCategories[5]);
    tmpCategories[5]:AddAchievement(achievements[629]) -- Ragefire Chasm
    tmpCategories[8] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(240)), {279})); -- Wailing Caverns
    tmpCategories[2]:AddCategory(tmpCategories[8]);
    tmpCategories[8]:AddAchievement(achievements[630]) -- Wailing Caverns
    tmpCategories[10] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(227)), {221, 222, 223})); -- Blackfathom Deeps
    tmpCategories[2]:AddCategory(tmpCategories[10]);
    tmpCategories[10]:AddAchievement(achievements[632]) -- Blackfathom Deeps
    tmpCategories[11] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(238)), {225})); -- The Stockade
    tmpCategories[2]:AddCategory(tmpCategories[11]);
    tmpCategories[11]:AddAchievement(achievements[633]) -- Stormwind Stockade
    tmpCategories[12] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(231)), {226, 227, 228, 229})); -- Gnomeregan
    tmpCategories[2]:AddCategory(tmpCategories[12]);
    tmpCategories[12]:AddAchievement(achievements[634]) -- Gnomeregan
    tmpCategories[13] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(233)), {301})); -- Razorfen Kraul
    tmpCategories[2]:AddCategory(tmpCategories[13]);
    tmpCategories[13]:AddAchievement(achievements[635]) -- Razorfen Kraul
    tmpCategories[14] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(234)), {300})); -- Razorfen Downs
    tmpCategories[2]:AddCategory(tmpCategories[14]);
    tmpCategories[14]:AddAchievement(achievements[636]) -- Razorfen Downs
    tmpCategories[17] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(239)), {230, 231})); -- Uldaman
    tmpCategories[2]:AddCategory(tmpCategories[17]);
    tmpCategories[17]:AddAchievement(achievements[638]) -- Uldaman
    tmpCategories[18] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(241)), {219})); -- Zul'Farrak
    tmpCategories[2]:AddCategory(tmpCategories[18]);
    tmpCategories[18]:AddAchievement(achievements[639]) -- Zul'Farrak
    tmpCategories[19] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(232)), {280, 281})); -- Maraudon
    tmpCategories[2]:AddCategory(tmpCategories[19]);
    tmpCategories[19]:AddAchievement(achievements[640]) -- Maraudon
    tmpCategories[20] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(237)), {220})); -- The Temple Of Atal'hakkar
    tmpCategories[2]:AddCategory(tmpCategories[20]);
    tmpCategories[20]:AddAchievement(achievements[641]) -- Sunken Temple
    tmpCategories[21] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(228)), {242, 243})); -- Blackrock Depths
    tmpCategories[2]:AddCategory(tmpCategories[21]);
    tmpCategories[21]:AddAchievement(achievements[642]) -- Blackrock Depths
    tmpCategories[21]:AddAchievement(achievements[3496]) -- A Brew-FAST Mount
    tmpCategories[22] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(229)), {250, 251, 252, 253, 254, 255})); -- Lower Blackrock Spire
    tmpCategories[2]:AddCategory(tmpCategories[22]);
    tmpCategories[22]:AddAchievement(achievements[643]) -- Lower Blackrock Spire
    tmpCategories[797] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(559)) .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Upper Blackrock Spire (Legacy)
    tmpCategories[2]:AddCategory(tmpCategories[797]);
    tmpCategories[797]:AddAchievement(achievements[1307]) -- Upper Blackrock Spire (Classic)
    tmpCategories[797]:AddAchievement(achievements[2188]) -- Leeeeeeeeeeeeeroy!
    tmpCategories[23] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(230)), {235, 236, 237, 238, 239, 240})); -- Dire Maul
    tmpCategories[2]:AddCategory(tmpCategories[23]);
    tmpCategories[23]:AddAchievement(achievements[644]) -- King of Dire Maul
    tmpCategories[23]:AddAchievement(achievements[5788]) -- Agent of the Shen'dralar
    tmpCategories[25] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(236)), {317, 318})); -- Stratholme
    tmpCategories[2]:AddCategory(tmpCategories[25]);
    tmpCategories[25]:AddAchievement(achievements[646]) -- Stratholme
    tmpCategories[25]:AddAchievement(achievements[729]) -- Deathcharger's Reins
    tmpCategories[3] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15271)))); -- Raids
    tmpCategories[1]:AddCategory(tmpCategories[3]);
    tmpCategories[3]:AddAchievement(achievements[1285]) -- Classic Raider
    tmpCategories[7] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(741)), {232})); -- Molten Core
    tmpCategories[3]:AddCategory(tmpCategories[7]);
    tmpCategories[7]:AddAchievement(achievements[686]) -- Molten Core
    tmpCategories[7]:AddAchievement(achievements[11741]) -- So Hot Right Now
    tmpCategories[7]:AddAchievement(achievements[429]) -- "Sulfuras, Hand of Ragnaros"
    tmpCategories[7]:AddAchievement(achievements[428]) -- "Thunderfury, Blessed Blade of the Windseeker"
    tmpCategories[7]:AddAchievement(achievements[9550]) -- "Boldly, You Sought the Power of Ragnaros"
    tmpCategories[779] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {232}, nil, true)); -- Reputation
    tmpCategories[7]:AddCategory(tmpCategories[779]);
    tmpCategories[779]:AddAchievement(achievements[955]) -- Hydraxian Waterlords
    tmpCategories[779]:AddAchievement(achievements[2496]) -- The Fifth Element
    tmpCategories[26] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(760)) .. " (" .. (GetCategoryInfo(15234)) .. ")", {248})); -- Onyxia's Lair (Legacy)
    tmpCategories[3]:AddCategory(tmpCategories[26]);
    tmpCategories[26]:AddAchievement(achievements[684]) -- Onyxia's Lair (Level 60)
    tmpCategories[27] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(742)), {287, 288, 289, 290})); -- Blackwing Lair
    tmpCategories[3]:AddCategory(tmpCategories[27]);
    tmpCategories[27]:AddAchievement(achievements[685]) -- Blackwing Lair
    tmpCategories[27]:AddAchievement(achievements[11742]) -- Dress in Lairs
    tmpCategories[28] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(76)) .. " (" .. (GetCategoryInfo(15234)) .. ")", {337})); -- Zul'Gurub (Legacy)
    tmpCategories[3]:AddCategory(tmpCategories[28]);
    tmpCategories[28]:AddAchievement(achievements[560]) -- Deadliest Catch
    tmpCategories[28]:AddAchievement(achievements[688]) -- Zul'Gurub
    tmpCategories[28]:AddAchievement(achievements[880]) -- Swift Zulian Tiger
    tmpCategories[28]:AddAchievement(achievements[881]) -- Swift Razzashi Raptor
    tmpCategories[789] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {337})); -- Reputation
    tmpCategories[28]:AddCategory(tmpCategories[789]);
    tmpCategories[789]:AddAchievement(achievements[957]) -- Hero of the Zandalar Tribe
    tmpCategories[29] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(743)), {247})); -- Ruins of Ahn'Qiraj
    tmpCategories[3]:AddCategory(tmpCategories[29]);
    tmpCategories[29]:AddAchievement(achievements[689]) -- Ruins of Ahn'Qiraj
    tmpCategories[784] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {247})); -- Reputation
    tmpCategories[29]:AddCategory(tmpCategories[784]);
    tmpCategories[784]:AddAchievement(achievements[953]) -- Guardian of Cenarius
    tmpCategories[30] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(744)), {319, 320, 321})); -- Temple of Ahn'Qiraj
    tmpCategories[3]:AddCategory(tmpCategories[30]);
    tmpCategories[30]:AddAchievement(achievements[687]) -- Temple of Ahn'Qiraj
    tmpCategories[30]:AddAchievement(achievements[424]) -- Why? Because It's Red
    tmpCategories[30]:AddAchievement(achievements[11743]) -- Accessor-Eyes
    tmpCategories[780] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {319, 320, 321}, nil, true)); -- Reputation
    tmpCategories[30]:AddCategory(tmpCategories[780]);
    tmpCategories[780]:AddAchievement(achievements[956]) -- Brood of Nozdormu
    tmpCategories[796] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(754)) .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Naxxramas (Legacy)
    tmpCategories[3]:AddCategory(tmpCategories[796]);
    tmpCategories[796]:AddAchievement(achievements[11744]) -- "Drop Dead, Gorgeous"
    tmpCategories[785] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15117)))); -- Pet Battles
    tmpCategories[1]:AddCategory(tmpCategories[785]);
    tmpCategories[785]:AddAchievement(achievements[6586]) -- Eastern Kingdoms Safari
    tmpCategories[785]:AddAchievement(achievements[6585]) -- Kalimdor Safari
    tmpCategories[785]:AddAchievement(achievements[6613]) -- Eastern Kingdoms Tamer
    tmpCategories[785]:AddAchievement(achievements[6612]) -- Kalimdor Tamer
    tmpCategories[785]:AddAchievement(achievements[6603]) -- Taming Eastern Kingdoms
    tmpCategories[785]:AddAchievement(achievements[6602]) -- Taming Kalimdor
    tmpCategories[55] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(14865)))); -- The Burning Crusade
    tmpCategories[616] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[55]:AddCategory(tmpCategories[616]);
    tmpCategories[616]:AddAchievement(achievements[1262]) -- Loremaster of Outland
    tmpCategories[616]:AddAchievement(achievements[1311]) -- Medium Rare
    tmpCategories[616]:AddAchievement(achievements[1312]) -- Bloody Rare
    tmpCategories[616]:AddAchievement(achievements[44]) -- Outland Explorer
    tmpCategories[616]:AddAchievement(achievements[763]) -- The Burning Crusader
    tmpCategories[616]:AddAchievement(achievements[764]) -- The Burning Crusader
    tmpCategories[616]:AddAchievement(achievements[894]) -- Flying High Over Skettis
    tmpCategories[616]:AddAchievement(achievements[897]) -- You're So Offensive
    tmpCategories[616]:AddAchievement(achievements[902]) -- Chief Exalted Officer
    tmpCategories[795] = InsertAndReturn(categories, achievementCategory:New(addon.L["Cities"])); -- Cities
    tmpCategories[616]:AddCategory(tmpCategories[795]);
    tmpCategories[794] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(111).name)); -- Shattrath City
    tmpCategories[795]:AddCategory(tmpCategories[794]);
    tmpCategories[794]:AddAchievement(achievements[1165]) -- "My Sack is ""Gigantique"""
    tmpCategories[758] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(97).name)); -- Azuremyst Isle
    tmpCategories[616]:AddCategory(tmpCategories[758]);
    tmpCategories[759] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[758]:AddCategory(tmpCategories[759]);
    tmpCategories[759]:AddAchievement(achievements[860]) -- Explore Azuremyst Isle
    tmpCategories[693] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(106).name, {106})); -- Bloodmyst Isle
    tmpCategories[616]:AddCategory(tmpCategories[693]);
    tmpCategories[694] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {106})); -- Quests
    tmpCategories[693]:AddCategory(tmpCategories[694]);
    tmpCategories[694]:AddAchievement(achievements[4926]) -- Bloodmyst Isle Quests
    tmpCategories[763] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {106}, nil, true)); -- Exploration
    tmpCategories[693]:AddCategory(tmpCategories[763]);
    tmpCategories[763]:AddAchievement(achievements[861]) -- Explore Bloodmyst Isle
    tmpCategories[727] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(94).name, {94})); -- Eversong Woods
    tmpCategories[616]:AddCategory(tmpCategories[727]);
    tmpCategories[728] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {94}, nil, true)); -- Exploration
    tmpCategories[727]:AddCategory(tmpCategories[728]);
    tmpCategories[728]:AddAchievement(achievements[859]) -- Explore Eversong Woods
    tmpCategories[669] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(95).name, {95})); -- Ghostlands
    tmpCategories[616]:AddCategory(tmpCategories[669]);
    tmpCategories[670] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {95}, nil, true)); -- Quests
    tmpCategories[669]:AddCategory(tmpCategories[670]);
    tmpCategories[670]:AddAchievement(achievements[4908]) -- Ghostlands Quests
    tmpCategories[733] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {95}, nil, true)); -- Exploration
    tmpCategories[669]:AddCategory(tmpCategories[733]);
    tmpCategories[733]:AddAchievement(achievements[858]) -- Explore Ghostlands
    tmpCategories[617] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(100).name, {100})); -- Hellfire Peninsula
    tmpCategories[616]:AddCategory(tmpCategories[617]);
    tmpCategories[624] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {100}, nil, true)); -- Quests
    tmpCategories[617]:AddCategory(tmpCategories[624]);
    tmpCategories[624]:AddAchievement(achievements[1189]) -- To Hellfire and Back
    tmpCategories[624]:AddAchievement(achievements[1271]) -- To Hellfire and Back
    tmpCategories[631] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {100}, nil, true)); -- Exploration
    tmpCategories[617]:AddCategory(tmpCategories[631]);
    tmpCategories[631]:AddAchievement(achievements[862]) -- Explore Hellfire Peninsula
    tmpCategories[618] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(102).name, {102})); -- Zangarmarsh
    tmpCategories[616]:AddCategory(tmpCategories[618]);
    tmpCategories[625] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {102}, nil, true)); -- Quests
    tmpCategories[618]:AddCategory(tmpCategories[625]);
    tmpCategories[625]:AddAchievement(achievements[1190]) -- Mysteries of the Marsh
    tmpCategories[632] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {102}, nil, true)); -- Exploration
    tmpCategories[618]:AddCategory(tmpCategories[632]);
    tmpCategories[632]:AddAchievement(achievements[863]) -- Explore Zangarmarsh
    tmpCategories[643] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {102}, nil, true)); -- Reputation
    tmpCategories[618]:AddCategory(tmpCategories[643]);
    tmpCategories[643]:AddAchievement(achievements[893]) -- Cenarion War Hippogryph
    tmpCategories[643]:AddAchievement(achievements[953]) -- Guardian of Cenarius
    tmpCategories[643]:AddAchievement(achievements[900]) -- The Czar of Sporeggar
    tmpCategories[643]:AddAchievement(achievements[942]) -- The Diplomat
    tmpCategories[643]:AddAchievement(achievements[943]) -- The Diplomat
    tmpCategories[619] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(108).name, {108})); -- Terokkar Forest
    tmpCategories[616]:AddCategory(tmpCategories[619]);
    tmpCategories[626] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {108}, nil, true)); -- Quests
    tmpCategories[619]:AddCategory(tmpCategories[626]);
    tmpCategories[626]:AddAchievement(achievements[1191]) -- Terror of Terokkar
    tmpCategories[626]:AddAchievement(achievements[1272]) -- Terror of Terokkar
    tmpCategories[626]:AddAchievement(achievements[1275]) -- Bombs Away
    tmpCategories[633] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {108}, nil, true)); -- Exploration
    tmpCategories[619]:AddCategory(tmpCategories[633]);
    tmpCategories[633]:AddAchievement(achievements[867]) -- Explore Terokkar Forest
    tmpCategories[642] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {108}, nil, true)); -- Reputation
    tmpCategories[619]:AddCategory(tmpCategories[642]);
    tmpCategories[642]:AddAchievement(achievements[903]) -- Shattrath Divided
    tmpCategories[642]:AddAchievement(achievements[1205]) -- Hero of Shattrath
    tmpCategories[620] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(107).name, {107})); -- Nagrand
    tmpCategories[616]:AddCategory(tmpCategories[620]);
    tmpCategories[627] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {107}, nil, true)); -- Quests
    tmpCategories[620]:AddCategory(tmpCategories[627]);
    tmpCategories[627]:AddAchievement(achievements[1192]) -- Nagrand Slam
    tmpCategories[627]:AddAchievement(achievements[1273]) -- Nagrand Slam
    tmpCategories[627]:AddAchievement(achievements[939]) -- Hills Like White Elekk
    tmpCategories[627]:AddAchievement(achievements[941]) -- Hemet Nesingwary: The Collected Quests
    tmpCategories[627]:AddAchievement(achievements[1576]) -- Of Blood and Anguish
    tmpCategories[627]:AddAchievement(achievements[4958]) -- The First Rule of Ring of Blood is You Don't Talk About Ring of Blood
    tmpCategories[634] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {107}, nil, true)); -- Exploration
    tmpCategories[620]:AddCategory(tmpCategories[634]);
    tmpCategories[634]:AddAchievement(achievements[866]) -- Explore Nagrand
    tmpCategories[641] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {107}, nil, true)); -- Reputation
    tmpCategories[620]:AddCategory(tmpCategories[641]);
    tmpCategories[641]:AddAchievement(achievements[899]) -- "Oh My, Kurenai"
    tmpCategories[641]:AddAchievement(achievements[901]) -- Mag'har of Draenor
    tmpCategories[641]:AddAchievement(achievements[942]) -- The Diplomat
    tmpCategories[641]:AddAchievement(achievements[943]) -- The Diplomat
    tmpCategories[621] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(105).name, {105})); -- Blade's Edge Mountains
    tmpCategories[616]:AddCategory(tmpCategories[621]);
    tmpCategories[628] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {105}, nil, true)); -- Quests
    tmpCategories[621]:AddCategory(tmpCategories[628]);
    tmpCategories[628]:AddAchievement(achievements[1193]) -- On the Blade's Edge
    tmpCategories[628]:AddAchievement(achievements[1276]) -- Blade's Edge Bomberman
    tmpCategories[635] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {105}, nil, true)); -- Exploration
    tmpCategories[621]:AddCategory(tmpCategories[635]);
    tmpCategories[635]:AddAchievement(achievements[865]) -- Explore Blade's Edge Mountains
    tmpCategories[640] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {105}, nil, true)); -- Reputation
    tmpCategories[621]:AddCategory(tmpCategories[640]);
    tmpCategories[640]:AddAchievement(achievements[896]) -- A Quest a Day Keeps the Ogres at Bay
    tmpCategories[622] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(109).name, {109})); -- Netherstorm
    tmpCategories[616]:AddCategory(tmpCategories[622]);
    tmpCategories[629] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {109}, nil, true)); -- Quests
    tmpCategories[622]:AddCategory(tmpCategories[629]);
    tmpCategories[629]:AddAchievement(achievements[1194]) -- Into the Nether
    tmpCategories[636] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {109}, nil, true)); -- Exploration
    tmpCategories[622]:AddCategory(tmpCategories[636]);
    tmpCategories[636]:AddAchievement(achievements[843]) -- Explore Netherstorm
    tmpCategories[623] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(104).name, {104})); -- Shadowmoon Valley
    tmpCategories[616]:AddCategory(tmpCategories[623]);
    tmpCategories[630] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {104}, nil, true)); -- Quests
    tmpCategories[623]:AddCategory(tmpCategories[630]);
    tmpCategories[630]:AddAchievement(achievements[1195]) -- Shadow of the Betrayer
    tmpCategories[637] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {104}, nil, true)); -- Exploration
    tmpCategories[623]:AddCategory(tmpCategories[637]);
    tmpCategories[637]:AddAchievement(achievements[864]) -- Explore Shadowmoon Valley
    tmpCategories[638] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {104}, nil, true)); -- Reputation
    tmpCategories[623]:AddCategory(tmpCategories[638]);
    tmpCategories[638]:AddAchievement(achievements[898]) -- On Wings of Nether
    tmpCategories[638]:AddAchievement(achievements[1638]) -- Skyshattered
    tmpCategories[750] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(122).name, {122})); -- Isle of Quel'Danas
    tmpCategories[616]:AddCategory(tmpCategories[750]);
    tmpCategories[751] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {122}, nil, true)); -- Exploration
    tmpCategories[750]:AddCategory(tmpCategories[751]);
    tmpCategories[751]:AddAchievement(achievements[868]) -- Explore Isle of Quel'Danas
    tmpCategories[56] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15272)))); -- Dungeons
    tmpCategories[55]:AddCategory(tmpCategories[56]);
    tmpCategories[56]:AddAchievement(achievements[1284]) -- Outland Dungeonmaster
    tmpCategories[56]:AddAchievement(achievements[1287]) -- Outland Dungeon Hero
    tmpCategories[57] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(248)), {347})); -- Hellfire Ramparts
    tmpCategories[56]:AddCategory(tmpCategories[57]);
    tmpCategories[57]:AddAchievement(achievements[647]) -- Hellfire Ramparts
    tmpCategories[57]:AddAchievement(achievements[667]) -- Heroic: Hellfire Ramparts
    tmpCategories[58] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(256)), {261})); -- The Blood Furnace
    tmpCategories[56]:AddCategory(tmpCategories[58]);
    tmpCategories[58]:AddAchievement(achievements[648]) -- The Blood Furnace
    tmpCategories[58]:AddAchievement(achievements[668]) -- Heroic: The Blood Furnace
    tmpCategories[59] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(259)), {246})); -- The Shattered Halls
    tmpCategories[56]:AddCategory(tmpCategories[59]);
    tmpCategories[59]:AddAchievement(achievements[657]) -- The Shattered Halls
    tmpCategories[59]:AddAchievement(achievements[678]) -- Heroic: The Shattered Halls
    tmpCategories[60] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(260)), {265})); -- The Slave Pens
    tmpCategories[56]:AddCategory(tmpCategories[60]);
    tmpCategories[60]:AddAchievement(achievements[649]) -- The Slave Pens
    tmpCategories[60]:AddAchievement(achievements[669]) -- Heroic: The Slave Pens
    tmpCategories[61] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(262)), {262})); -- The Underbog
    tmpCategories[56]:AddCategory(tmpCategories[61]);
    tmpCategories[61]:AddAchievement(achievements[650]) -- Underbog
    tmpCategories[61]:AddAchievement(achievements[670]) -- Heroic: Underbog
    tmpCategories[62] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(261)), {263, 264})); -- The Steamvault
    tmpCategories[56]:AddCategory(tmpCategories[62]);
    tmpCategories[62]:AddAchievement(achievements[656]) -- The Steamvault
    tmpCategories[62]:AddAchievement(achievements[677]) -- Heroic: The Steamvault
    tmpCategories[63] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(250)), {272})); -- Mana-Tombs
    tmpCategories[56]:AddCategory(tmpCategories[63]);
    tmpCategories[63]:AddAchievement(achievements[651]) -- Mana-Tombs
    tmpCategories[63]:AddAchievement(achievements[671]) -- Heroic: Mana-Tombs
    tmpCategories[64] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(247)), {256, 257})); -- Auchenai Crypts
    tmpCategories[56]:AddCategory(tmpCategories[64]);
    tmpCategories[64]:AddAchievement(achievements[666]) -- Auchenai Crypts
    tmpCategories[64]:AddAchievement(achievements[672]) -- Heroic: Auchenai Crypts
    tmpCategories[65] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(252)), {258, 259})); -- Sethekk Halls
    tmpCategories[56]:AddCategory(tmpCategories[65]);
    tmpCategories[65]:AddAchievement(achievements[653]) -- Sethekk Halls
    tmpCategories[65]:AddAchievement(achievements[674]) -- Heroic: Sethekk Halls
    tmpCategories[65]:AddAchievement(achievements[883]) -- Reins of the Raven Lord
    tmpCategories[66] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(253)), {260})); -- Shadow Labyrinth
    tmpCategories[56]:AddCategory(tmpCategories[66]);
    tmpCategories[66]:AddAchievement(achievements[654]) -- Shadow Labyrinth
    tmpCategories[66]:AddAchievement(achievements[675]) -- Heroic: Shadow Labyrinth
    tmpCategories[67] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(251)), {274})); -- Old Hillsbrad Foothills
    tmpCategories[56]:AddCategory(tmpCategories[67]);
    tmpCategories[67]:AddAchievement(achievements[652]) -- The Escape From Durnholde
    tmpCategories[67]:AddAchievement(achievements[673]) -- Heroic: The Escape From Durnholde
    tmpCategories[68] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(255)), {273})); -- The Black Morass
    tmpCategories[56]:AddCategory(tmpCategories[68]);
    tmpCategories[68]:AddAchievement(achievements[655]) -- Opening of the Dark Portal
    tmpCategories[68]:AddAchievement(achievements[676]) -- Heroic: Opening of the Dark Portal
    tmpCategories[69] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(258)), {267, 268})); -- The Mechanar
    tmpCategories[56]:AddCategory(tmpCategories[69]);
    tmpCategories[69]:AddAchievement(achievements[658]) -- The Mechanar
    tmpCategories[69]:AddAchievement(achievements[679]) -- Heroic: The Mechanar
    tmpCategories[70] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(257)), {266})); -- The Botanica
    tmpCategories[56]:AddCategory(tmpCategories[70]);
    tmpCategories[70]:AddAchievement(achievements[659]) -- The Botanica
    tmpCategories[70]:AddAchievement(achievements[680]) -- Heroic: The Botanica
    tmpCategories[71] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(254)), {269, 270, 271})); -- The Arcatraz
    tmpCategories[56]:AddCategory(tmpCategories[71]);
    tmpCategories[71]:AddAchievement(achievements[660]) -- The Arcatraz
    tmpCategories[71]:AddAchievement(achievements[681]) -- Heroic: The Arcatraz
    tmpCategories[72] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(249)), {348, 349})); -- Magisters Terrace
    tmpCategories[56]:AddCategory(tmpCategories[72]);
    tmpCategories[72]:AddAchievement(achievements[661]) -- Magister's Terrace
    tmpCategories[72]:AddAchievement(achievements[682]) -- Heroic: Magister's Terrace
    tmpCategories[72]:AddAchievement(achievements[884]) -- Swift White Hawkstrider
    tmpCategories[73] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15271)))); -- Raids
    tmpCategories[55]:AddCategory(tmpCategories[73]);
    tmpCategories[73]:AddAchievement(achievements[1286]) -- Outland Raider
    tmpCategories[74] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(745)), {350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366})); -- Karazhan
    tmpCategories[73]:AddCategory(tmpCategories[74]);
    tmpCategories[74]:AddAchievement(achievements[690]) -- Karazhan
    tmpCategories[74]:AddAchievement(achievements[882]) -- Fiery Warhorse's Reins
    tmpCategories[74]:AddAchievement(achievements[11746]) -- Outlandish Style
    tmpCategories[74]:AddAchievement(achievements[2456]) -- Vampire Hunter
    tmpCategories[647] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366}, nil, true)); -- Reputation
    tmpCategories[74]:AddCategory(tmpCategories[647]);
    tmpCategories[647]:AddAchievement(achievements[960]) -- The Violet Eye
    tmpCategories[75] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(746)), {330})); -- Gruul's Lair
    tmpCategories[73]:AddCategory(tmpCategories[75]);
    tmpCategories[75]:AddAchievement(achievements[692]) -- Gruul's Lair
    tmpCategories[75]:AddAchievement(achievements[11746]) -- Outlandish Style
    tmpCategories[76] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(747)), {331})); -- Magtheridon's Lair
    tmpCategories[73]:AddCategory(tmpCategories[76]);
    tmpCategories[76]:AddAchievement(achievements[693]) -- Magtheridon's Lair
    tmpCategories[76]:AddAchievement(achievements[11746]) -- Outlandish Style
    tmpCategories[77] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(748)), {332})); -- Serpentshrine Cavern
    tmpCategories[73]:AddCategory(tmpCategories[77]);
    tmpCategories[77]:AddAchievement(achievements[694]) -- Serpentshrine Cavern
    tmpCategories[77]:AddAchievement(achievements[11747]) -- Merely a Set
    tmpCategories[78] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(749)), {334})); -- The Eye
    tmpCategories[73]:AddCategory(tmpCategories[78]);
    tmpCategories[78]:AddAchievement(achievements[696]) -- Tempest Keep
    tmpCategories[78]:AddAchievement(achievements[885]) -- Ashes of Al'ar
    tmpCategories[79] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(750)), {329})); -- The Battle for Mount Hyjal
    tmpCategories[73]:AddCategory(tmpCategories[79]);
    tmpCategories[79]:AddAchievement(achievements[695]) -- The Battle for Mount Hyjal
    tmpCategories[646] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {329}, nil, true)); -- Reputation
    tmpCategories[79]:AddCategory(tmpCategories[646]);
    tmpCategories[646]:AddAchievement(achievements[959]) -- The Scale of the Sands
    tmpCategories[80] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(751)), {339, 340, 341, 342, 343, 344, 345, 346})); -- Black Temple
    tmpCategories[73]:AddCategory(tmpCategories[80]);
    tmpCategories[80]:AddAchievement(achievements[697]) -- The Black Temple
    tmpCategories[80]:AddAchievement(achievements[9016]) -- Breaker of the Black Harvest
    tmpCategories[80]:AddAchievement(achievements[11748]) -- Black is the New Black
    tmpCategories[80]:AddAchievement(achievements[426]) -- Warglaives of Azzinoth
    tmpCategories[80]:AddAchievement(achievements[11869]) -- I'll Hold These For You Until You Get Out
    tmpCategories[645] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {339, 340, 341, 342, 343, 344, 345, 346}, nil, true)); -- Reputation
    tmpCategories[80]:AddCategory(tmpCategories[645]);
    tmpCategories[645]:AddAchievement(achievements[958]) -- Sworn to the Deathsworn
    tmpCategories[81] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(77)) .. " (" .. (GetCategoryInfo(15234)) .. ")", {333})); -- Zul'Aman (Legacy)
    tmpCategories[73]:AddCategory(tmpCategories[81]);
    tmpCategories[81]:AddAchievement(achievements[691]) -- Zul'Aman
    tmpCategories[81]:AddAchievement(achievements[430]) -- Amani War Bear
    tmpCategories[82] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(752)), {335, 336})); -- Sunwell Plateau
    tmpCategories[73]:AddCategory(tmpCategories[82]);
    tmpCategories[82]:AddAchievement(achievements[698]) -- Sunwell Plateau
    tmpCategories[82]:AddAchievement(achievements[11749]) -- "Suns Out, Thori'dals Out"
    tmpCategories[82]:AddAchievement(achievements[725]) -- "Thori'dal, the Stars' Fury"
    tmpCategories[786] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15117)))); -- Pet Battles
    tmpCategories[55]:AddCategory(tmpCategories[786]);
    tmpCategories[786]:AddAchievement(achievements[6587]) -- Outland Safari
    tmpCategories[786]:AddAchievement(achievements[6614]) -- Outland Tamer
    tmpCategories[786]:AddAchievement(achievements[6604]) -- Taming Outland
    tmpCategories[83] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(14866)))); -- Wrath of the Lich King
    tmpCategories[577] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[83]:AddCategory(tmpCategories[577]);
    tmpCategories[577]:AddAchievement(achievements[41]) -- Loremaster of Northrend
    tmpCategories[577]:AddAchievement(achievements[2256]) -- Northern Exposure
    tmpCategories[577]:AddAchievement(achievements[2257]) -- Frostbitten
    tmpCategories[577]:AddAchievement(achievements[2557]) -- To All The Squirrels Who Shared My Life
    tmpCategories[577]:AddAchievement(achievements[45]) -- Northrend Explorer
    tmpCategories[577]:AddAchievement(achievements[1008]) -- The Kirin Tor
    tmpCategories[577]:AddAchievement(achievements[1009]) -- Knights of the Ebon Blade
    tmpCategories[577]:AddAchievement(achievements[1010]) -- Northrend Vanguard
    tmpCategories[577]:AddAchievement(achievements[1011]) -- The Winds of the North
    tmpCategories[577]:AddAchievement(achievements[1012]) -- The Winds of the North
    tmpCategories[614] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(125).name, {125, 126})); -- Dalaran
    tmpCategories[577]:AddCategory(tmpCategories[614]);
    tmpCategories[614]:AddAchievement(achievements[1956]) -- Higher Learning
    tmpCategories[614]:AddAchievement(achievements[2084]) -- Ring of the Kirin Tor
    tmpCategories[614]:AddAchievement(achievements[2076]) -- Armored Brown Bear
    tmpCategories[614]:AddAchievement(achievements[2077]) -- Wooly Mammoth
    tmpCategories[614]:AddAchievement(achievements[2078]) -- Traveler's Tundra Mammoth
    tmpCategories[578] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(114).name, {114})); -- Borean Tundra
    tmpCategories[577]:AddCategory(tmpCategories[578]);
    tmpCategories[586] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {114}, nil, true)); -- Quests
    tmpCategories[578]:AddCategory(tmpCategories[586]);
    tmpCategories[586]:AddAchievement(achievements[33]) -- Nothing Boring About Borean
    tmpCategories[586]:AddAchievement(achievements[1358]) -- Nothing Boring About Borean
    tmpCategories[586]:AddAchievement(achievements[561]) -- D.E.H.T.A's Little P.I.T.A.
    tmpCategories[587] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {114}, nil, true)); -- Exploration
    tmpCategories[578]:AddCategory(tmpCategories[587]);
    tmpCategories[587]:AddAchievement(achievements[1264]) -- Explore Borean Tundra
    tmpCategories[588] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {114}, nil, true)); -- Reputation
    tmpCategories[578]:AddCategory(tmpCategories[588]);
    tmpCategories[588]:AddAchievement(achievements[949]) -- Tuskarrmageddon
    tmpCategories[579] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(117).name, {117})); -- Howling Fjord
    tmpCategories[577]:AddCategory(tmpCategories[579]);
    tmpCategories[589] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {117}, nil, true)); -- Quests
    tmpCategories[579]:AddCategory(tmpCategories[589]);
    tmpCategories[589]:AddAchievement(achievements[34]) -- I've Toured the Fjord
    tmpCategories[589]:AddAchievement(achievements[1356]) -- I've Toured the Fjord
    tmpCategories[590] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {117}, nil, true)); -- Exploration
    tmpCategories[579]:AddCategory(tmpCategories[590]);
    tmpCategories[590]:AddAchievement(achievements[1263]) -- Explore Howling Fjord
    tmpCategories[590]:AddAchievement(achievements[1254]) -- Friend or Fowl?
    tmpCategories[580] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(115).name, {115})); -- Dragonblight
    tmpCategories[577]:AddCategory(tmpCategories[580]);
    tmpCategories[592] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {115}, nil, true)); -- Quests
    tmpCategories[580]:AddCategory(tmpCategories[592]);
    tmpCategories[592]:AddAchievement(achievements[35]) -- Might of Dragonblight
    tmpCategories[592]:AddAchievement(achievements[1359]) -- Might of Dragonblight
    tmpCategories[592]:AddAchievement(achievements[547]) -- Veteran of the Wrathgate
    tmpCategories[592]:AddAchievement(achievements[1277]) -- Rapid Defense
    tmpCategories[593] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {115}, nil, true)); -- Exploration
    tmpCategories[580]:AddCategory(tmpCategories[593]);
    tmpCategories[593]:AddAchievement(achievements[1265]) -- Explore Dragonblight
    tmpCategories[594] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {115}, nil, true)); -- Reputation
    tmpCategories[580]:AddCategory(tmpCategories[594]);
    tmpCategories[594]:AddAchievement(achievements[1007]) -- The Wyrmrest Accord
    tmpCategories[581] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(116).name, {116})); -- Grizzly Hills
    tmpCategories[577]:AddCategory(tmpCategories[581]);
    tmpCategories[595] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {116}, nil, true)); -- Quests
    tmpCategories[581]:AddCategory(tmpCategories[595]);
    tmpCategories[595]:AddAchievement(achievements[37]) -- Fo' Grizzle My Shizzle
    tmpCategories[595]:AddAchievement(achievements[1357]) -- Fo' Grizzle My Shizzle
    tmpCategories[595]:AddAchievement(achievements[1596]) -- Guru of Drakuru
    tmpCategories[596] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {116}, nil, true)); -- Exploration
    tmpCategories[581]:AddCategory(tmpCategories[596]);
    tmpCategories[596]:AddAchievement(achievements[1266]) -- Explore Grizzly Hills
    tmpCategories[782] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), {116}, nil, true)); -- PvP
    tmpCategories[581]:AddCategory(tmpCategories[782]);
    tmpCategories[782]:AddAchievement(achievements[2016]) -- Grizzled Veteran
    tmpCategories[782]:AddAchievement(achievements[2017]) -- Grizzled Veteran
    tmpCategories[582] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(121).name, {121})); -- Zul'Drak
    tmpCategories[577]:AddCategory(tmpCategories[582]);
    tmpCategories[598] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {121}, nil, true)); -- Quests
    tmpCategories[582]:AddCategory(tmpCategories[598]);
    tmpCategories[598]:AddAchievement(achievements[36]) -- The Empire of Zul'Drak
    tmpCategories[598]:AddAchievement(achievements[1596]) -- Guru of Drakuru
    tmpCategories[598]:AddAchievement(achievements[1576]) -- Of Blood and Anguish
    tmpCategories[598]:AddAchievement(achievements[4958]) -- The First Rule of Ring of Blood is You Don't Talk About Ring of Blood
    tmpCategories[599] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {121}, nil, true)); -- Exploration
    tmpCategories[582]:AddCategory(tmpCategories[599]);
    tmpCategories[599]:AddAchievement(achievements[1267]) -- Explore Zul'Drak
    tmpCategories[583] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(119).name, {119})); -- Sholazar Basin
    tmpCategories[577]:AddCategory(tmpCategories[583]);
    tmpCategories[601] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {119}, nil, true)); -- Quests
    tmpCategories[583]:AddCategory(tmpCategories[601]);
    tmpCategories[601]:AddAchievement(achievements[39]) -- Into the Basin
    tmpCategories[601]:AddAchievement(achievements[961]) -- Honorary Frenzyheart
    tmpCategories[601]:AddAchievement(achievements[962]) -- Savior of the Oracles
    tmpCategories[601]:AddAchievement(achievements[938]) -- The Snows of Northrend
    tmpCategories[601]:AddAchievement(achievements[941]) -- Hemet Nesingwary: The Collected Quests
    tmpCategories[602] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {119}, nil, true)); -- Exploration
    tmpCategories[583]:AddCategory(tmpCategories[602]);
    tmpCategories[602]:AddAchievement(achievements[1268]) -- Explore Sholazar Basin
    tmpCategories[603] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {119}, nil, true)); -- Reputation
    tmpCategories[583]:AddCategory(tmpCategories[603]);
    tmpCategories[603]:AddAchievement(achievements[950]) -- Frenzyheart Tribe
    tmpCategories[603]:AddAchievement(achievements[951]) -- The Oracles
    tmpCategories[603]:AddAchievement(achievements[952]) -- Mercenary of Sholazar
    tmpCategories[610] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(127).name, {127})); -- Crystalsong Forest
    tmpCategories[577]:AddCategory(tmpCategories[610]);
    tmpCategories[610]:AddAchievement(achievements[1457]) -- Explore Crystalsong Forest
    tmpCategories[584] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(120).name, {120})); -- Storm Peaks
    tmpCategories[577]:AddCategory(tmpCategories[584]);
    tmpCategories[604] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {120}, nil, true)); -- Quests
    tmpCategories[584]:AddCategory(tmpCategories[604]);
    tmpCategories[604]:AddAchievement(achievements[38]) -- The Summit of Storm Peaks
    tmpCategories[604]:AddAchievement(achievements[1428]) -- Mine Sweeper
    tmpCategories[612] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {120}, nil, true)); -- Exploration
    tmpCategories[584]:AddCategory(tmpCategories[612]);
    tmpCategories[612]:AddAchievement(achievements[1269]) -- Explore Storm Peaks
    tmpCategories[606] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {120}, nil, true)); -- Reputation
    tmpCategories[584]:AddCategory(tmpCategories[606]);
    tmpCategories[606]:AddAchievement(achievements[2082]) -- Ice Mammoth
    tmpCategories[606]:AddAchievement(achievements[2083]) -- Grand Ice Mammoth
    tmpCategories[585] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(118).name, {118, 170})); -- Icecrown
    tmpCategories[577]:AddCategory(tmpCategories[585]);
    tmpCategories[585]:AddAchievement(achievements[14750]) -- Death Rising
    tmpCategories[607] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {118, 170}, nil, true)); -- Quests
    tmpCategories[585]:AddCategory(tmpCategories[607]);
    tmpCategories[607]:AddAchievement(achievements[40]) -- Icecrown: The Final Goal
    tmpCategories[608] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {118, 170}, nil, true)); -- Exploration
    tmpCategories[585]:AddCategory(tmpCategories[608]);
    tmpCategories[608]:AddAchievement(achievements[1270]) -- Explore Icecrown
    tmpCategories[609] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {118, 170}, nil, true)); -- Reputation
    tmpCategories[585]:AddCategory(tmpCategories[609]);
    tmpCategories[609]:AddAchievement(achievements[947]) -- The Argent Crusade
    tmpCategories[609]:AddAchievement(achievements[945]) -- The Argent Champion
    tmpCategories[84] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15272)))); -- Dungeons
    tmpCategories[83]:AddCategory(tmpCategories[84]);
    tmpCategories[84]:AddAchievement(achievements[1288]) -- Northrend Dungeonmaster
    tmpCategories[84]:AddAchievement(achievements[1289]) -- Northrend Dungeon Hero
    tmpCategories[84]:AddAchievement(achievements[1658]) -- Champion of the Frozen Wastes
    tmpCategories[84]:AddAchievement(achievements[2136]) -- Glory of the Hero
    tmpCategories[84]:AddAchievement(achievements[2018]) -- Timear Foresees
    tmpCategories[84]:AddAchievement(achievements[2019]) -- Proof of Demise
    tmpCategories[86] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(285)), {133, 134, 135})); -- Utgarde Keep
    tmpCategories[84]:AddCategory(tmpCategories[86]);
    tmpCategories[86]:AddAchievement(achievements[1919]) -- On The Rocks
    tmpCategories[86]:AddAchievement(achievements[477]) -- Utgarde Keep
    tmpCategories[86]:AddAchievement(achievements[489]) -- Heroic: Utgarde Keep
    tmpCategories[87] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(281)), {129})); -- The Nexus
    tmpCategories[84]:AddCategory(tmpCategories[87]);
    tmpCategories[87]:AddAchievement(achievements[2150]) -- Split Personality
    tmpCategories[87]:AddAchievement(achievements[2037]) -- Chaos Theory
    tmpCategories[87]:AddAchievement(achievements[2036]) -- Intense Cold
    tmpCategories[87]:AddAchievement(achievements[478]) -- The Nexus
    tmpCategories[87]:AddAchievement(achievements[490]) -- Heroic: The Nexus
    tmpCategories[88] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(272)), {157, 158, 159})); -- Azjol-Nerub
    tmpCategories[84]:AddCategory(tmpCategories[88]);
    tmpCategories[88]:AddAchievement(achievements[1296]) -- Watch Him Die
    tmpCategories[88]:AddAchievement(achievements[1297]) -- Hadronox Denied
    tmpCategories[88]:AddAchievement(achievements[1860]) -- Gotta Go!
    tmpCategories[88]:AddAchievement(achievements[480]) -- Azjol-Nerub
    tmpCategories[88]:AddAchievement(achievements[491]) -- Heroic: Azjol-Nerub
    tmpCategories[89] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(271)), {132})); -- Ahn'kahet: The Old Kingdom
    tmpCategories[84]:AddCategory(tmpCategories[89]);
    tmpCategories[89]:AddAchievement(achievements[2038]) -- Respect Your Elders
    tmpCategories[89]:AddAchievement(achievements[2056]) -- Volunteer Work
    tmpCategories[89]:AddAchievement(achievements[1862]) -- Volazj's Quick Demise
    tmpCategories[89]:AddAchievement(achievements[481]) -- Ahn'kahet: The Old Kingdom
    tmpCategories[89]:AddAchievement(achievements[492]) -- Heroic: Ahn'kahet: The Old Kingdom
    tmpCategories[90] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(273)), {160, 161})); -- Drak'Tharon Keep
    tmpCategories[84]:AddCategory(tmpCategories[90]);
    tmpCategories[90]:AddAchievement(achievements[2151]) -- Consumption Junction
    tmpCategories[90]:AddAchievement(achievements[2057]) -- Oh Novos!
    tmpCategories[90]:AddAchievement(achievements[2039]) -- Better Off Dred
    tmpCategories[90]:AddAchievement(achievements[482]) -- Drak'Tharon Keep
    tmpCategories[90]:AddAchievement(achievements[493]) -- Heroic: Drak'Tharon Keep
    tmpCategories[91] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(283)), {168})); -- The Violet Hold
    tmpCategories[84]:AddCategory(tmpCategories[91]);
    tmpCategories[91]:AddAchievement(achievements[1865]) -- Lockdown!
    tmpCategories[91]:AddAchievement(achievements[2041]) -- Dehydration
    tmpCategories[91]:AddAchievement(achievements[2153]) -- A Void Dance
    tmpCategories[91]:AddAchievement(achievements[1816]) -- Defenseless
    tmpCategories[91]:AddAchievement(achievements[483]) -- The Violet Hold
    tmpCategories[91]:AddAchievement(achievements[494]) -- Heroic: The Violet Hold
    tmpCategories[92] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(274)), {154})); -- Gundrak
    tmpCategories[84]:AddCategory(tmpCategories[92]);
    tmpCategories[92]:AddAchievement(achievements[2058]) -- Snakes. Why'd It Have To Be Snakes?
    tmpCategories[92]:AddAchievement(achievements[2040]) -- Less-rabi
    tmpCategories[92]:AddAchievement(achievements[1864]) -- What the Eck?
    tmpCategories[92]:AddAchievement(achievements[2152]) -- Share The Love
    tmpCategories[92]:AddAchievement(achievements[484]) -- Gundrak
    tmpCategories[92]:AddAchievement(achievements[495]) -- Heroic: Gundrak
    tmpCategories[93] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(277)), {140})); -- Halls of Stone
    tmpCategories[84]:AddCategory(tmpCategories[93]);
    tmpCategories[93]:AddAchievement(achievements[1866]) -- Good Grief
    tmpCategories[93]:AddAchievement(achievements[2154]) -- Brann Spankin' New
    tmpCategories[93]:AddAchievement(achievements[2155]) -- Abuse the Ooze
    tmpCategories[93]:AddAchievement(achievements[485]) -- Halls of Stone
    tmpCategories[93]:AddAchievement(achievements[496]) -- Heroic: Halls of Stone
    tmpCategories[94] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(275)), {138, 139})); -- Halls of Lightning
    tmpCategories[84]:AddCategory(tmpCategories[94]);
    tmpCategories[94]:AddAchievement(achievements[1834]) -- Lightning Struck
    tmpCategories[94]:AddAchievement(achievements[2042]) -- Shatter Resistant
    tmpCategories[94]:AddAchievement(achievements[1867]) -- Timely Death
    tmpCategories[94]:AddAchievement(achievements[486]) -- Halls of Lightning
    tmpCategories[94]:AddAchievement(achievements[497]) -- Heroic: Halls of Lightning
    tmpCategories[95] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(282)), {143, 144, 145, 146})); -- The Oculus
    tmpCategories[84]:AddCategory(tmpCategories[95]);
    tmpCategories[95]:AddAchievement(achievements[1868]) -- Make It Count
    tmpCategories[95]:AddAchievement(achievements[2046]) -- Amber Void
    tmpCategories[95]:AddAchievement(achievements[2045]) -- Emerald Void
    tmpCategories[95]:AddAchievement(achievements[2044]) -- Ruby Void
    tmpCategories[95]:AddAchievement(achievements[1871]) -- Experienced Drake Rider
    tmpCategories[95]:AddAchievement(achievements[487]) -- The Oculus
    tmpCategories[95]:AddAchievement(achievements[498]) -- Heroic: The Oculus
    tmpCategories[97] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(286)), {136, 137})); -- Utgarde Pinnacle
    tmpCategories[84]:AddCategory(tmpCategories[97]);
    tmpCategories[97]:AddAchievement(achievements[2043]) -- The Incredible Hulk
    tmpCategories[97]:AddAchievement(achievements[1873]) -- Lodi Dodi We Loves the Skadi
    tmpCategories[97]:AddAchievement(achievements[2156]) -- My Girl Loves to Skadi All the Time
    tmpCategories[97]:AddAchievement(achievements[2157]) -- King's Bane
    tmpCategories[97]:AddAchievement(achievements[488]) -- Utgarde Pinnacle
    tmpCategories[97]:AddAchievement(achievements[499]) -- Heroic: Utgarde Pinnacle
    tmpCategories[96] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(279)), {130, 131})); -- The Culling of Stratholme
    tmpCategories[84]:AddCategory(tmpCategories[96]);
    tmpCategories[96]:AddAchievement(achievements[1872]) -- Zombiefest!
    tmpCategories[96]:AddAchievement(achievements[1817]) -- The Culling of Time
    tmpCategories[96]:AddAchievement(achievements[479]) -- The Culling of Stratholme
    tmpCategories[96]:AddAchievement(achievements[500]) -- Heroic: The Culling of Stratholme
    tmpCategories[98] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(284)), {171})); -- Trial of the Champion
    tmpCategories[84]:AddCategory(tmpCategories[98]);
    tmpCategories[98]:AddAchievement(achievements[3803]) -- The Faceroller
    tmpCategories[98]:AddAchievement(achievements[3802]) -- Argent Confessor
    tmpCategories[98]:AddAchievement(achievements[3804]) -- I've Had Worse
    tmpCategories[98]:AddAchievement(achievements[4296]) -- Trial of the Champion
    tmpCategories[98]:AddAchievement(achievements[4298]) -- Heroic: Trial of the Champion
    tmpCategories[98]:AddAchievement(achievements[3778]) -- Trial of the Champion
    tmpCategories[98]:AddAchievement(achievements[4297]) -- Heroic: Trial of the Champion
    tmpCategories[99] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(280)), {183})); -- The Forge of Souls
    tmpCategories[84]:AddCategory(tmpCategories[99]);
    tmpCategories[99]:AddAchievement(achievements[4522]) -- Soul Power
    tmpCategories[99]:AddAchievement(achievements[4523]) -- Three Faced
    tmpCategories[99]:AddAchievement(achievements[4516]) -- The Forge of Souls
    tmpCategories[99]:AddAchievement(achievements[4519]) -- Heroic: The Forge of Souls
    tmpCategories[100] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(278)), {184})); -- Pit of Saron
    tmpCategories[84]:AddCategory(tmpCategories[100]);
    tmpCategories[100]:AddAchievement(achievements[4524]) -- Doesn't Go to Eleven
    tmpCategories[100]:AddAchievement(achievements[4525]) -- Don't Look Up
    tmpCategories[100]:AddAchievement(achievements[4517]) -- The Pit of Saron
    tmpCategories[100]:AddAchievement(achievements[4520]) -- Heroic: The Pit of Saron
    tmpCategories[101] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(276)), {185})); -- Halls of Reflection
    tmpCategories[84]:AddCategory(tmpCategories[101]);
    tmpCategories[101]:AddAchievement(achievements[4526]) -- We're Not Retreating; We're Advancing in a Different Direction.
    tmpCategories[101]:AddAchievement(achievements[4518]) -- The Halls of Reflection
    tmpCategories[101]:AddAchievement(achievements[4521]) -- Heroic: The Halls of Reflection
    tmpCategories[85] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15271)))); -- Raids
    tmpCategories[83]:AddCategory(tmpCategories[85]);
    tmpCategories[85]:AddAchievement(achievements[1658]) -- Champion of the Frozen Wastes
    tmpCategories[85]:AddAchievement(achievements[2137]) -- Glory of the Raider (10 player)
    tmpCategories[85]:AddAchievement(achievements[2138]) -- Glory of the Raider (25 player)
    tmpCategories[85]:AddAchievement(achievements[12401]) -- Glory of the Ulduar Raider
    tmpCategories[85]:AddAchievement(achievements[4602]) -- Glory of the Icecrown Raider (10 player)
    tmpCategories[85]:AddAchievement(achievements[4603]) -- Glory of the Icecrown Raider (25 player)
    tmpCategories[85]:AddAchievement(achievements[2957]) -- Glory of the Ulduar Raider (10 player)
    tmpCategories[85]:AddAchievement(achievements[2958]) -- Glory of the Ulduar Raider (25 player)
    tmpCategories[102] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(753)), {156})); -- Vault of Archavon
    tmpCategories[85]:AddCategory(tmpCategories[102]);
    tmpCategories[102]:AddAchievement(achievements[2081]) -- Grand Black War Mammoth
    tmpCategories[103] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(3)), {156})); -- Vault of Archavon 10
    tmpCategories[102]:AddCategory(tmpCategories[103]);
    tmpCategories[103]:AddAchievement(achievements[4016]) -- "Earth, Wind & Fire (10 player)"
    tmpCategories[103]:AddAchievement(achievements[1722]) -- Archavon the Stone Watcher (10 player)
    tmpCategories[103]:AddAchievement(achievements[3136]) -- Emalon the Storm Watcher (10 player)
    tmpCategories[103]:AddAchievement(achievements[3836]) -- Koralon the Flame Watcher (10 player)
    tmpCategories[103]:AddAchievement(achievements[4585]) -- Toravon the Ice Watcher (10 player)
    tmpCategories[104] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(4)), {156})); -- Vault of Archavon 25
    tmpCategories[102]:AddCategory(tmpCategories[104]);
    tmpCategories[104]:AddAchievement(achievements[4017]) -- "Earth, Wind & Fire (25 player)"
    tmpCategories[104]:AddAchievement(achievements[1721]) -- Archavon the Stone Watcher (25 player)
    tmpCategories[104]:AddAchievement(achievements[3137]) -- Emalon the Storm Watcher (25 player)
    tmpCategories[104]:AddAchievement(achievements[3837]) -- Koralon the Flame Watcher (25 player)
    tmpCategories[104]:AddAchievement(achievements[4586]) -- Toravon the Ice Watcher (25 player)
    tmpCategories[105] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(754)), {162, 163, 164, 165, 166, 167})); -- Naxxramas
    tmpCategories[85]:AddCategory(tmpCategories[105]);
    tmpCategories[105]:AddAchievement(achievements[11750]) -- Undying Aesthetic
    tmpCategories[106] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(3)), {162, 163, 164, 165, 166, 167})); -- Naxxramas 10
    tmpCategories[105]:AddCategory(tmpCategories[106]);
    tmpCategories[106]:AddAchievement(achievements[1997]) -- Momma Said Knock You Out (10 player)
    tmpCategories[106]:AddAchievement(achievements[1858]) -- Arachnophobia (10 player)
    tmpCategories[106]:AddAchievement(achievements[1856]) -- Make Quick Werk of Him (10 player)
    tmpCategories[106]:AddAchievement(achievements[2178]) -- Shocking! (10 player)
    tmpCategories[106]:AddAchievement(achievements[2180]) -- Subtraction (10 player)
    tmpCategories[106]:AddAchievement(achievements[1996]) -- The Safety Dance (10 player)
    tmpCategories[106]:AddAchievement(achievements[2182]) -- Spore Loser (10 player)
    tmpCategories[106]:AddAchievement(achievements[2176]) -- And They Would All Go Down Together (10 player)
    tmpCategories[106]:AddAchievement(achievements[2146]) -- The Hundred Club (10 player)
    tmpCategories[106]:AddAchievement(achievements[2184]) -- Just Can't Get Enough (10 player)
    tmpCategories[106]:AddAchievement(achievements[578]) -- The Dedicated Few (10 player)
    tmpCategories[106]:AddAchievement(achievements[562]) -- The Arachnid Quarter (10 player)
    tmpCategories[106]:AddAchievement(achievements[564]) -- The Construct Quarter (10 player)
    tmpCategories[106]:AddAchievement(achievements[566]) -- The Plague Quarter (10 player)
    tmpCategories[106]:AddAchievement(achievements[568]) -- The Military Quarter (10 player)
    tmpCategories[106]:AddAchievement(achievements[572]) -- Sapphiron's Demise (10 player)
    tmpCategories[106]:AddAchievement(achievements[574]) -- Kel'Thuzad's Defeat (10 player)
    tmpCategories[106]:AddAchievement(achievements[576]) -- The Fall of Naxxramas (10 player)
    tmpCategories[106]:AddAchievement(achievements[2187]) -- The Undying
    tmpCategories[107] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(4)), {162, 163, 164, 165, 166, 167})); -- Naxxramas 25
    tmpCategories[105]:AddCategory(tmpCategories[107]);
    tmpCategories[107]:AddAchievement(achievements[2140]) -- Momma Said Knock You Out (25 player)
    tmpCategories[107]:AddAchievement(achievements[1859]) -- Arachnophobia (25 player)
    tmpCategories[107]:AddAchievement(achievements[1857]) -- Make Quick Werk of Him (25 player)
    tmpCategories[107]:AddAchievement(achievements[2179]) -- Shocking! (25 player)
    tmpCategories[107]:AddAchievement(achievements[2181]) -- Subtraction (25 player)
    tmpCategories[107]:AddAchievement(achievements[2139]) -- The Safety Dance (25 player)
    tmpCategories[107]:AddAchievement(achievements[2183]) -- Spore Loser (25 player)
    tmpCategories[107]:AddAchievement(achievements[2177]) -- And They Would All Go Down Together (25 player)
    tmpCategories[107]:AddAchievement(achievements[2147]) -- The Hundred Club (25 player)
    tmpCategories[107]:AddAchievement(achievements[2185]) -- Just Can't Get Enough (25 player)
    tmpCategories[107]:AddAchievement(achievements[579]) -- The Dedicated Few (25 player)
    tmpCategories[107]:AddAchievement(achievements[563]) -- The Arachnid Quarter (25 player)
    tmpCategories[107]:AddAchievement(achievements[565]) -- The Construct Quarter (25 player)
    tmpCategories[107]:AddAchievement(achievements[567]) -- The Plague Quarter (25 player)
    tmpCategories[107]:AddAchievement(achievements[569]) -- The Military Quarter (25 player)
    tmpCategories[107]:AddAchievement(achievements[573]) -- Sapphiron's Demise (25 player)
    tmpCategories[107]:AddAchievement(achievements[575]) -- Kel'Thuzad's Defeat (25 player)
    tmpCategories[107]:AddAchievement(achievements[577]) -- The Fall of Naxxramas (25 player)
    tmpCategories[107]:AddAchievement(achievements[2186]) -- The Immortal
    tmpCategories[108] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(755)), {155})); -- The Obsidian Sanctum
    tmpCategories[85]:AddCategory(tmpCategories[108]);
    tmpCategories[109] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(3)), {155})); -- The Obsidian Sanctum 10
    tmpCategories[108]:AddCategory(tmpCategories[109]);
    tmpCategories[109]:AddAchievement(achievements[2047]) -- Gonna Go When the Volcano Blows (10 player)
    tmpCategories[109]:AddAchievement(achievements[2049]) -- Twilight Assist (10 player)
    tmpCategories[109]:AddAchievement(achievements[2050]) -- Twilight Duo (10 player)
    tmpCategories[109]:AddAchievement(achievements[2051]) -- The Twilight Zone (10 player)
    tmpCategories[109]:AddAchievement(achievements[624]) -- Less Is More (10 player)
    tmpCategories[109]:AddAchievement(achievements[1876]) -- Besting the Black Dragonflight (10 player)
    tmpCategories[110] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(4)), {155})); -- The Obsidian Sanctum 25
    tmpCategories[108]:AddCategory(tmpCategories[110]);
    tmpCategories[110]:AddAchievement(achievements[2048]) -- Gonna Go When the Volcano Blows (25 player)
    tmpCategories[110]:AddAchievement(achievements[2052]) -- Twilight Assist (25 player)
    tmpCategories[110]:AddAchievement(achievements[2053]) -- Twilight Duo (25 player)
    tmpCategories[110]:AddAchievement(achievements[2054]) -- The Twilight Zone (25 player)
    tmpCategories[110]:AddAchievement(achievements[1877]) -- Less Is More (25 player)
    tmpCategories[110]:AddAchievement(achievements[625]) -- Besting the Black Dragonflight (25 player)
    tmpCategories[111] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(756)), {141})); -- The Eye of Eternity
    tmpCategories[85]:AddCategory(tmpCategories[111]);
    tmpCategories[112] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(3)), {141})); -- The Eye of Eternity 10
    tmpCategories[111]:AddCategory(tmpCategories[112]);
    tmpCategories[112]:AddAchievement(achievements[2148]) -- Denyin' the Scion (10 player)
    tmpCategories[112]:AddAchievement(achievements[1874]) -- You Don't Have an Eternity (10 player)
    tmpCategories[112]:AddAchievement(achievements[1869]) -- A Poke in the Eye (10 player)
    tmpCategories[112]:AddAchievement(achievements[622]) -- The Spellweaver's Downfall (10 player)
    tmpCategories[113] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(4)), {141})); -- The Eye of Eternity 25
    tmpCategories[111]:AddCategory(tmpCategories[113]);
    tmpCategories[113]:AddAchievement(achievements[2149]) -- Denyin' the Scion (25 player)
    tmpCategories[113]:AddAchievement(achievements[1875]) -- You Don't Have an Eternity (25 player)
    tmpCategories[113]:AddAchievement(achievements[1870]) -- A Poke in the Eye (25 player)
    tmpCategories[113]:AddAchievement(achievements[623]) -- The Spellweaver's Downfall (25 player)
    tmpCategories[114] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(759)), {147, 148, 149, 150, 151, 152})); -- Ulduar
    tmpCategories[85]:AddCategory(tmpCategories[114]);
    tmpCategories[114]:AddAchievement(achievements[12312]) -- Dwarfageddon
    tmpCategories[114]:AddAchievement(achievements[12314]) -- Three Car Garage
    tmpCategories[114]:AddAchievement(achievements[12313]) -- Unbroken
    tmpCategories[114]:AddAchievement(achievements[12316]) -- Shutout
    tmpCategories[114]:AddAchievement(achievements[12315]) -- Take Out Those Turrets
    tmpCategories[114]:AddAchievement(achievements[12317]) -- Orbital Bombardment
    tmpCategories[114]:AddAchievement(achievements[12318]) -- Orbital Devastation
    tmpCategories[114]:AddAchievement(achievements[12319]) -- Nuked from Orbit
    tmpCategories[114]:AddAchievement(achievements[12320]) -- Orbit-uary
    tmpCategories[114]:AddAchievement(achievements[12323]) -- Shattered
    tmpCategories[114]:AddAchievement(achievements[12324]) -- Hot Pocket
    tmpCategories[114]:AddAchievement(achievements[12325]) -- Stokin' the Furnace
    tmpCategories[114]:AddAchievement(achievements[12321]) -- A Quick Shave
    tmpCategories[114]:AddAchievement(achievements[12322]) -- "Iron Dwarf, Medium Rare"
    tmpCategories[114]:AddAchievement(achievements[12326]) -- Nerf Engineering
    tmpCategories[114]:AddAchievement(achievements[12327]) -- Nerf Scrapbots
    tmpCategories[114]:AddAchievement(achievements[12328]) -- Nerf Gravity Bombs
    tmpCategories[114]:AddAchievement(achievements[12329]) -- Must Deconstruct Faster
    tmpCategories[114]:AddAchievement(achievements[12330]) -- Heartbreaker
    tmpCategories[114]:AddAchievement(achievements[12335]) -- But I'm On Your Side
    tmpCategories[114]:AddAchievement(achievements[12336]) -- Can't Do That While Stunned
    tmpCategories[114]:AddAchievement(achievements[12332]) -- "I Choose You, Runemaster Molgeim"
    tmpCategories[114]:AddAchievement(achievements[12333]) -- "I Choose You, Stormcaller Brundir"
    tmpCategories[114]:AddAchievement(achievements[12334]) -- "I Choose You, Steelbreaker"
    tmpCategories[114]:AddAchievement(achievements[12339]) -- If Looks Could Kill
    tmpCategories[114]:AddAchievement(achievements[12340]) -- Rubble and Roll
    tmpCategories[114]:AddAchievement(achievements[12337]) -- With Open Arms
    tmpCategories[114]:AddAchievement(achievements[12338]) -- Disarmed
    tmpCategories[114]:AddAchievement(achievements[12342]) -- Nine Lives
    tmpCategories[114]:AddAchievement(achievements[12341]) -- Crazy Cat Lady
    tmpCategories[114]:AddAchievement(achievements[12343]) -- Cheese the Freeze
    tmpCategories[114]:AddAchievement(achievements[12344]) -- I Have the Coolest Friends
    tmpCategories[114]:AddAchievement(achievements[12345]) -- Getting Cold in Here
    tmpCategories[114]:AddAchievement(achievements[12346]) -- Staying Buffed All Winter
    tmpCategories[114]:AddAchievement(achievements[12347]) -- I Could Say That This Cache Was Rare
    tmpCategories[114]:AddAchievement(achievements[12348]) -- Don't Stand in the Lightning
    tmpCategories[114]:AddAchievement(achievements[12349]) -- I'll Take You All On
    tmpCategories[114]:AddAchievement(achievements[12350]) -- Who Needs Bloodlust?
    tmpCategories[114]:AddAchievement(achievements[12351]) -- Siffed
    tmpCategories[114]:AddAchievement(achievements[12352]) -- Lose Your Illusion
    tmpCategories[114]:AddAchievement(achievements[12360]) -- Lumberjacked
    tmpCategories[114]:AddAchievement(achievements[12361]) -- Con-speed-atory
    tmpCategories[114]:AddAchievement(achievements[12362]) -- Deforestation
    tmpCategories[114]:AddAchievement(achievements[12363]) -- Getting Back to Nature
    tmpCategories[114]:AddAchievement(achievements[12364]) -- Knock on Wood
    tmpCategories[114]:AddAchievement(achievements[12365]) -- "Knock, Knock on Wood"
    tmpCategories[114]:AddAchievement(achievements[12366]) -- "Knock, Knock, Knock on Wood"
    tmpCategories[114]:AddAchievement(achievements[12367]) -- Set Up Us the Bomb
    tmpCategories[114]:AddAchievement(achievements[12368]) -- Not-So-Friendly Fire
    tmpCategories[114]:AddAchievement(achievements[12369]) -- Firefighter
    tmpCategories[114]:AddAchievement(achievements[12372]) -- Shadowdodger
    tmpCategories[114]:AddAchievement(achievements[12373]) -- I Love the Smell of Saronite in the Morning
    tmpCategories[114]:AddAchievement(achievements[12384]) -- Kiss and Make Up
    tmpCategories[114]:AddAchievement(achievements[12395]) -- Drive Me Crazy
    tmpCategories[114]:AddAchievement(achievements[12396]) -- He's Not Getting Any Older
    tmpCategories[114]:AddAchievement(achievements[12397]) -- They're Coming Out of the Walls
    tmpCategories[114]:AddAchievement(achievements[12398]) -- In His House He Waits Dreaming
    tmpCategories[114]:AddAchievement(achievements[12385]) -- Three Lights in the Darkness
    tmpCategories[114]:AddAchievement(achievements[12386]) -- Two Lights in the Darkness
    tmpCategories[114]:AddAchievement(achievements[12387]) -- One Light in the Darkness
    tmpCategories[114]:AddAchievement(achievements[12388]) -- Alone in the Darkness
    tmpCategories[114]:AddAchievement(achievements[12400]) -- Supermassive
    tmpCategories[114]:AddAchievement(achievements[12297]) -- The Siege of Ulduar
    tmpCategories[114]:AddAchievement(achievements[12302]) -- The Antechamber of Ulduar
    tmpCategories[114]:AddAchievement(achievements[12309]) -- The Keepers of Ulduar
    tmpCategories[114]:AddAchievement(achievements[12310]) -- The Descent into Madness
    tmpCategories[114]:AddAchievement(achievements[12311]) -- The Secrets of Ulduar
    tmpCategories[114]:AddAchievement(achievements[12399]) -- Observed
    tmpCategories[114]:AddAchievement(achievements[11751]) -- Mogg-Saron
    tmpCategories[114]:AddAchievement(achievements[4626]) -- And I'll Form the Head!
    tmpCategories[114]:AddAchievement(achievements[3142]) -- "Val'anyr, Hammer of Ancient Kings"
    tmpCategories[114]:AddAchievement(achievements[3316]) -- Herald of the Titans
    tmpCategories[115] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(3)) .. " (" .. (GetCategoryInfo(15234)) .. ")", {147, 148, 149, 150, 151, 152})); -- Ulduar 10 (Legacy)
    tmpCategories[114]:AddCategory(tmpCategories[115]);
    tmpCategories[115]:AddAchievement(achievements[3097]) -- Dwarfageddon (10 player)
    tmpCategories[115]:AddAchievement(achievements[2907]) -- Three Car Garage (10 player)
    tmpCategories[115]:AddAchievement(achievements[2905]) -- Unbroken (10 player)
    tmpCategories[115]:AddAchievement(achievements[2911]) -- Shutout (10 player)
    tmpCategories[115]:AddAchievement(achievements[2909]) -- Take Out Those Turrets (10 player)
    tmpCategories[115]:AddAchievement(achievements[2913]) -- Orbital Bombardment (10 player)
    tmpCategories[115]:AddAchievement(achievements[2914]) -- Orbital Devastation (10 player)
    tmpCategories[115]:AddAchievement(achievements[2915]) -- Nuked from Orbit (10 player)
    tmpCategories[115]:AddAchievement(achievements[3056]) -- Orbit-uary (10 player)
    tmpCategories[115]:AddAchievement(achievements[2925]) -- Shattered (10 player)
    tmpCategories[115]:AddAchievement(achievements[2927]) -- Hot Pocket (10 player)
    tmpCategories[115]:AddAchievement(achievements[2930]) -- Stokin' the Furnace (10 player)
    tmpCategories[115]:AddAchievement(achievements[2919]) -- A Quick Shave (10 player)
    tmpCategories[115]:AddAchievement(achievements[2923]) -- "Iron Dwarf, Medium Rare (10 player)"
    tmpCategories[115]:AddAchievement(achievements[2931]) -- Nerf Engineering (10 player)
    tmpCategories[115]:AddAchievement(achievements[2933]) -- Nerf Scrapbots (10 player)
    tmpCategories[115]:AddAchievement(achievements[2934]) -- Nerf Gravity Bombs (10 player)
    tmpCategories[115]:AddAchievement(achievements[2937]) -- Must Deconstruct Faster (10 player)
    tmpCategories[115]:AddAchievement(achievements[3058]) -- Heartbreaker (10 player)
    tmpCategories[115]:AddAchievement(achievements[2945]) -- But I'm On Your Side (10 player)
    tmpCategories[115]:AddAchievement(achievements[2947]) -- Can't Do That While Stunned (10 player)
    tmpCategories[115]:AddAchievement(achievements[2939]) -- "I Choose You, Runemaster Molgeim (10 player)"
    tmpCategories[115]:AddAchievement(achievements[2940]) -- "I Choose You, Stormcaller Brundir (10 player)"
    tmpCategories[115]:AddAchievement(achievements[2941]) -- "I Choose You, Steelbreaker (10 player)"
    tmpCategories[115]:AddAchievement(achievements[2955]) -- If Looks Could Kill (10 player)
    tmpCategories[115]:AddAchievement(achievements[2959]) -- Rubble and Roll (10 player)
    tmpCategories[115]:AddAchievement(achievements[2951]) -- With Open Arms (10 player)
    tmpCategories[115]:AddAchievement(achievements[2953]) -- Disarmed (10 player)
    tmpCategories[115]:AddAchievement(achievements[3076]) -- Nine Lives (10 player)
    tmpCategories[115]:AddAchievement(achievements[3006]) -- Crazy Cat Lady (10 player)
    tmpCategories[115]:AddAchievement(achievements[2961]) -- Cheese the Freeze (10 player)
    tmpCategories[115]:AddAchievement(achievements[2963]) -- I Have the Coolest Friends (10 player)
    tmpCategories[115]:AddAchievement(achievements[2967]) -- Getting Cold in Here (10 player)
    tmpCategories[115]:AddAchievement(achievements[2969]) -- Staying Buffed All Winter (10 player)
    tmpCategories[115]:AddAchievement(achievements[3182]) -- I Could Say That This Cache Was Rare (10 player)
    tmpCategories[115]:AddAchievement(achievements[2971]) -- Don't Stand in the Lightning (10 player)
    tmpCategories[115]:AddAchievement(achievements[2973]) -- I'll Take You All On (10 player)
    tmpCategories[115]:AddAchievement(achievements[2975]) -- Who Needs Bloodlust? (10 player)
    tmpCategories[115]:AddAchievement(achievements[2977]) -- Siffed (10 player)
    tmpCategories[115]:AddAchievement(achievements[3176]) -- Lose Your Illusion (10 player)
    tmpCategories[115]:AddAchievement(achievements[2979]) -- Lumberjacked (10 player)
    tmpCategories[115]:AddAchievement(achievements[2980]) -- Con-speed-atory (10 player)
    tmpCategories[115]:AddAchievement(achievements[2985]) -- Deforestation (10 player)
    tmpCategories[115]:AddAchievement(achievements[2982]) -- Getting Back to Nature (10 player)
    tmpCategories[115]:AddAchievement(achievements[3177]) -- Knock on Wood (10 player)
    tmpCategories[115]:AddAchievement(achievements[3178]) -- "Knock, Knock on Wood (10 player)"
    tmpCategories[115]:AddAchievement(achievements[3179]) -- "Knock, Knock, Knock on Wood (10 player)"
    tmpCategories[115]:AddAchievement(achievements[2989]) -- Set Up Us the Bomb (10 player)
    tmpCategories[115]:AddAchievement(achievements[3138]) -- Not-So-Friendly Fire (10 player)
    tmpCategories[115]:AddAchievement(achievements[3180]) -- Firefighter (10 player)
    tmpCategories[115]:AddAchievement(achievements[2996]) -- Shadowdodger (10 player)
    tmpCategories[115]:AddAchievement(achievements[3181]) -- I Love the Smell of Saronite in the Morning (10 player)
    tmpCategories[115]:AddAchievement(achievements[3009]) -- Kiss and Make Up (10 player)
    tmpCategories[115]:AddAchievement(achievements[3008]) -- Drive Me Crazy (10 player)
    tmpCategories[115]:AddAchievement(achievements[3012]) -- He's Not Getting Any Older (10 player)
    tmpCategories[115]:AddAchievement(achievements[3014]) -- They're Coming Out of the Walls (10 player)
    tmpCategories[115]:AddAchievement(achievements[3015]) -- In His House He Waits Dreaming (10 player)
    tmpCategories[115]:AddAchievement(achievements[3157]) -- Three Lights in the Darkness (10 player)
    tmpCategories[115]:AddAchievement(achievements[3141]) -- Two Lights in the Darkness (10 player)
    tmpCategories[115]:AddAchievement(achievements[3158]) -- One Light in the Darkness (10 player)
    tmpCategories[115]:AddAchievement(achievements[3159]) -- Alone in the Darkness (10 player)
    tmpCategories[115]:AddAchievement(achievements[3003]) -- Supermassive (10 player)
    tmpCategories[115]:AddAchievement(achievements[2886]) -- The Siege of Ulduar (10 player)
    tmpCategories[115]:AddAchievement(achievements[2888]) -- The Antechamber of Ulduar (10 player)
    tmpCategories[115]:AddAchievement(achievements[2890]) -- The Keepers of Ulduar (10 player)
    tmpCategories[115]:AddAchievement(achievements[2892]) -- The Descent into Madness (10 player)
    tmpCategories[115]:AddAchievement(achievements[2894]) -- The Secrets of Ulduar (10 player)
    tmpCategories[115]:AddAchievement(achievements[3036]) -- Observed (10 player)
    tmpCategories[115]:AddAchievement(achievements[3004]) -- He Feeds On Your Tears (10 player)
    tmpCategories[115]:AddAchievement(achievements[2903]) -- Champion of Ulduar
    tmpCategories[116] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(4)) .. " (" .. (GetCategoryInfo(15234)) .. ")", {147, 148, 149, 150, 151, 152})); -- Ulduar 25 (Legacy)
    tmpCategories[114]:AddCategory(tmpCategories[116]);
    tmpCategories[116]:AddAchievement(achievements[3098]) -- Dwarfageddon (25 player)
    tmpCategories[116]:AddAchievement(achievements[2908]) -- Three Car Garage (25 player)
    tmpCategories[116]:AddAchievement(achievements[2906]) -- Unbroken (25 player)
    tmpCategories[116]:AddAchievement(achievements[2912]) -- Shutout (25 player)
    tmpCategories[116]:AddAchievement(achievements[2910]) -- Take Out Those Turrets (25 player)
    tmpCategories[116]:AddAchievement(achievements[2918]) -- Orbital Bombardment (25 player)
    tmpCategories[116]:AddAchievement(achievements[2916]) -- Orbital Devastation (25 player)
    tmpCategories[116]:AddAchievement(achievements[2917]) -- Nuked from Orbit (25 player)
    tmpCategories[116]:AddAchievement(achievements[3057]) -- Orbit-uary (25 player)
    tmpCategories[116]:AddAchievement(achievements[2926]) -- Shattered (25 player)
    tmpCategories[116]:AddAchievement(achievements[2928]) -- Hot Pocket (25 player)
    tmpCategories[116]:AddAchievement(achievements[2929]) -- Stokin' the Furnace (25 player)
    tmpCategories[116]:AddAchievement(achievements[2921]) -- A Quick Shave (25 player)
    tmpCategories[116]:AddAchievement(achievements[2924]) -- "Iron Dwarf, Medium Rare (25 player)"
    tmpCategories[116]:AddAchievement(achievements[2932]) -- Nerf Engineering (25 player)
    tmpCategories[116]:AddAchievement(achievements[2935]) -- Nerf Scrapbots (25 player)
    tmpCategories[116]:AddAchievement(achievements[2936]) -- Nerf Gravity Bombs (25 player)
    tmpCategories[116]:AddAchievement(achievements[2938]) -- Must Deconstruct Faster (25 player)
    tmpCategories[116]:AddAchievement(achievements[3059]) -- Heartbreaker (25 player)
    tmpCategories[116]:AddAchievement(achievements[2946]) -- But I'm On Your Side (25 player)
    tmpCategories[116]:AddAchievement(achievements[2948]) -- Can't Do That While Stunned (25 player)
    tmpCategories[116]:AddAchievement(achievements[2942]) -- "I Choose You, Runemaster Molgeim (25 player)"
    tmpCategories[116]:AddAchievement(achievements[2943]) -- "I Choose You, Stormcaller Brundir (25 player)"
    tmpCategories[116]:AddAchievement(achievements[2944]) -- "I Choose You, Steelbreaker (25 player)"
    tmpCategories[116]:AddAchievement(achievements[2956]) -- If Looks Could Kill (25 player)
    tmpCategories[116]:AddAchievement(achievements[2960]) -- Rubble and Roll (25 player)
    tmpCategories[116]:AddAchievement(achievements[2952]) -- With Open Arms (25 player)
    tmpCategories[116]:AddAchievement(achievements[2954]) -- Disarmed (25 player)
    tmpCategories[116]:AddAchievement(achievements[3077]) -- Nine Lives (25 player)
    tmpCategories[116]:AddAchievement(achievements[3007]) -- Crazy Cat Lady (25 player)
    tmpCategories[116]:AddAchievement(achievements[2962]) -- Cheese the Freeze (25 player)
    tmpCategories[116]:AddAchievement(achievements[2965]) -- I Have the Coolest Friends (25 player)
    tmpCategories[116]:AddAchievement(achievements[2968]) -- Getting Cold in Here (25 player)
    tmpCategories[116]:AddAchievement(achievements[2970]) -- Staying Buffed All Winter (25 player)
    tmpCategories[116]:AddAchievement(achievements[3184]) -- I Could Say That This Cache Was Rare (25 player)
    tmpCategories[116]:AddAchievement(achievements[2972]) -- Don't Stand in the Lightning (25 player)
    tmpCategories[116]:AddAchievement(achievements[2974]) -- I'll Take You All On (25 player)
    tmpCategories[116]:AddAchievement(achievements[2976]) -- Who Needs Bloodlust? (25 player)
    tmpCategories[116]:AddAchievement(achievements[2978]) -- Siffed (25 player)
    tmpCategories[116]:AddAchievement(achievements[3183]) -- Lose Your Illusion (25 player)
    tmpCategories[116]:AddAchievement(achievements[3118]) -- Lumberjacked (25 player)
    tmpCategories[116]:AddAchievement(achievements[2981]) -- Con-speed-atory (25 player)
    tmpCategories[116]:AddAchievement(achievements[2984]) -- Deforestation (25 player)
    tmpCategories[116]:AddAchievement(achievements[2983]) -- Getting Back to Nature (25 player)
    tmpCategories[116]:AddAchievement(achievements[3185]) -- Knock on Wood (25 player)
    tmpCategories[116]:AddAchievement(achievements[3186]) -- "Knock, Knock on Wood (25 player)"
    tmpCategories[116]:AddAchievement(achievements[3187]) -- "Knock, Knock, Knock on Wood (25 player)"
    tmpCategories[116]:AddAchievement(achievements[3237]) -- Set Up Us the Bomb (25 player)
    tmpCategories[116]:AddAchievement(achievements[2995]) -- Not-So-Friendly Fire (25 player)
    tmpCategories[116]:AddAchievement(achievements[3189]) -- Firefighter (25 player)
    tmpCategories[116]:AddAchievement(achievements[2997]) -- Shadowdodger (25 player)
    tmpCategories[116]:AddAchievement(achievements[3188]) -- I Love the Smell of Saronite in the Morning (25 player)
    tmpCategories[116]:AddAchievement(achievements[3011]) -- Kiss and Make Up (25 player)
    tmpCategories[116]:AddAchievement(achievements[3010]) -- Drive Me Crazy (25 player)
    tmpCategories[116]:AddAchievement(achievements[3013]) -- He's Not Getting Any Older (25 player)
    tmpCategories[116]:AddAchievement(achievements[3017]) -- They're Coming Out of the Walls (25 player)
    tmpCategories[116]:AddAchievement(achievements[3016]) -- In His House He Waits Dreaming (25 player)
    tmpCategories[116]:AddAchievement(achievements[3161]) -- Three Lights in the Darkness (25 player)
    tmpCategories[116]:AddAchievement(achievements[3162]) -- Two Lights in the Darkness (25 player)
    tmpCategories[116]:AddAchievement(achievements[3163]) -- One Light in the Darkness (25 player)
    tmpCategories[116]:AddAchievement(achievements[3164]) -- Alone in the Darkness (25 player)
    tmpCategories[116]:AddAchievement(achievements[3002]) -- Supermassive (25 player)
    tmpCategories[116]:AddAchievement(achievements[2887]) -- The Siege of Ulduar (25 player)
    tmpCategories[116]:AddAchievement(achievements[2889]) -- The Antechamber of Ulduar (25 player)
    tmpCategories[116]:AddAchievement(achievements[2891]) -- The Keepers of Ulduar (25 player)
    tmpCategories[116]:AddAchievement(achievements[2893]) -- The Descent into Madness (25 player)
    tmpCategories[116]:AddAchievement(achievements[2895]) -- The Secrets of Ulduar (25 player)
    tmpCategories[116]:AddAchievement(achievements[3037]) -- Observed (25 player)
    tmpCategories[116]:AddAchievement(achievements[3005]) -- He Feeds On Your Tears (25 player)
    tmpCategories[116]:AddAchievement(achievements[2904]) -- Conqueror of Ulduar
    tmpCategories[117] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(757)), {172, 173})); -- Trial of the Crusader
    tmpCategories[85]:AddCategory(tmpCategories[117]);
    tmpCategories[117]:AddAchievement(achievements[11752]) -- Style of the Crusader
    tmpCategories[118] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(3)), {172, 173})); -- Trial of the Crusader 10
    tmpCategories[117]:AddCategory(tmpCategories[118]);
    tmpCategories[118]:AddAchievement(achievements[3797]) -- Upper Back Pain (10 player)
    tmpCategories[118]:AddAchievement(achievements[3936]) -- "Not One, But Two Jormungars (10 player)"
    tmpCategories[118]:AddAchievement(achievements[3996]) -- Three Sixty Pain Spike (10 player)
    tmpCategories[118]:AddAchievement(achievements[3798]) -- Resilience Will Fix It (10 player)
    tmpCategories[118]:AddAchievement(achievements[3799]) -- Salt and Pepper (10 player)
    tmpCategories[118]:AddAchievement(achievements[3800]) -- The Traitor King (10 player)
    tmpCategories[118]:AddAchievement(achievements[3917]) -- Call of the Crusade (10 player)
    tmpCategories[118]:AddAchievement(achievements[3918]) -- Call of the Grand Crusade (10 player)
    tmpCategories[118]:AddAchievement(achievements[3808]) -- A Tribute to Skill (10 player)
    tmpCategories[118]:AddAchievement(achievements[3809]) -- A Tribute to Mad Skill (10 player)
    tmpCategories[118]:AddAchievement(achievements[3810]) -- A Tribute to Insanity (10 player)
    tmpCategories[118]:AddAchievement(achievements[4080]) -- A Tribute to Dedicated Insanity
    tmpCategories[119] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(4)), {172, 173})); -- Trial of the Crusader 25
    tmpCategories[117]:AddCategory(tmpCategories[119]);
    tmpCategories[119]:AddAchievement(achievements[3813]) -- Upper Back Pain (25 player)
    tmpCategories[119]:AddAchievement(achievements[3937]) -- "Not One, But Two Jormungars (25 player)"
    tmpCategories[119]:AddAchievement(achievements[3997]) -- Three Sixty Pain Spike (25 player)
    tmpCategories[119]:AddAchievement(achievements[3815]) -- Salt and Pepper (25 player)
    tmpCategories[119]:AddAchievement(achievements[3816]) -- The Traitor King (25 player)
    tmpCategories[119]:AddAchievement(achievements[3916]) -- Call of the Crusade (25 player)
    tmpCategories[119]:AddAchievement(achievements[3812]) -- Call of the Grand Crusade (25 player)
    tmpCategories[119]:AddAchievement(achievements[3817]) -- A Tribute to Skill (25 player)
    tmpCategories[119]:AddAchievement(achievements[3818]) -- A Tribute to Mad Skill (25 player)
    tmpCategories[119]:AddAchievement(achievements[3819]) -- A Tribute to Insanity (25 player)
    tmpCategories[119]:AddAchievement(achievements[4156]) -- A Tribute to Immortality
    tmpCategories[119]:AddAchievement(achievements[4079]) -- A Tribute to Immortality
    tmpCategories[120] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(760)), {248})); -- Onyxia's Lair
    tmpCategories[85]:AddCategory(tmpCategories[120]);
    tmpCategories[121] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(3)), {248})); -- Onyxia's Lair 10
    tmpCategories[120]:AddCategory(tmpCategories[121]);
    tmpCategories[121]:AddAchievement(achievements[4402]) -- More Dots! (10 player)
    tmpCategories[121]:AddAchievement(achievements[4403]) -- Many Whelps! Handle It! (10 player)
    tmpCategories[121]:AddAchievement(achievements[4404]) -- She Deep Breaths More (10 player)
    tmpCategories[121]:AddAchievement(achievements[4396]) -- Onyxia's Lair (10 player)
    tmpCategories[122] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(4)), {248})); -- Onyxia's Lair 25
    tmpCategories[120]:AddCategory(tmpCategories[122]);
    tmpCategories[122]:AddAchievement(achievements[4405]) -- More Dots! (25 player)
    tmpCategories[122]:AddAchievement(achievements[4406]) -- Many Whelps! Handle It! (25 player)
    tmpCategories[122]:AddAchievement(achievements[4407]) -- She Deep Breaths More (25 player)
    tmpCategories[122]:AddAchievement(achievements[4397]) -- Onyxia's Lair (25 player)
    tmpCategories[123] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(758)), {186, 187, 188, 189, 190, 191, 192, 193})); -- Icecrown Citadel
    tmpCategories[85]:AddCategory(tmpCategories[123]);
    tmpCategories[123]:AddAchievement(achievements[11753]) -- Winter Catalog
    tmpCategories[123]:AddAchievement(achievements[4625]) -- Invincible's Reins
    tmpCategories[123]:AddAchievement(achievements[4623]) -- Shadowmourne
    tmpCategories[124] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(3)), {186, 187, 188, 189, 190, 191, 192, 193})); -- Icecrown Citadel 10
    tmpCategories[123]:AddCategory(tmpCategories[124]);
    tmpCategories[124]:AddAchievement(achievements[4534]) -- Boned (10 player)
    tmpCategories[124]:AddAchievement(achievements[4535]) -- Full House (10 player)
    tmpCategories[124]:AddAchievement(achievements[4536]) -- I'm on a Boat (10 player)
    tmpCategories[124]:AddAchievement(achievements[4537]) -- I've Gone and Made a Mess (10 player)
    tmpCategories[124]:AddAchievement(achievements[4577]) -- Flu Shot Shortage (10 player)
    tmpCategories[124]:AddAchievement(achievements[4538]) -- Dances with Oozes (10 player)
    tmpCategories[124]:AddAchievement(achievements[4578]) -- "Nausea, Heartburn, Indigestion... (10 player)"
    tmpCategories[124]:AddAchievement(achievements[4582]) -- The Orb Whisperer (10 player)
    tmpCategories[124]:AddAchievement(achievements[4539]) -- "Once Bitten, Twice Shy (10 player)"
    tmpCategories[124]:AddAchievement(achievements[4579]) -- Portal Jockey (10 player)
    tmpCategories[124]:AddAchievement(achievements[4580]) -- All You Can Eat (10 player)
    tmpCategories[124]:AddAchievement(achievements[4601]) -- Been Waiting a Long Time for This (10 player)
    tmpCategories[124]:AddAchievement(achievements[4581]) -- Neck-Deep in Vile (10 player)
    tmpCategories[124]:AddAchievement(achievements[4531]) -- Storming the Citadel (10 player)
    tmpCategories[124]:AddAchievement(achievements[4528]) -- The Plagueworks (10 player)
    tmpCategories[124]:AddAchievement(achievements[4529]) -- The Crimson Hall (10 player)
    tmpCategories[124]:AddAchievement(achievements[4527]) -- The Frostwing Halls (10 player)
    tmpCategories[124]:AddAchievement(achievements[4530]) -- The Frozen Throne (10 player)
    tmpCategories[124]:AddAchievement(achievements[4532]) -- Fall of the Lich King (10 player)
    tmpCategories[124]:AddAchievement(achievements[4628]) -- Heroic: Storming the Citadel (10 player)
    tmpCategories[124]:AddAchievement(achievements[4629]) -- Heroic: The Plagueworks (10 player)
    tmpCategories[124]:AddAchievement(achievements[4630]) -- Heroic: The Crimson Hall (10 player)
    tmpCategories[124]:AddAchievement(achievements[4631]) -- Heroic: The Frostwing Halls (10 player)
    tmpCategories[124]:AddAchievement(achievements[4583]) -- Bane of the Fallen King
    tmpCategories[124]:AddAchievement(achievements[4636]) -- Heroic: Fall of the Lich King (10 player)
    tmpCategories[125] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(4)), {186, 187, 188, 189, 190, 191, 192, 193})); -- Icecrown Citadel 25
    tmpCategories[123]:AddCategory(tmpCategories[125]);
    tmpCategories[125]:AddAchievement(achievements[4610]) -- Boned (25 player)
    tmpCategories[125]:AddAchievement(achievements[4611]) -- Full House (25 player)
    tmpCategories[125]:AddAchievement(achievements[4612]) -- I'm on a Boat (25 player)
    tmpCategories[125]:AddAchievement(achievements[4613]) -- I've Gone and Made a Mess (25 player)
    tmpCategories[125]:AddAchievement(achievements[4615]) -- Flu Shot Shortage (25 player)
    tmpCategories[125]:AddAchievement(achievements[4614]) -- Dances with Oozes (25 player)
    tmpCategories[125]:AddAchievement(achievements[4616]) -- "Nausea, Heartburn, Indigestion... (25 player)"
    tmpCategories[125]:AddAchievement(achievements[4617]) -- The Orb Whisperer (25 player)
    tmpCategories[125]:AddAchievement(achievements[4618]) -- "Once Bitten, Twice Shy (25 player)"
    tmpCategories[125]:AddAchievement(achievements[4619]) -- Portal Jockey (25 player)
    tmpCategories[125]:AddAchievement(achievements[4620]) -- All You Can Eat (25 player)
    tmpCategories[125]:AddAchievement(achievements[4621]) -- Been Waiting a Long Time for This (25 player)
    tmpCategories[125]:AddAchievement(achievements[4622]) -- Neck-Deep in Vile (25 player)
    tmpCategories[125]:AddAchievement(achievements[4604]) -- Storming the Citadel (25 player)
    tmpCategories[125]:AddAchievement(achievements[4605]) -- The Plagueworks (25 player)
    tmpCategories[125]:AddAchievement(achievements[4606]) -- The Crimson Hall (25 player)
    tmpCategories[125]:AddAchievement(achievements[4607]) -- The Frostwing Halls (25 player)
    tmpCategories[125]:AddAchievement(achievements[4597]) -- The Frozen Throne (25 player)
    tmpCategories[125]:AddAchievement(achievements[4608]) -- Fall of the Lich King (25 player)
    tmpCategories[125]:AddAchievement(achievements[4632]) -- Heroic: Storming the Citadel (25 player)
    tmpCategories[125]:AddAchievement(achievements[4633]) -- Heroic: The Plagueworks (25 player)
    tmpCategories[125]:AddAchievement(achievements[4634]) -- Heroic: The Crimson Hall (25 player)
    tmpCategories[125]:AddAchievement(achievements[4635]) -- Heroic: The Frostwing Halls (25 player)
    tmpCategories[125]:AddAchievement(achievements[4584]) -- The Light of Dawn
    tmpCategories[125]:AddAchievement(achievements[4637]) -- Heroic: Fall of the Lich King (25 player)
    tmpCategories[615] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {186, 187, 188, 189, 190, 191, 192, 193}, nil, true)); -- Reputation
    tmpCategories[123]:AddCategory(tmpCategories[615]);
    tmpCategories[615]:AddAchievement(achievements[4598]) -- The Ashen Verdict
    tmpCategories[126] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(761)), {200})); -- The Ruby Sanctum
    tmpCategories[85]:AddCategory(tmpCategories[126]);
    tmpCategories[127] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(3)), {200})); -- The Ruby Sanctum 10
    tmpCategories[126]:AddCategory(tmpCategories[127]);
    tmpCategories[127]:AddAchievement(achievements[4817]) -- The Twilight Destroyer (10 player)
    tmpCategories[127]:AddAchievement(achievements[4818]) -- Heroic: The Twilight Destroyer (10 player)
    tmpCategories[128] = InsertAndReturn(categories, achievementCategory:New((GetDifficultyInfo(4)), {200})); -- The Ruby Sanctum 25
    tmpCategories[126]:AddCategory(tmpCategories[128]);
    tmpCategories[128]:AddAchievement(achievements[4815]) -- The Twilight Destroyer (25 player)
    tmpCategories[128]:AddAchievement(achievements[4816]) -- Heroic: The Twilight Destroyer (25 player)
    tmpCategories[787] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15117)))); -- Pet Battles
    tmpCategories[83]:AddCategory(tmpCategories[787]);
    tmpCategories[787]:AddAchievement(achievements[6588]) -- Northrend Safari
    tmpCategories[787]:AddAchievement(achievements[6615]) -- Northrend Tamer
    tmpCategories[787]:AddAchievement(achievements[6605]) -- Taming Northrend
    tmpCategories[781] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(14941)), {118, 170})); -- Argent Tournament
    tmpCategories[83]:AddCategory(tmpCategories[781]);
    tmpCategories[781]:AddAchievement(achievements[2756]) -- Argent Aspiration
    tmpCategories[781]:AddAchievement(achievements[2758]) -- Argent Valor
    tmpCategories[781]:AddAchievement(achievements[2772]) -- Tilted!
    tmpCategories[781]:AddAchievement(achievements[2836]) -- Lance a Lot
    tmpCategories[781]:AddAchievement(achievements[2773]) -- It's Just a Flesh Wound
    tmpCategories[781]:AddAchievement(achievements[3736]) -- Pony Up!
    tmpCategories[781]:AddAchievement(achievements[2777]) -- Champion of Darnassus
    tmpCategories[781]:AddAchievement(achievements[2760]) -- Exalted Champion of Darnassus
    tmpCategories[781]:AddAchievement(achievements[2778]) -- Champion of the Exodar
    tmpCategories[781]:AddAchievement(achievements[2761]) -- Exalted Champion of the Exodar
    tmpCategories[781]:AddAchievement(achievements[2779]) -- Champion of Gnomeregan
    tmpCategories[781]:AddAchievement(achievements[2762]) -- Exalted Champion of Gnomeregan
    tmpCategories[781]:AddAchievement(achievements[2780]) -- Champion of Ironforge
    tmpCategories[781]:AddAchievement(achievements[2763]) -- Exalted Champion of Ironforge
    tmpCategories[781]:AddAchievement(achievements[2781]) -- Champion of Stormwind
    tmpCategories[781]:AddAchievement(achievements[2764]) -- Exalted Champion of Stormwind
    tmpCategories[781]:AddAchievement(achievements[2782]) -- Champion of the Alliance
    tmpCategories[781]:AddAchievement(achievements[2770]) -- Exalted Champion of the Alliance
    tmpCategories[781]:AddAchievement(achievements[2817]) -- Exalted Argent Champion of the Alliance
    tmpCategories[781]:AddAchievement(achievements[2783]) -- Champion of Orgrimmar
    tmpCategories[781]:AddAchievement(achievements[2765]) -- Exalted Champion of Orgrimmar
    tmpCategories[781]:AddAchievement(achievements[2784]) -- Champion of Sen'jin
    tmpCategories[781]:AddAchievement(achievements[2766]) -- Exalted Champion of Sen'jin
    tmpCategories[781]:AddAchievement(achievements[2785]) -- Champion of Silvermoon City
    tmpCategories[781]:AddAchievement(achievements[2767]) -- Exalted Champion of Silvermoon City
    tmpCategories[781]:AddAchievement(achievements[2786]) -- Champion of Thunder Bluff
    tmpCategories[781]:AddAchievement(achievements[2768]) -- Exalted Champion of Thunder Bluff
    tmpCategories[781]:AddAchievement(achievements[2787]) -- Champion of the Undercity
    tmpCategories[781]:AddAchievement(achievements[2769]) -- Exalted Champion of the Undercity
    tmpCategories[781]:AddAchievement(achievements[2788]) -- Champion of the Horde
    tmpCategories[781]:AddAchievement(achievements[2771]) -- Exalted Champion of the Horde
    tmpCategories[781]:AddAchievement(achievements[2816]) -- Exalted Argent Champion of the Horde
    tmpCategories[781]:AddAchievement(achievements[3676]) -- A Silver Confidant
    tmpCategories[781]:AddAchievement(achievements[3677]) -- The Sunreavers
    tmpCategories[781]:AddAchievement(achievements[4596]) -- The Sword in the Skull
    tmpCategories[129] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15072)))); -- Cataclysm
    tmpCategories[550] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[129]:AddCategory(tmpCategories[550]);
    tmpCategories[550]:AddAchievement(achievements[4875]) -- Loremaster of Cataclysm
    tmpCategories[550]:AddAchievement(achievements[4827]) -- Surveying the Damage
    tmpCategories[550]:AddAchievement(achievements[5518]) -- Stood in the Fire
    tmpCategories[550]:AddAchievement(achievements[5548]) -- To All the Squirrels Who Cared for Me
    tmpCategories[550]:AddAchievement(achievements[5754]) -- Drown Your Sorrows
    tmpCategories[550]:AddAchievement(achievements[5753]) -- Cataclysmically Delicious
    tmpCategories[550]:AddAchievement(achievements[4868]) -- Cataclysm Explorer
    tmpCategories[550]:AddAchievement(achievements[4881]) -- The Earthen Ring
    tmpCategories[551] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(203).name, {201, 203, 204, 205})); -- Vashj'ir
    tmpCategories[550]:AddCategory(tmpCategories[551]);
    tmpCategories[557] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {201, 203, 204, 205}, nil, true)); -- Quests
    tmpCategories[551]:AddCategory(tmpCategories[557]);
    tmpCategories[557]:AddAchievement(achievements[4869]) -- Sinking into Vashj'ir
    tmpCategories[557]:AddAchievement(achievements[4982]) -- Sinking into Vashj'ir
    tmpCategories[557]:AddAchievement(achievements[5452]) -- Visions of Vashj'ir Past
    tmpCategories[557]:AddAchievement(achievements[5318]) -- "20,000 Leagues Under the Sea"
    tmpCategories[557]:AddAchievement(achievements[5319]) -- "20,000 Leagues Under the Sea"
    tmpCategories[564] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {201, 203, 204, 205}, nil, true)); -- Exploration
    tmpCategories[551]:AddCategory(tmpCategories[564]);
    tmpCategories[564]:AddAchievement(achievements[4825]) -- Explore Vashj'ir
    tmpCategories[564]:AddAchievement(achievements[4975]) -- From Hell's Heart I Stab at Thee
    tmpCategories[552] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(198).name, {198})); -- Mount Hyjal
    tmpCategories[550]:AddCategory(tmpCategories[552]);
    tmpCategories[558] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {198}, nil, true)); -- Quests
    tmpCategories[552]:AddCategory(tmpCategories[558]);
    tmpCategories[558]:AddAchievement(achievements[4870]) -- Coming Down the Mountain
    tmpCategories[558]:AddAchievement(achievements[4959]) -- Beware of the 'Unbeatable?' Pterodactyl
    tmpCategories[558]:AddAchievement(achievements[5860]) -- The 'Unbeatable?' Pterodactyl: BEATEN.
    tmpCategories[558]:AddAchievement(achievements[5483]) -- Bounce
    tmpCategories[558]:AddAchievement(achievements[5859]) -- Legacy of Leyara
    tmpCategories[558]:AddAchievement(achievements[5866]) -- The Molten Front Offensive
    tmpCategories[558]:AddAchievement(achievements[5861]) -- The Fiery Lords of Sethria's Roost
    tmpCategories[558]:AddAchievement(achievements[5870]) -- Fireside Chat
    tmpCategories[558]:AddAchievement(achievements[5862]) -- Ludicrous Speed
    tmpCategories[558]:AddAchievement(achievements[5868]) -- And the Meek Shall Inherit Kalimdor
    tmpCategories[558]:AddAchievement(achievements[5864]) -- Gang War
    tmpCategories[558]:AddAchievement(achievements[5865]) -- Have... Have We Met?
    tmpCategories[558]:AddAchievement(achievements[5869]) -- Infernal Ambassadors
    tmpCategories[558]:AddAchievement(achievements[5879]) -- Veteran of the Molten Front
    tmpCategories[565] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {198}, nil, true)); -- Exploration
    tmpCategories[552]:AddCategory(tmpCategories[565]);
    tmpCategories[565]:AddAchievement(achievements[4863]) -- Explore Hyjal
    tmpCategories[571] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {198}, nil, true)); -- Reputation
    tmpCategories[552]:AddCategory(tmpCategories[571]);
    tmpCategories[571]:AddAchievement(achievements[4882]) -- The Guardians of Hyjal
    tmpCategories[553] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(207).name, {207, 208, 209, 729})); -- Deepholm
    tmpCategories[550]:AddCategory(tmpCategories[553]);
    tmpCategories[559] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {207, 208, 209, 729}, nil, true)); -- Quests
    tmpCategories[553]:AddCategory(tmpCategories[559]);
    tmpCategories[559]:AddAchievement(achievements[4871]) -- Deep into Deepholm
    tmpCategories[559]:AddAchievement(achievements[5445]) -- Fungalophobia
    tmpCategories[559]:AddAchievement(achievements[5446]) -- The Glop Family Line
    tmpCategories[559]:AddAchievement(achievements[5449]) -- Rock Lover
    tmpCategories[559]:AddAchievement(achievements[5450]) -- Fungal Frenzy
    tmpCategories[559]:AddAchievement(achievements[5447]) -- My Very Own Broodmother
    tmpCategories[566] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {207, 208, 209, 729}, nil, true)); -- Exploration
    tmpCategories[553]:AddCategory(tmpCategories[566]);
    tmpCategories[566]:AddAchievement(achievements[4864]) -- Explore Deepholm
    tmpCategories[572] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {207, 208, 209, 729}, nil, true)); -- Reputation
    tmpCategories[553]:AddCategory(tmpCategories[572]);
    tmpCategories[572]:AddAchievement(achievements[4883]) -- Therazane
    tmpCategories[554] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(249).name, {249})); -- Uldum
    tmpCategories[550]:AddCategory(tmpCategories[554]);
    tmpCategories[554]:AddAchievement(achievements[5767]) -- Scourer of the Eternal Sands
    tmpCategories[554]:AddAchievement(achievements[4888]) -- One Hump or Two?
    tmpCategories[560] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {249}, nil, true)); -- Quests
    tmpCategories[554]:AddCategory(tmpCategories[560]);
    tmpCategories[560]:AddAchievement(achievements[4872]) -- Unearthing Uldum
    tmpCategories[560]:AddAchievement(achievements[4961]) -- In a Thousand Years Even You Might be Worth Something
    tmpCategories[560]:AddAchievement(achievements[5317]) -- Help the Bombardier! I'm the Bombardier!
    tmpCategories[567] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {249}, nil, true)); -- Exploration
    tmpCategories[554]:AddCategory(tmpCategories[567]);
    tmpCategories[567]:AddAchievement(achievements[4865]) -- Explore Uldum
    tmpCategories[574] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {249}, nil, true)); -- Reputation
    tmpCategories[554]:AddCategory(tmpCategories[574]);
    tmpCategories[574]:AddAchievement(achievements[4884]) -- Ramkahen
    tmpCategories[555] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(241).name, {241})); -- Twilight Highlands
    tmpCategories[550]:AddCategory(tmpCategories[555]);
    tmpCategories[561] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {241}, nil, true)); -- Quests
    tmpCategories[555]:AddCategory(tmpCategories[561]);
    tmpCategories[561]:AddAchievement(achievements[4873]) -- Fading into Twilight
    tmpCategories[561]:AddAchievement(achievements[5501]) -- Fading into Twilight
    tmpCategories[561]:AddAchievement(achievements[4960]) -- Round Three. Fight!
    tmpCategories[561]:AddAchievement(achievements[5481]) -- Wildhammer Tour of Duty
    tmpCategories[561]:AddAchievement(achievements[5482]) -- Dragonmaw Tour of Duty
    tmpCategories[561]:AddAchievement(achievements[5320]) -- King of the Mountain
    tmpCategories[561]:AddAchievement(achievements[5321]) -- King of the Mountain
    tmpCategories[561]:AddAchievement(achievements[5451]) -- Consumed by Nightmare
    tmpCategories[561]:AddAchievement(achievements[4958]) -- The First Rule of Ring of Blood is You Don't Talk About Ring of Blood
    tmpCategories[568] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {241}, nil, true)); -- Exploration
    tmpCategories[555]:AddCategory(tmpCategories[568]);
    tmpCategories[568]:AddAchievement(achievements[4866]) -- Explore Twilight Highlands
    tmpCategories[573] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {241}, nil, true)); -- Reputation
    tmpCategories[555]:AddCategory(tmpCategories[573]);
    tmpCategories[573]:AddAchievement(achievements[4885]) -- Wildhammer Clan
    tmpCategories[573]:AddAchievement(achievements[4886]) -- Dragonmaw Clan
    tmpCategories[556] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(338).name, {338})); -- Molten Front
    tmpCategories[550]:AddCategory(tmpCategories[556]);
    tmpCategories[556]:AddAchievement(achievements[5859]) -- Legacy of Leyara
    tmpCategories[556]:AddAchievement(achievements[5866]) -- The Molten Front Offensive
    tmpCategories[556]:AddAchievement(achievements[5867]) -- Flawless Victory
    tmpCategories[556]:AddAchievement(achievements[5871]) -- Master of the Molten Flow
    tmpCategories[556]:AddAchievement(achievements[5872]) -- King of the Spider-Hill
    tmpCategories[556]:AddAchievement(achievements[5874]) -- Death From Above
    tmpCategories[556]:AddAchievement(achievements[5873]) -- Ready for Raiding II
    tmpCategories[556]:AddAchievement(achievements[5879]) -- Veteran of the Molten Front
    tmpCategories[130] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15272)))); -- Dungeons
    tmpCategories[129]:AddCategory(tmpCategories[130]);
    tmpCategories[130]:AddAchievement(achievements[4844]) -- Cataclysm Dungeon Hero
    tmpCategories[130]:AddAchievement(achievements[5506]) -- Defender of a Shattered World
    tmpCategories[130]:AddAchievement(achievements[4845]) -- Glory of the Cataclysm Hero
    tmpCategories[132] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(66)), {283, 284})); -- Blackrock Caverns
    tmpCategories[130]:AddCategory(tmpCategories[132]);
    tmpCategories[132]:AddAchievement(achievements[5281]) -- Crushing Bones and Cracking Skulls
    tmpCategories[132]:AddAchievement(achievements[5282]) -- Arrested Development
    tmpCategories[132]:AddAchievement(achievements[5283]) -- Too Hot to Handle
    tmpCategories[132]:AddAchievement(achievements[5284]) -- Ascendant Descending
    tmpCategories[132]:AddAchievement(achievements[4833]) -- Blackrock Caverns
    tmpCategories[132]:AddAchievement(achievements[5060]) -- Heroic: Blackrock Caverns
    tmpCategories[133] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(65)), {322, 323})); -- Throne of the Tides
    tmpCategories[130]:AddCategory(tmpCategories[133]);
    tmpCategories[133]:AddAchievement(achievements[5285]) -- Old Faithful
    tmpCategories[133]:AddAchievement(achievements[5286]) -- Prince of Tides
    tmpCategories[133]:AddAchievement(achievements[4839]) -- Throne of the Tides
    tmpCategories[133]:AddAchievement(achievements[5061]) -- Heroic: Throne of the Tides
    tmpCategories[134] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(67)), {324})); -- The Stonecore
    tmpCategories[130]:AddCategory(tmpCategories[134]);
    tmpCategories[134]:AddAchievement(achievements[5287]) -- Rotten to the Core
    tmpCategories[134]:AddAchievement(achievements[4846]) -- The Stonecore
    tmpCategories[134]:AddAchievement(achievements[5063]) -- Heroic: The Stonecore
    tmpCategories[135] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(68)), {325})); -- The Vortex Pinnacle
    tmpCategories[130]:AddCategory(tmpCategories[135]);
    tmpCategories[135]:AddAchievement(achievements[5289]) -- Extra Credit Bonus Stage
    tmpCategories[135]:AddAchievement(achievements[5288]) -- No Static at All
    tmpCategories[135]:AddAchievement(achievements[4847]) -- The Vortex Pinnacle
    tmpCategories[135]:AddAchievement(achievements[5064]) -- Heroic: The Vortex Pinnacle
    tmpCategories[136] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(71)), {293})); -- Grim Batol
    tmpCategories[130]:AddCategory(tmpCategories[136]);
    tmpCategories[136]:AddAchievement(achievements[5297]) -- Umbrage for Umbriss
    tmpCategories[136]:AddAchievement(achievements[5298]) -- Don't Need to Break Eggs to Make an Omelet
    tmpCategories[136]:AddAchievement(achievements[4840]) -- Grim Batol
    tmpCategories[136]:AddAchievement(achievements[5062]) -- Heroic: Grim Batol
    tmpCategories[137] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(70)), {297, 298, 299})); -- Halls of Origination
    tmpCategories[130]:AddCategory(tmpCategories[137]);
    tmpCategories[137]:AddAchievement(achievements[5293]) -- I Hate That Song
    tmpCategories[137]:AddAchievement(achievements[5294]) -- Straw That Broke the Camel's Back
    tmpCategories[137]:AddAchievement(achievements[5296]) -- Faster Than the Speed of Light
    tmpCategories[137]:AddAchievement(achievements[5295]) -- Sun of a....
    tmpCategories[137]:AddAchievement(achievements[4841]) -- Halls of Origination
    tmpCategories[137]:AddAchievement(achievements[5065]) -- Heroic: Halls of Origination
    tmpCategories[138] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(69)), {277})); -- Lost City of the Tol'vir
    tmpCategories[130]:AddCategory(tmpCategories[138]);
    tmpCategories[138]:AddAchievement(achievements[5291]) -- Acrocalypse Now
    tmpCategories[138]:AddAchievement(achievements[5290]) -- Kill It With Fire!
    tmpCategories[138]:AddAchievement(achievements[5292]) -- Headed South
    tmpCategories[138]:AddAchievement(achievements[4848]) -- Lost City of the Tol'vir
    tmpCategories[138]:AddAchievement(achievements[5066]) -- Heroic: Lost City of the Tol'vir
    tmpCategories[139] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(63)), {291, 292})); -- Deadmines
    tmpCategories[130]:AddCategory(tmpCategories[139]);
    tmpCategories[139]:AddAchievement(achievements[5366]) -- Ready for Raiding
    tmpCategories[139]:AddAchievement(achievements[5367]) -- Rat Pack
    tmpCategories[139]:AddAchievement(achievements[5368]) -- Prototype Prodigy
    tmpCategories[139]:AddAchievement(achievements[5369]) -- It's Frost Damage
    tmpCategories[139]:AddAchievement(achievements[5370]) -- I'm on a Diet
    tmpCategories[139]:AddAchievement(achievements[5371]) -- Vigorous VanCleef Vindicator
    tmpCategories[139]:AddAchievement(achievements[628]) -- Deadmines
    tmpCategories[139]:AddAchievement(achievements[5083]) -- Heroic: Deadmines
    tmpCategories[140] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(64)), {310, 311, 312, 313, 314, 315, 316})); -- Shadowfang Keep
    tmpCategories[130]:AddCategory(tmpCategories[140]);
    tmpCategories[140]:AddAchievement(achievements[5503]) -- Pardon Denied
    tmpCategories[140]:AddAchievement(achievements[5504]) -- To the Ground!
    tmpCategories[140]:AddAchievement(achievements[5505]) -- Bullet Time
    tmpCategories[140]:AddAchievement(achievements[631]) -- Shadowfang Keep
    tmpCategories[140]:AddAchievement(achievements[5093]) -- Heroic: Shadowfang Keep
    tmpCategories[140]:AddAchievement(achievements[4627]) -- Big Love Rocket
    tmpCategories[141] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(76)), {337})); -- Zul'Gurub
    tmpCategories[130]:AddCategory(tmpCategories[141]);
    tmpCategories[141]:AddAchievement(achievements[5743]) -- It's Not Easy Being Green
    tmpCategories[141]:AddAchievement(achievements[5762]) -- Ohganot So Fast!
    tmpCategories[141]:AddAchievement(achievements[5765]) -- "Here, Kitty Kitty..."
    tmpCategories[141]:AddAchievement(achievements[5759]) -- Spirit Twister
    tmpCategories[141]:AddAchievement(achievements[5744]) -- Gurubashi Headhunter
    tmpCategories[141]:AddAchievement(achievements[5768]) -- Heroic: Zul'Gurub
    tmpCategories[142] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(77)), {333})); -- Zul'Aman
    tmpCategories[130]:AddCategory(tmpCategories[142]);
    tmpCategories[142]:AddAchievement(achievements[5858]) -- Bear-ly Made It
    tmpCategories[142]:AddAchievement(achievements[5750]) -- Tunnel Vision
    tmpCategories[142]:AddAchievement(achievements[5761]) -- Hex Mix
    tmpCategories[142]:AddAchievement(achievements[5760]) -- Ring Out!
    tmpCategories[142]:AddAchievement(achievements[5769]) -- Heroic: Zul'Aman
    tmpCategories[143] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(184)), {401, 402, 403, 404, 405, 406})); -- End Time
    tmpCategories[130]:AddCategory(tmpCategories[143]);
    tmpCategories[143]:AddAchievement(achievements[5995]) -- Moon Guard
    tmpCategories[143]:AddAchievement(achievements[6130]) -- Severed Ties
    tmpCategories[143]:AddAchievement(achievements[6117]) -- Heroic: End Time
    tmpCategories[144] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(185)), {398})); -- Well of Eternity
    tmpCategories[130]:AddCategory(tmpCategories[144]);
    tmpCategories[144]:AddAchievement(achievements[6127]) -- Lazy Eye
    tmpCategories[144]:AddAchievement(achievements[6070]) -- That's Not Canon!
    tmpCategories[144]:AddAchievement(achievements[6118]) -- Heroic: Well of Eternity
    tmpCategories[145] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(186)), {399, 400})); -- Hour of Twilight
    tmpCategories[130]:AddCategory(tmpCategories[145]);
    tmpCategories[145]:AddAchievement(achievements[6132]) -- Eclipse
    tmpCategories[145]:AddAchievement(achievements[6119]) -- Heroic: Hour of Twilight
    tmpCategories[131] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15271)))); -- Raids
    tmpCategories[129]:AddCategory(tmpCategories[131]);
    tmpCategories[131]:AddAchievement(achievements[5506]) -- Defender of a Shattered World
    tmpCategories[131]:AddAchievement(achievements[4853]) -- Glory of the Cataclysm Raider
    tmpCategories[131]:AddAchievement(achievements[5828]) -- Glory of the Firelands Raider
    tmpCategories[131]:AddAchievement(achievements[6169]) -- Glory of the Dragon Soul Raider
    tmpCategories[146] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(75)), {282})); -- Baradin Hold
    tmpCategories[131]:AddCategory(tmpCategories[146]);
    tmpCategories[146]:AddAchievement(achievements[5416]) -- Pit Lord Argaloth
    tmpCategories[146]:AddAchievement(achievements[6045]) -- Occu'thar
    tmpCategories[146]:AddAchievement(achievements[6108]) -- Alizabal
    tmpCategories[147] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(73)), {285, 286})); -- Blackwing Descent
    tmpCategories[131]:AddCategory(tmpCategories[147]);
    tmpCategories[147]:AddAchievement(achievements[5306]) -- Parasite Evening
    tmpCategories[147]:AddAchievement(achievements[5307]) -- Achieve-a-tron
    tmpCategories[147]:AddAchievement(achievements[5309]) -- Full of Sound and Fury
    tmpCategories[147]:AddAchievement(achievements[5308]) -- Silence is Golden
    tmpCategories[147]:AddAchievement(achievements[5310]) -- Aberrant Behavior
    tmpCategories[147]:AddAchievement(achievements[4849]) -- Keeping it in the Family
    tmpCategories[147]:AddAchievement(achievements[4842]) -- Blackwing Descent
    tmpCategories[147]:AddAchievement(achievements[5094]) -- Heroic: Magmaw
    tmpCategories[147]:AddAchievement(achievements[5107]) -- Heroic: Omnotron Defense System
    tmpCategories[147]:AddAchievement(achievements[5115]) -- Heroic: Chimaeron
    tmpCategories[147]:AddAchievement(achievements[5109]) -- Heroic: Atramedes
    tmpCategories[147]:AddAchievement(achievements[5108]) -- Heroic: Maloriak
    tmpCategories[147]:AddAchievement(achievements[5116]) -- Heroic: Nefarian
    tmpCategories[148] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(72)), {294, 295, 296})); -- The Bastion of Twilight
    tmpCategories[131]:AddCategory(tmpCategories[148]);
    tmpCategories[148]:AddAchievement(achievements[5300]) -- The Only Escape
    tmpCategories[148]:AddAchievement(achievements[4852]) -- Double Dragon
    tmpCategories[148]:AddAchievement(achievements[5311]) -- Elementary
    tmpCategories[148]:AddAchievement(achievements[5312]) -- The Abyss Will Gaze Back Into You
    tmpCategories[148]:AddAchievement(achievements[5118]) -- Heroic: Halfus Wyrmbreaker
    tmpCategories[148]:AddAchievement(achievements[5117]) -- Heroic: Valiona and Theralion
    tmpCategories[148]:AddAchievement(achievements[5119]) -- Heroic: Ascendant Council
    tmpCategories[148]:AddAchievement(achievements[5120]) -- Heroic: Cho'gall
    tmpCategories[148]:AddAchievement(achievements[5121]) -- Heroic: Sinestra
    tmpCategories[148]:AddAchievement(achievements[4850]) -- The Bastion of Twilight
    tmpCategories[148]:AddAchievement(achievements[5313]) -- I Can't Hear You Over the Sound of How Awesome I Am
    tmpCategories[148]:AddAchievement(achievements[11754]) -- Glamour of Twilight
    tmpCategories[149] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(74)), {328})); -- Throne of the Four Winds
    tmpCategories[131]:AddCategory(tmpCategories[149]);
    tmpCategories[149]:AddAchievement(achievements[5304]) -- Stay Chill
    tmpCategories[149]:AddAchievement(achievements[5305]) -- Four Play
    tmpCategories[149]:AddAchievement(achievements[5122]) -- Heroic: Conclave of Wind
    tmpCategories[149]:AddAchievement(achievements[5123]) -- Heroic: Al'Akir
    tmpCategories[149]:AddAchievement(achievements[4851]) -- Throne of the Four Winds
    tmpCategories[150] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(78)), {367, 368, 369})); -- Firelands
    tmpCategories[131]:AddCategory(tmpCategories[150]);
    tmpCategories[150]:AddAchievement(achievements[5821]) -- Death from Above
    tmpCategories[150]:AddAchievement(achievements[5813]) -- Do a Barrel Roll!
    tmpCategories[150]:AddAchievement(achievements[5810]) -- Not an Ambi-Turner
    tmpCategories[150]:AddAchievement(achievements[5829]) -- Bucket List
    tmpCategories[150]:AddAchievement(achievements[5830]) -- Share the Pain
    tmpCategories[150]:AddAchievement(achievements[5799]) -- Only the Penitent...
    tmpCategories[150]:AddAchievement(achievements[5855]) -- Ragnar-O's
    tmpCategories[150]:AddAchievement(achievements[5807]) -- Heroic: Beth'tilac
    tmpCategories[150]:AddAchievement(achievements[5809]) -- Heroic: Alysrazor
    tmpCategories[150]:AddAchievement(achievements[5808]) -- Heroic: Lord Rhyolith
    tmpCategories[150]:AddAchievement(achievements[5806]) -- Heroic: Shannox
    tmpCategories[150]:AddAchievement(achievements[5805]) -- Heroic: Baleroc
    tmpCategories[150]:AddAchievement(achievements[5804]) -- Heroic: Majordomo Fandral Staghelm
    tmpCategories[150]:AddAchievement(achievements[5803]) -- Heroic: Ragnaros
    tmpCategories[150]:AddAchievement(achievements[5802]) -- Firelands
    tmpCategories[150]:AddAchievement(achievements[11755]) -- Hot Couture
    tmpCategories[150]:AddAchievement(achievements[5839]) -- "Dragonwrath, Tarecgosa's Rest"
    tmpCategories[576] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {367, 368, 369}, nil, true)); -- Reputation
    tmpCategories[150]:AddCategory(tmpCategories[576]);
    tmpCategories[576]:AddAchievement(achievements[5827]) -- Avengers of Hyjal
    tmpCategories[151] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(187)), {409, 410, 411, 412, 413, 414, 415})); -- Dragon Soul
    tmpCategories[131]:AddCategory(tmpCategories[151]);
    tmpCategories[151]:AddAchievement(achievements[6174]) -- Don't Stand So Close to Me
    tmpCategories[151]:AddAchievement(achievements[6128]) -- Ping Pong Champion
    tmpCategories[151]:AddAchievement(achievements[6129]) -- Taste the Rainbow!
    tmpCategories[151]:AddAchievement(achievements[6175]) -- Holding Hands
    tmpCategories[151]:AddAchievement(achievements[6084]) -- Minutes to Midnight
    tmpCategories[151]:AddAchievement(achievements[6105]) -- Deck Defender
    tmpCategories[151]:AddAchievement(achievements[6133]) -- Maybe He'll Get Dizzy...
    tmpCategories[151]:AddAchievement(achievements[6180]) -- Chromatic Champion
    tmpCategories[151]:AddAchievement(achievements[6109]) -- Heroic: Morchok
    tmpCategories[151]:AddAchievement(achievements[6110]) -- Heroic: Warlord Zon'ozz
    tmpCategories[151]:AddAchievement(achievements[6111]) -- Heroic: Yor'sahj the Unsleeping
    tmpCategories[151]:AddAchievement(achievements[6112]) -- Heroic: Hagara the Stormbinder
    tmpCategories[151]:AddAchievement(achievements[6113]) -- Heroic: Ultraxion
    tmpCategories[151]:AddAchievement(achievements[6114]) -- Heroic: Warmaster Blackhorn
    tmpCategories[151]:AddAchievement(achievements[6115]) -- Heroic: Spine of Deathwing
    tmpCategories[151]:AddAchievement(achievements[6116]) -- Heroic: Madness of Deathwing
    tmpCategories[151]:AddAchievement(achievements[6106]) -- Siege of Wyrmrest Temple
    tmpCategories[151]:AddAchievement(achievements[6107]) -- Fall of Deathwing
    tmpCategories[151]:AddAchievement(achievements[6177]) -- Destroyer's End
    tmpCategories[151]:AddAchievement(achievements[11756]) -- Wardrobe of the Old Gods
    tmpCategories[151]:AddAchievement(achievements[6181]) -- Fangs of the Father
    tmpCategories[788] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15117)))); -- Pet Battles
    tmpCategories[129]:AddCategory(tmpCategories[788]);
    tmpCategories[788]:AddAchievement(achievements[7525]) -- Taming Cataclysm
    tmpCategories[547] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15075)), {244, 245})); -- Tol Barad
    tmpCategories[129]:AddCategory(tmpCategories[547]);
    tmpCategories[547]:AddAchievement(achievements[5489]) -- Master of Tol Barad
    tmpCategories[547]:AddAchievement(achievements[5490]) -- Master of Tol Barad
    tmpCategories[563] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {244, 245}, nil, true)); -- Quests
    tmpCategories[547]:AddCategory(tmpCategories[563]);
    tmpCategories[563]:AddAchievement(achievements[4874]) -- Breaking Out of Tol Barad
    tmpCategories[563]:AddAchievement(achievements[5718]) -- Just Another Day in Tol Barad
    tmpCategories[563]:AddAchievement(achievements[5719]) -- Just Another Day in Tol Barad
    tmpCategories[569] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), {244, 245}, nil, true)); -- PvP
    tmpCategories[547]:AddCategory(tmpCategories[569]);
    tmpCategories[569]:AddAchievement(achievements[5412]) -- Tol Barad Victory
    tmpCategories[569]:AddAchievement(achievements[5418]) -- Tol Barad Veteran
    tmpCategories[569]:AddAchievement(achievements[5417]) -- Tol Barad Veteran
    tmpCategories[569]:AddAchievement(achievements[5415]) -- Tower Plower
    tmpCategories[569]:AddAchievement(achievements[5488]) -- Towers of Power
    tmpCategories[569]:AddAchievement(achievements[5487]) -- Tol Barad Saboteur
    tmpCategories[569]:AddAchievement(achievements[5486]) -- Tol Barad All-Star
    tmpCategories[575] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {244, 245}, nil, true)); -- Reputation
    tmpCategories[547]:AddCategory(tmpCategories[575]);
    tmpCategories[575]:AddAchievement(achievements[5375]) -- Baradin's Wardens
    tmpCategories[575]:AddAchievement(achievements[5376]) -- Hellscream's Reach
    tmpCategories[189] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15164)))); -- Mists of Pandaria
    tmpCategories[491] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[189]:AddCategory(tmpCategories[491]);
    tmpCategories[526] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(424).name)); -- Pandaria
    tmpCategories[491]:AddCategory(tmpCategories[526]);
    tmpCategories[526]:AddAchievement(achievements[6926]) -- Tranquil Master
    tmpCategories[527] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[526]:AddCategory(tmpCategories[527]);
    tmpCategories[527]:AddAchievement(achievements[6541]) -- Loremaster of Pandaria
    tmpCategories[527]:AddAchievement(achievements[7285]) -- Every Day I'm Pand-a-ren
    tmpCategories[527]:AddAchievement(achievements[7928]) -- Operation: Shieldwall Campaign
    tmpCategories[527]:AddAchievement(achievements[7929]) -- Dominance Offensive Campaign
    tmpCategories[528] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[526]:AddCategory(tmpCategories[528]);
    tmpCategories[528]:AddAchievement(achievements[6716]) -- Between a Saurok and a Hard Place
    tmpCategories[528]:AddAchievement(achievements[6754]) -- The Dark Heart of the Mogu
    tmpCategories[528]:AddAchievement(achievements[6846]) -- Fish Tales
    tmpCategories[528]:AddAchievement(achievements[6850]) -- Hozen in the Mist
    tmpCategories[528]:AddAchievement(achievements[6847]) -- The Song of the Yaungol
    tmpCategories[528]:AddAchievement(achievements[6855]) -- The Seven Burdens of Shaohao
    tmpCategories[528]:AddAchievement(achievements[6856]) -- Ballad of Liu Lang
    tmpCategories[528]:AddAchievement(achievements[6858]) -- What Is Worth Fighting For
    tmpCategories[528]:AddAchievement(achievements[7230]) -- Legend of the Brewfathers
    tmpCategories[528]:AddAchievement(achievements[7281]) -- Lost and Found
    tmpCategories[528]:AddAchievement(achievements[7994]) -- Treasure of Pandaria
    tmpCategories[528]:AddAchievement(achievements[7995]) -- Fortune of Pandaria
    tmpCategories[528]:AddAchievement(achievements[7996]) -- Bounty of Pandaria
    tmpCategories[528]:AddAchievement(achievements[7997]) -- Riches of Pandaria
    tmpCategories[528]:AddAchievement(achievements[7282]) -- Finders Keepers
    tmpCategories[528]:AddAchievement(achievements[7283]) -- One Man's Trash...
    tmpCategories[528]:AddAchievement(achievements[7284]) -- Is Another Man's Treasure
    tmpCategories[528]:AddAchievement(achievements[7437]) -- A Worthy Opponent
    tmpCategories[528]:AddAchievement(achievements[7438]) -- Could We Find More Like That?
    tmpCategories[528]:AddAchievement(achievements[7439]) -- Glorious!
    tmpCategories[528]:AddAchievement(achievements[8078]) -- Zul'Again
    tmpCategories[528]:AddAchievement(achievements[6350]) -- To All the Squirrels I Once Caressed?
    tmpCategories[528]:AddAchievement(achievements[7329]) -- Pandaren Cuisine
    tmpCategories[528]:AddAchievement(achievements[7330]) -- Pandaren Delicacies
    tmpCategories[528]:AddAchievement(achievements[6974]) -- Pandaria Explorer
    tmpCategories[529] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[526]:AddCategory(tmpCategories[529]);
    tmpCategories[529]:AddAchievement(achievements[7479]) -- The Shado-Master
    tmpCategories[529]:AddAchievement(achievements[6543]) -- The August Celestials
    tmpCategories[529]:AddAchievement(achievements[6547]) -- The Anglers
    tmpCategories[529]:AddAchievement(achievements[6548]) -- The Lorewalkers
    tmpCategories[529]:AddAchievement(achievements[6827]) -- Pandaren Ambassador
    tmpCategories[529]:AddAchievement(achievements[6828]) -- Pandaren Ambassador
    tmpCategories[492] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(371).name, {371, 372, 373, 374, 375})); -- The Jade Forest
    tmpCategories[491]:AddCategory(tmpCategories[492]);
    tmpCategories[519] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {371, 372, 373, 374, 375}, nil, true)); -- Quests
    tmpCategories[492]:AddCategory(tmpCategories[519]);
    tmpCategories[519]:AddAchievement(achievements[6300]) -- Upjade Complete
    tmpCategories[519]:AddAchievement(achievements[6534]) -- Upjade Complete
    tmpCategories[519]:AddAchievement(achievements[7289]) -- Shadow Hopper
    tmpCategories[519]:AddAchievement(achievements[7290]) -- How To Strain Your Dragon
    tmpCategories[519]:AddAchievement(achievements[7291]) -- In a Trail of Smoke
    tmpCategories[545] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {371, 372, 373, 374, 375}, nil, true)); -- Exploration
    tmpCategories[492]:AddCategory(tmpCategories[545]);
    tmpCategories[545]:AddAchievement(achievements[6351]) -- Explore Jade Forest
    tmpCategories[545]:AddAchievement(achievements[7381]) -- Restore Balance
    tmpCategories[546] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {371, 372, 373, 374, 375}, nil, true)); -- Reputation
    tmpCategories[492]:AddCategory(tmpCategories[546]);
    tmpCategories[546]:AddAchievement(achievements[6550]) -- Order of the Cloud Serpent
    tmpCategories[493] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(376).name, {376, 377})); -- Valley of the Four Winds
    tmpCategories[491]:AddCategory(tmpCategories[493]);
    tmpCategories[493]:AddAchievement(achievements[6517]) -- Extinction Event
    tmpCategories[516] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {376, 377}, nil, true)); -- Quests
    tmpCategories[493]:AddCategory(tmpCategories[516]);
    tmpCategories[516]:AddAchievement(achievements[6301]) -- Rally the Valley
    tmpCategories[516]:AddAchievement(achievements[7292]) -- Green Acres
    tmpCategories[516]:AddAchievement(achievements[7293]) -- Till the Break of Dawn
    tmpCategories[516]:AddAchievement(achievements[7294]) -- A Taste of Things to Come
    tmpCategories[516]:AddAchievement(achievements[7295]) -- Listen to the Drunk Fish
    tmpCategories[516]:AddAchievement(achievements[7296]) -- Ain't Lost No More
    tmpCategories[516]:AddAchievement(achievements[7502]) -- Savior of Stoneplow
    tmpCategories[544] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {376, 377}, nil, true)); -- Exploration
    tmpCategories[493]:AddCategory(tmpCategories[544]);
    tmpCategories[544]:AddAchievement(achievements[6969]) -- Explore Valley of the Four Winds
    tmpCategories[518] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {376, 377}, nil, true)); -- Reputation
    tmpCategories[493]:AddCategory(tmpCategories[518]);
    tmpCategories[518]:AddAchievement(achievements[6544]) -- The Tillers
    tmpCategories[518]:AddAchievement(achievements[6551]) -- Friend on the Farm
    tmpCategories[518]:AddAchievement(achievements[6552]) -- Friends on the Farm
    tmpCategories[494] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(418).name, {418, 419, 420, 421})); -- Krasarang Wilds
    tmpCategories[491]:AddCategory(tmpCategories[494]);
    tmpCategories[513] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {418, 419, 420, 421}, nil, true)); -- Quests
    tmpCategories[494]:AddCategory(tmpCategories[513]);
    tmpCategories[513]:AddAchievement(achievements[6535]) -- Mighty Roamin' Krasaranger
    tmpCategories[513]:AddAchievement(achievements[6536]) -- Mighty Roamin' Krasaranger
    tmpCategories[513]:AddAchievement(achievements[7287]) -- Champion of Chi-Ji
    tmpCategories[514] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {418, 419, 420, 421}, nil, true)); -- Exploration
    tmpCategories[494]:AddCategory(tmpCategories[514]);
    tmpCategories[514]:AddAchievement(achievements[6975]) -- Explore Krasarang Wilds
    tmpCategories[514]:AddAchievement(achievements[7518]) -- "Wanderers, Dreamers, and You"
    tmpCategories[514]:AddAchievement(achievements[7932]) -- "I'm In Your Base, Killing Your Dudes"
    tmpCategories[543] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {418, 419, 420, 421}, nil, true)); -- Reputation
    tmpCategories[494]:AddCategory(tmpCategories[543]);
    tmpCategories[543]:AddAchievement(achievements[8205]) -- Operation: Shieldwall
    tmpCategories[543]:AddAchievement(achievements[8206]) -- Dominance Offensive
    tmpCategories[495] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(379).name, {379, 380, 381, 382, 383, 384, 385, 386, 387, 434})); -- Kun-Lai Summit
    tmpCategories[491]:AddCategory(tmpCategories[495]);
    tmpCategories[495]:AddAchievement(achievements[6480]) -- "Settle Down, Bro"
    tmpCategories[495]:AddAchievement(achievements[7386]) -- Grand Expedition Yak
    tmpCategories[510] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {379, 380, 381, 382, 383, 384, 385, 386, 387, 434}, nil, true)); -- Quests
    tmpCategories[495]:AddCategory(tmpCategories[510]);
    tmpCategories[510]:AddAchievement(achievements[6537]) -- Slum It in the Summit
    tmpCategories[510]:AddAchievement(achievements[6538]) -- Slum It in the Summit
    tmpCategories[510]:AddAchievement(achievements[7286]) -- Finish Them!
    tmpCategories[542] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {379, 380, 381, 382, 383, 384, 385, 386, 387, 434}, nil, true)); -- Exploration
    tmpCategories[495]:AddCategory(tmpCategories[542]);
    tmpCategories[542]:AddAchievement(achievements[6976]) -- Explore Kun-Lai Summit
    tmpCategories[496] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(388).name, {388, 389})); -- Townlong Steppes
    tmpCategories[491]:AddCategory(tmpCategories[496]);
    tmpCategories[507] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {388, 389}, nil, true)); -- Quests
    tmpCategories[496]:AddCategory(tmpCategories[507]);
    tmpCategories[507]:AddAchievement(achievements[6539]) -- "One Steppe Forward, Two Steppes Back"
    tmpCategories[507]:AddAchievement(achievements[7288]) -- Yak Attack
    tmpCategories[507]:AddAchievement(achievements[7297]) -- Proven Strength
    tmpCategories[507]:AddAchievement(achievements[7298]) -- Getting Around with the Shado-Pan
    tmpCategories[507]:AddAchievement(achievements[7299]) -- Loner and a Rebel
    tmpCategories[507]:AddAchievement(achievements[7307]) -- Silent Assassin
    tmpCategories[507]:AddAchievement(achievements[7308]) -- Know Your Role
    tmpCategories[507]:AddAchievement(achievements[7309]) -- Fire in the Yaung-hole!
    tmpCategories[507]:AddAchievement(achievements[7310]) -- Defender of Gods
    tmpCategories[540] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {388, 389}, nil, true)); -- Exploration
    tmpCategories[496]:AddCategory(tmpCategories[540]);
    tmpCategories[540]:AddAchievement(achievements[6977]) -- Explore Townlong Steppes
    tmpCategories[541] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {388, 389}, nil, true)); -- Reputation
    tmpCategories[496]:AddCategory(tmpCategories[541]);
    tmpCategories[541]:AddAchievement(achievements[6366]) -- Shado-Pan
    tmpCategories[497] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(422).name, {422})); -- Dread Wastes
    tmpCategories[491]:AddCategory(tmpCategories[497]);
    tmpCategories[504] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {422}, nil, true)); -- Quests
    tmpCategories[497]:AddCategory(tmpCategories[504]);
    tmpCategories[504]:AddAchievement(achievements[6540]) -- Dread Haste Makes Dread Waste
    tmpCategories[504]:AddAchievement(achievements[7312]) -- Amber is the Color of My Energy
    tmpCategories[504]:AddAchievement(achievements[7313]) -- Stay Klaxxi
    tmpCategories[504]:AddAchievement(achievements[7314]) -- Test Drive
    tmpCategories[504]:AddAchievement(achievements[7316]) -- Over Their Heads
    tmpCategories[538] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {422}, nil, true)); -- Exploration
    tmpCategories[497]:AddCategory(tmpCategories[538]);
    tmpCategories[538]:AddAchievement(achievements[6978]) -- Explore Dread Wastes
    tmpCategories[538]:AddAchievement(achievements[6857]) -- Heart of the Mantid Swarm
    tmpCategories[539] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {422}, nil, true)); -- Reputation
    tmpCategories[497]:AddCategory(tmpCategories[539]);
    tmpCategories[539]:AddAchievement(achievements[6545]) -- Klaxxi
    tmpCategories[539]:AddAchievement(achievements[8023]) -- Wakener
    tmpCategories[498] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(390).name, {390, 391, 392, 393, 394, 395, 396})); -- Vale of Eternal Blossoms
    tmpCategories[491]:AddCategory(tmpCategories[498]);
    tmpCategories[501] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {390, 391, 392, 393, 394, 395, 396}, nil, true)); -- Quests
    tmpCategories[498]:AddCategory(tmpCategories[501]);
    tmpCategories[501]:AddAchievement(achievements[7317]) -- One Many Army
    tmpCategories[501]:AddAchievement(achievements[7318]) -- A Taste of History
    tmpCategories[501]:AddAchievement(achievements[7319]) -- Ready for Raiding III
    tmpCategories[501]:AddAchievement(achievements[7320]) -- Dog Pile
    tmpCategories[501]:AddAchievement(achievements[7321]) -- Spreading the Warmth
    tmpCategories[501]:AddAchievement(achievements[7322]) -- Roll Club
    tmpCategories[501]:AddAchievement(achievements[7323]) -- Collateral Damage
    tmpCategories[501]:AddAchievement(achievements[7324]) -- One Step at a Time
    tmpCategories[501]:AddAchievement(achievements[7315]) -- Eternally in the Vale
    tmpCategories[536] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {390, 391, 392, 393, 394, 395, 396}, nil, true)); -- Exploration
    tmpCategories[498]:AddCategory(tmpCategories[536]);
    tmpCategories[536]:AddAchievement(achievements[6979]) -- Explore Vale of Eternal Blossoms
    tmpCategories[537] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {390, 391, 392, 393, 394, 395, 396}, nil, true)); -- Reputation
    tmpCategories[498]:AddCategory(tmpCategories[537]);
    tmpCategories[537]:AddAchievement(achievements[6546]) -- The Golden Lotus
    tmpCategories[798] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(433).name, {433})); -- The Veiled Stair
    tmpCategories[491]:AddCategory(tmpCategories[798]);
    tmpCategories[798]:AddAchievement(achievements[7533]) -- Chapter I: Trial of the Black Prince
    tmpCategories[798]:AddAchievement(achievements[8030]) -- A Test of Valor
    tmpCategories[798]:AddAchievement(achievements[8031]) -- A Test of Valor
    tmpCategories[798]:AddAchievement(achievements[7534]) -- Chapter II: Wrathion's War
    tmpCategories[798]:AddAchievement(achievements[8008]) -- Chapter II: Wrathion's War
    tmpCategories[798]:AddAchievement(achievements[7535]) -- Chapter III: Two Princes
    tmpCategories[798]:AddAchievement(achievements[7536]) -- Chapter IV: Celestial Blessings
    tmpCategories[798]:AddAchievement(achievements[8325]) -- Chapter V: Judgment of the Black Prince
    tmpCategories[534] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(507).name, {507})); -- Isle of Giants
    tmpCategories[491]:AddCategory(tmpCategories[534]);
    tmpCategories[534]:AddAchievement(achievements[8123]) -- Millions of Years of Evolution vs. My Fist
    tmpCategories[534]:AddAchievement(achievements[8092]) -- I've Got 9999 Problems but a Bone-White Primal Raptor Ain't One
    tmpCategories[522] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(504).name, {504, 505, 506})); -- Isle of Thunder
    tmpCategories[491]:AddCategory(tmpCategories[522]);
    tmpCategories[522]:AddAchievement(achievements[8028]) -- Praise the Sun!
    tmpCategories[523] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {504, 505, 506}, nil, true)); -- Quests
    tmpCategories[522]:AddCategory(tmpCategories[523]);
    tmpCategories[523]:AddAchievement(achievements[8099]) -- Isle of Thunder
    tmpCategories[523]:AddAchievement(achievements[8100]) -- Pay to Slay
    tmpCategories[523]:AddAchievement(achievements[8101]) -- It Was Worth Every Ritual Stone
    tmpCategories[523]:AddAchievement(achievements[8104]) -- Thunder Plunder
    tmpCategories[523]:AddAchievement(achievements[8105]) -- The Crumble Bundle
    tmpCategories[523]:AddAchievement(achievements[8107]) -- Ready for RAAAAIIIIDDD?!?ing
    tmpCategories[523]:AddAchievement(achievements[8108]) -- "When in Ihgaluk, Do as the Skumblade Do"
    tmpCategories[523]:AddAchievement(achievements[8109]) -- The Mogu Below-gu
    tmpCategories[523]:AddAchievement(achievements[8110]) -- These Mogu Have Gotta Go-gu
    tmpCategories[523]:AddAchievement(achievements[8111]) -- This Isn't Even My Final Form
    tmpCategories[523]:AddAchievement(achievements[8112]) -- Blue Response
    tmpCategories[523]:AddAchievement(achievements[8114]) -- Platform Hero
    tmpCategories[523]:AddAchievement(achievements[8115]) -- Speed Metal
    tmpCategories[523]:AddAchievement(achievements[8116]) -- You Made Me Bleed My Own Blood
    tmpCategories[523]:AddAchievement(achievements[8117]) -- For the Ward!
    tmpCategories[523]:AddAchievement(achievements[8118]) -- Boop
    tmpCategories[523]:AddAchievement(achievements[8119]) -- Our Powers Combined
    tmpCategories[523]:AddAchievement(achievements[8120]) -- Direhorn in a China Shop
    tmpCategories[523]:AddAchievement(achievements[8212]) -- Zandalari Library Card
    tmpCategories[523]:AddAchievement(achievements[8121]) -- Stormbreaker
    tmpCategories[523]:AddAchievement(achievements[8106]) -- In the Hall of the Thunder King
    tmpCategories[524] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {504, 505, 506}, nil, true)); -- Exploration
    tmpCategories[522]:AddCategory(tmpCategories[524]);
    tmpCategories[524]:AddAchievement(achievements[8103]) -- Champions of Lei Shen
    tmpCategories[524]:AddAchievement(achievements[8049]) -- The Zandalari Prophecy
    tmpCategories[524]:AddAchievement(achievements[8050]) -- Rumbles of Thunder
    tmpCategories[524]:AddAchievement(achievements[8051]) -- Gods and Monsters
    tmpCategories[525] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {504, 505, 506}, nil, true)); -- Reputation
    tmpCategories[522]:AddCategory(tmpCategories[525]);
    tmpCategories[525]:AddAchievement(achievements[8208]) -- Kirin Tor Offensive
    tmpCategories[525]:AddAchievement(achievements[8209]) -- Sunreaver Onslaught
    tmpCategories[525]:AddAchievement(achievements[8210]) -- Shado-Pan Assault
    tmpCategories[530] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(554).name)); -- Timeless Isle
    tmpCategories[491]:AddCategory(tmpCategories[530]);
    tmpCategories[530]:AddAchievement(achievements[8535]) -- Celestial Challenge
    tmpCategories[530]:AddAchievement(achievements[8533]) -- Ordos
    tmpCategories[531] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[530]:AddCategory(tmpCategories[531]);
    tmpCategories[531]:AddAchievement(achievements[8712]) -- Killing Time
    tmpCategories[531]:AddAchievement(achievements[8714]) -- Timeless Champion
    tmpCategories[531]:AddAchievement(achievements[8722]) -- Timeless Nutriment
    tmpCategories[531]:AddAchievement(achievements[8724]) -- Pilgrimage
    tmpCategories[531]:AddAchievement(achievements[8723]) -- Legend of the Past
    tmpCategories[531]:AddAchievement(achievements[8784]) -- Timeless Legends
    tmpCategories[531]:AddAchievement(achievements[8725]) -- Eyes On The Ground
    tmpCategories[531]:AddAchievement(achievements[8726]) -- Extreme Treasure Hunter
    tmpCategories[531]:AddAchievement(achievements[8727]) -- "Where There's Pirates, There's Booty"
    tmpCategories[531]:AddAchievement(achievements[8729]) -- "Treasure, Treasure Everywhere"
    tmpCategories[531]:AddAchievement(achievements[8730]) -- Rolo's Riddle
    tmpCategories[531]:AddAchievement(achievements[8743]) -- Zarhym Altogether
    tmpCategories[531]:AddAchievement(achievements[8716]) -- Emissary of Ordos
    tmpCategories[531]:AddAchievement(achievements[8717]) -- Candlekeeper
    tmpCategories[531]:AddAchievement(achievements[8718]) -- Oathguard
    tmpCategories[531]:AddAchievement(achievements[8719]) -- Blazebinder
    tmpCategories[531]:AddAchievement(achievements[8720]) -- Kilnmaster
    tmpCategories[531]:AddAchievement(achievements[8721]) -- Fire-Watcher
    tmpCategories[531]:AddAchievement(achievements[8728]) -- Going To Need A Bigger Bag
    tmpCategories[535] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[530]:AddCategory(tmpCategories[535]);
    tmpCategories[535]:AddAchievement(achievements[8715]) -- Emperor Shaohao
    tmpCategories[190] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15272)))); -- Dungeons
    tmpCategories[189]:AddCategory(tmpCategories[190]);
    tmpCategories[190]:AddAchievement(achievements[6925]) -- Pandaria Dungeon Hero
    tmpCategories[190]:AddAchievement(achievements[6926]) -- Tranquil Master
    tmpCategories[190]:AddAchievement(achievements[6927]) -- Glory of the Pandaria Hero
    tmpCategories[190]:AddAchievement(achievements[8903]) -- Mistwalker
    tmpCategories[190]:AddAchievement(achievements[6920]) -- Challenge Conqueror
    tmpCategories[190]:AddAchievement(achievements[6374]) -- Challenge Conqueror: Bronze
    tmpCategories[190]:AddAchievement(achievements[6375]) -- Challenge Conqueror: Silver
    tmpCategories[190]:AddAchievement(achievements[6378]) -- Challenge Conqueror: Gold
    tmpCategories[193] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(313)), {429, 430})); -- Temple of the Jade Serpent
    tmpCategories[190]:AddCategory(tmpCategories[193]);
    tmpCategories[193]:AddAchievement(achievements[6475]) -- Cleaning Up
    tmpCategories[193]:AddAchievement(achievements[6460]) -- Hydrophobia
    tmpCategories[193]:AddAchievement(achievements[6671]) -- Seeds of Doubt
    tmpCategories[193]:AddAchievement(achievements[6757]) -- Temple of the Jade Serpent
    tmpCategories[193]:AddAchievement(achievements[6758]) -- Heroic: Temple of the Jade Serpent
    tmpCategories[193]:AddAchievement(achievements[6884]) -- Temple of the Jade Serpent Challenger
    tmpCategories[193]:AddAchievement(achievements[6885]) -- Temple of the Jade Serpent: Bronze
    tmpCategories[193]:AddAchievement(achievements[6886]) -- Temple of the Jade Serpent: Silver
    tmpCategories[193]:AddAchievement(achievements[6887]) -- Temple of the Jade Serpent: Gold
    tmpCategories[193]:AddAchievement(achievements[8430]) -- Challenge Master: Temple of the Jade Serpent
    tmpCategories[194] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(302)), {439, 440, 441, 442})); -- Stormstout Brewery
    tmpCategories[190]:AddCategory(tmpCategories[194]);
    tmpCategories[194]:AddAchievement(achievements[6402]) -- Ling-Ting's Herbal Journey
    tmpCategories[194]:AddAchievement(achievements[6089]) -- Keep Rollin' Rollin' Rollin'
    tmpCategories[194]:AddAchievement(achievements[6400]) -- How Did He Get Up There?
    tmpCategories[194]:AddAchievement(achievements[6420]) -- Hopocalypse Now!
    tmpCategories[194]:AddAchievement(achievements[6457]) -- Stormstout Brewery
    tmpCategories[194]:AddAchievement(achievements[6456]) -- Heroic: Stormstout Brewery
    tmpCategories[194]:AddAchievement(achievements[6888]) -- Stormstout Brewery Challenger
    tmpCategories[194]:AddAchievement(achievements[6889]) -- Stormstout Brewery: Bronze
    tmpCategories[194]:AddAchievement(achievements[6890]) -- Stormstout Brewery: Silver
    tmpCategories[194]:AddAchievement(achievements[6891]) -- Stormstout Brewery: Gold
    tmpCategories[194]:AddAchievement(achievements[8431]) -- Challenge Master: Stormstout Brewery
    tmpCategories[195] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(321)), {453, 454, 455})); -- Mogu'shan Palace
    tmpCategories[190]:AddCategory(tmpCategories[195]);
    tmpCategories[195]:AddAchievement(achievements[6713]) -- Quarrelsome Quilen Quintet
    tmpCategories[195]:AddAchievement(achievements[6478]) -- Glintrok N' Roll
    tmpCategories[195]:AddAchievement(achievements[6736]) -- What Does This Button Do?
    tmpCategories[195]:AddAchievement(achievements[6755]) -- Mogu'shan Palace
    tmpCategories[195]:AddAchievement(achievements[6756]) -- Heroic: Mogu'shan Palace
    tmpCategories[195]:AddAchievement(achievements[6892]) -- Mogu'shan Palace Challenger
    tmpCategories[195]:AddAchievement(achievements[6899]) -- Mogu'shan Palace: Bronze
    tmpCategories[195]:AddAchievement(achievements[6900]) -- Mogu'shan Palace: Silver
    tmpCategories[195]:AddAchievement(achievements[6901]) -- Mogu'shan Palace: Gold
    tmpCategories[195]:AddAchievement(achievements[8433]) -- Challenge Master: Mogu'shan Palace
    tmpCategories[196] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(312)), {443, 444, 445, 446})); -- Shado-Pan Monastery
    tmpCategories[190]:AddCategory(tmpCategories[196]);
    tmpCategories[196]:AddAchievement(achievements[6477]) -- Respect
    tmpCategories[196]:AddAchievement(achievements[6472]) -- The Obvious Solution
    tmpCategories[196]:AddAchievement(achievements[6471]) -- Hate Leads to Suffering
    tmpCategories[196]:AddAchievement(achievements[6469]) -- Shado-Pan Monastery
    tmpCategories[196]:AddAchievement(achievements[6470]) -- Heroic: Shado-Pan Monastery
    tmpCategories[196]:AddAchievement(achievements[6893]) -- Shado-Pan Monastery Challenger
    tmpCategories[196]:AddAchievement(achievements[6902]) -- Shado-Pan Monastery: Bronze
    tmpCategories[196]:AddAchievement(achievements[6903]) -- Shado-Pan Monastery: Silver
    tmpCategories[196]:AddAchievement(achievements[6904]) -- Shado-Pan Monastery: Gold
    tmpCategories[196]:AddAchievement(achievements[8432]) -- Challenge Master: Shado-Pan Monastery
    tmpCategories[197] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(303)), {437, 438})); -- Gate of the Setting Sun
    tmpCategories[190]:AddCategory(tmpCategories[197]);
    tmpCategories[197]:AddAchievement(achievements[6479]) -- Bomberman
    tmpCategories[197]:AddAchievement(achievements[6476]) -- Conscriptinator
    tmpCategories[197]:AddAchievement(achievements[6945]) -- Mantid Swarm
    tmpCategories[197]:AddAchievement(achievements[10010]) -- Gate of the Setting Sun
    tmpCategories[197]:AddAchievement(achievements[6759]) -- Heroic: Gate of the Setting Sun
    tmpCategories[197]:AddAchievement(achievements[6894]) -- Gate of the Setting Sun Challenger
    tmpCategories[197]:AddAchievement(achievements[6905]) -- Gate of the Setting Sun: Bronze
    tmpCategories[197]:AddAchievement(achievements[6906]) -- Gate of the Setting Sun: Silver
    tmpCategories[197]:AddAchievement(achievements[6907]) -- Gate of the Setting Sun: Gold
    tmpCategories[197]:AddAchievement(achievements[8434]) -- Challenge Master: Gate of the Setting Sun
    tmpCategories[198] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(324)), {457, 458, 459})); -- Siege of Niuzao Temple
    tmpCategories[190]:AddCategory(tmpCategories[198]);
    tmpCategories[198]:AddAchievement(achievements[6688]) -- Where's My Air Support?
    tmpCategories[198]:AddAchievement(achievements[6485]) -- Return to Sender
    tmpCategories[198]:AddAchievement(achievements[6822]) -- Run with the Wind
    tmpCategories[198]:AddAchievement(achievements[10011]) -- Siege of Niuzao Temple
    tmpCategories[198]:AddAchievement(achievements[6763]) -- Heroic: Siege of Niuzao Temple
    tmpCategories[198]:AddAchievement(achievements[6898]) -- Siege of Niuzao Temple Challenger
    tmpCategories[198]:AddAchievement(achievements[6917]) -- Siege of Niuzao Temple: Bronze
    tmpCategories[198]:AddAchievement(achievements[6918]) -- Siege of Niuzao Temple: Silver
    tmpCategories[198]:AddAchievement(achievements[6919]) -- Siege of Niuzao Temple: Gold
    tmpCategories[198]:AddAchievement(achievements[8439]) -- Challenge Master: Siege of Niuzao Temple
    tmpCategories[199] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(311)), {431, 432})); -- Scarlet Halls
    tmpCategories[190]:AddCategory(tmpCategories[199]);
    tmpCategories[199]:AddAchievement(achievements[6684]) -- Humane Society
    tmpCategories[199]:AddAchievement(achievements[6427]) -- Mosh Pit
    tmpCategories[199]:AddAchievement(achievements[7413]) -- Scarlet Halls
    tmpCategories[199]:AddAchievement(achievements[6760]) -- Heroic: Scarlet Halls
    tmpCategories[199]:AddAchievement(achievements[6895]) -- Scarlet Halls Challenger
    tmpCategories[199]:AddAchievement(achievements[6908]) -- Scarlet Halls: Bronze
    tmpCategories[199]:AddAchievement(achievements[6909]) -- Scarlet Halls: Silver
    tmpCategories[199]:AddAchievement(achievements[6910]) -- Scarlet Halls: Gold
    tmpCategories[199]:AddAchievement(achievements[8436]) -- Challenge Master: Scarlet Halls
    tmpCategories[200] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(316)), {435, 436})); -- Scarlet Monastery
    tmpCategories[190]:AddCategory(tmpCategories[200]);
    tmpCategories[200]:AddAchievement(achievements[6946]) -- Empowered Spiritualist
    tmpCategories[200]:AddAchievement(achievements[6928]) -- Burning Man
    tmpCategories[200]:AddAchievement(achievements[6929]) -- And Stay Dead!
    tmpCategories[200]:AddAchievement(achievements[637]) -- Scarlet Monastery
    tmpCategories[200]:AddAchievement(achievements[6761]) -- Heroic: Scarlet Monastery
    tmpCategories[200]:AddAchievement(achievements[6896]) -- Scarlet Monastery Challenger
    tmpCategories[200]:AddAchievement(achievements[6911]) -- Scarlet Monastery: Bronze
    tmpCategories[200]:AddAchievement(achievements[6912]) -- Scarlet Monastery: Silver
    tmpCategories[200]:AddAchievement(achievements[6913]) -- Scarlet Monastery: Gold
    tmpCategories[200]:AddAchievement(achievements[8437]) -- Challenge Master: Scarlet Monastery
    tmpCategories[200]:AddAchievement(achievements[980]) -- The Horseman's Reins
    tmpCategories[201] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(246)), {476, 477, 478, 479})); -- Scholomance
    tmpCategories[190]:AddCategory(tmpCategories[201]);
    tmpCategories[201]:AddAchievement(achievements[6531]) -- Attention to Detail
    tmpCategories[201]:AddAchievement(achievements[6394]) -- Rattle No More
    tmpCategories[201]:AddAchievement(achievements[6396]) -- Sanguinarian
    tmpCategories[201]:AddAchievement(achievements[6715]) -- Polyformic Acid Science
    tmpCategories[201]:AddAchievement(achievements[6821]) -- School's Out Forever
    tmpCategories[201]:AddAchievement(achievements[645]) -- Scholomance
    tmpCategories[201]:AddAchievement(achievements[6762]) -- Heroic: Scholomance
    tmpCategories[201]:AddAchievement(achievements[6897]) -- Scholomance Challenger
    tmpCategories[201]:AddAchievement(achievements[6914]) -- Scholomance: Bronze
    tmpCategories[201]:AddAchievement(achievements[6915]) -- Scholomance: Silver
    tmpCategories[201]:AddAchievement(achievements[6916]) -- Scholomance: Gold
    tmpCategories[201]:AddAchievement(achievements[8438]) -- Challenge Master: Scholomance
    tmpCategories[191] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15271)))); -- Raids
    tmpCategories[189]:AddCategory(tmpCategories[191]);
    tmpCategories[191]:AddAchievement(achievements[6926]) -- Tranquil Master
    tmpCategories[191]:AddAchievement(achievements[6932]) -- Glory of the Pandaria Raider
    tmpCategories[191]:AddAchievement(achievements[8124]) -- Glory of the Thundering Raider
    tmpCategories[191]:AddAchievement(achievements[8454]) -- Glory of the Orgrimmar Raider
    tmpCategories[202] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(317)), {471, 472, 473})); -- Mogu'shan Vaults
    tmpCategories[191]:AddCategory(tmpCategories[202]);
    tmpCategories[202]:AddAchievement(achievements[6823]) -- Must Love Dogs
    tmpCategories[202]:AddAchievement(achievements[6674]) -- "Anything You Can Do, I Can Do Better..."
    tmpCategories[202]:AddAchievement(achievements[7056]) -- "Sorry, Were You Looking for This?"
    tmpCategories[202]:AddAchievement(achievements[7933]) -- And... It's Good!
    tmpCategories[202]:AddAchievement(achievements[6687]) -- Getting Hot In Here
    tmpCategories[202]:AddAchievement(achievements[6686]) -- Straight Six
    tmpCategories[202]:AddAchievement(achievements[6455]) -- Show Me Your Moves!
    tmpCategories[202]:AddAchievement(achievements[6719]) -- Heroic: Stone Guard
    tmpCategories[202]:AddAchievement(achievements[6720]) -- Heroic: Feng the Accursed
    tmpCategories[202]:AddAchievement(achievements[6721]) -- Heroic: Gara'jal the Spiritbinder
    tmpCategories[202]:AddAchievement(achievements[6722]) -- Heroic: Four Kings
    tmpCategories[202]:AddAchievement(achievements[6723]) -- Heroic: Elegon
    tmpCategories[202]:AddAchievement(achievements[6724]) -- Heroic: Will of the Emperor
    tmpCategories[202]:AddAchievement(achievements[6458]) -- Guardians of Mogu'shan
    tmpCategories[202]:AddAchievement(achievements[6844]) -- The Vault of Mysteries
    tmpCategories[202]:AddAchievement(achievements[6954]) -- Ahead of the Curve: Will of the Emperor
    tmpCategories[202]:AddAchievement(achievements[7485]) -- Cutting Edge: Will of the Emperor
    tmpCategories[203] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(330)), {474, 475})); -- Heart of Fear
    tmpCategories[191]:AddCategory(tmpCategories[203]);
    tmpCategories[203]:AddAchievement(achievements[6937]) -- Overzealous
    tmpCategories[203]:AddAchievement(achievements[6936]) -- Candle in the Wind
    tmpCategories[203]:AddAchievement(achievements[6553]) -- Like an Arrow to the Face
    tmpCategories[203]:AddAchievement(achievements[6683]) -- Less Than Three
    tmpCategories[203]:AddAchievement(achievements[6518]) -- I Heard You Like Amber...
    tmpCategories[203]:AddAchievement(achievements[6922]) -- Timing is Everything
    tmpCategories[203]:AddAchievement(achievements[6725]) -- Heroic: Imperial Vizier Zor'lok
    tmpCategories[203]:AddAchievement(achievements[6726]) -- Heroic: Blade Lord Ta'yak
    tmpCategories[203]:AddAchievement(achievements[6727]) -- Heroic: Garalon
    tmpCategories[203]:AddAchievement(achievements[6728]) -- Heroic: Wind Lord Mel'jarak
    tmpCategories[203]:AddAchievement(achievements[6729]) -- Heroic: Amber-Shaper Un'sok
    tmpCategories[203]:AddAchievement(achievements[6730]) -- Heroic: Grand Empress Shek'zeer
    tmpCategories[203]:AddAchievement(achievements[6718]) -- The Dread Approach
    tmpCategories[203]:AddAchievement(achievements[6845]) -- Nightmare of Shek'zeer
    tmpCategories[203]:AddAchievement(achievements[8246]) -- Ahead of the Curve: Grand Empress Shek'zeer
    tmpCategories[203]:AddAchievement(achievements[7486]) -- Cutting Edge: Grand Empress Shek'zeer
    tmpCategories[203]:AddAchievement(achievements[11757]) -- Sha of Fabulous
    tmpCategories[204] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(320)), {456})); -- Terrace of Endless Spring
    tmpCategories[191]:AddCategory(tmpCategories[204]);
    tmpCategories[204]:AddAchievement(achievements[6717]) -- Power Overwhelming
    tmpCategories[204]:AddAchievement(achievements[6933]) -- Who's Got Two Green Thumbs?
    tmpCategories[204]:AddAchievement(achievements[6824]) -- Face Clutchers
    tmpCategories[204]:AddAchievement(achievements[6825]) -- The Mind-Killer
    tmpCategories[204]:AddAchievement(achievements[6731]) -- Heroic: Protectors of the Endless
    tmpCategories[204]:AddAchievement(achievements[6732]) -- Heroic: Tsulong
    tmpCategories[204]:AddAchievement(achievements[6733]) -- Heroic: Lei Shi
    tmpCategories[204]:AddAchievement(achievements[6734]) -- Heroic: Sha of Fear
    tmpCategories[204]:AddAchievement(achievements[6689]) -- Terrace of Endless Spring
    tmpCategories[204]:AddAchievement(achievements[8248]) -- Ahead of the Curve: Sha of Fear
    tmpCategories[204]:AddAchievement(achievements[7487]) -- Cutting Edge: Sha of Fear
    tmpCategories[205] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(362)), {508, 509, 510, 511, 512, 513, 514, 515})); -- Throne of Thunder
    tmpCategories[191]:AddCategory(tmpCategories[205]);
    tmpCategories[205]:AddAchievement(achievements[8094]) -- Lightning Overload
    tmpCategories[205]:AddAchievement(achievements[8038]) -- Cretaceous Collector
    tmpCategories[205]:AddAchievement(achievements[8073]) -- Cage Match
    tmpCategories[205]:AddAchievement(achievements[8077]) -- One-Up
    tmpCategories[205]:AddAchievement(achievements[8082]) -- Head Case
    tmpCategories[205]:AddAchievement(achievements[8097]) -- Soft Hands
    tmpCategories[205]:AddAchievement(achievements[8098]) -- You Said Crossing the Streams Was Bad
    tmpCategories[205]:AddAchievement(achievements[8037]) -- Genetically Unmodified Organism
    tmpCategories[205]:AddAchievement(achievements[8081]) -- Ritualist Who?
    tmpCategories[205]:AddAchievement(achievements[8087]) -- Can't Touch This
    tmpCategories[205]:AddAchievement(achievements[8086]) -- From Dusk 'til Dawn
    tmpCategories[205]:AddAchievement(achievements[8090]) -- A Complete Circuit
    tmpCategories[205]:AddAchievement(achievements[8056]) -- Heroic: Jin'rokh the Breaker
    tmpCategories[205]:AddAchievement(achievements[8057]) -- Heroic: Horridon
    tmpCategories[205]:AddAchievement(achievements[8058]) -- Heroic: Council of Elders
    tmpCategories[205]:AddAchievement(achievements[8059]) -- Heroic: Tortos
    tmpCategories[205]:AddAchievement(achievements[8060]) -- Heroic: Megaera
    tmpCategories[205]:AddAchievement(achievements[8061]) -- Heroic: Ji-Kun
    tmpCategories[205]:AddAchievement(achievements[8062]) -- Heroic: Durumu the Forgotten
    tmpCategories[205]:AddAchievement(achievements[8063]) -- Heroic: Primordius
    tmpCategories[205]:AddAchievement(achievements[8064]) -- Heroic: Dark Animus
    tmpCategories[205]:AddAchievement(achievements[8065]) -- Heroic: Iron Qon
    tmpCategories[205]:AddAchievement(achievements[8066]) -- Heroic: Twin Consorts
    tmpCategories[205]:AddAchievement(achievements[8067]) -- Heroic: Lei Shen
    tmpCategories[205]:AddAchievement(achievements[8068]) -- Heroic: Ra-den
    tmpCategories[205]:AddAchievement(achievements[8069]) -- Last Stand of the Zandalari
    tmpCategories[205]:AddAchievement(achievements[8070]) -- Forgotten Depths
    tmpCategories[205]:AddAchievement(achievements[8071]) -- Halls of Flesh-Shaping
    tmpCategories[205]:AddAchievement(achievements[8072]) -- Pinnacle of Storms
    tmpCategories[205]:AddAchievement(achievements[8089]) -- I Thought He Was Supposed to Be Hard?
    tmpCategories[205]:AddAchievement(achievements[8249]) -- Ahead of the Curve: Lei Shen
    tmpCategories[205]:AddAchievement(achievements[8238]) -- Cutting Edge: Lei Shen
    tmpCategories[205]:AddAchievement(achievements[8260]) -- Cutting Edge: Ra-den
    tmpCategories[205]:AddAchievement(achievements[11758]) -- Thunderwear
    tmpCategories[206] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(369)), {556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570})); -- Siege of Orgrimmar
    tmpCategories[191]:AddCategory(tmpCategories[206]);
    tmpCategories[206]:AddAchievement(achievements[8536]) -- No More Tears
    tmpCategories[206]:AddAchievement(achievements[8528]) -- Go Long
    tmpCategories[206]:AddAchievement(achievements[8532]) -- None Shall Pass
    tmpCategories[206]:AddAchievement(achievements[8521]) -- Swallow Your Pride
    tmpCategories[206]:AddAchievement(achievements[8530]) -- The Immortal Vanguard
    tmpCategories[206]:AddAchievement(achievements[8520]) -- Fire in the Hole!
    tmpCategories[206]:AddAchievement(achievements[8453]) -- Rescue Raiders
    tmpCategories[206]:AddAchievement(achievements[8448]) -- Gamon Will Save Us!
    tmpCategories[206]:AddAchievement(achievements[8538]) -- Unlimited Potential
    tmpCategories[206]:AddAchievement(achievements[8529]) -- Criss Cross
    tmpCategories[206]:AddAchievement(achievements[8527]) -- Giant Dinosaur vs. Mega Snail
    tmpCategories[206]:AddAchievement(achievements[8543]) -- Lasers and Magnets and Drills! Oh My!
    tmpCategories[206]:AddAchievement(achievements[8531]) -- Now We are the Paragon
    tmpCategories[206]:AddAchievement(achievements[8537]) -- Strike!
    tmpCategories[206]:AddAchievement(achievements[8463]) -- Mythic: Immerseus
    tmpCategories[206]:AddAchievement(achievements[8465]) -- Mythic: Fallen Protectors
    tmpCategories[206]:AddAchievement(achievements[8466]) -- Mythic: Norushen
    tmpCategories[206]:AddAchievement(achievements[8467]) -- Mythic: Sha of Pride
    tmpCategories[206]:AddAchievement(achievements[8468]) -- Mythic: Galakras
    tmpCategories[206]:AddAchievement(achievements[8469]) -- Mythic: Iron Juggernaut
    tmpCategories[206]:AddAchievement(achievements[8470]) -- Mythic: Kor'kron Dark Shaman
    tmpCategories[206]:AddAchievement(achievements[8471]) -- Mythic: General Nazgrim
    tmpCategories[206]:AddAchievement(achievements[8472]) -- Mythic: Malkorok
    tmpCategories[206]:AddAchievement(achievements[8478]) -- Mythic: Spoils of Pandaria
    tmpCategories[206]:AddAchievement(achievements[8479]) -- Mythic: Thok the Bloodthirsty
    tmpCategories[206]:AddAchievement(achievements[8480]) -- Mythic: Siegecrafter Blackfuse
    tmpCategories[206]:AddAchievement(achievements[8481]) -- Mythic: Paragons of the Klaxxi
    tmpCategories[206]:AddAchievement(achievements[8482]) -- Mythic: Garrosh Hellscream
    tmpCategories[206]:AddAchievement(achievements[8458]) -- Vale of Eternal Sorrows
    tmpCategories[206]:AddAchievement(achievements[8459]) -- Gates of Retribution
    tmpCategories[206]:AddAchievement(achievements[8461]) -- The Underhold
    tmpCategories[206]:AddAchievement(achievements[8462]) -- Downfall
    tmpCategories[206]:AddAchievement(achievements[8679]) -- Conqueror of Orgrimmar
    tmpCategories[206]:AddAchievement(achievements[8680]) -- Liberator of Orgrimmar
    tmpCategories[206]:AddAchievement(achievements[8398]) -- Ahead of the Curve: Garrosh Hellscream (10 player)
    tmpCategories[206]:AddAchievement(achievements[8399]) -- Ahead of the Curve: Garrosh Hellscream (25 player)
    tmpCategories[206]:AddAchievement(achievements[8400]) -- Cutting Edge: Garrosh Hellscream (10 player)
    tmpCategories[206]:AddAchievement(achievements[8401]) -- Cutting Edge: Garrosh Hellscream (25 player)
    tmpCategories[206]:AddAchievement(achievements[11759]) -- Yaass'shaarj
    tmpCategories[549] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15117)))); -- Pet Battles
    tmpCategories[189]:AddCategory(tmpCategories[549]);
    tmpCategories[549]:AddAchievement(achievements[6616]) -- Pandaria Tamer
    tmpCategories[549]:AddAchievement(achievements[6589]) -- Pandaria Safari
    tmpCategories[549]:AddAchievement(achievements[8519]) -- Celestial Family
    tmpCategories[549]:AddAchievement(achievements[13469]) -- Raiding with Leashes VI: Pets of Pandaria
    tmpCategories[549]:AddAchievement(achievements[6606]) -- Taming Pandaria
    tmpCategories[549]:AddAchievement(achievements[8410]) -- The Celestial Tournament
    tmpCategories[549]:AddAchievement(achievements[8518]) -- Master of the Masters
    tmpCategories[549]:AddAchievement(achievements[7908]) -- I Choose You
    tmpCategories[549]:AddAchievement(achievements[7936]) -- Pandaren Spirit Tamer
    tmpCategories[549]:AddAchievement(achievements[8080]) -- Fabled Pandaren Tamer
    tmpCategories[790] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15282)) .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Brawler's Guild (Legacy)
    tmpCategories[189]:AddCategory(tmpCategories[790]);
    tmpCategories[790]:AddAchievement(achievements[7937]) -- You Are Not Your $#*@! Legplates (Season 1)
    tmpCategories[790]:AddAchievement(achievements[7940]) -- The Second Rule of Brawler's Guild (Season 1)
    tmpCategories[790]:AddAchievement(achievements[7941]) -- Brawlin' and Shot Callin' (Season 1)
    tmpCategories[790]:AddAchievement(achievements[8335]) -- Having a Brawl (Season 1)
    tmpCategories[790]:AddAchievement(achievements[8336]) -- I've Got the Biggest Brawls of Them All (Season 1)
    tmpCategories[790]:AddAchievement(achievements[7946]) -- Now You're Just Showing Off (Season 1)
    tmpCategories[790]:AddAchievement(achievements[8340]) -- Deck Your Collection (Season 1)
    tmpCategories[790]:AddAchievement(achievements[8020]) -- You Are Not Your $#*@! Legplates (Season 1)
    tmpCategories[790]:AddAchievement(achievements[7939]) -- The Second Rule of Brawler's Guild (Season 1)
    tmpCategories[790]:AddAchievement(achievements[7942]) -- Brawlin' and Shot Callin' (Season 1)
    tmpCategories[790]:AddAchievement(achievements[8337]) -- Having a Brawl (Season 1)
    tmpCategories[790]:AddAchievement(achievements[8338]) -- I've Got the Biggest Brawls of Them All (Season 1)
    tmpCategories[790]:AddAchievement(achievements[8022]) -- Now You're Just Showing Off (Season 1)
    tmpCategories[790]:AddAchievement(achievements[8343]) -- Deck Your Collection (Season 1)
    tmpCategories[790]:AddAchievement(achievements[7947]) -- The First Rule of Brawler's Guild (Season 1 or 2)
    tmpCategories[790]:AddAchievement(achievements[7948]) -- The First Rule of Brawler's Guild (Season 1 or 2)
    tmpCategories[192] = InsertAndReturn(categories, achievementCategory:New(addon.L["Scenarios"])); -- Scenarios
    tmpCategories[189]:AddCategory(tmpCategories[192]);
    tmpCategories[192]:AddAchievement(achievements[6943]) -- Queuing Spree
    tmpCategories[192]:AddAchievement(achievements[7385]) -- Pub Crawl
    tmpCategories[192]:AddAchievement(achievements[6874]) -- Scenaturday
    tmpCategories[192]:AddAchievement(achievements[7509]) -- Scenaturday
    tmpCategories[207] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(517)), {447})); -- A Brewing Storm
    tmpCategories[192]:AddCategory(tmpCategories[207]);
    tmpCategories[207]:AddAchievement(achievements[7252]) -- A Brewing Storm
    tmpCategories[207]:AddAchievement(achievements[8310]) -- Heroic: A Brewing Storm
    tmpCategories[207]:AddAchievement(achievements[7257]) -- Don't Shake the Keg
    tmpCategories[207]:AddAchievement(achievements[7261]) -- The Perfect Pour
    tmpCategories[207]:AddAchievement(achievements[7258]) -- Party of Six
    tmpCategories[499] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(589)), {487})); -- A Little Patience
    tmpCategories[192]:AddCategory(tmpCategories[499]);
    tmpCategories[499]:AddAchievement(achievements[7988]) -- A Little Patience
    tmpCategories[499]:AddAchievement(achievements[7989]) -- Bubbletrapped!
    tmpCategories[499]:AddAchievement(achievements[7990]) -- Cannonballer
    tmpCategories[499]:AddAchievement(achievements[7992]) -- I Used To Love Them
    tmpCategories[499]:AddAchievement(achievements[7993]) -- We've Been Dancin'
    tmpCategories[499]:AddAchievement(achievements[7991]) -- Which Came First?
    tmpCategories[208] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(511)), {480})); -- Arena of Annihilation
    tmpCategories[192]:AddCategory(tmpCategories[208]);
    tmpCategories[208]:AddAchievement(achievements[7271]) -- Arena of Annihilation
    tmpCategories[208]:AddAchievement(achievements[7273]) -- Beat the Heat
    tmpCategories[208]:AddAchievement(achievements[7272]) -- In the Eye of the Tiger
    tmpCategories[214] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(593)), {451})); -- Assault on Zan'vess
    tmpCategories[192]:AddCategory(tmpCategories[214]);
    tmpCategories[214]:AddAchievement(achievements[8016]) -- Assault on Zan'vess
    tmpCategories[214]:AddAchievement(achievements[8017]) -- For the Swarm
    tmpCategories[220] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(646)))); -- Blood in the Snow
    tmpCategories[192]:AddCategory(tmpCategories[220]);
    tmpCategories[220]:AddAchievement(achievements[8316]) -- Blood in the Snow
    tmpCategories[220]:AddAchievement(achievements[8312]) -- Heroic: Blood in the Snow
    tmpCategories[220]:AddAchievement(achievements[8329]) -- Heed the Weed
    tmpCategories[220]:AddAchievement(achievements[8330]) -- Hekima's Heal-Halter
    tmpCategories[209] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(539)), {452})); -- Brewmoon Festival
    tmpCategories[192]:AddCategory(tmpCategories[209]);
    tmpCategories[209]:AddAchievement(achievements[6923]) -- Brewmoon Festival
    tmpCategories[209]:AddAchievement(achievements[6931]) -- Binan Village All-Star
    tmpCategories[209]:AddAchievement(achievements[6930]) -- Yaungolian Barbecue
    tmpCategories[210] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(504)), {481, 482})); -- Crypt of Forgotten Kings
    tmpCategories[192]:AddCategory(tmpCategories[210]);
    tmpCategories[210]:AddAchievement(achievements[7522]) -- Crypt of Forgotten Kings
    tmpCategories[210]:AddAchievement(achievements[8311]) -- Heroic: Crypt of Forgotten Kings
    tmpCategories[210]:AddAchievement(achievements[7276]) -- Fancy Footwork
    tmpCategories[210]:AddAchievement(achievements[7275]) -- It's a Trap!
    tmpCategories[210]:AddAchievement(achievements[8368]) -- Fight Anger with Anger
    tmpCategories[215] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(616)), {488, 489})); -- Dagger in the Dark
    tmpCategories[192]:AddCategory(tmpCategories[215]);
    tmpCategories[215]:AddAchievement(achievements[8009]) -- Dagger in the Dark
    tmpCategories[215]:AddAchievement(achievements[7987]) -- No Egg Left Behind
    tmpCategories[215]:AddAchievement(achievements[7984]) -- Watery Grave
    tmpCategories[215]:AddAchievement(achievements[7986]) -- You Mean That Wasn't a Void Zone?
    tmpCategories[221] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(647)), {520, 521})); -- Dark Heart of Pandaria
    tmpCategories[192]:AddCategory(tmpCategories[221]);
    tmpCategories[221]:AddAchievement(achievements[8317]) -- Dark Heart of Pandaria
    tmpCategories[221]:AddAchievement(achievements[8318]) -- Heroic: Dark Heart of Pandaria
    tmpCategories[221]:AddAchievement(achievements[8319]) -- Accelerated Archaeology
    tmpCategories[218] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(595)), {498})); -- Domination Point
    tmpCategories[192]:AddCategory(tmpCategories[218]);
    tmpCategories[218]:AddAchievement(achievements[8013]) -- Domination Point
    tmpCategories[218]:AddAchievement(achievements[8014]) -- Number Five Is Alive
    tmpCategories[218]:AddAchievement(achievements[8015]) -- "Waste Not, Want Not"
    tmpCategories[211] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(492)), {448})); -- Greenstone Village
    tmpCategories[192]:AddCategory(tmpCategories[211]);
    tmpCategories[211]:AddAchievement(achievements[7265]) -- Greenstone Village
    tmpCategories[211]:AddAchievement(achievements[7267]) -- Perfect Delivery
    tmpCategories[211]:AddAchievement(achievements[7266]) -- Save it for Later
    tmpCategories[216] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(590)), {486})); -- Lion's Landing
    tmpCategories[192]:AddCategory(tmpCategories[216]);
    tmpCategories[216]:AddAchievement(achievements[8010]) -- Lion's Landing
    tmpCategories[216]:AddAchievement(achievements[8011]) -- Number Five Is Alive
    tmpCategories[216]:AddAchievement(achievements[8012]) -- "Waste Not, Want Not"
    tmpCategories[500] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(417).name .. " (" .. (GetCategoryInfo(15234)) .. ")", {417})); -- Temple of Kotmogu (Legacy)
    tmpCategories[192]:AddCategory(tmpCategories[500]);
    tmpCategories[500]:AddAchievement(achievements[7268]) -- The Temple of Kotmogu
    tmpCategories[500]:AddAchievement(achievements[7270]) -- For Display Only
    tmpCategories[500]:AddAchievement(achievements[7269]) -- Stay Off the Grass
    tmpCategories[222] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(649)), {522})); -- The Secrets of Ragefire
    tmpCategories[192]:AddCategory(tmpCategories[222]);
    tmpCategories[222]:AddAchievement(achievements[8294]) -- The Secrets of Ragefire
    tmpCategories[222]:AddAchievement(achievements[8327]) -- Heroic: The Secrets of Ragefire
    tmpCategories[222]:AddAchievement(achievements[8295]) -- "The Few, the Proud, the Gob Squad"
    tmpCategories[212] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(566)), {416, 483})); -- Theramore's Fall
    tmpCategories[192]:AddCategory(tmpCategories[212]);
    tmpCategories[212]:AddAchievement(achievements[7523]) -- Theramore's Fall
    tmpCategories[212]:AddAchievement(achievements[7524]) -- Theramore's Fall
    tmpCategories[212]:AddAchievement(achievements[7526]) -- Kite Fight
    tmpCategories[212]:AddAchievement(achievements[7529]) -- Kite Fight
    tmpCategories[212]:AddAchievement(achievements[7527]) -- No Tank You
    tmpCategories[212]:AddAchievement(achievements[7530]) -- No Tank You
    tmpCategories[212]:AddAchievement(achievements[7467]) -- Theramore's Fall
    tmpCategories[212]:AddAchievement(achievements[7468]) -- Theramore's Fall
    tmpCategories[213] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(499)), {450})); -- Unga Ingoo
    tmpCategories[192]:AddCategory(tmpCategories[213]);
    tmpCategories[213]:AddAchievement(achievements[7249]) -- Unga Ingoo
    tmpCategories[213]:AddAchievement(achievements[7232]) -- The Keg Runner
    tmpCategories[213]:AddAchievement(achievements[7239]) -- Monkey in the Middle
    tmpCategories[213]:AddAchievement(achievements[7248]) -- "Monkey See, Monkey Kill"
    tmpCategories[213]:AddAchievement(achievements[7231]) -- Spill No Evil
    tmpCategories[219] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(655)), {524})); -- Battle on the High Seas
    tmpCategories[192]:AddCategory(tmpCategories[219]);
    tmpCategories[219]:AddAchievement(achievements[8314]) -- Battle on the High Seas
    tmpCategories[219]:AddAchievement(achievements[8364]) -- Heroic: Battle on the High Seas
    tmpCategories[219]:AddAchievement(achievements[8315]) -- Battle on the High Seas
    tmpCategories[219]:AddAchievement(achievements[8366]) -- Heroic: Battle on the High Seas
    tmpCategories[219]:AddAchievement(achievements[8347]) -- Keep those Bombs Away! (From Me)
    tmpCategories[490] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15222)), {480})); -- Proving Grounds
    tmpCategories[189]:AddCategory(tmpCategories[490]);
    tmpCategories[490]:AddAchievement(achievements[9572]) -- Proving Yourself: Bronze Damage
    tmpCategories[490]:AddAchievement(achievements[9573]) -- Proving Yourself: Silver Damage
    tmpCategories[490]:AddAchievement(achievements[9574]) -- Proving Yourself: Gold Damage
    tmpCategories[490]:AddAchievement(achievements[9575]) -- Proving Yourself: Endless Damage (Wave 10)
    tmpCategories[490]:AddAchievement(achievements[9576]) -- Proving Yourself: Endless Damage (Wave 20)
    tmpCategories[490]:AddAchievement(achievements[9577]) -- Proving Yourself: Endless Damage (Wave 30)
    tmpCategories[490]:AddAchievement(achievements[9578]) -- Proving Yourself: Bronze Tank
    tmpCategories[490]:AddAchievement(achievements[9579]) -- Proving Yourself: Silver Tank
    tmpCategories[490]:AddAchievement(achievements[9580]) -- Proving Yourself: Gold Tank
    tmpCategories[490]:AddAchievement(achievements[9581]) -- Proving Yourself: Endless Tank (Wave 10)
    tmpCategories[490]:AddAchievement(achievements[9582]) -- Proving Yourself: Endless Tank (Wave 20)
    tmpCategories[490]:AddAchievement(achievements[9583]) -- Proving Yourself: Endless Tank (Wave 30)
    tmpCategories[490]:AddAchievement(achievements[9584]) -- Proving Yourself: Bronze Healer
    tmpCategories[490]:AddAchievement(achievements[9585]) -- Proving Yourself: Silver Healer
    tmpCategories[490]:AddAchievement(achievements[9586]) -- Proving Yourself: Gold Healer
    tmpCategories[490]:AddAchievement(achievements[9587]) -- Proving Yourself: Endless Healer (Wave 10)
    tmpCategories[490]:AddAchievement(achievements[9588]) -- Proving Yourself: Endless Healer (Wave 20)
    tmpCategories[490]:AddAchievement(achievements[9589]) -- Proving Yourself: Endless Healer (Wave 30)
    tmpCategories[490]:AddAchievement(achievements[9590]) -- You're Doing it Wrong
    tmpCategories[490]:AddAchievement(achievements[9597]) -- You're Really Doing It Wrong
    tmpCategories[490]:AddAchievement(achievements[8486]) -- Proving Yourself: Bronze Damage (Level 90)
    tmpCategories[490]:AddAchievement(achievements[8491]) -- Proving Yourself: Silver Damage (Level 90)
    tmpCategories[490]:AddAchievement(achievements[8496]) -- Proving Yourself: Gold Damage (Level 90)
    tmpCategories[490]:AddAchievement(achievements[8501]) -- Proving Yourself: Endless Damage (Wave 10) (Level 90)
    tmpCategories[490]:AddAchievement(achievements[8504]) -- Proving Yourself: Endless Damage (Wave 20) (Level 90)
    tmpCategories[490]:AddAchievement(achievements[8507]) -- Proving Yourself: Endless Damage (Wave 30) (Level 90)
    tmpCategories[490]:AddAchievement(achievements[8487]) -- Proving Yourself: Bronze Tank (Level 90)
    tmpCategories[490]:AddAchievement(achievements[8492]) -- Proving Yourself: Silver Tank (Level 90)
    tmpCategories[490]:AddAchievement(achievements[8497]) -- Proving Yourself: Gold Tank (Level 90)
    tmpCategories[490]:AddAchievement(achievements[8502]) -- Proving Yourself: Endless Tank (Wave 10) (Level 90)
    tmpCategories[490]:AddAchievement(achievements[8505]) -- Proving Yourself: Endless Tank (Wave 20) (Level 90)
    tmpCategories[490]:AddAchievement(achievements[8508]) -- Proving Yourself: Endless Tank (Wave 30) (Level 90)
    tmpCategories[490]:AddAchievement(achievements[8488]) -- Proving Yourself: Bronze Healer (Level 90)
    tmpCategories[490]:AddAchievement(achievements[8493]) -- Proving Yourself: Silver Healer (Level 90)
    tmpCategories[490]:AddAchievement(achievements[8498]) -- Proving Yourself: Gold Healer (Level 90)
    tmpCategories[490]:AddAchievement(achievements[8503]) -- Proving Yourself: Endless Healer (Wave 10) (Level 90)
    tmpCategories[490]:AddAchievement(achievements[8506]) -- Proving Yourself: Endless Healer (Wave 20) (Level 90)
    tmpCategories[490]:AddAchievement(achievements[8509]) -- Proving Yourself: Endless Healer (Wave 30) (Level 90)
    tmpCategories[490]:AddAchievement(achievements[8697]) -- You're Doing it Wrong (Level 90)
    tmpCategories[490]:AddAchievement(achievements[8812]) -- You're Really Doing It Wrong (Level 90)
    tmpCategories[223] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15233)))); -- Warlords of Dreanor
    tmpCategories[449] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[223]:AddCategory(tmpCategories[449]);
    tmpCategories[486] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(572).name)); -- Draenor
    tmpCategories[449]:AddCategory(tmpCategories[486]);
    tmpCategories[486]:AddAchievement(achievements[9838]) -- "What A Strange, Interdimensional Trip It's Been"
    tmpCategories[486]:AddAchievement(achievements[10053]) -- I Found Pepe!
    tmpCategories[487] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[486]:AddCategory(tmpCategories[487]);
    tmpCategories[487]:AddAchievement(achievements[8921]) -- Welcome to Draenor
    tmpCategories[487]:AddAchievement(achievements[8922]) -- Welcome to Draenor
    tmpCategories[487]:AddAchievement(achievements[9491]) -- The Garrison Campaign
    tmpCategories[487]:AddAchievement(achievements[9492]) -- The Garrison Campaign
    tmpCategories[487]:AddAchievement(achievements[9564]) -- Securing Draenor
    tmpCategories[487]:AddAchievement(achievements[9562]) -- Securing Draenor
    tmpCategories[487]:AddAchievement(achievements[9833]) -- Loremaster of Draenor
    tmpCategories[487]:AddAchievement(achievements[9923]) -- Loremaster of Draenor
    tmpCategories[488] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[486]:AddCategory(tmpCategories[488]);
    tmpCategories[488]:AddAchievement(achievements[10018]) -- Draenor Pathfinder
    tmpCategories[488]:AddAchievement(achievements[9726]) -- Treasure Hunter
    tmpCategories[488]:AddAchievement(achievements[9727]) -- Expert Treasure Hunter
    tmpCategories[488]:AddAchievement(achievements[10348]) -- Master Treasure Hunter
    tmpCategories[488]:AddAchievement(achievements[9728]) -- Grand Treasure Hunter
    tmpCategories[488]:AddAchievement(achievements[9502]) -- Draenor Cuisine
    tmpCategories[488]:AddAchievement(achievements[14728]) -- To All the Squirrels Through Time and Space
    tmpCategories[488]:AddAchievement(achievements[8935]) -- Draenor Explorer
    tmpCategories[489] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[486]:AddCategory(tmpCategories[489]);
    tmpCategories[489]:AddAchievement(achievements[9477]) -- Savage Friends
    tmpCategories[489]:AddAchievement(achievements[9478]) -- Savage Friends
    tmpCategories[450] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(539).name, {539, 540, 541})); -- Shadowmoon Valley
    tmpCategories[449]:AddCategory(tmpCategories[450]);
    tmpCategories[457] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {539, 540, 541}, nil, true)); -- Quests
    tmpCategories[450]:AddCategory(tmpCategories[457]);
    tmpCategories[457]:AddAchievement(achievements[8845]) -- As I Walk Through the Valley of the Shadow of Moon
    tmpCategories[457]:AddAchievement(achievements[9602]) -- Shoot For the Moon
    tmpCategories[457]:AddAchievement(achievements[9528]) -- On the Shadow's Trail
    tmpCategories[457]:AddAchievement(achievements[9433]) -- A-VOID-ance
    tmpCategories[457]:AddAchievement(achievements[9434]) -- One of Us! One of Us!
    tmpCategories[457]:AddAchievement(achievements[9432]) -- Would You Like a Pamphlet?
    tmpCategories[457]:AddAchievement(achievements[9436]) -- It's the Stones!
    tmpCategories[457]:AddAchievement(achievements[9435]) -- Take From Them Everything
    tmpCategories[457]:AddAchievement(achievements[9437]) -- A Demidos of Reality
    tmpCategories[457]:AddAchievement(achievements[9483]) -- I Was Framed!
    tmpCategories[457]:AddAchievement(achievements[9479]) -- You Can't Make a Giant Omelette...
    tmpCategories[457]:AddAchievement(achievements[9481]) -- You Have Been Rylakinated!
    tmpCategories[458] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {539, 540, 541}, nil, true)); -- Exploration
    tmpCategories[450]:AddCategory(tmpCategories[458]);
    tmpCategories[458]:AddAchievement(achievements[8938]) -- Explore Shadowmoon Valley
    tmpCategories[460] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {539, 540, 541}, nil, true)); -- Reputation
    tmpCategories[450]:AddCategory(tmpCategories[460]);
    tmpCategories[460]:AddAchievement(achievements[9470]) -- Council of Exarchs
    tmpCategories[451] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(525).name, {525, 526, 527, 528, 529, 530, 531, 532, 533})); -- Frostfire Ridge
    tmpCategories[449]:AddCategory(tmpCategories[451]);
    tmpCategories[461] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {525, 526, 527, 528, 529, 530, 531, 532, 533}, nil, true)); -- Quests
    tmpCategories[451]:AddCategory(tmpCategories[461]);
    tmpCategories[461]:AddAchievement(achievements[8671]) -- You'll Get Caught Up In The... Frostfire!
    tmpCategories[461]:AddAchievement(achievements[9606]) -- Frostfire Fridge
    tmpCategories[461]:AddAchievement(achievements[9529]) -- On the Shadow's Trail
    tmpCategories[461]:AddAchievement(achievements[9533]) -- Breaker of Chains
    tmpCategories[461]:AddAchievement(achievements[9530]) -- Writing in the Snow
    tmpCategories[461]:AddAchievement(achievements[9531]) -- Writing in the Snow
    tmpCategories[461]:AddAchievement(achievements[9534]) -- Delectable Ogre Delicacies
    tmpCategories[461]:AddAchievement(achievements[9537]) -- By Fire Be... Merged?
    tmpCategories[461]:AddAchievement(achievements[9536]) -- Slagnarok
    tmpCategories[461]:AddAchievement(achievements[9535]) -- That Was Entirely Unnecessary
    tmpCategories[461]:AddAchievement(achievements[9710]) -- Poisoning the Well
    tmpCategories[461]:AddAchievement(achievements[9711]) -- Planned to Fail
    tmpCategories[462] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {525, 526, 527, 528, 529, 530, 531, 532, 533}, nil, true)); -- Exploration
    tmpCategories[451]:AddCategory(tmpCategories[462]);
    tmpCategories[462]:AddAchievement(achievements[8937]) -- Explore Frostfire Ridge
    tmpCategories[464] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {525, 526, 527, 528, 529, 530, 531, 532, 533}, nil, true)); -- Reputation
    tmpCategories[451]:AddCategory(tmpCategories[464]);
    tmpCategories[464]:AddAchievement(achievements[9471]) -- Frostwolf Orcs
    tmpCategories[452] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(543).name, {543, 544, 545, 546, 547, 548, 549})); -- Gorgrond
    tmpCategories[449]:AddCategory(tmpCategories[452]);
    tmpCategories[452]:AddAchievement(achievements[9423]) -- Goliaths of Gorgrond
    tmpCategories[465] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {543, 544, 545, 546, 547, 548, 549}, nil, true)); -- Quests
    tmpCategories[452]:AddCategory(tmpCategories[465]);
    tmpCategories[465]:AddAchievement(achievements[8923]) -- Putting the Gore in Gorgrond
    tmpCategories[465]:AddAchievement(achievements[8924]) -- Putting the Gore in Gorgrond
    tmpCategories[465]:AddAchievement(achievements[9607]) -- Make It a Bonus
    tmpCategories[465]:AddAchievement(achievements[9655]) -- Fight the Power
    tmpCategories[465]:AddAchievement(achievements[9656]) -- In Plain Sight
    tmpCategories[465]:AddAchievement(achievements[9659]) -- Iron Wings
    tmpCategories[465]:AddAchievement(achievements[9678]) -- Ancient No More
    tmpCategories[465]:AddAchievement(achievements[9667]) -- Burn It to the Ground
    tmpCategories[465]:AddAchievement(achievements[9654]) -- Mean and Green
    tmpCategories[465]:AddAchievement(achievements[9658]) -- Pillars of Draenor
    tmpCategories[465]:AddAchievement(achievements[9663]) -- Picky Palate
    tmpCategories[466] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {543, 544, 545, 546, 547, 548, 549}, nil, true)); -- Exploration
    tmpCategories[452]:AddCategory(tmpCategories[466]);
    tmpCategories[466]:AddAchievement(achievements[8939]) -- Explore Gorgrond
    tmpCategories[466]:AddAchievement(achievements[9400]) -- Gorgrond Monster Hunter
    tmpCategories[466]:AddAchievement(achievements[9401]) -- Shredder Maniac
    tmpCategories[466]:AddAchievement(achievements[9402]) -- Prove Your Strength
    tmpCategories[468] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {543, 544, 545, 546, 547, 548, 549}, nil, true)); -- Reputation
    tmpCategories[452]:AddCategory(tmpCategories[468]);
    tmpCategories[468]:AddAchievement(achievements[9475]) -- Laughing Skull Orcs
    tmpCategories[453] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(535).name, {535, 536, 537, 538})); -- Talador
    tmpCategories[449]:AddCategory(tmpCategories[453]);
    tmpCategories[469] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {535, 536, 537, 538}, nil, true)); -- Quests
    tmpCategories[453]:AddCategory(tmpCategories[469]);
    tmpCategories[469]:AddAchievement(achievements[8920]) -- Don't Let the Tala-door Hit You on the Way Out
    tmpCategories[469]:AddAchievement(achievements[8919]) -- Don't Let the Tala-door Hit You on the Way Out
    tmpCategories[469]:AddAchievement(achievements[9674]) -- I Want More Talador
    tmpCategories[469]:AddAchievement(achievements[9633]) -- Cut off the Head
    tmpCategories[469]:AddAchievement(achievements[9638]) -- Heralds of the Legion
    tmpCategories[469]:AddAchievement(achievements[9635]) -- Bobbing for Orcs
    tmpCategories[469]:AddAchievement(achievements[9634]) -- Charged Up
    tmpCategories[469]:AddAchievement(achievements[9636]) -- United We Stand
    tmpCategories[469]:AddAchievement(achievements[9632]) -- The Power Is Yours
    tmpCategories[469]:AddAchievement(achievements[9637]) -- Poor Communication
    tmpCategories[469]:AddAchievement(achievements[9486]) -- Goodness Gracious
    tmpCategories[470] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {535, 536, 537, 538}, nil, true)); -- Exploration
    tmpCategories[453]:AddCategory(tmpCategories[470]);
    tmpCategories[470]:AddAchievement(achievements[8940]) -- Explore Talador
    tmpCategories[472] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {535, 536, 537, 538}, nil, true)); -- Reputation
    tmpCategories[453]:AddCategory(tmpCategories[472]);
    tmpCategories[472]:AddAchievement(achievements[9476]) -- Sha'tari Defense
    tmpCategories[454] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(542).name, {542})); -- Spires of Arak
    tmpCategories[449]:AddCategory(tmpCategories[454]);
    tmpCategories[454]:AddAchievement(achievements[9425]) -- So Grossly Incandescent
    tmpCategories[473] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {542}, nil, true)); -- Quests
    tmpCategories[454]:AddCategory(tmpCategories[473]);
    tmpCategories[473]:AddAchievement(achievements[8925]) -- Between Arak and a Hard Place
    tmpCategories[473]:AddAchievement(achievements[8926]) -- Between Arak and a Hard Place
    tmpCategories[473]:AddAchievement(achievements[9605]) -- Arak Star
    tmpCategories[473]:AddAchievement(achievements[9612]) -- Eggs in One Basket
    tmpCategories[473]:AddAchievement(achievements[9613]) -- "Fish Gotta Swim, Birds Gotta Eat"
    tmpCategories[473]:AddAchievement(achievements[9601]) -- King of the Monsters
    tmpCategories[473]:AddAchievement(achievements[9600]) -- Monster Mash
    tmpCategories[474] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {542}, nil, true)); -- Exploration
    tmpCategories[454]:AddCategory(tmpCategories[474]);
    tmpCategories[474]:AddAchievement(achievements[8941]) -- Explore Spires of Arak
    tmpCategories[476] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {542}, nil, true)); -- Reputation
    tmpCategories[454]:AddCategory(tmpCategories[476]);
    tmpCategories[476]:AddAchievement(achievements[9469]) -- Arakkoa Outcasts
    tmpCategories[476]:AddAchievement(achievements[9072]) -- Mantle of the Talon King
    tmpCategories[455] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(550).name, {550, 551, 552, 553})); -- Nagrand
    tmpCategories[449]:AddCategory(tmpCategories[455]);
    tmpCategories[477] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {550, 551, 552, 553}, nil, true)); -- Quests
    tmpCategories[455]:AddCategory(tmpCategories[477]);
    tmpCategories[477]:AddAchievement(achievements[8927]) -- Nagrandeur
    tmpCategories[477]:AddAchievement(achievements[8928]) -- Nagrandeur
    tmpCategories[477]:AddAchievement(achievements[9615]) -- With a Nagrand Cherry On Top
    tmpCategories[477]:AddAchievement(achievements[9610]) -- History of Violence
    tmpCategories[477]:AddAchievement(achievements[9571]) -- Broke Back Precipice
    tmpCategories[477]:AddAchievement(achievements[9548]) -- Buried Treasures
    tmpCategories[477]:AddAchievement(achievements[9541]) -- The Song of Silence
    tmpCategories[477]:AddAchievement(achievements[9617]) -- Making the Cut
    tmpCategories[478] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {550, 551, 552, 553}, nil, true)); -- Exploration
    tmpCategories[455]:AddCategory(tmpCategories[478]);
    tmpCategories[478]:AddAchievement(achievements[8942]) -- Explore Nagrand
    tmpCategories[480] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {550, 551, 552, 553}, nil, true)); -- Reputation
    tmpCategories[455]:AddCategory(tmpCategories[480]);
    tmpCategories[480]:AddAchievement(achievements[9472]) -- Steamwheedle Preservation Society
    tmpCategories[456] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(534).name, {534})); -- Tanaan Jungle
    tmpCategories[449]:AddCategory(tmpCategories[456]);
    tmpCategories[456]:AddAchievement(achievements[10071]) -- The Legion Will NOT Conquer All
    tmpCategories[481] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {534}, nil, true)); -- Quests
    tmpCategories[456]:AddCategory(tmpCategories[481]);
    tmpCategories[481]:AddAchievement(achievements[10067]) -- In Pursuit of Gul'dan
    tmpCategories[481]:AddAchievement(achievements[10074]) -- In Pursuit of Gul'dan
    tmpCategories[481]:AddAchievement(achievements[10068]) -- Draenor's Last Stand
    tmpCategories[481]:AddAchievement(achievements[10075]) -- Draenor's Last Stand
    tmpCategories[481]:AddAchievement(achievements[10072]) -- Rumble in the Jungle
    tmpCategories[481]:AddAchievement(achievements[10265]) -- Rumble in the Jungle
    tmpCategories[482] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {534}, nil, true)); -- Exploration
    tmpCategories[456]:AddCategory(tmpCategories[482]);
    tmpCategories[482]:AddAchievement(achievements[10261]) -- Jungle Treasure Hunter
    tmpCategories[482]:AddAchievement(achievements[10262]) -- Jungle Treasure Master
    tmpCategories[482]:AddAchievement(achievements[10260]) -- Explore Tanaan Jungle
    tmpCategories[482]:AddAchievement(achievements[10069]) -- "I Came, I Clawed, I Conquered"
    tmpCategories[482]:AddAchievement(achievements[10061]) -- Hellbane
    tmpCategories[482]:AddAchievement(achievements[10259]) -- Jungle Hunter
    tmpCategories[482]:AddAchievement(achievements[10070]) -- Jungle Stalker
    tmpCategories[482]:AddAchievement(achievements[10334]) -- Predator
    tmpCategories[484] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {534}, nil, true)); -- Reputation
    tmpCategories[456]:AddCategory(tmpCategories[484]);
    tmpCategories[484]:AddAchievement(achievements[10349]) -- Tanaan Diplomat
    tmpCategories[484]:AddAchievement(achievements[10350]) -- Tanaan Diplomat
    tmpCategories[224] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15272)))); -- Dungeons
    tmpCategories[223]:AddCategory(tmpCategories[224]);
    tmpCategories[224]:AddAchievement(achievements[9391]) -- Draenor Dungeon Hero
    tmpCategories[224]:AddAchievement(achievements[9619]) -- Savage Hero
    tmpCategories[224]:AddAchievement(achievements[9396]) -- Glory of the Draenor Hero
    tmpCategories[224]:AddAchievement(achievements[9838]) -- "What A Strange, Interdimensional Trip It's Been"
    tmpCategories[224]:AddAchievement(achievements[8895]) -- Challenge Warlord
    tmpCategories[224]:AddAchievement(achievements[8897]) -- Challenge Warlord: Bronze
    tmpCategories[224]:AddAchievement(achievements[8898]) -- Challenge Warlord: Silver
    tmpCategories[224]:AddAchievement(achievements[8899]) -- Challenge Warlord: Gold
    tmpCategories[226] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(385)), {573})); -- Bloodmaul Slag Mines
    tmpCategories[224]:AddCategory(tmpCategories[226]);
    tmpCategories[226]:AddAchievement(achievements[9005]) -- Come With Me If You Want to Live
    tmpCategories[226]:AddAchievement(achievements[8993]) -- A Gift of Earth and Fire
    tmpCategories[226]:AddAchievement(achievements[9008]) -- Is Draenor on Fire?
    tmpCategories[226]:AddAchievement(achievements[9037]) -- Bloodmaul Slag Mines
    tmpCategories[226]:AddAchievement(achievements[9046]) -- Heroic: Bloodmaul Slag Mines
    tmpCategories[226]:AddAchievement(achievements[10076]) -- Mythic: Bloodmaul Slag Mines
    tmpCategories[226]:AddAchievement(achievements[8875]) -- Bloodmaul Slag Mines Challenger
    tmpCategories[226]:AddAchievement(achievements[8876]) -- Bloodmaul Slag Mines: Bronze
    tmpCategories[226]:AddAchievement(achievements[8877]) -- Bloodmaul Slag Mines: Silver
    tmpCategories[226]:AddAchievement(achievements[8878]) -- Bloodmaul Slag Mines: Gold
    tmpCategories[226]:AddAchievement(achievements[9620]) -- Challenge Master: Bloodmaul Slag Mines
    tmpCategories[227] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(558)), {595})); -- Iron Docks
    tmpCategories[224]:AddCategory(tmpCategories[227]);
    tmpCategories[227]:AddAchievement(achievements[9081]) -- Expert Timing
    tmpCategories[227]:AddAchievement(achievements[9083]) -- "Militaristic, Expansionist"
    tmpCategories[227]:AddAchievement(achievements[9082]) -- Take Cover!
    tmpCategories[227]:AddAchievement(achievements[9038]) -- Iron Docks
    tmpCategories[227]:AddAchievement(achievements[9047]) -- Heroic: Iron Docks
    tmpCategories[227]:AddAchievement(achievements[10079]) -- Mythic: Iron Docks
    tmpCategories[227]:AddAchievement(achievements[8997]) -- Iron Docks Challenger
    tmpCategories[227]:AddAchievement(achievements[8998]) -- Iron Docks: Bronze
    tmpCategories[227]:AddAchievement(achievements[8999]) -- Iron Docks: Silver
    tmpCategories[227]:AddAchievement(achievements[9000]) -- Iron Docks: Gold
    tmpCategories[227]:AddAchievement(achievements[9621]) -- Challenge Master: Iron Docks
    tmpCategories[228] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(547)), {593})); -- Auchindoun
    tmpCategories[224]:AddCategory(tmpCategories[228]);
    tmpCategories[228]:AddAchievement(achievements[9023]) -- ...They All Fall Down
    tmpCategories[228]:AddAchievement(achievements[9551]) -- Demon's Souls
    tmpCategories[228]:AddAchievement(achievements[9552]) -- No Tag-backs!
    tmpCategories[228]:AddAchievement(achievements[9039]) -- Auchindoun
    tmpCategories[228]:AddAchievement(achievements[9049]) -- Heroic: Auchindoun
    tmpCategories[228]:AddAchievement(achievements[10080]) -- Mythic: Auchindoun
    tmpCategories[228]:AddAchievement(achievements[8879]) -- Auchindoun Challenger
    tmpCategories[228]:AddAchievement(achievements[8880]) -- Auchindoun: Bronze
    tmpCategories[228]:AddAchievement(achievements[8881]) -- Auchindoun: Silver
    tmpCategories[228]:AddAchievement(achievements[8882]) -- Auchindoun: Gold
    tmpCategories[228]:AddAchievement(achievements[9622]) -- Challenge Master: Auchindoun
    tmpCategories[229] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(476)), {601, 602})); -- Skyreach
    tmpCategories[224]:AddCategory(tmpCategories[229]);
    tmpCategories[229]:AddAchievement(achievements[9033]) -- Ready for Raiding IV
    tmpCategories[229]:AddAchievement(achievements[9035]) -- I Saw Solis
    tmpCategories[229]:AddAchievement(achievements[9034]) -- Magnify... Enhance
    tmpCategories[229]:AddAchievement(achievements[9036]) -- Monomania
    tmpCategories[229]:AddAchievement(achievements[8843]) -- Skyreach
    tmpCategories[229]:AddAchievement(achievements[8844]) -- Heroic: Skyreach
    tmpCategories[229]:AddAchievement(achievements[10081]) -- Mythic: Skyreach
    tmpCategories[229]:AddAchievement(achievements[8871]) -- Skyreach Challenger
    tmpCategories[229]:AddAchievement(achievements[8872]) -- Skyreach: Bronze
    tmpCategories[229]:AddAchievement(achievements[8873]) -- Skyreach: Silver
    tmpCategories[229]:AddAchievement(achievements[8874]) -- Skyreach: Gold
    tmpCategories[229]:AddAchievement(achievements[9623]) -- Challenge Master: Skyreach
    tmpCategories[230] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(536)), {606, 607, 608, 609})); -- Grimrail Depot
    tmpCategories[224]:AddCategory(tmpCategories[230]);
    tmpCategories[230]:AddAchievement(achievements[9024]) -- This Is Why We Can't Have Nice Things
    tmpCategories[230]:AddAchievement(achievements[9007]) -- No Ticket
    tmpCategories[230]:AddAchievement(achievements[9043]) -- Grimrail Depot
    tmpCategories[230]:AddAchievement(achievements[9052]) -- Heroic: Grimrail Depot
    tmpCategories[230]:AddAchievement(achievements[10082]) -- Mythic: Grimrail Depot
    tmpCategories[230]:AddAchievement(achievements[8887]) -- Grimrail Depot Challenger
    tmpCategories[230]:AddAchievement(achievements[8888]) -- Grimrail Depot: Bronze
    tmpCategories[230]:AddAchievement(achievements[8889]) -- Grimrail Depot: Silver
    tmpCategories[230]:AddAchievement(achievements[8890]) -- Grimrail Depot: Gold
    tmpCategories[230]:AddAchievement(achievements[9625]) -- Challenge Master: Grimrail Depot
    tmpCategories[231] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(556)), {620, 621})); -- The Everbloom
    tmpCategories[224]:AddCategory(tmpCategories[231]);
    tmpCategories[231]:AddAchievement(achievements[9017]) -- Water Management
    tmpCategories[231]:AddAchievement(achievements[9493]) -- "They Burn, Burn, Burn"
    tmpCategories[231]:AddAchievement(achievements[9223]) -- Weed Whacker
    tmpCategories[231]:AddAchievement(achievements[9044]) -- The Everbloom
    tmpCategories[231]:AddAchievement(achievements[9053]) -- Heroic: The Everbloom
    tmpCategories[231]:AddAchievement(achievements[10083]) -- Mythic: The Everbloom
    tmpCategories[231]:AddAchievement(achievements[9001]) -- The Everbloom Challenger
    tmpCategories[231]:AddAchievement(achievements[9002]) -- The Everbloom: Bronze
    tmpCategories[231]:AddAchievement(achievements[9003]) -- The Everbloom: Silver
    tmpCategories[231]:AddAchievement(achievements[9004]) -- The Everbloom: Gold
    tmpCategories[231]:AddAchievement(achievements[9624]) -- Challenge Master: The Everbloom
    tmpCategories[232] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(537)), {574, 575, 576})); -- Shadowmoon Burial Grounds
    tmpCategories[224]:AddCategory(tmpCategories[232]);
    tmpCategories[232]:AddAchievement(achievements[9018]) -- What's Your Sign?
    tmpCategories[232]:AddAchievement(achievements[9025]) -- Icky Ichors
    tmpCategories[232]:AddAchievement(achievements[9026]) -- Souls of the Lost
    tmpCategories[232]:AddAchievement(achievements[9041]) -- Shadowmoon Burial Grounds
    tmpCategories[232]:AddAchievement(achievements[9054]) -- Heroic: Shadowmoon Burial Grounds
    tmpCategories[232]:AddAchievement(achievements[10084]) -- Mythic: Shadowmoon Burial Grounds
    tmpCategories[232]:AddAchievement(achievements[8883]) -- Shadowmoon Burial Grounds Challenger
    tmpCategories[232]:AddAchievement(achievements[8884]) -- Shadowmoon Burial Grounds: Bronze
    tmpCategories[232]:AddAchievement(achievements[8885]) -- Shadowmoon Burial Grounds: Silver
    tmpCategories[232]:AddAchievement(achievements[8886]) -- Shadowmoon Burial Grounds: Gold
    tmpCategories[232]:AddAchievement(achievements[9626]) -- Challenge Master: Shadowmoon Burial Grounds
    tmpCategories[233] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(559)), {616, 617, 618})); -- Upper Blackrock Spire
    tmpCategories[224]:AddCategory(tmpCategories[233]);
    tmpCategories[233]:AddAchievement(achievements[9045]) -- "Magnets, How Do They Work?"
    tmpCategories[233]:AddAchievement(achievements[9058]) -- Leeeeeeeeeeeeeroy...?
    tmpCategories[233]:AddAchievement(achievements[9056]) -- Bridge Over Troubled Fire
    tmpCategories[233]:AddAchievement(achievements[9057]) -- Dragonmaw? More Like Dragonfall!
    tmpCategories[233]:AddAchievement(achievements[9042]) -- Upper Blackrock Spire
    tmpCategories[233]:AddAchievement(achievements[9055]) -- Heroic: Upper Blackrock Spire
    tmpCategories[233]:AddAchievement(achievements[10085]) -- Mythic: Upper Blackrock Spire
    tmpCategories[233]:AddAchievement(achievements[8891]) -- Upper Blackrock Spire Challenger
    tmpCategories[233]:AddAchievement(achievements[8892]) -- Upper Blackrock Spire: Bronze
    tmpCategories[233]:AddAchievement(achievements[8893]) -- Upper Blackrock Spire: Silver
    tmpCategories[233]:AddAchievement(achievements[8894]) -- Upper Blackrock Spire: Gold
    tmpCategories[233]:AddAchievement(achievements[9627]) -- Challenge Master: Upper Blackrock Spire
    tmpCategories[225] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15271)))); -- Raids
    tmpCategories[223]:AddCategory(tmpCategories[225]);
    tmpCategories[225]:AddAchievement(achievements[9619]) -- Savage Hero
    tmpCategories[225]:AddAchievement(achievements[8985]) -- Glory of the Draenor Raider
    tmpCategories[225]:AddAchievement(achievements[10149]) -- Glory of the Hellfire Raider
    tmpCategories[225]:AddAchievement(achievements[9838]) -- "What A Strange, Interdimensional Trip It's Been"
    tmpCategories[234] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(477)), {610, 611, 612, 613, 614, 615})); -- Highmaul
    tmpCategories[225]:AddCategory(tmpCategories[234]);
    tmpCategories[234]:AddAchievement(achievements[8948]) -- Flame On!
    tmpCategories[234]:AddAchievement(achievements[8947]) -- "Hurry Up, Maggot!"
    tmpCategories[234]:AddAchievement(achievements[8974]) -- More Like Wrecked-us
    tmpCategories[234]:AddAchievement(achievements[8975]) -- A Fungus Among Us
    tmpCategories[234]:AddAchievement(achievements[8958]) -- Brothers in Arms
    tmpCategories[234]:AddAchievement(achievements[8976]) -- Pair Annihilation
    tmpCategories[234]:AddAchievement(achievements[8977]) -- Lineage of Power
    tmpCategories[234]:AddAchievement(achievements[8949]) -- Mythic: Kargath Bladefist
    tmpCategories[234]:AddAchievement(achievements[8960]) -- Mythic: The Butcher
    tmpCategories[234]:AddAchievement(achievements[8961]) -- Mythic: Tectus
    tmpCategories[234]:AddAchievement(achievements[8962]) -- Mythic: Brackenspore
    tmpCategories[234]:AddAchievement(achievements[8963]) -- Mythic: Twin Ogron
    tmpCategories[234]:AddAchievement(achievements[8964]) -- Mythic: Ko'ragh
    tmpCategories[234]:AddAchievement(achievements[8965]) -- Mythic: Imperator's Fall
    tmpCategories[234]:AddAchievement(achievements[8986]) -- The Walled City
    tmpCategories[234]:AddAchievement(achievements[8987]) -- Arcane Sanctum
    tmpCategories[234]:AddAchievement(achievements[8988]) -- Imperator's Fall
    tmpCategories[234]:AddAchievement(achievements[9441]) -- Ahead of the Curve: Imperator's Fall
    tmpCategories[234]:AddAchievement(achievements[9442]) -- Cutting Edge: Imperator's Fall
    tmpCategories[235] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(457)), {596, 597, 598, 599, 600})); -- Blackrock Foundry
    tmpCategories[225]:AddCategory(tmpCategories[235]);
    tmpCategories[235]:AddAchievement(achievements[8979]) -- "He Shoots, He Ores"
    tmpCategories[235]:AddAchievement(achievements[8978]) -- The Iron Price
    tmpCategories[235]:AddAchievement(achievements[8930]) -- "Ya, We've Got Time..."
    tmpCategories[235]:AddAchievement(achievements[8980]) -- Stamp Stamp Revolution
    tmpCategories[235]:AddAchievement(achievements[8929]) -- The Steel Has Been Brought
    tmpCategories[235]:AddAchievement(achievements[8983]) -- Would You Give Me a Hand?
    tmpCategories[235]:AddAchievement(achievements[8981]) -- Fain Would Lie Down
    tmpCategories[235]:AddAchievement(achievements[8982]) -- There's Always a Bigger Train
    tmpCategories[235]:AddAchievement(achievements[8984]) -- Be Quick or Be Dead
    tmpCategories[235]:AddAchievement(achievements[8952]) -- "Ashes, Ashes..."
    tmpCategories[235]:AddAchievement(achievements[8967]) -- Mythic: Oregorger
    tmpCategories[235]:AddAchievement(achievements[8966]) -- Mythic: Gruul
    tmpCategories[235]:AddAchievement(achievements[8970]) -- Mythic: Blast Furnace
    tmpCategories[235]:AddAchievement(achievements[8968]) -- Mythic: Hans'gar and Franzok
    tmpCategories[235]:AddAchievement(achievements[8932]) -- Mythic: Flamebender Ka'graz
    tmpCategories[235]:AddAchievement(achievements[8971]) -- Mythic: Kromog
    tmpCategories[235]:AddAchievement(achievements[8956]) -- Mythic: Beastlord Darmac
    tmpCategories[235]:AddAchievement(achievements[8969]) -- Mythic: Operator Thogar
    tmpCategories[235]:AddAchievement(achievements[8972]) -- Mythic: Iron Maidens
    tmpCategories[235]:AddAchievement(achievements[8973]) -- Mythic: Blackhand's Crucible
    tmpCategories[235]:AddAchievement(achievements[8989]) -- Slagworks
    tmpCategories[235]:AddAchievement(achievements[8990]) -- Black Forge
    tmpCategories[235]:AddAchievement(achievements[8991]) -- Iron Assembly
    tmpCategories[235]:AddAchievement(achievements[8992]) -- Blackhand's Crucible
    tmpCategories[235]:AddAchievement(achievements[9444]) -- Ahead of the Curve: Blackhand's Crucible
    tmpCategories[235]:AddAchievement(achievements[9443]) -- Cutting Edge: Blackhand's Crucible
    tmpCategories[235]:AddAchievement(achievements[11740]) -- Make it W-orc W-orc
    tmpCategories[236] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(669)), {661, 662, 663, 664, 665, 666, 667, 668, 669, 670})); -- Hellfire Citadel
    tmpCategories[225]:AddCategory(tmpCategories[236]);
    tmpCategories[236]:AddAchievement(achievements[10026]) -- Nearly Indestructible
    tmpCategories[236]:AddAchievement(achievements[10057]) -- Turning the Tide
    tmpCategories[236]:AddAchievement(achievements[10013]) -- Waves Came Crashing Down All Around
    tmpCategories[236]:AddAchievement(achievements[10054]) -- Don't Fear the Reaper
    tmpCategories[236]:AddAchievement(achievements[9972]) -- A Race Against Slime
    tmpCategories[236]:AddAchievement(achievements[9979]) -- Get In My Belly!
    tmpCategories[236]:AddAchievement(achievements[9988]) -- Pro Toss
    tmpCategories[236]:AddAchievement(achievements[10086]) -- I'm a Soul Man
    tmpCategories[236]:AddAchievement(achievements[9989]) -- Non-Lethal Enforcer
    tmpCategories[236]:AddAchievement(achievements[10012]) -- This Land Was Green and Good Until...
    tmpCategories[236]:AddAchievement(achievements[10087]) -- You Gotta Keep 'em Separated
    tmpCategories[236]:AddAchievement(achievements[10030]) -- Bad Manner(oth)
    tmpCategories[236]:AddAchievement(achievements[10073]) -- Echoes of Doomfire
    tmpCategories[236]:AddAchievement(achievements[10027]) -- Mythic: Hellfire Assault
    tmpCategories[236]:AddAchievement(achievements[10032]) -- Mythic: Iron Reaver
    tmpCategories[236]:AddAchievement(achievements[10033]) -- Mythic: Kormrok
    tmpCategories[236]:AddAchievement(achievements[10034]) -- Mythic: Hellfire High Council
    tmpCategories[236]:AddAchievement(achievements[10035]) -- Mythic: Kilrogg Deadeye
    tmpCategories[236]:AddAchievement(achievements[10253]) -- Mythic: Gorefiend
    tmpCategories[236]:AddAchievement(achievements[10037]) -- Mythic: Shadow-Lord Iskar
    tmpCategories[236]:AddAchievement(achievements[10040]) -- Mythic: Socrethar the Eternal
    tmpCategories[236]:AddAchievement(achievements[10041]) -- Mythic: Tyrant Velhari
    tmpCategories[236]:AddAchievement(achievements[10038]) -- Mythic: Fel Lord Zakuun
    tmpCategories[236]:AddAchievement(achievements[10039]) -- Mythic: Xhul'horac
    tmpCategories[236]:AddAchievement(achievements[10042]) -- Mythic: Mannoroth
    tmpCategories[236]:AddAchievement(achievements[10043]) -- Mythic: Archimonde
    tmpCategories[236]:AddAchievement(achievements[10023]) -- Hellbreach
    tmpCategories[236]:AddAchievement(achievements[10024]) -- Halls of Blood
    tmpCategories[236]:AddAchievement(achievements[10025]) -- Bastion of Shadows
    tmpCategories[236]:AddAchievement(achievements[10020]) -- Destructor's Rise
    tmpCategories[236]:AddAchievement(achievements[10019]) -- The Black Gate
    tmpCategories[236]:AddAchievement(achievements[9680]) -- Time is a Flat Circle
    tmpCategories[236]:AddAchievement(achievements[10044]) -- Ahead of the Curve: The Black Gate
    tmpCategories[236]:AddAchievement(achievements[10045]) -- Cutting Edge: The Black Gate
    tmpCategories[236]:AddAchievement(achievements[11631]) -- Extreme Makeover: Fel Edition
    tmpCategories[548] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15117)))); -- Pet Battles
    tmpCategories[223]:AddCategory(tmpCategories[548]);
    tmpCategories[548]:AddAchievement(achievements[9685]) -- Draenor Safari
    tmpCategories[548]:AddAchievement(achievements[9069]) -- An Awfully Big Adventure
    tmpCategories[548]:AddAchievement(achievements[9463]) -- Draenic Pet Battler
    tmpCategories[548]:AddAchievement(achievements[9724]) -- Taming Draenor
    tmpCategories[548]:AddAchievement(achievements[10052]) -- Tiny Terrors in Tanaan
    tmpCategories[791] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15282)) .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Brawler's Guild (Legacy)
    tmpCategories[223]:AddCategory(tmpCategories[791]);
    tmpCategories[791]:AddAchievement(achievements[9168]) -- You Are Not Your $#*@! Legplates (Season 2)
    tmpCategories[791]:AddAchievement(achievements[9169]) -- The Second Rule of Brawler's Guild (Season 2)
    tmpCategories[791]:AddAchievement(achievements[9170]) -- Brawlin' and Shot Callin' (Season 2)
    tmpCategories[791]:AddAchievement(achievements[9171]) -- Now You're Just Showing Off (Season 2)
    tmpCategories[791]:AddAchievement(achievements[8339]) -- Collect Your Deck (Season 2)
    tmpCategories[791]:AddAchievement(achievements[9176]) -- Deck Your Collection (Season 2)
    tmpCategories[791]:AddAchievement(achievements[9172]) -- You Are Not Your $#*@! Legplates (Season 2)
    tmpCategories[791]:AddAchievement(achievements[9173]) -- The Second Rule of Brawler's Guild (Season 2)
    tmpCategories[791]:AddAchievement(achievements[9174]) -- Brawlin' and Shot Callin' (Season 2)
    tmpCategories[791]:AddAchievement(achievements[9175]) -- Now You're Just Showing Off (Season 2)
    tmpCategories[791]:AddAchievement(achievements[8342]) -- Collect Your Deck (Season 2)
    tmpCategories[791]:AddAchievement(achievements[9177]) -- Deck Your Collection (Season 2)
    tmpCategories[791]:AddAchievement(achievements[7949]) -- Rabble Rabble Rabble (Season 2)
    tmpCategories[791]:AddAchievement(achievements[7950]) -- Rabble Rabble Rabble (Season 2)
    tmpCategories[791]:AddAchievement(achievements[7943]) -- I'm Your Number One Fan (Season 2)
    tmpCategories[791]:AddAchievement(achievements[7945]) -- Haters Gonna Hate (Season 2)
    tmpCategories[791]:AddAchievement(achievements[7944]) -- Bottle Service (Season 2)
    tmpCategories[791]:AddAchievement(achievements[7947]) -- The First Rule of Brawler's Guild (Season 1 or 2)
    tmpCategories[791]:AddAchievement(achievements[7948]) -- The First Rule of Brawler's Guild (Season 1 or 2)
    tmpCategories[432] = InsertAndReturn(categories, achievementCategory:New(addon.L["Garrison"], {579, 580, 581, 582, 585, 586, 587, 590})); -- Garrison
    tmpCategories[223]:AddCategory(tmpCategories[432]);
    tmpCategories[432]:AddAchievement(achievements[9100]) -- More Plots
    tmpCategories[432]:AddAchievement(achievements[9101]) -- Even More Plots
    tmpCategories[432]:AddAchievement(achievements[9545]) -- More Plots
    tmpCategories[432]:AddAchievement(achievements[9546]) -- Even More Plots
    tmpCategories[432]:AddAchievement(achievements[9210]) -- Garrison Buddies
    tmpCategories[432]:AddAchievement(achievements[9132]) -- Garrison Buddies
    tmpCategories[432]:AddAchievement(achievements[8933]) -- Staying Regular
    tmpCategories[432]:AddAchievement(achievements[9901]) -- Don't Call Me Junior
    tmpCategories[432]:AddAchievement(achievements[9928]) -- Don't Call Me Junior
    tmpCategories[432]:AddAchievement(achievements[9828]) -- Ten Hit Tunes
    tmpCategories[432]:AddAchievement(achievements[9912]) -- Azeroth's Top Twenty Tunes
    tmpCategories[432]:AddAchievement(achievements[10015]) -- Full Discography
    tmpCategories[432]:AddAchievement(achievements[9897]) -- Ten Hit Tunes
    tmpCategories[432]:AddAchievement(achievements[9914]) -- Azeroth's Top Twenty Tunes
    tmpCategories[432]:AddAchievement(achievements[10016]) -- Full Discography
    tmpCategories[432]:AddAchievement(achievements[9125]) -- Draftsman
    tmpCategories[432]:AddAchievement(achievements[9126]) -- Master Draftsman
    tmpCategories[432]:AddAchievement(achievements[9128]) -- Grand Master Draftsman
    tmpCategories[432]:AddAchievement(achievements[9095]) -- Builder
    tmpCategories[432]:AddAchievement(achievements[9096]) -- Master Builder
    tmpCategories[432]:AddAchievement(achievements[9097]) -- Keepin' Busy
    tmpCategories[432]:AddAchievement(achievements[9094]) -- Garrison Architect
    tmpCategories[432]:AddAchievement(achievements[9487]) -- Got My Mind On My Draenor Money
    tmpCategories[432]:AddAchievement(achievements[9076]) -- Choppin' Some Logs
    tmpCategories[432]:AddAchievement(achievements[9077]) -- Choppin' Some More Logs
    tmpCategories[432]:AddAchievement(achievements[9080]) -- Choppin' Even More Logs
    tmpCategories[432]:AddAchievement(achievements[9078]) -- Choppin' Even More Logs
    tmpCategories[432]:AddAchievement(achievements[9429]) -- Upgrading the Mill
    tmpCategories[432]:AddAchievement(achievements[9099]) -- Time for an Upgrade
    tmpCategories[432]:AddAchievement(achievements[9098]) -- Movin' On Up
    tmpCategories[432]:AddAchievement(achievements[9405]) -- Working Some Orders
    tmpCategories[432]:AddAchievement(achievements[9406]) -- Working More Orders
    tmpCategories[432]:AddAchievement(achievements[9407]) -- Working Many Orders
    tmpCategories[432]:AddAchievement(achievements[9450]) -- The Trap Game
    tmpCategories[432]:AddAchievement(achievements[9565]) -- Master Trapper
    tmpCategories[432]:AddAchievement(achievements[9451]) -- Trapper's Delight
    tmpCategories[432]:AddAchievement(achievements[9452]) -- Trap Superstar
    tmpCategories[432]:AddAchievement(achievements[9468]) -- Salvaging Pays Off
    tmpCategories[432]:AddAchievement(achievements[9495]) -- The Bone Collector
    tmpCategories[432]:AddAchievement(achievements[9497]) -- Finding Your Waystones
    tmpCategories[432]:AddAchievement(achievements[9498]) -- Wingman
    tmpCategories[432]:AddAchievement(achievements[9499]) -- Wingmen
    tmpCategories[432]:AddAchievement(achievements[9538]) -- Intro to Husbandry
    tmpCategories[432]:AddAchievement(achievements[9526]) -- Master of Mounts
    tmpCategories[432]:AddAchievement(achievements[9539]) -- Advanced Husbandry
    tmpCategories[432]:AddAchievement(achievements[9705]) -- Advanced Husbandry
    tmpCategories[432]:AddAchievement(achievements[9540]) -- The Stable Master
    tmpCategories[432]:AddAchievement(achievements[9706]) -- The Stable Master
    tmpCategories[432]:AddAchievement(achievements[9527]) -- Terrific Technology
    tmpCategories[432]:AddAchievement(achievements[9703]) -- Stay Awhile and Listen
    tmpCategories[432]:AddAchievement(achievements[9516]) -- Nemesis: Slayer of Sin'dorei
    tmpCategories[432]:AddAchievement(achievements[9517]) -- Nemesis: Death Stalker
    tmpCategories[432]:AddAchievement(achievements[9518]) -- Nemesis: Killer of Kezan
    tmpCategories[432]:AddAchievement(achievements[9519]) -- Nemesis: Orcslayer
    tmpCategories[432]:AddAchievement(achievements[9520]) -- Nemesis: Huojin's Fall
    tmpCategories[432]:AddAchievement(achievements[9521]) -- Nemesis: The Butcher
    tmpCategories[432]:AddAchievement(achievements[9522]) -- Nemesis: Troll Hunter
    tmpCategories[432]:AddAchievement(achievements[9509]) -- Nemesis: Draenei Destroyer
    tmpCategories[432]:AddAchievement(achievements[9510]) -- Nemesis: Dwarfstalker
    tmpCategories[432]:AddAchievement(achievements[9511]) -- Nemesis: Gnomebane
    tmpCategories[432]:AddAchievement(achievements[9512]) -- Nemesis: Manslayer
    tmpCategories[432]:AddAchievement(achievements[9513]) -- Nemesis: Scourge of the Kaldorei
    tmpCategories[432]:AddAchievement(achievements[9514]) -- Nemesis: Terror of the Tushui
    tmpCategories[432]:AddAchievement(achievements[9515]) -- Nemesis: Worgen Hunter
    tmpCategories[432]:AddAchievement(achievements[9639]) -- "Fight, Kill, Salute!"
    tmpCategories[432]:AddAchievement(achievements[9508]) -- Warlord of Draenor
    tmpCategories[432]:AddAchievement(achievements[9738]) -- Warlord of Draenor
    tmpCategories[432]:AddAchievement(achievements[9107]) -- Follow the Leader
    tmpCategories[432]:AddAchievement(achievements[9108]) -- "Where You Go, They Will Follow"
    tmpCategories[432]:AddAchievement(achievements[9109]) -- Fearless Leader
    tmpCategories[432]:AddAchievement(achievements[9494]) -- Commander
    tmpCategories[432]:AddAchievement(achievements[9110]) -- Following Up
    tmpCategories[432]:AddAchievement(achievements[9111]) -- Raising the Bar
    tmpCategories[432]:AddAchievement(achievements[9129]) -- Filling the Ranks
    tmpCategories[432]:AddAchievement(achievements[9130]) -- A Rare Friend
    tmpCategories[432]:AddAchievement(achievements[9131]) -- An Epic Buddy
    tmpCategories[432]:AddAchievement(achievements[9211]) -- My Item Level Is Higher than Yours
    tmpCategories[432]:AddAchievement(achievements[9212]) -- My Item Level Is Way Higher than Yours
    tmpCategories[432]:AddAchievement(achievements[9213]) -- Item Level Army
    tmpCategories[432]:AddAchievement(achievements[9243]) -- Item Level Force
    tmpCategories[432]:AddAchievement(achievements[9152]) -- It's an Invasion!
    tmpCategories[432]:AddAchievement(achievements[9167]) -- Invasion Specialist
    tmpCategories[432]:AddAchievement(achievements[9543]) -- Invasion? What Invasion?
    tmpCategories[432]:AddAchievement(achievements[9244]) -- Invasions Are Better with Friends
    tmpCategories[432]:AddAchievement(achievements[9205]) -- Iron Horde Invasion
    tmpCategories[432]:AddAchievement(achievements[9206]) -- Shadowmoon Clan Invasion
    tmpCategories[432]:AddAchievement(achievements[9203]) -- Shadow Council Invasion
    tmpCategories[432]:AddAchievement(achievements[9204]) -- Ogre Invasion
    tmpCategories[432]:AddAchievement(achievements[9207]) -- Goren Invasion
    tmpCategories[432]:AddAchievement(achievements[9208]) -- Botani Invasion
    tmpCategories[432]:AddAchievement(achievements[9162]) -- Bronze Defender
    tmpCategories[432]:AddAchievement(achievements[9164]) -- Silver Defender
    tmpCategories[432]:AddAchievement(achievements[9165]) -- Golden Defender
    tmpCategories[432]:AddAchievement(achievements[9826]) -- Platinum Defender
    tmpCategories[432]:AddAchievement(achievements[9209]) -- Master Defender
    tmpCategories[432]:AddAchievement(achievements[9827]) -- Impervious Defender
    tmpCategories[432]:AddAchievement(achievements[9181]) -- Save Those Buildings!
    tmpCategories[432]:AddAchievement(achievements[9858]) -- Master and Commander
    tmpCategories[432]:AddAchievement(achievements[9133]) -- On a Mission
    tmpCategories[432]:AddAchievement(achievements[9134]) -- On a Few Missions
    tmpCategories[432]:AddAchievement(achievements[9138]) -- On a Lot of Missions
    tmpCategories[432]:AddAchievement(achievements[9139]) -- On a Massive Number of Missions
    tmpCategories[432]:AddAchievement(achievements[9140]) -- On a Metric Ton of Missions
    tmpCategories[432]:AddAchievement(achievements[9141]) -- A Rare Mission
    tmpCategories[432]:AddAchievement(achievements[9142]) -- Keeping It Rare
    tmpCategories[432]:AddAchievement(achievements[9143]) -- The Rarer the Better
    tmpCategories[432]:AddAchievement(achievements[9145]) -- Treasure Mission Specialist
    tmpCategories[432]:AddAchievement(achievements[9524]) -- Treasure Master
    tmpCategories[432]:AddAchievement(achievements[9146]) -- Patrol Mission Specialist
    tmpCategories[432]:AddAchievement(achievements[9523]) -- Patrolling Draenor
    tmpCategories[432]:AddAchievement(achievements[9147]) -- Mission Specialist
    tmpCategories[432]:AddAchievement(achievements[9150]) -- Exploration Mission Specialist
    tmpCategories[432]:AddAchievement(achievements[9900]) -- Exploration Mission Master
    tmpCategories[432]:AddAchievement(achievements[9246]) -- Master Draenor Crafter
    tmpCategories[432]:AddAchievement(achievements[9248]) -- Defender of Draenor
    tmpCategories[432]:AddAchievement(achievements[9630]) -- Defender of Draenor
    tmpCategories[432]:AddAchievement(achievements[9255]) -- Mythic Draenor Raider
    tmpCategories[432]:AddAchievement(achievements[9631]) -- Mythic Draenor Raider
    tmpCategories[432]:AddAchievement(achievements[9264]) -- Draenor Pet Brawler
    tmpCategories[432]:AddAchievement(achievements[9265]) -- Master of Apexis
    tmpCategories[432]:AddAchievement(achievements[10177]) -- Set Sail!
    tmpCategories[432]:AddAchievement(achievements[10169]) -- Naval Fleet
    tmpCategories[432]:AddAchievement(achievements[10168]) -- Naval Armada
    tmpCategories[432]:AddAchievement(achievements[10170]) -- Seaman
    tmpCategories[432]:AddAchievement(achievements[10172]) -- Petty Officer
    tmpCategories[432]:AddAchievement(achievements[10173]) -- Fleet Commander
    tmpCategories[432]:AddAchievement(achievements[10255]) -- Petty Officer
    tmpCategories[432]:AddAchievement(achievements[10275]) -- Fleet Commander
    tmpCategories[432]:AddAchievement(achievements[10276]) -- Admiral
    tmpCategories[432]:AddAchievement(achievements[10174]) -- Admiral
    tmpCategories[432]:AddAchievement(achievements[10156]) -- Naval Combat Specialist
    tmpCategories[432]:AddAchievement(achievements[10154]) -- Naval Combat Expert
    tmpCategories[432]:AddAchievement(achievements[10159]) -- Naval Treasure Specialist
    tmpCategories[432]:AddAchievement(achievements[10160]) -- Naval Treasure Expert
    tmpCategories[432]:AddAchievement(achievements[10161]) -- Naval Siege Specialist
    tmpCategories[432]:AddAchievement(achievements[10155]) -- Naval Siege Expert
    tmpCategories[432]:AddAchievement(achievements[10162]) -- Naval Training Specialist
    tmpCategories[432]:AddAchievement(achievements[10163]) -- Naval Training Expert
    tmpCategories[432]:AddAchievement(achievements[10017]) -- Naval Bonus Specialist
    tmpCategories[432]:AddAchievement(achievements[10036]) -- Naval Bonus Expert
    tmpCategories[432]:AddAchievement(achievements[10164]) -- Master of the Seas
    tmpCategories[432]:AddAchievement(achievements[10165]) -- Ironsides
    tmpCategories[432]:AddAchievement(achievements[10166]) -- Naval Mechanics
    tmpCategories[432]:AddAchievement(achievements[10256]) -- Charting a Course
    tmpCategories[432]:AddAchievement(achievements[10167]) -- Exploring the High Seas
    tmpCategories[432]:AddAchievement(achievements[10258]) -- Charting a Course
    tmpCategories[432]:AddAchievement(achievements[10307]) -- Exploring the High Seas
    tmpCategories[432]:AddAchievement(achievements[9640]) -- Chapter I: Call of the Archmage
    tmpCategories[432]:AddAchievement(achievements[9641]) -- Chapter II: Gul'dan Strikes Back
    tmpCategories[432]:AddAchievement(achievements[9642]) -- Chapter III: The Foundry Falls
    tmpCategories[432]:AddAchievement(achievements[10021]) -- Chapter IV: Darkness Incarnate
    tmpCategories[432]:AddAchievement(achievements[10148]) -- Chapter IV: Darkness Incarnate
    tmpCategories[485] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {579, 580, 581, 582, 585, 586, 587, 590}, nil, true)); -- Quests
    tmpCategories[432]:AddCategory(tmpCategories[485]);
    tmpCategories[485]:AddAchievement(achievements[9825]) -- Master Relic Hunter
    tmpCategories[485]:AddAchievement(achievements[9836]) -- Master Relic Hunter
    tmpCategories[237] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15258)))); -- Legion
    tmpCategories[381] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[237]:AddCategory(tmpCategories[381]);
    tmpCategories[396] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(619).name)); -- Broken Isles
    tmpCategories[381]:AddCategory(tmpCategories[396]);
    tmpCategories[396]:AddAchievement(achievements[11160]) -- Unleashed Monstrosities
    tmpCategories[397] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[396]:AddCategory(tmpCategories[397]);
    tmpCategories[397]:AddAchievement(achievements[11157]) -- Loremaster of Legion
    tmpCategories[397]:AddAchievement(achievements[10877]) -- Pillars of Creation
    tmpCategories[397]:AddAchievement(achievements[11189]) -- Variety is the Spice of Life
    tmpCategories[397]:AddAchievement(achievements[11427]) -- No Shellfish Endeavor
    tmpCategories[397]:AddAchievement(achievements[11186]) -- Tehd & Marius' Excellent Adventure
    tmpCategories[397]:AddAchievement(achievements[11240]) -- Harbinger
    tmpCategories[397]:AddAchievement(achievements[11544]) -- Defender of the Broken Isles
    tmpCategories[397]:AddAchievement(achievements[11846]) -- Champions of Legionfall
    tmpCategories[398] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[396]:AddCategory(tmpCategories[398]);
    tmpCategories[398]:AddAchievement(achievements[11190]) -- "Broken Isles Pathfinder, Part One"
    tmpCategories[398]:AddAchievement(achievements[11446]) -- "Broken Isles Pathfinder, Part Two"
    tmpCategories[398]:AddAchievement(achievements[14729]) -- To All the Squirrels I Love Despite Their Scars
    tmpCategories[398]:AddAchievement(achievements[11188]) -- Broken Isles Explorer
    tmpCategories[413] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[396]:AddCategory(tmpCategories[413]);
    tmpCategories[413]:AddAchievement(achievements[11474]) -- "Free For All, More For Me"
    tmpCategories[414] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[396]:AddCategory(tmpCategories[414]);
    tmpCategories[414]:AddAchievement(achievements[10672]) -- Broken Isles Diplomat
    tmpCategories[414]:AddAchievement(achievements[11159]) -- Friends in a Broken Land
    tmpCategories[414]:AddAchievement(achievements[11652]) -- The Reputable
    tmpCategories[414]:AddAchievement(achievements[11653]) -- Paragon of the Broken Isles
    tmpCategories[414]:AddAchievement(achievements[11941]) -- Chromie Homie
    tmpCategories[382] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(626).name, {627, 628, 629})); -- Dalaran
    tmpCategories[381]:AddCategory(tmpCategories[382]);
    tmpCategories[382]:AddAchievement(achievements[10770]) -- The Tangerine Traveler
    tmpCategories[383] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {627, 628, 629}, nil, true)); -- Quests
    tmpCategories[382]:AddCategory(tmpCategories[383]);
    tmpCategories[383]:AddAchievement(achievements[12416]) -- The Total Package
    tmpCategories[383]:AddAchievement(achievements[12431]) -- Post Haste
    tmpCategories[383]:AddAchievement(achievements[12439]) -- Priority Mail
    tmpCategories[405] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {627, 628, 629}, nil, true)); -- Exploration
    tmpCategories[382]:AddCategory(tmpCategories[405]);
    tmpCategories[405]:AddAchievement(achievements[11066]) -- Underbelly Tycoon
    tmpCategories[384] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(630).name, {630, 631, 632, 633})); -- Azsuna
    tmpCategories[381]:AddCategory(tmpCategories[384]);
    tmpCategories[385] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {630, 631, 632, 633}, nil, true)); -- Quests
    tmpCategories[384]:AddCategory(tmpCategories[385]);
    tmpCategories[385]:AddAchievement(achievements[10763]) -- Azsuna Matata
    tmpCategories[399] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {630, 631, 632, 633}, nil, true)); -- Exploration
    tmpCategories[384]:AddCategory(tmpCategories[399]);
    tmpCategories[399]:AddAchievement(achievements[10665]) -- Explore Azsuna
    tmpCategories[399]:AddAchievement(achievements[11175]) -- Higher Dimensional Learning
    tmpCategories[399]:AddAchievement(achievements[11256]) -- Treasures of Azsuna
    tmpCategories[399]:AddAchievement(achievements[11261]) -- Adventurer of Azsuna
    tmpCategories[412] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), {630, 631, 632, 633}, nil, true)); -- PvP
    tmpCategories[384]:AddCategory(tmpCategories[412]);
    tmpCategories[412]:AddAchievement(achievements[11475]) -- Mission Accomplished
    tmpCategories[387] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(641).name, {641, 642, 643, 644})); -- Val'sharah
    tmpCategories[381]:AddCategory(tmpCategories[387]);
    tmpCategories[391] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {641, 642, 643, 644}, nil, true)); -- Quests
    tmpCategories[387]:AddCategory(tmpCategories[391]);
    tmpCategories[391]:AddAchievement(achievements[10698]) -- That's Val'sharah Folks!
    tmpCategories[400] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {641, 642, 643, 644}, nil, true)); -- Exploration
    tmpCategories[387]:AddCategory(tmpCategories[400]);
    tmpCategories[400]:AddAchievement(achievements[10666]) -- Explore Val'sharah
    tmpCategories[400]:AddAchievement(achievements[11258]) -- Treasures of Val'sharah
    tmpCategories[400]:AddAchievement(achievements[11262]) -- Adventurer of Val'sharah
    tmpCategories[411] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), {641, 642, 643, 644}, nil, true)); -- PvP
    tmpCategories[387]:AddCategory(tmpCategories[411]);
    tmpCategories[411]:AddAchievement(achievements[11477]) -- Off the Top Rook
    tmpCategories[388] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(650).name, {650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 750})); -- Highmountain
    tmpCategories[381]:AddCategory(tmpCategories[388]);
    tmpCategories[392] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 750}, nil, true)); -- Quests
    tmpCategories[388]:AddCategory(tmpCategories[392]);
    tmpCategories[392]:AddAchievement(achievements[10059]) -- Ain't No Mountain High Enough
    tmpCategories[392]:AddAchievement(achievements[10774]) -- Hatchling of the Talon
    tmpCategories[392]:AddAchievement(achievements[10626]) -- Zoom!
    tmpCategories[392]:AddAchievement(achievements[10398]) -- Drum Circle
    tmpCategories[401] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 750}, nil, true)); -- Exploration
    tmpCategories[388]:AddCategory(tmpCategories[401]);
    tmpCategories[401]:AddAchievement(achievements[10667]) -- Explore Highmountain
    tmpCategories[401]:AddAchievement(achievements[11257]) -- Treasures of Highmountain
    tmpCategories[401]:AddAchievement(achievements[11264]) -- Adventurer of Highmountain
    tmpCategories[410] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), {650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 750}, nil, true)); -- PvP
    tmpCategories[388]:AddCategory(tmpCategories[410]);
    tmpCategories[410]:AddAchievement(achievements[11478]) -- The Darkbrul-oh
    tmpCategories[416] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 750}, nil, true)); -- Reputation
    tmpCategories[388]:AddCategory(tmpCategories[416]);
    tmpCategories[416]:AddAchievement(achievements[12292]) -- Highmountain Tribe
    tmpCategories[386] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(634).name, {634, 635, 636, 637, 638, 639, 640, 649})); -- Stormheim
    tmpCategories[381]:AddCategory(tmpCategories[386]);
    tmpCategories[390] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {634, 635, 636, 637, 638, 639, 640, 649}, nil, true)); -- Quests
    tmpCategories[386]:AddCategory(tmpCategories[390]);
    tmpCategories[390]:AddAchievement(achievements[10790]) -- "Vrykul Story, Bro"
    tmpCategories[390]:AddAchievement(achievements[10793]) -- What a Ripoff!
    tmpCategories[390]:AddAchievement(achievements[11232]) -- "Lock, Stock and Two Smoking Goblins"
    tmpCategories[402] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {634, 635, 636, 637, 638, 639, 640, 649}, nil, true)); -- Exploration
    tmpCategories[386]:AddCategory(tmpCategories[402]);
    tmpCategories[402]:AddAchievement(achievements[10668]) -- Explore Stormheim
    tmpCategories[402]:AddAchievement(achievements[10627]) -- Going Up
    tmpCategories[402]:AddAchievement(achievements[11259]) -- Treasures of Stormheim
    tmpCategories[402]:AddAchievement(achievements[11263]) -- Adventurer of Stormheim
    tmpCategories[402]:AddAchievement(achievements[11178]) -- Wake the Dragon
    tmpCategories[409] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), {634, 635, 636, 637, 638, 639, 640, 649}, nil, true)); -- PvP
    tmpCategories[386]:AddCategory(tmpCategories[409]);
    tmpCategories[409]:AddAchievement(achievements[11476]) -- Saddle Sore
    tmpCategories[389] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(680).name, {680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691})); -- Suramar
    tmpCategories[381]:AddCategory(tmpCategories[389]);
    tmpCategories[393] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691}, nil, true)); -- Quests
    tmpCategories[389]:AddCategory(tmpCategories[393]);
    tmpCategories[393]:AddAchievement(achievements[10617]) -- Nightfallen But Not Forgotten
    tmpCategories[393]:AddAchievement(achievements[11124]) -- Good Suramaritan
    tmpCategories[393]:AddAchievement(achievements[10756]) -- Leyline Bling
    tmpCategories[393]:AddAchievement(achievements[11125]) -- Now You're Thinking With Portals
    tmpCategories[393]:AddAchievement(achievements[11133]) -- Why Can't I Hold All This Mana?
    tmpCategories[393]:AddAchievement(achievements[11340]) -- Insurrection
    tmpCategories[403] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691}, nil, true)); -- Exploration
    tmpCategories[389]:AddCategory(tmpCategories[403]);
    tmpCategories[403]:AddAchievement(achievements[10669]) -- Explore Suramar
    tmpCategories[403]:AddAchievement(achievements[11260]) -- Treasures of Suramar
    tmpCategories[403]:AddAchievement(achievements[11265]) -- Adventurer of Suramar
    tmpCategories[415] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691}, nil, true)); -- Reputation
    tmpCategories[389]:AddCategory(tmpCategories[415]);
    tmpCategories[415]:AddAchievement(achievements[10778]) -- The Nightfallen
    tmpCategories[394] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(646).name, {646})); -- Broken Shore
    tmpCategories[381]:AddCategory(tmpCategories[394]);
    tmpCategories[394]:AddAchievement(achievements[11786]) -- Terrors of the Shore
    tmpCategories[395] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {646}, nil, true)); -- Quests
    tmpCategories[394]:AddCategory(tmpCategories[395]);
    tmpCategories[395]:AddAchievement(achievements[11607]) -- They See Me Rolling
    tmpCategories[395]:AddAchievement(achievements[11546]) -- Breaching the Tomb
    tmpCategories[395]:AddAchievement(achievements[11681]) -- Crate Expectations
    tmpCategories[395]:AddAchievement(achievements[11731]) -- A Magic Contribution
    tmpCategories[395]:AddAchievement(achievements[11732]) -- A Magnificent Contribution
    tmpCategories[395]:AddAchievement(achievements[11735]) -- Take Command
    tmpCategories[395]:AddAchievement(achievements[11736]) -- Assume Command
    tmpCategories[395]:AddAchievement(achievements[11737]) -- Disrupting the Nether
    tmpCategories[395]:AddAchievement(achievements[11738]) -- It'll Nether Happen
    tmpCategories[404] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {646}, nil, true)); -- Exploration
    tmpCategories[394]:AddCategory(tmpCategories[404]);
    tmpCategories[404]:AddAchievement(achievements[11543]) -- Explore Broken Shore
    tmpCategories[404]:AddAchievement(achievements[11802]) -- Bringing Home the Beacon
    tmpCategories[404]:AddAchievement(achievements[11841]) -- Naxt Victim
    tmpCategories[417] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {646}, nil, true)); -- Reputation
    tmpCategories[394]:AddCategory(tmpCategories[417]);
    tmpCategories[417]:AddAchievement(achievements[11545]) -- Legionfall Commander
    tmpCategories[417]:AddAchievement(achievements[11796]) -- Armies of Legionfall
    tmpCategories[406] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(905).name, {830, 831, 832, 833, 882, 883, 884, 885, 886, 887, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932})); -- Argus
    tmpCategories[381]:AddCategory(tmpCategories[406]);
    tmpCategories[407] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {830, 831, 832, 833, 882, 883, 884, 885, 886, 887, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932}, nil, true)); -- Quests
    tmpCategories[406]:AddCategory(tmpCategories[407]);
    tmpCategories[407]:AddAchievement(achievements[12066]) -- You Are Now Prepared!
    tmpCategories[407]:AddAchievement(achievements[12073]) -- Locked and Loaded
    tmpCategories[408] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {830, 831, 832, 833, 882, 883, 884, 885, 886, 887, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932}, nil, true)); -- Exploration
    tmpCategories[406]:AddCategory(tmpCategories[408]);
    tmpCategories[408]:AddAchievement(achievements[12074]) -- "Shoot First, Loot Later"
    tmpCategories[408]:AddAchievement(achievements[12084]) -- Infused and Abused
    tmpCategories[408]:AddAchievement(achievements[12028]) -- Envision Invasion Eradication
    tmpCategories[408]:AddAchievement(achievements[12026]) -- Invasion Obliteration
    tmpCategories[408]:AddAchievement(achievements[12069]) -- Explore Argus
    tmpCategories[408]:AddAchievement(achievements[12077]) -- Adventurer of Argus
    tmpCategories[408]:AddAchievement(achievements[12078]) -- Commander of Argus
    tmpCategories[408]:AddAchievement(achievements[12083]) -- Paragon of Argus
    tmpCategories[408]:AddAchievement(achievements[12101]) -- We Came Here For Two Reasons
    tmpCategories[408]:AddAchievement(achievements[12102]) -- To Kill Demons...
    tmpCategories[408]:AddAchievement(achievements[12103]) -- ...And Chew Mana Buns
    tmpCategories[408]:AddAchievement(achievements[12104]) -- And We're All Out of Mana Buns
    tmpCategories[418] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {830, 831, 832, 833, 882, 883, 884, 885, 886, 887, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932}, nil, true)); -- Reputation
    tmpCategories[406]:AddCategory(tmpCategories[418]);
    tmpCategories[418]:AddAchievement(achievements[12076]) -- Protector of the Argussian Reach
    tmpCategories[418]:AddAchievement(achievements[12081]) -- Officer of the Light
    tmpCategories[238] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15272)))); -- Dungeons
    tmpCategories[237]:AddCategory(tmpCategories[238]);
    tmpCategories[238]:AddAchievement(achievements[11164]) -- Legion Dungeon Hero
    tmpCategories[238]:AddAchievement(achievements[11163]) -- Glory of the Legion Hero
    tmpCategories[238]:AddAchievement(achievements[11181]) -- Legion Keymaster
    tmpCategories[240] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(716)), {713})); -- Eye of Azshara
    tmpCategories[238]:AddCategory(tmpCategories[240]);
    tmpCategories[240]:AddAchievement(achievements[10456]) -- But You Say He's Just a Friend
    tmpCategories[240]:AddAchievement(achievements[10457]) -- Stay Salty
    tmpCategories[240]:AddAchievement(achievements[10458]) -- Ready for Raiding V
    tmpCategories[240]:AddAchievement(achievements[10780]) -- Eye of Azshara
    tmpCategories[240]:AddAchievement(achievements[10781]) -- Heroic: Eye of Azshara
    tmpCategories[240]:AddAchievement(achievements[10782]) -- Mythic: Eye of Azshara
    tmpCategories[241] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(762)), {733})); -- Darkheart Thicket
    tmpCategories[238]:AddCategory(tmpCategories[241]);
    tmpCategories[241]:AddAchievement(achievements[10766]) -- Egg-cellent!
    tmpCategories[241]:AddAchievement(achievements[10769]) -- Burning Down the House
    tmpCategories[241]:AddAchievement(achievements[10783]) -- Darkheart Thicket
    tmpCategories[241]:AddAchievement(achievements[10784]) -- Heroic: Darkheart Thicket
    tmpCategories[241]:AddAchievement(achievements[10785]) -- Mythic: Darkheart Thicket
    tmpCategories[242] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(721)), {703, 704, 705})); -- Halls of Valor
    tmpCategories[238]:AddCategory(tmpCategories[242]);
    tmpCategories[242]:AddAchievement(achievements[10544]) -- Stag Party
    tmpCategories[242]:AddAchievement(achievements[10542]) -- I Got What You Mead
    tmpCategories[242]:AddAchievement(achievements[10543]) -- Surge Protector
    tmpCategories[242]:AddAchievement(achievements[10786]) -- Halls of Valor
    tmpCategories[242]:AddAchievement(achievements[10788]) -- Heroic: Halls of Valor
    tmpCategories[242]:AddAchievement(achievements[10789]) -- Mythic: Halls of Valor
    tmpCategories[243] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(767)), {731})); -- Neltharions Lair
    tmpCategories[238]:AddCategory(tmpCategories[243]);
    tmpCategories[243]:AddAchievement(achievements[10996]) -- Got to Ketchum All
    tmpCategories[243]:AddAchievement(achievements[10875]) -- Can't Eat Just One
    tmpCategories[243]:AddAchievement(achievements[10795]) -- Neltharion's Lair
    tmpCategories[243]:AddAchievement(achievements[10796]) -- Heroic: Neltharion's Lair
    tmpCategories[243]:AddAchievement(achievements[10797]) -- Mythic: Neltharion's Lair
    tmpCategories[244] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(777)), {732})); -- Assault on Violet Hold
    tmpCategories[238]:AddCategory(tmpCategories[244]);
    tmpCategories[244]:AddAchievement(achievements[10554]) -- I Made a Food!
    tmpCategories[244]:AddAchievement(achievements[10553]) -- You're Just Making It WORSE!
    tmpCategories[244]:AddAchievement(achievements[10798]) -- Assault on Violet Hold
    tmpCategories[244]:AddAchievement(achievements[10799]) -- Heroic: Assault on Violet Hold
    tmpCategories[244]:AddAchievement(achievements[10800]) -- Mythic: Assault on Violet Hold
    tmpCategories[245] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(707)), {710, 711, 712})); -- Vault of the Wardens
    tmpCategories[238]:AddCategory(tmpCategories[245]);
    tmpCategories[245]:AddAchievement(achievements[10679]) -- I Ain't Even Cold
    tmpCategories[245]:AddAchievement(achievements[10680]) -- Who's Afraid of the Dark?
    tmpCategories[245]:AddAchievement(achievements[10707]) -- "A Specter, Illuminated"
    tmpCategories[245]:AddAchievement(achievements[10801]) -- Vault of the Wardens
    tmpCategories[245]:AddAchievement(achievements[10802]) -- Heroic: Vault of the Wardens
    tmpCategories[245]:AddAchievement(achievements[10803]) -- Mythic: Vault of the Wardens
    tmpCategories[246] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(740)), {751, 752, 753, 754, 755, 756})); -- Black Rook Hold
    tmpCategories[238]:AddCategory(tmpCategories[246]);
    tmpCategories[246]:AddAchievement(achievements[10710]) -- Black Rook Moan
    tmpCategories[246]:AddAchievement(achievements[10709]) -- You Used to Scrawl Me In Your Fel Tome
    tmpCategories[246]:AddAchievement(achievements[10711]) -- Adds? More Like Bads
    tmpCategories[246]:AddAchievement(achievements[10804]) -- Black Rook Hold
    tmpCategories[246]:AddAchievement(achievements[10805]) -- Heroic: Black Rook Hold
    tmpCategories[246]:AddAchievement(achievements[10806]) -- Mythic: Black Rook Hold
    tmpCategories[247] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(727)), {706, 707, 708})); -- Maw of Souls
    tmpCategories[238]:AddCategory(tmpCategories[247]);
    tmpCategories[247]:AddAchievement(achievements[10413]) -- Instant Karma
    tmpCategories[247]:AddAchievement(achievements[10411]) -- Helheim Hath No Fury
    tmpCategories[247]:AddAchievement(achievements[10412]) -- Poor Unfortunate Souls
    tmpCategories[247]:AddAchievement(achievements[10807]) -- Maw of Souls
    tmpCategories[247]:AddAchievement(achievements[10808]) -- Heroic: Maw of Souls
    tmpCategories[247]:AddAchievement(achievements[10809]) -- Mythic: Maw of Souls
    tmpCategories[248] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(726)), {749})); -- The Arcway
    tmpCategories[238]:AddCategory(tmpCategories[248]);
    tmpCategories[248]:AddAchievement(achievements[10773]) -- Arcanic Cling
    tmpCategories[248]:AddAchievement(achievements[10775]) -- Clean House
    tmpCategories[248]:AddAchievement(achievements[10776]) -- No Time to Waste
    tmpCategories[248]:AddAchievement(achievements[10813]) -- Mythic: The Arcway
    tmpCategories[249] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(800)), {761, 762, 763})); -- Court of Stars
    tmpCategories[238]:AddCategory(tmpCategories[249]);
    tmpCategories[249]:AddAchievement(achievements[10610]) -- Waiting for Gerdo
    tmpCategories[249]:AddAchievement(achievements[10611]) -- Dropping Some Eaves
    tmpCategories[249]:AddAchievement(achievements[10816]) -- Mythic: Court of Stars
    tmpCategories[250] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(860)), {809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822})); -- Return to Karazhan
    tmpCategories[238]:AddCategory(tmpCategories[250]);
    tmpCategories[250]:AddAchievement(achievements[11430]) -- One Night in Karazhan
    tmpCategories[250]:AddAchievement(achievements[11335]) -- Season Tickets
    tmpCategories[250]:AddAchievement(achievements[11338]) -- Dine and Bash
    tmpCategories[250]:AddAchievement(achievements[11432]) -- Scared Straight
    tmpCategories[250]:AddAchievement(achievements[11431]) -- The Rat Pack
    tmpCategories[250]:AddAchievement(achievements[11433]) -- Burn After Reading
    tmpCategories[250]:AddAchievement(achievements[11929]) -- Heroic: Return to Karazhan
    tmpCategories[250]:AddAchievement(achievements[11429]) -- Mythic: Return to Karazhan
    tmpCategories[251] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(900)), {845, 846, 847, 848, 849})); -- Cathedral of Eternal Night
    tmpCategories[238]:AddCategory(tmpCategories[251]);
    tmpCategories[251]:AddAchievement(achievements[11768]) -- Boom Bloom
    tmpCategories[251]:AddAchievement(achievements[11769]) -- A Steamy Romance Saga
    tmpCategories[251]:AddAchievement(achievements[11703]) -- Master of Shadows
    tmpCategories[251]:AddAchievement(achievements[11700]) -- Cathedral of Eternal Night
    tmpCategories[251]:AddAchievement(achievements[11701]) -- Heroic: Cathedral of Eternal Night
    tmpCategories[251]:AddAchievement(achievements[11702]) -- Mythic: Cathedral of Eternal Night
    tmpCategories[252] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(945)), {903})); -- Seat of the Triumvirate
    tmpCategories[238]:AddCategory(tmpCategories[252]);
    tmpCategories[252]:AddAchievement(achievements[12004]) -- Welcome the Void
    tmpCategories[252]:AddAchievement(achievements[12005]) -- Let it All Out
    tmpCategories[252]:AddAchievement(achievements[12009]) -- Darker Side
    tmpCategories[252]:AddAchievement(achievements[12007]) -- Heroic: Seat of the Triumvirate
    tmpCategories[252]:AddAchievement(achievements[12008]) -- Mythic: Seat of the Triumvirate
    tmpCategories[239] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15271)))); -- Raids
    tmpCategories[237]:AddCategory(tmpCategories[239]);
    tmpCategories[239]:AddAchievement(achievements[11180]) -- Glory of the Legion Raider
    tmpCategories[239]:AddAchievement(achievements[11763]) -- Glory of the Tomb Raider
    tmpCategories[239]:AddAchievement(achievements[11987]) -- Glory of the Argus Raider
    tmpCategories[253] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(768)), {777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789})); -- The Emerald Nightmare
    tmpCategories[239]:AddCategory(tmpCategories[253]);
    tmpCategories[253]:AddAchievement(achievements[10555]) -- Buggy Fight
    tmpCategories[253]:AddAchievement(achievements[10830]) -- Took the Red Eye Down
    tmpCategories[253]:AddAchievement(achievements[10771]) -- Webbing Crashers
    tmpCategories[253]:AddAchievement(achievements[10753]) -- Scare Bear
    tmpCategories[253]:AddAchievement(achievements[10663]) -- Imagined Dragons World Tour
    tmpCategories[253]:AddAchievement(achievements[10772]) -- Use the Force(s)
    tmpCategories[253]:AddAchievement(achievements[10755]) -- I Attack the Darkness
    tmpCategories[253]:AddAchievement(achievements[10821]) -- Mythic: Nythendra
    tmpCategories[253]:AddAchievement(achievements[10823]) -- Mythic: Il'gynoth
    tmpCategories[253]:AddAchievement(achievements[10822]) -- Mythic: Elerethe Renferal
    tmpCategories[253]:AddAchievement(achievements[10824]) -- Mythic: Ursoc
    tmpCategories[253]:AddAchievement(achievements[10825]) -- Mythic: Dragons of Nightmare
    tmpCategories[253]:AddAchievement(achievements[10826]) -- Mythic: Cenarius
    tmpCategories[253]:AddAchievement(achievements[10827]) -- Mythic: Xavius
    tmpCategories[253]:AddAchievement(achievements[10818]) -- Darkbough
    tmpCategories[253]:AddAchievement(achievements[10819]) -- Tormented Guardians
    tmpCategories[253]:AddAchievement(achievements[10820]) -- Rift of Aln
    tmpCategories[253]:AddAchievement(achievements[11194]) -- Ahead of the Curve: Xavius
    tmpCategories[253]:AddAchievement(achievements[11191]) -- Cutting Edge: Xavius
    tmpCategories[254] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(786)), {764, 765, 766, 767, 768, 769, 770, 771, 772})); -- The Nighthold
    tmpCategories[239]:AddCategory(tmpCategories[254]);
    tmpCategories[254]:AddAchievement(achievements[10678]) -- Cage Rematch
    tmpCategories[254]:AddAchievement(achievements[10697]) -- Grand Opening
    tmpCategories[254]:AddAchievement(achievements[10742]) -- Gluten Free
    tmpCategories[254]:AddAchievement(achievements[10817]) -- A Change In Scenery
    tmpCategories[254]:AddAchievement(achievements[10851]) -- Elementalry!
    tmpCategories[254]:AddAchievement(achievements[10754]) -- Fruit of All Evil
    tmpCategories[254]:AddAchievement(achievements[10575]) -- Burning Bridges
    tmpCategories[254]:AddAchievement(achievements[10704]) -- Not For You
    tmpCategories[254]:AddAchievement(achievements[10699]) -- Infinitesimal
    tmpCategories[254]:AddAchievement(achievements[10696]) -- I've Got My Eyes On You
    tmpCategories[254]:AddAchievement(achievements[10840]) -- Mythic: Skorpyron
    tmpCategories[254]:AddAchievement(achievements[10842]) -- Mythic: Chronomatic Anomaly
    tmpCategories[254]:AddAchievement(achievements[10843]) -- Mythic: Trilliax
    tmpCategories[254]:AddAchievement(achievements[10844]) -- Mythic: Spellblade Aluriel
    tmpCategories[254]:AddAchievement(achievements[10845]) -- Mythic: Star Augur Etraeus
    tmpCategories[254]:AddAchievement(achievements[10846]) -- Mythic: High Botanist Tel'arn
    tmpCategories[254]:AddAchievement(achievements[10848]) -- Mythic: Krosus
    tmpCategories[254]:AddAchievement(achievements[10847]) -- Mythic: Tichondrius
    tmpCategories[254]:AddAchievement(achievements[10849]) -- Mythic: Grand Magistrix Elisande
    tmpCategories[254]:AddAchievement(achievements[10850]) -- Mythic: Gul'dan
    tmpCategories[254]:AddAchievement(achievements[10829]) -- Arcing Aqueducts
    tmpCategories[254]:AddAchievement(achievements[10837]) -- Royal Athenaeum
    tmpCategories[254]:AddAchievement(achievements[10838]) -- Nightspire
    tmpCategories[254]:AddAchievement(achievements[10839]) -- Betrayer's Rise
    tmpCategories[254]:AddAchievement(achievements[11195]) -- Ahead of the Curve: Gul'dan
    tmpCategories[254]:AddAchievement(achievements[11192]) -- Cutting Edge: Gul'dan
    tmpCategories[254]:AddAchievement(achievements[11628]) -- That's So Last Millennium
    tmpCategories[255] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(861)), {806, 807, 808})); -- Trial of Valor
    tmpCategories[239]:AddCategory(tmpCategories[255]);
    tmpCategories[255]:AddAchievement(achievements[11337]) -- You Runed Everything!
    tmpCategories[255]:AddAchievement(achievements[11386]) -- Boneafide Tri Tip
    tmpCategories[255]:AddAchievement(achievements[11377]) -- Patient Zero
    tmpCategories[255]:AddAchievement(achievements[11396]) -- Mythic: Odyn
    tmpCategories[255]:AddAchievement(achievements[11397]) -- Mythic: Guarm
    tmpCategories[255]:AddAchievement(achievements[11398]) -- Mythic: Helya
    tmpCategories[255]:AddAchievement(achievements[11394]) -- Trial of Valor
    tmpCategories[255]:AddAchievement(achievements[11426]) -- Heroic: Trial of Valor
    tmpCategories[255]:AddAchievement(achievements[11387]) -- The Chosen
    tmpCategories[255]:AddAchievement(achievements[11581]) -- Ahead of the Curve: Helya
    tmpCategories[255]:AddAchievement(achievements[11580]) -- Cutting Edge: Helya
    tmpCategories[255]:AddAchievement(achievements[11762]) -- Can I Get A Helya
    tmpCategories[256] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(875)), {850, 851, 852, 853, 854, 855, 856})); -- Tomb of Sargeras
    tmpCategories[239]:AddCategory(tmpCategories[256]);
    tmpCategories[256]:AddAchievement(achievements[11724]) -- Fel Turkey!
    tmpCategories[256]:AddAchievement(achievements[11699]) -- Grand Fin-ale
    tmpCategories[256]:AddAchievement(achievements[11676]) -- Five Course Seafood Buffet
    tmpCategories[256]:AddAchievement(achievements[11696]) -- Grin and Bear It
    tmpCategories[256]:AddAchievement(achievements[11773]) -- "Wax On, Wax Off"
    tmpCategories[256]:AddAchievement(achievements[11674]) -- "Great Soul, Great Purpose"
    tmpCategories[256]:AddAchievement(achievements[11675]) -- Sky Walker
    tmpCategories[256]:AddAchievement(achievements[11683]) -- Bingo!
    tmpCategories[256]:AddAchievement(achievements[11770]) -- Dark Souls
    tmpCategories[256]:AddAchievement(achievements[11767]) -- Mythic: Goroth
    tmpCategories[256]:AddAchievement(achievements[11775]) -- Mythic: Harjatan
    tmpCategories[256]:AddAchievement(achievements[11776]) -- Mythic: Mistress Sassz'ine
    tmpCategories[256]:AddAchievement(achievements[11774]) -- Mythic: Demonic Inquisition
    tmpCategories[256]:AddAchievement(achievements[11777]) -- Mythic: Sisters of the Moon
    tmpCategories[256]:AddAchievement(achievements[11778]) -- Mythic: The Desolate Host
    tmpCategories[256]:AddAchievement(achievements[11779]) -- Mythic: Maiden of Vigilance
    tmpCategories[256]:AddAchievement(achievements[11780]) -- Mythic: Fallen Avatar
    tmpCategories[256]:AddAchievement(achievements[11781]) -- Mythic: Kil'jaeden
    tmpCategories[256]:AddAchievement(achievements[11787]) -- The Gates of Hell
    tmpCategories[256]:AddAchievement(achievements[11788]) -- Wailing Halls
    tmpCategories[256]:AddAchievement(achievements[11789]) -- Chamber of the Avatar
    tmpCategories[256]:AddAchievement(achievements[11790]) -- Deceiver's Fall
    tmpCategories[256]:AddAchievement(achievements[11874]) -- Ahead of the Curve: Kil'jaeden
    tmpCategories[256]:AddAchievement(achievements[11875]) -- Cutting Edge: Kil'jaeden
    tmpCategories[256]:AddAchievement(achievements[11760]) -- Retro Trend
    tmpCategories[257] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(946)), {909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920})); -- Antorus, the Burning Throne
    tmpCategories[239]:AddCategory(tmpCategories[257]);
    tmpCategories[257]:AddAchievement(achievements[11930]) -- Worm-monger
    tmpCategories[257]:AddAchievement(achievements[12065]) -- Hounds Good To Me
    tmpCategories[257]:AddAchievement(achievements[12129]) -- This is the War Room!
    tmpCategories[257]:AddAchievement(achievements[11928]) -- Portal Combat
    tmpCategories[257]:AddAchievement(achievements[12067]) -- Spheres of Influence
    tmpCategories[257]:AddAchievement(achievements[11949]) -- Hard to Kill
    tmpCategories[257]:AddAchievement(achievements[12030]) -- The World Revolves Around Me
    tmpCategories[257]:AddAchievement(achievements[11948]) -- Together We Stand
    tmpCategories[257]:AddAchievement(achievements[12046]) -- Remember the Titans
    tmpCategories[257]:AddAchievement(achievements[11915]) -- Don't Sweat the Technique
    tmpCategories[257]:AddAchievement(achievements[12257]) -- Stardust Crusaders
    tmpCategories[257]:AddAchievement(achievements[11992]) -- Mythic: Garothi Worldbreaker
    tmpCategories[257]:AddAchievement(achievements[11993]) -- Mythic: Hounds of Sargeras
    tmpCategories[257]:AddAchievement(achievements[11994]) -- Mythic: Antoran High Command
    tmpCategories[257]:AddAchievement(achievements[11995]) -- Mythic: Portal Keeper Hasabel
    tmpCategories[257]:AddAchievement(achievements[11996]) -- Mythic: Eonar
    tmpCategories[257]:AddAchievement(achievements[11997]) -- Mythic: Imonar the Soulhunter
    tmpCategories[257]:AddAchievement(achievements[11998]) -- Mythic: Kin'garoth
    tmpCategories[257]:AddAchievement(achievements[11999]) -- Mythic: Varimathras
    tmpCategories[257]:AddAchievement(achievements[12000]) -- Mythic: The Coven of Shivarra
    tmpCategories[257]:AddAchievement(achievements[12001]) -- Mythic: Aggramar
    tmpCategories[257]:AddAchievement(achievements[12002]) -- Mythic: Argus the Unmaker
    tmpCategories[257]:AddAchievement(achievements[11988]) -- Light's Breach
    tmpCategories[257]:AddAchievement(achievements[11990]) -- Hope's End
    tmpCategories[257]:AddAchievement(achievements[11989]) -- Forbidden Descent
    tmpCategories[257]:AddAchievement(achievements[11991]) -- Seat of the Pantheon
    tmpCategories[257]:AddAchievement(achievements[12110]) -- Ahead of the Curve: Argus the Unmaker
    tmpCategories[257]:AddAchievement(achievements[12111]) -- Cutting Edge: Argus the Unmaker
    tmpCategories[257]:AddAchievement(achievements[12020]) -- Argussy Up
    tmpCategories[430] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15117)))); -- Pet Battles
    tmpCategories[237]:AddCategory(tmpCategories[430]);
    tmpCategories[430]:AddAchievement(achievements[11233]) -- Broken Isles Safari
    tmpCategories[430]:AddAchievement(achievements[10876]) -- Battle on the Broken Isles
    tmpCategories[430]:AddAchievement(achievements[9686]) -- Aquatic Acquiescence
    tmpCategories[430]:AddAchievement(achievements[9687]) -- Best of the Beasts
    tmpCategories[430]:AddAchievement(achievements[9688]) -- Mousing Around
    tmpCategories[430]:AddAchievement(achievements[9689]) -- Dragons!
    tmpCategories[430]:AddAchievement(achievements[9690]) -- "Ragnaros, Watch and Learn"
    tmpCategories[430]:AddAchievement(achievements[9691]) -- Flock Together
    tmpCategories[430]:AddAchievement(achievements[9692]) -- "Murlocs, Harpies, and Wolvar, Oh My!"
    tmpCategories[430]:AddAchievement(achievements[9693]) -- Master of Magic
    tmpCategories[430]:AddAchievement(achievements[9694]) -- Roboteer
    tmpCategories[430]:AddAchievement(achievements[9695]) -- The Lil' Necromancer
    tmpCategories[430]:AddAchievement(achievements[9696]) -- Family Familiar
    tmpCategories[430]:AddAchievement(achievements[12088]) -- Anomalous Animals of Argus
    tmpCategories[430]:AddAchievement(achievements[12089]) -- Aquatic Assault
    tmpCategories[430]:AddAchievement(achievements[12091]) -- Beast Blitz
    tmpCategories[430]:AddAchievement(achievements[12092]) -- Critical Critters
    tmpCategories[430]:AddAchievement(achievements[12093]) -- Draconic Destruction
    tmpCategories[430]:AddAchievement(achievements[12094]) -- Elemental Escalation
    tmpCategories[430]:AddAchievement(achievements[12095]) -- Fierce Fliers
    tmpCategories[430]:AddAchievement(achievements[12096]) -- Humanoid Havoc
    tmpCategories[430]:AddAchievement(achievements[12097]) -- Magical Mayhem
    tmpCategories[430]:AddAchievement(achievements[12098]) -- Mechanical Melee
    tmpCategories[430]:AddAchievement(achievements[12099]) -- Unstoppable Undead
    tmpCategories[430]:AddAchievement(achievements[12100]) -- Family Fighter
    tmpCategories[792] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15282)) .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Brawler's Guild (Legacy)
    tmpCategories[237]:AddCategory(tmpCategories[792]);
    tmpCategories[792]:AddAchievement(achievements[11560]) -- You Are Not Your $#*@! Legplates (Season 3)
    tmpCategories[792]:AddAchievement(achievements[11561]) -- You Are Not Your $#*@! Legplates (Season 3)
    tmpCategories[792]:AddAchievement(achievements[11563]) -- The Second Rule of Brawler's Guild (Season 3)
    tmpCategories[792]:AddAchievement(achievements[11564]) -- The Second Rule of Brawler's Guild (Season 3)
    tmpCategories[792]:AddAchievement(achievements[11565]) -- King of the Guild (Season 3)
    tmpCategories[792]:AddAchievement(achievements[11566]) -- King of the Guild (Season 3)
    tmpCategories[792]:AddAchievement(achievements[11572]) -- I Am Thrall's Complete Lack Of Surprise (Season 3)
    tmpCategories[429] = InsertAndReturn(categories, achievementCategory:New(addon.L["Class Hall"], {24, 626, 647, 648, 695, 702, 709, 717, 718, 719, 720, 721, 725, 726, 734, 735, 739, 747, 1468})); -- Class Hall
    tmpCategories[237]:AddCategory(tmpCategories[429]);
    tmpCategories[429]:AddAchievement(achievements[10994]) -- A Glorious Campaign
    tmpCategories[429]:AddAchievement(achievements[11135]) -- A Heroic Campaign
    tmpCategories[429]:AddAchievement(achievements[11136]) -- An Epic Campaign
    tmpCategories[429]:AddAchievement(achievements[10706]) -- Training the Troops
    tmpCategories[429]:AddAchievement(achievements[11212]) -- Raise an Army
    tmpCategories[429]:AddAchievement(achievements[11213]) -- Lead a Legion
    tmpCategories[429]:AddAchievement(achievements[11214]) -- Many Missions
    tmpCategories[429]:AddAchievement(achievements[11215]) -- Quite a Few Missions
    tmpCategories[429]:AddAchievement(achievements[11216]) -- So Many Missions
    tmpCategories[429]:AddAchievement(achievements[11217]) -- "Many Many Missions, Handle It!"
    tmpCategories[429]:AddAchievement(achievements[11219]) -- Need Backup
    tmpCategories[429]:AddAchievement(achievements[11220]) -- Roster of Champions
    tmpCategories[429]:AddAchievement(achievements[11221]) -- Champions Rise
    tmpCategories[429]:AddAchievement(achievements[11222]) -- Champions of Power
    tmpCategories[429]:AddAchievement(achievements[11223]) -- Legendary Research
    tmpCategories[429]:AddAchievement(achievements[11298]) -- A Classy Outfit
    tmpCategories[429]:AddAchievement(achievements[10746]) -- Forged for Battle
    tmpCategories[429]:AddAchievement(achievements[10459]) -- Improving on History
    tmpCategories[429]:AddAchievement(achievements[10743]) -- The Prestige
    tmpCategories[429]:AddAchievement(achievements[10745]) -- The Prestige
    tmpCategories[429]:AddAchievement(achievements[10460]) -- Hidden Potential
    tmpCategories[429]:AddAchievement(achievements[10461]) -- Fighting with Style: Classic
    tmpCategories[429]:AddAchievement(achievements[10747]) -- Fighting with Style: Upgraded
    tmpCategories[429]:AddAchievement(achievements[10748]) -- Fighting with Style: Valorous
    tmpCategories[429]:AddAchievement(achievements[11173]) -- Fighting with Style: War-torn
    tmpCategories[429]:AddAchievement(achievements[10749]) -- Fighting with Style: War-torn
    tmpCategories[429]:AddAchievement(achievements[10750]) -- Fighting with Style: Hidden
    tmpCategories[429]:AddAchievement(achievements[11171]) -- Arsenal of Power
    tmpCategories[429]:AddAchievement(achievements[11137]) -- A Legendary Campaign
    tmpCategories[429]:AddAchievement(achievements[11611]) -- A Challenging Look
    tmpCategories[429]:AddAchievement(achievements[11612]) -- Fighting with Style: Challenging
    tmpCategories[429]:AddAchievement(achievements[11144]) -- Power Realized
    tmpCategories[429]:AddAchievement(achievements[11772]) -- Power Ascended
    tmpCategories[429]:AddAchievement(achievements[11609]) -- Power Unbound
    tmpCategories[429]:AddAchievement(achievements[11610]) -- Power Unleashed
    tmpCategories[429]:AddAchievement(achievements[10852]) -- Artifact or Artifiction
    tmpCategories[429]:AddAchievement(achievements[10853]) -- Part of History
    tmpCategories[429]:AddAchievement(achievements[12071]) -- Crucible's Promise
    tmpCategories[429]:AddAchievement(achievements[12072]) -- Now You're Cooking with Netherlight
    tmpCategories[429]:AddAchievement(achievements[11218]) -- There's a Boss In There
    tmpCategories[258] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15305)))); -- Battle for Azeroth
    tmpCategories[259] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[258]:AddCategory(tmpCategories[259]);
    tmpCategories[271] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(876).name .. " & " .. C_Map.GetMapInfo(875).name)); -- Kul Tiras & Zandalar
    tmpCategories[259]:AddCategory(tmpCategories[271]);
    tmpCategories[271]:AddAchievement(achievements[14183]) -- Conspicuous Consumption
    tmpCategories[271]:AddAchievement(achievements[12587]) -- Unbound Monstrosities
    tmpCategories[272] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), nil, nil, true)); -- Quests
    tmpCategories[271]:AddCategory(tmpCategories[272]);
    tmpCategories[272]:AddAchievement(achievements[12582]) -- Come Sail Away
    tmpCategories[272]:AddAchievement(achievements[12997]) -- The Pride of Kul Tiras
    tmpCategories[272]:AddAchievement(achievements[12593]) -- Loremaster of Kul Tiras
    tmpCategories[272]:AddAchievement(achievements[12891]) -- A Nation United
    tmpCategories[272]:AddAchievement(achievements[12555]) -- Welcome to Zandalar
    tmpCategories[272]:AddAchievement(achievements[12479]) -- Zandalar Forever!
    tmpCategories[272]:AddAchievement(achievements[13294]) -- Loremaster of Zandalar
    tmpCategories[272]:AddAchievement(achievements[13512]) -- Master Calligrapher
    tmpCategories[272]:AddAchievement(achievements[13384]) -- Kul Tirans Don't Look at Explosions
    tmpCategories[272]:AddAchievement(achievements[12510]) -- Ready for War
    tmpCategories[272]:AddAchievement(achievements[13467]) -- Tides of Vengeance
    tmpCategories[272]:AddAchievement(achievements[13925]) -- The Fourth War
    tmpCategories[272]:AddAchievement(achievements[12509]) -- Ready for War
    tmpCategories[272]:AddAchievement(achievements[13466]) -- Tides of Vengeance
    tmpCategories[272]:AddAchievement(achievements[13924]) -- The Fourth War
    tmpCategories[272]:AddAchievement(achievements[13517]) -- Two Sides to Every Tale
    tmpCategories[272]:AddAchievement(achievements[13283]) -- Frontline Warrior
    tmpCategories[272]:AddAchievement(achievements[13251]) -- In Teldrassil's Shadow
    tmpCategories[272]:AddAchievement(achievements[13284]) -- Frontline Warrior
    tmpCategories[272]:AddAchievement(achievements[13144]) -- Wide World of Quests
    tmpCategories[272]:AddAchievement(achievements[13263]) -- The Shadow Hunter
    tmpCategories[272]:AddAchievement(achievements[14157]) -- The Corruptor's End
    tmpCategories[273] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), nil, nil, true)); -- Exploration
    tmpCategories[271]:AddCategory(tmpCategories[273]);
    tmpCategories[273]:AddAchievement(achievements[12989]) -- "Battle for Azeroth Pathfinder, Part One"
    tmpCategories[273]:AddAchievement(achievements[13250]) -- "Battle for Azeroth Pathfinder, Part Two"
    tmpCategories[273]:AddAchievement(achievements[13061]) -- Three Sheets to the Wind
    tmpCategories[273]:AddAchievement(achievements[12482]) -- Get Hek'd
    tmpCategories[273]:AddAchievement(achievements[13036]) -- A Loa of a Tale
    tmpCategories[273]:AddAchievement(achievements[13029]) -- Eating Out of the Palm of My Tiny Hand
    tmpCategories[273]:AddAchievement(achievements[13027]) -- Mushroom Harvest
    tmpCategories[273]:AddAchievement(achievements[14730]) -- To All the Squirrels I Set Sail to See
    tmpCategories[273]:AddAchievement(achievements[12988]) -- Battle for Azeroth Explorer
    tmpCategories[274] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), nil, nil, true)); -- PvP
    tmpCategories[271]:AddCategory(tmpCategories[274]);
    tmpCategories[274]:AddAchievement(achievements[13429]) -- Azerfighter
    tmpCategories[274]:AddAchievement(achievements[13317]) -- Supplied and Ready
    tmpCategories[274]:AddAchievement(achievements[12572]) -- War Supplied
    tmpCategories[274]:AddAchievement(achievements[12571]) -- Bounty Hunting
    tmpCategories[274]:AddAchievement(achievements[12573]) -- Band of Brothers
    tmpCategories[274]:AddAchievement(achievements[12605]) -- Conqueror of Azeroth
    tmpCategories[274]:AddAchievement(achievements[12604]) -- Conqueror of Azeroth
    tmpCategories[274]:AddAchievement(achievements[12856]) -- The First Rule of Dueler's Guild
    tmpCategories[274]:AddAchievement(achievements[12857]) -- Trial by Combat
    tmpCategories[274]:AddAchievement(achievements[12858]) -- Slugfest
    tmpCategories[274]:AddAchievement(achievements[12860]) -- Contender
    tmpCategories[274]:AddAchievement(achievements[12863]) -- Dueling Master
    tmpCategories[274]:AddAchievement(achievements[12859]) -- Prize Fighter
    tmpCategories[274]:AddAchievement(achievements[12861]) -- Master of Duels
    tmpCategories[274]:AddAchievement(achievements[12862]) -- Thirty Six and Two
    tmpCategories[274]:AddAchievement(achievements[13387]) -- Frontline Veteran
    tmpCategories[274]:AddAchievement(achievements[13388]) -- Frontline Veteran
    tmpCategories[274]:AddAchievement(achievements[13402]) -- Frontline Slayer
    tmpCategories[274]:AddAchievement(achievements[13403]) -- Frontline Slayer
    tmpCategories[274]:AddAchievement(achievements[13623]) -- Fighting on Two Fronts
    tmpCategories[275] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), nil, nil, true)); -- Reputation
    tmpCategories[271]:AddCategory(tmpCategories[275]);
    tmpCategories[275]:AddAchievement(achievements[12947]) -- Azerothian Diplomat
    tmpCategories[275]:AddAchievement(achievements[12955]) -- Champions of Azeroth
    tmpCategories[275]:AddAchievement(achievements[12956]) -- Tortollan Seekers
    tmpCategories[276] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(895).name, {895, 1161, 1169, 1171, 1172, 1184, 1185})); -- Tiragarde Sound
    tmpCategories[259]:AddCategory(tmpCategories[276]);
    tmpCategories[281] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {895, 1161, 1169, 1171, 1172, 1184, 1185}, nil, true)); -- Quests
    tmpCategories[276]:AddCategory(tmpCategories[281]);
    tmpCategories[281]:AddAchievement(achievements[12473]) -- A Sound Plan
    tmpCategories[281]:AddAchievement(achievements[13060]) -- Kul Runnings
    tmpCategories[281]:AddAchievement(achievements[13059]) -- Drag Race
    tmpCategories[281]:AddAchievement(achievements[13050]) -- Bless the Rains Down in Freehold
    tmpCategories[281]:AddAchievement(achievements[13049]) -- The Long Con
    tmpCategories[281]:AddAchievement(achievements[12087]) -- The Reining Champion
    tmpCategories[281]:AddAchievement(achievements[13285]) -- Upright Citizens
    tmpCategories[278] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {895, 1161, 1169, 1171, 1172, 1184, 1185}, nil, true)); -- Exploration
    tmpCategories[276]:AddCategory(tmpCategories[278]);
    tmpCategories[278]:AddAchievement(achievements[12556]) -- Explore Tiragarde Sound
    tmpCategories[278]:AddAchievement(achievements[12939]) -- Adventurer of Tiragarde Sound
    tmpCategories[278]:AddAchievement(achievements[12852]) -- Treasures of Tiragarde Sound
    tmpCategories[278]:AddAchievement(achievements[13057]) -- Shanty Raid
    tmpCategories[278]:AddAchievement(achievements[13058]) -- Kul Tiran Up the Dance Floor
    tmpCategories[279] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), {895, 1161, 1169, 1171, 1172, 1184, 1185}, nil, true)); -- PvP
    tmpCategories[276]:AddCategory(tmpCategories[279]);
    tmpCategories[279]:AddAchievement(achievements[12577]) -- Tour of Duty: Tiragarde Sound
    tmpCategories[280] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {895, 1161, 1169, 1171, 1172, 1184, 1185}, nil, true)); -- Reputation
    tmpCategories[276]:AddCategory(tmpCategories[280]);
    tmpCategories[280]:AddAchievement(achievements[12951]) -- Proudmoore Admiralty
    tmpCategories[280]:AddAchievement(achievements[12954]) -- Champion of the 7th Legion
    tmpCategories[282] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(896).name, {896, 1045})); -- Drustvar
    tmpCategories[259]:AddCategory(tmpCategories[282]);
    tmpCategories[283] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {896, 1045}, nil, true)); -- Quests
    tmpCategories[282]:AddCategory(tmpCategories[283]);
    tmpCategories[283]:AddAchievement(achievements[12497]) -- Drust Do It.
    tmpCategories[283]:AddAchievement(achievements[13435]) -- Doomsoul Surprise
    tmpCategories[284] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {896, 1045}, nil, true)); -- Exploration
    tmpCategories[282]:AddCategory(tmpCategories[284]);
    tmpCategories[284]:AddAchievement(achievements[12557]) -- Explore Drustvar
    tmpCategories[284]:AddAchievement(achievements[12941]) -- Adventurer of Drustvar
    tmpCategories[284]:AddAchievement(achievements[12995]) -- Treasures of Drustvar
    tmpCategories[284]:AddAchievement(achievements[13087]) -- Sausage Sampler
    tmpCategories[284]:AddAchievement(achievements[13083]) -- "Better, Faster, Stronger"
    tmpCategories[284]:AddAchievement(achievements[13082]) -- Everything Old Is New Again
    tmpCategories[284]:AddAchievement(achievements[13064]) -- "Drust the Facts, Ma'am"
    tmpCategories[284]:AddAchievement(achievements[13094]) -- Cursed Game Hunter
    tmpCategories[285] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), {896, 1045}, nil, true)); -- PvP
    tmpCategories[282]:AddCategory(tmpCategories[285]);
    tmpCategories[285]:AddAchievement(achievements[12579]) -- Tour of Duty: Drustvar
    tmpCategories[286] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {896, 1045}, nil, true)); -- Reputation
    tmpCategories[282]:AddCategory(tmpCategories[286]);
    tmpCategories[286]:AddAchievement(achievements[12952]) -- Order of Embers
    tmpCategories[287] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(942).name, {942, 1179, 1180, 1182, 1183})); -- Stormsong Valley
    tmpCategories[259]:AddCategory(tmpCategories[287]);
    tmpCategories[288] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {942, 1179, 1180, 1182, 1183}, nil, true)); -- Quests
    tmpCategories[287]:AddCategory(tmpCategories[288]);
    tmpCategories[288]:AddAchievement(achievements[12496]) -- Stormsong and Dance
    tmpCategories[288]:AddAchievement(achievements[13054]) -- Sabertron Assemble
    tmpCategories[288]:AddAchievement(achievements[13053]) -- Deadliest Cache
    tmpCategories[288]:AddAchievement(achievements[13047]) -- Clever Use of Mechanical Explosives
    tmpCategories[288]:AddAchievement(achievements[13046]) -- These Hills Sing
    tmpCategories[288]:AddAchievement(achievements[13045]) -- Every Day I'm Truffling
    tmpCategories[288]:AddAchievement(achievements[13042]) -- About To Break
    tmpCategories[288]:AddAchievement(achievements[13062]) -- Let's Bee Friends
    tmpCategories[289] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {942, 1179, 1180, 1182, 1183}, nil, true)); -- Exploration
    tmpCategories[287]:AddCategory(tmpCategories[289]);
    tmpCategories[289]:AddAchievement(achievements[12558]) -- Explore Stormsong Valley
    tmpCategories[289]:AddAchievement(achievements[12940]) -- Adventurer of Stormsong Valley
    tmpCategories[289]:AddAchievement(achievements[12853]) -- Treasures of Stormsong Valley
    tmpCategories[289]:AddAchievement(achievements[13051]) -- Legends of the Tidesages
    tmpCategories[290] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), {942, 1179, 1180, 1182, 1183}, nil, true)); -- PvP
    tmpCategories[287]:AddCategory(tmpCategories[290]);
    tmpCategories[290]:AddAchievement(achievements[12578]) -- Tour of Duty: Stormsong Valley
    tmpCategories[291] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {942, 1179, 1180, 1182, 1183}, nil, true)); -- Reputation
    tmpCategories[287]:AddCategory(tmpCategories[291]);
    tmpCategories[291]:AddAchievement(achievements[12953]) -- Storm's Wake
    tmpCategories[292] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(862).name, {862, 1165, 1173, 1174, 1176, 1177})); -- Zuldazar
    tmpCategories[259]:AddCategory(tmpCategories[292]);
    tmpCategories[293] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {862, 1165, 1173, 1174, 1176, 1177}, nil, true)); -- Quests
    tmpCategories[292]:AddCategory(tmpCategories[293]);
    tmpCategories[293]:AddAchievement(achievements[13440]) -- Pushing the Payload
    tmpCategories[293]:AddAchievement(achievements[11861]) -- The Throne of Zuldazar
    tmpCategories[293]:AddAchievement(achievements[12480]) -- A Bargain of Blood
    tmpCategories[293]:AddAchievement(achievements[12481]) -- The Final Seal
    tmpCategories[293]:AddAchievement(achievements[13441]) -- Pushing the Payload
    tmpCategories[293]:AddAchievement(achievements[13039]) -- Paku'ai
    tmpCategories[293]:AddAchievement(achievements[13048]) -- Life Finds a Way... To Die!
    tmpCategories[293]:AddAchievement(achievements[13038]) -- Raptari Rider
    tmpCategories[293]:AddAchievement(achievements[13037]) -- Torcanata
    tmpCategories[293]:AddAchievement(achievements[12719]) -- Spirits Be With You
    tmpCategories[293]:AddAchievement(achievements[13020]) -- Bow to Your Masters
    tmpCategories[293]:AddAchievement(achievements[12614]) -- Loa Expectations
    tmpCategories[293]:AddAchievement(achievements[13030]) -- How to Ptrain Your Pterrordax
    tmpCategories[293]:AddAchievement(achievements[13573]) -- How to Ptrain Your Pterrordax
    tmpCategories[293]:AddAchievement(achievements[13542]) -- How to Train Your Direhorn
    tmpCategories[293]:AddAchievement(achievements[13035]) -- By de Power of de Loa!
    tmpCategories[294] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {862, 1165, 1173, 1174, 1176, 1177}, nil, true)); -- Exploration
    tmpCategories[292]:AddCategory(tmpCategories[294]);
    tmpCategories[294]:AddAchievement(achievements[12559]) -- Explore Zuldazar
    tmpCategories[294]:AddAchievement(achievements[12944]) -- Adventurer of Zuldazar
    tmpCategories[294]:AddAchievement(achievements[12851]) -- Treasures of Zuldazar
    tmpCategories[295] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), {862, 1165, 1173, 1174, 1176, 1177}, nil, true)); -- PvP
    tmpCategories[292]:AddCategory(tmpCategories[295]);
    tmpCategories[295]:AddAchievement(achievements[12575]) -- Tour of Duty: Zuldazar
    tmpCategories[295]:AddAchievement(achievements[13439]) -- Boxing Match
    tmpCategories[295]:AddAchievement(achievements[13438]) -- Boxing Match
    tmpCategories[296] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {862, 1165, 1173, 1174, 1176, 1177}, nil, true)); -- Reputation
    tmpCategories[292]:AddCategory(tmpCategories[296]);
    tmpCategories[296]:AddAchievement(achievements[12950]) -- Zandalari Empire
    tmpCategories[296]:AddAchievement(achievements[12957]) -- Champion of the Honorbound
    tmpCategories[297] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(863).name, {863})); -- Nazmir
    tmpCategories[259]:AddCategory(tmpCategories[297]);
    tmpCategories[298] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {863}, nil, true)); -- Quests
    tmpCategories[297]:AddCategory(tmpCategories[298]);
    tmpCategories[298]:AddAchievement(achievements[13426]) -- Come On and Slam
    tmpCategories[298]:AddAchievement(achievements[13026]) -- 7th Legion Spycatcher
    tmpCategories[298]:AddAchievement(achievements[11868]) -- The Dark Heart of Nazmir
    tmpCategories[298]:AddAchievement(achievements[13048]) -- Life Finds a Way... To Die!
    tmpCategories[298]:AddAchievement(achievements[13025]) -- Zandalari Spycatcher
    tmpCategories[298]:AddAchievement(achievements[13023]) -- It's Really Getting Out of Hand
    tmpCategories[298]:AddAchievement(achievements[13022]) -- Revenge is Best Served Speedily
    tmpCategories[298]:AddAchievement(achievements[13021]) -- A Most Efficient Apocalypse
    tmpCategories[299] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {863}, nil, true)); -- Exploration
    tmpCategories[297]:AddCategory(tmpCategories[299]);
    tmpCategories[299]:AddAchievement(achievements[12561]) -- Explore Nazmir
    tmpCategories[299]:AddAchievement(achievements[12942]) -- Adventurer of Nazmir
    tmpCategories[299]:AddAchievement(achievements[12771]) -- Treasures of Nazmir
    tmpCategories[299]:AddAchievement(achievements[12588]) -- Eat Your Greens
    tmpCategories[299]:AddAchievement(achievements[13024]) -- "Carved in Stone, Written in Blood"
    tmpCategories[299]:AddAchievement(achievements[13028]) -- Hoppin' Sad
    tmpCategories[300] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), {863}, nil, true)); -- PvP
    tmpCategories[297]:AddCategory(tmpCategories[300]);
    tmpCategories[300]:AddAchievement(achievements[12574]) -- Tour of Duty: Nazmir
    tmpCategories[301] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {863}, nil, true)); -- Reputation
    tmpCategories[297]:AddCategory(tmpCategories[301]);
    tmpCategories[301]:AddAchievement(achievements[12948]) -- Talanji's Expedition
    tmpCategories[302] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(864).name, {864})); -- Vol'dun
    tmpCategories[259]:AddCategory(tmpCategories[302]);
    tmpCategories[303] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {864}, nil, true)); -- Quests
    tmpCategories[302]:AddCategory(tmpCategories[303]);
    tmpCategories[303]:AddAchievement(achievements[12478]) -- Secrets in the Sands
    tmpCategories[303]:AddAchievement(achievements[13437]) -- Scavenge like a Vulpera
    tmpCategories[303]:AddAchievement(achievements[13009]) -- Adept Sandfisher
    tmpCategories[303]:AddAchievement(achievements[13011]) -- Scourge of Zem'lan
    tmpCategories[303]:AddAchievement(achievements[13014]) -- Vorrik's Champion
    tmpCategories[303]:AddAchievement(achievements[13041]) -- "Hungry, Hungry Ranishu"
    tmpCategories[303]:AddAchievement(achievements[13017]) -- Champion of the Vulpera
    tmpCategories[304] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {864}, nil, true)); -- Exploration
    tmpCategories[302]:AddCategory(tmpCategories[304]);
    tmpCategories[304]:AddAchievement(achievements[12560]) -- Explore Vol'dun
    tmpCategories[304]:AddAchievement(achievements[12943]) -- Adventurer of Vol'dun
    tmpCategories[304]:AddAchievement(achievements[12849]) -- Treasures of Vol'dun
    tmpCategories[304]:AddAchievement(achievements[13016]) -- Scavenger of the Sands
    tmpCategories[304]:AddAchievement(achievements[13018]) -- Dune Rider
    tmpCategories[305] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), {864}, nil, true)); -- PvP
    tmpCategories[302]:AddCategory(tmpCategories[305]);
    tmpCategories[305]:AddAchievement(achievements[12576]) -- Tour of Duty: Vol'dun
    tmpCategories[306] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {864}, nil, true)); -- Reputation
    tmpCategories[302]:AddCategory(tmpCategories[306]);
    tmpCategories[306]:AddAchievement(achievements[12949]) -- The Voldunai
    tmpCategories[307] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1462).name, {1462})); -- Mechagon Island
    tmpCategories[259]:AddCategory(tmpCategories[307]);
    tmpCategories[307]:AddAchievement(achievements[13708]) -- Most Minis Wins
    tmpCategories[307]:AddAchievement(achievements[13513]) -- Available in Eight Colors
    tmpCategories[308] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {1462}, nil, true)); -- Quests
    tmpCategories[307]:AddCategory(tmpCategories[308]);
    tmpCategories[308]:AddAchievement(achievements[13553]) -- The Mechagonian Threat
    tmpCategories[308]:AddAchievement(achievements[13700]) -- The Mechagonian Threat
    tmpCategories[308]:AddAchievement(achievements[13790]) -- Armed for Action
    tmpCategories[308]:AddAchievement(achievements[13791]) -- Making the Mount
    tmpCategories[309] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {1462}, nil, true)); -- Exploration
    tmpCategories[307]:AddCategory(tmpCategories[309]);
    tmpCategories[309]:AddAchievement(achievements[13776]) -- Explore Mechagon
    tmpCategories[309]:AddAchievement(achievements[13470]) -- Rest In Pistons
    tmpCategories[309]:AddAchievement(achievements[13472]) -- Deep Pockets
    tmpCategories[309]:AddAchievement(achievements[13482]) -- Head Financier of Mechagon
    tmpCategories[309]:AddAchievement(achievements[13473]) -- Diversified Investments
    tmpCategories[309]:AddAchievement(achievements[13474]) -- Junkyard Machinist
    tmpCategories[309]:AddAchievement(achievements[13696]) -- Scrappy's Best Friend
    tmpCategories[309]:AddAchievement(achievements[13686]) -- Junkyard Melomaniac
    tmpCategories[309]:AddAchievement(achievements[13475]) -- Junkyard Scavenger
    tmpCategories[309]:AddAchievement(achievements[13477]) -- Junkyard Apprentice
    tmpCategories[309]:AddAchievement(achievements[13476]) -- Junkyard Tinkerer
    tmpCategories[309]:AddAchievement(achievements[13555]) -- Junkyard Tinkmaster
    tmpCategories[309]:AddAchievement(achievements[13478]) -- Junkyard Collector
    tmpCategories[309]:AddAchievement(achievements[13479]) -- Junkyard Architect
    tmpCategories[309]:AddAchievement(achievements[13556]) -- Outside Influences
    tmpCategories[309]:AddAchievement(achievements[13541]) -- Mecha-Done
    tmpCategories[310] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), {1462}, nil, true)); -- PvP
    tmpCategories[307]:AddCategory(tmpCategories[310]);
    tmpCategories[310]:AddAchievement(achievements[13570]) -- Tour of Duty: Mechagon
    tmpCategories[311] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {1462}, nil, true)); -- Reputation
    tmpCategories[307]:AddCategory(tmpCategories[311]);
    tmpCategories[311]:AddAchievement(achievements[13557]) -- Rustbolt Rebellion
    tmpCategories[312] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1355).name, {1355, 1528})); -- Nazjatar
    tmpCategories[259]:AddCategory(tmpCategories[312]);
    tmpCategories[313] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {1355, 1528}, nil, true)); -- Quests
    tmpCategories[312]:AddCategory(tmpCategories[313]);
    tmpCategories[313]:AddAchievement(achievements[13710]) -- Sunken Ambitions
    tmpCategories[313]:AddAchievement(achievements[13709]) -- Unfathomable
    tmpCategories[314] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {1355, 1528}, nil, true)); -- Exploration
    tmpCategories[312]:AddCategory(tmpCategories[314]);
    tmpCategories[314]:AddAchievement(achievements[13712]) -- Explore Nazjatar
    tmpCategories[314]:AddAchievement(achievements[13635]) -- Tour of the Depths
    tmpCategories[314]:AddAchievement(achievements[13690]) -- Nazjatarget Eliminated
    tmpCategories[314]:AddAchievement(achievements[13691]) -- I Thought You Said They'd Be Rare?
    tmpCategories[314]:AddAchievement(achievements[13692]) -- Give Me the Biggest Bag You've Got
    tmpCategories[314]:AddAchievement(achievements[13743]) -- Seasoned: Hunter Akana
    tmpCategories[314]:AddAchievement(achievements[13753]) -- Veteran: Hunter Akana
    tmpCategories[314]:AddAchievement(achievements[13758]) -- Battle-Scarred: Hunter Akana
    tmpCategories[314]:AddAchievement(achievements[13744]) -- Seasoned: Bladesman Inowari
    tmpCategories[314]:AddAchievement(achievements[13754]) -- Veteran: Bladesman Inowari
    tmpCategories[314]:AddAchievement(achievements[13759]) -- Battle-Scarred: Bladesman Inowari
    tmpCategories[314]:AddAchievement(achievements[13745]) -- Seasoned: Farseer Ori
    tmpCategories[314]:AddAchievement(achievements[13755]) -- Veteran: Farseer Ori
    tmpCategories[314]:AddAchievement(achievements[13760]) -- Battle-Scarred: Farseer Ori
    tmpCategories[314]:AddAchievement(achievements[13704]) -- Nautical Battlefield Training
    tmpCategories[314]:AddAchievement(achievements[13762]) -- Aqua Team Murder Force
    tmpCategories[314]:AddAchievement(achievements[13746]) -- Seasoned: Neri Sharpfin
    tmpCategories[314]:AddAchievement(achievements[13749]) -- Veteran: Neri Sharpfin
    tmpCategories[314]:AddAchievement(achievements[13750]) -- Battle-Scarred: Neri Sharpfin
    tmpCategories[314]:AddAchievement(achievements[13747]) -- Seasoned: Poen Gillbrack
    tmpCategories[314]:AddAchievement(achievements[13751]) -- Veteran: Poen Gillbrack
    tmpCategories[314]:AddAchievement(achievements[13756]) -- Battle-Scarred: Poen Gillbrack
    tmpCategories[314]:AddAchievement(achievements[13748]) -- Seasoned: Vim Brineheart
    tmpCategories[314]:AddAchievement(achievements[13752]) -- Veteran: Vim Brineheart
    tmpCategories[314]:AddAchievement(achievements[13757]) -- Battle-Scarred: Vim Brineheart
    tmpCategories[314]:AddAchievement(achievements[13645]) -- Nautical Battlefield Training
    tmpCategories[314]:AddAchievement(achievements[13761]) -- Aqua Team Murder Force
    tmpCategories[314]:AddAchievement(achievements[13711]) -- A Fistful of Manapearls
    tmpCategories[314]:AddAchievement(achievements[13765]) -- Subaquatic Support
    tmpCategories[314]:AddAchievement(achievements[13549]) -- Trove Tracker
    tmpCategories[314]:AddAchievement(achievements[13722]) -- Terror of the Tadpoles
    tmpCategories[314]:AddAchievement(achievements[13699]) -- Periodic Destruction
    tmpCategories[314]:AddAchievement(achievements[13713]) -- Nothing To Scry About
    tmpCategories[314]:AddAchievement(achievements[13707]) -- Mrrl's Secret Stash
    tmpCategories[314]:AddAchievement(achievements[13763]) -- Back to the Depths!
    tmpCategories[314]:AddAchievement(achievements[13764]) -- Puzzle Performer
    tmpCategories[314]:AddAchievement(achievements[13836]) -- Feline Figurines Found
    tmpCategories[314]:AddAchievement(achievements[13638]) -- Undersea Usurper
    tmpCategories[315] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), {1355, 1528}, nil, true)); -- PvP
    tmpCategories[312]:AddCategory(tmpCategories[315]);
    tmpCategories[315]:AddAchievement(achievements[13569]) -- Tour of Duty: Nazjatar
    tmpCategories[315]:AddAchievement(achievements[13568]) -- For Nazjatar!
    tmpCategories[315]:AddAchievement(achievements[13720]) -- Supplying the Assassins
    tmpCategories[316] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {1355, 1528}, nil, true)); -- Reputation
    tmpCategories[312]:AddCategory(tmpCategories[316]);
    tmpCategories[316]:AddAchievement(achievements[13558]) -- Waveblade Ankoan
    tmpCategories[316]:AddAchievement(achievements[13559]) -- The Unshackled
    tmpCategories[317] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1530).name, {391, 392, 393, 394, 395, 396, 1530})); -- Vale of Eternal Blossoms
    tmpCategories[259]:AddCategory(tmpCategories[317]);
    tmpCategories[318] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {391, 392, 393, 394, 395, 396, 1530}, nil, true)); -- Quests
    tmpCategories[317]:AddCategory(tmpCategories[318]);
    tmpCategories[318]:AddAchievement(achievements[14154]) -- Defend the Vale
    tmpCategories[318]:AddAchievement(achievements[14161]) -- All Consuming
    tmpCategories[447] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {391, 392, 393, 394, 395, 396, 1530}, nil, true)); -- Exploration
    tmpCategories[317]:AddCategory(tmpCategories[447]);
    tmpCategories[447]:AddAchievement(achievements[14160]) -- Rare to Well Done
    tmpCategories[447]:AddAchievement(achievements[14159]) -- Combating the Corruption
    tmpCategories[447]:AddAchievement(achievements[14158]) -- It's Not A Tumor!
    tmpCategories[321] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {391, 392, 393, 394, 395, 396, 1530}, nil, true)); -- Reputation
    tmpCategories[317]:AddCategory(tmpCategories[321]);
    tmpCategories[321]:AddAchievement(achievements[14156]) -- The Rajani
    tmpCategories[322] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1527).name, {1527})); -- Uldum
    tmpCategories[259]:AddCategory(tmpCategories[322]);
    tmpCategories[323] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {1527}, nil, true)); -- Quests
    tmpCategories[322]:AddCategory(tmpCategories[323]);
    tmpCategories[323]:AddAchievement(achievements[14153]) -- Uldum Under Assault
    tmpCategories[323]:AddAchievement(achievements[14161]) -- All Consuming
    tmpCategories[448] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {1527}, nil, true)); -- Exploration
    tmpCategories[322]:AddCategory(tmpCategories[448]);
    tmpCategories[448]:AddAchievement(achievements[14160]) -- Rare to Well Done
    tmpCategories[448]:AddAchievement(achievements[14159]) -- Combating the Corruption
    tmpCategories[448]:AddAchievement(achievements[14158]) -- It's Not A Tumor!
    tmpCategories[324] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {1527}, nil, true)); -- Reputation
    tmpCategories[322]:AddCategory(tmpCategories[324]);
    tmpCategories[324]:AddAchievement(achievements[14155]) -- Uldum Accord
    tmpCategories[325] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15272)))); -- Dungeons
    tmpCategories[258]:AddCategory(tmpCategories[325]);
    tmpCategories[325]:AddAchievement(achievements[12807]) -- Battle for Azeroth Dungeon Hero
    tmpCategories[325]:AddAchievement(achievements[12812]) -- Glory of the Wartorn Hero
    tmpCategories[325]:AddAchievement(achievements[13075]) -- Battle for Azeroth Keymaster
    tmpCategories[325]:AddAchievement(achievements[13079]) -- Battle for Azeroth Keystone Conqueror: Season One
    tmpCategories[325]:AddAchievement(achievements[13080]) -- Battle for Azeroth Keystone Master: Season One
    tmpCategories[325]:AddAchievement(achievements[13448]) -- Battle for Azeroth Keystone Conqueror: Season Two
    tmpCategories[325]:AddAchievement(achievements[13449]) -- Battle for Azeroth Keystone Master: Season Two
    tmpCategories[325]:AddAchievement(achievements[13780]) -- Battle for Azeroth Keystone Conqueror: Season Three
    tmpCategories[325]:AddAchievement(achievements[13781]) -- Battle for Azeroth Keystone Master: Season Three
    tmpCategories[325]:AddAchievement(achievements[14144]) -- Battle for Azeroth Keystone Conqueror: Season Four
    tmpCategories[325]:AddAchievement(achievements[14145]) -- Battle for Azeroth Keystone Master: Season Four
    tmpCategories[327] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1001)), {936})); -- Freelhold
    tmpCategories[325]:AddCategory(tmpCategories[327]);
    tmpCategories[327]:AddAchievement(achievements[12550]) -- Pecking Order
    tmpCategories[327]:AddAchievement(achievements[12548]) -- I'm in Charge Now!
    tmpCategories[327]:AddAchievement(achievements[12998]) -- That Sweete Booty
    tmpCategories[327]:AddAchievement(achievements[12831]) -- Freehold
    tmpCategories[327]:AddAchievement(achievements[12832]) -- Heroic: Freehold
    tmpCategories[327]:AddAchievement(achievements[12833]) -- Mythic: Freehold
    tmpCategories[328] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1021)), {1015, 1016, 1017, 1018, 1029})); -- Waycrest Manor
    tmpCategories[325]:AddCategory(tmpCategories[328]);
    tmpCategories[328]:AddAchievement(achievements[12495]) -- Run Wild Like a Man On Fire
    tmpCategories[328]:AddAchievement(achievements[12490]) -- Alchemical Romance
    tmpCategories[328]:AddAchievement(achievements[12489]) -- Losing My Profession
    tmpCategories[328]:AddAchievement(achievements[12483]) -- Waycrest Manor
    tmpCategories[328]:AddAchievement(achievements[12484]) -- Heroic: Waycrest Manor
    tmpCategories[328]:AddAchievement(achievements[12488]) -- Mythic: Waycrest Manor
    tmpCategories[329] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1036)), {1039, 1040})); -- Shrine of the Storm
    tmpCategories[325]:AddCategory(tmpCategories[329]);
    tmpCategories[329]:AddAchievement(achievements[12600]) -- Breath of the Shrine
    tmpCategories[329]:AddAchievement(achievements[12601]) -- The Void Lies Sleeping
    tmpCategories[329]:AddAchievement(achievements[12602]) -- Trust No One
    tmpCategories[329]:AddAchievement(achievements[12835]) -- Shrine of the Storm
    tmpCategories[329]:AddAchievement(achievements[12837]) -- Heroic: Shrine of the Storm
    tmpCategories[329]:AddAchievement(achievements[12838]) -- Mythic: Shrine of the Storm
    tmpCategories[330] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(968)), {934, 935})); -- Atal'Dazar
    tmpCategories[325]:AddCategory(tmpCategories[330]);
    tmpCategories[330]:AddAchievement(achievements[12270]) -- Bringing Hexy Back
    tmpCategories[330]:AddAchievement(achievements[12272]) -- Gold Fever
    tmpCategories[330]:AddAchievement(achievements[12273]) -- It's Lit!
    tmpCategories[330]:AddAchievement(achievements[12824]) -- Atal'Dazar
    tmpCategories[330]:AddAchievement(achievements[12825]) -- Heroic: Atal'Dazar
    tmpCategories[330]:AddAchievement(achievements[12826]) -- Mythic: Atal'Dazar
    tmpCategories[331] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1022)), {1041, 1042})); -- The Underrot
    tmpCategories[325]:AddCategory(tmpCategories[331]);
    tmpCategories[331]:AddAchievement(achievements[12498]) -- Taint Nobody Got Time For That
    tmpCategories[331]:AddAchievement(achievements[12549]) -- Not a Fun Guy
    tmpCategories[331]:AddAchievement(achievements[12499]) -- Sporely Alive
    tmpCategories[331]:AddAchievement(achievements[12500]) -- Underrot
    tmpCategories[331]:AddAchievement(achievements[12501]) -- Heroic: Underrot
    tmpCategories[331]:AddAchievement(achievements[12502]) -- Mythic: Underrot
    tmpCategories[332] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1030)), {1038, 1043})); -- Temple of Sethraliss
    tmpCategories[325]:AddCategory(tmpCategories[332]);
    tmpCategories[332]:AddAchievement(achievements[12507]) -- Snake Eater
    tmpCategories[332]:AddAchievement(achievements[12503]) -- Snake Eyes
    tmpCategories[332]:AddAchievement(achievements[12508]) -- "Good Night, Sweet Prince"
    tmpCategories[332]:AddAchievement(achievements[12504]) -- The Temple of Sethraliss
    tmpCategories[332]:AddAchievement(achievements[12505]) -- Heroic: The Temple of Sethraliss
    tmpCategories[332]:AddAchievement(achievements[12506]) -- Mythic: The Temple of Sethraliss
    tmpCategories[333] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1002)), {974, 975, 976, 977, 978, 979, 980})); -- Tol Dagor
    tmpCategories[325]:AddCategory(tmpCategories[333]);
    tmpCategories[333]:AddAchievement(achievements[12457]) -- Remix to Ignition
    tmpCategories[333]:AddAchievement(achievements[12462]) -- Shot Through the Heart
    tmpCategories[333]:AddAchievement(achievements[12840]) -- Tol Dagor
    tmpCategories[333]:AddAchievement(achievements[12841]) -- Heroic: Tol Dagor
    tmpCategories[333]:AddAchievement(achievements[12842]) -- Mythic: Tol Dagor
    tmpCategories[334] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1012)), {1010})); -- The MOTHERLODE!!
    tmpCategories[325]:AddCategory(tmpCategories[334]);
    tmpCategories[334]:AddAchievement(achievements[12855]) -- Pitch Invasion
    tmpCategories[334]:AddAchievement(achievements[12854]) -- Ready for Raiding VI
    tmpCategories[334]:AddAchievement(achievements[12844]) -- The MOTHERLODE!!
    tmpCategories[334]:AddAchievement(achievements[12845]) -- Heroic: The MOTHERLODE!!
    tmpCategories[334]:AddAchievement(achievements[12846]) -- Mythic: The MOTHERLODE!!
    tmpCategories[335] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1023)), {1162})); -- Siege of Boralus
    tmpCategories[325]:AddCategory(tmpCategories[335]);
    tmpCategories[335]:AddAchievement(achievements[12727]) -- Stand by Me
    tmpCategories[335]:AddAchievement(achievements[12726]) -- A Fish Out of Water
    tmpCategories[335]:AddAchievement(achievements[12489]) -- Losing My Profession
    tmpCategories[335]:AddAchievement(achievements[12847]) -- Siege of Boralus
    tmpCategories[336] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1041)), {1004})); -- Kings' Rest
    tmpCategories[325]:AddCategory(tmpCategories[336]);
    tmpCategories[336]:AddAchievement(achievements[12722]) -- It Belongs in a Mausoleum!
    tmpCategories[336]:AddAchievement(achievements[12721]) -- Wrap God
    tmpCategories[336]:AddAchievement(achievements[12723]) -- How to Keep a Mummy
    tmpCategories[336]:AddAchievement(achievements[12848]) -- Kings' Rest
    tmpCategories[337] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1178)), {1490, 1491, 1493, 1494, 1497})); -- Operation: Mechagon
    tmpCategories[325]:AddCategory(tmpCategories[337]);
    tmpCategories[337]:AddAchievement(achievements[13706]) -- Stay Positive
    tmpCategories[337]:AddAchievement(achievements[13698]) -- Clean Up On Aisle Mechagon
    tmpCategories[337]:AddAchievement(achievements[13723]) -- "M.C., Hammered"
    tmpCategories[337]:AddAchievement(achievements[13545]) -- "Go Ahead, Make My Daisy"
    tmpCategories[337]:AddAchievement(achievements[13624]) -- Keep DPS-ing and Nobody Explodes
    tmpCategories[337]:AddAchievement(achievements[13789]) -- Hertz Locker
    tmpCategories[326] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15271)))); -- Raids
    tmpCategories[258]:AddCategory(tmpCategories[326]);
    tmpCategories[326]:AddAchievement(achievements[12806]) -- Glory of the Uldir Raider
    tmpCategories[326]:AddAchievement(achievements[13315]) -- Glory of the Dazar'alor Raider
    tmpCategories[326]:AddAchievement(achievements[13687]) -- Glory of the Eternal Raider
    tmpCategories[326]:AddAchievement(achievements[14146]) -- Glory of the Ny'alotha Raider
    tmpCategories[338] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1031)), {1148, 1149, 1150, 1151, 1152, 1153, 1154, 1155})); -- Uldir
    tmpCategories[326]:AddCategory(tmpCategories[338]);
    tmpCategories[338]:AddAchievement(achievements[12937]) -- Elevator Music
    tmpCategories[338]:AddAchievement(achievements[12938]) -- Parental Controls
    tmpCategories[338]:AddAchievement(achievements[12828]) -- What's in the Box?
    tmpCategories[338]:AddAchievement(achievements[12823]) -- Thrash Mouth - All Stars
    tmpCategories[338]:AddAchievement(achievements[12772]) -- Now We Got Bad Blood
    tmpCategories[338]:AddAchievement(achievements[12830]) -- Edgelords
    tmpCategories[338]:AddAchievement(achievements[12836]) -- Existential Crisis
    tmpCategories[338]:AddAchievement(achievements[12551]) -- Double Dribble
    tmpCategories[338]:AddAchievement(achievements[12521]) -- Halls of Containment
    tmpCategories[338]:AddAchievement(achievements[12522]) -- Crimson Descent
    tmpCategories[338]:AddAchievement(achievements[12523]) -- Heart of Corruption
    tmpCategories[338]:AddAchievement(achievements[12524]) -- Mythic: Taloc
    tmpCategories[338]:AddAchievement(achievements[12526]) -- Mythic: MOTHER
    tmpCategories[338]:AddAchievement(achievements[12527]) -- Mythic: Zek'voz
    tmpCategories[338]:AddAchievement(achievements[12530]) -- Mythic: Fetid Devourer
    tmpCategories[338]:AddAchievement(achievements[12529]) -- Mythic: Vectis
    tmpCategories[338]:AddAchievement(achievements[12531]) -- Mythic: Zul
    tmpCategories[338]:AddAchievement(achievements[12532]) -- Mythic: Mythrax the Unraveler
    tmpCategories[338]:AddAchievement(achievements[12533]) -- Mythic: G'huun
    tmpCategories[338]:AddAchievement(achievements[12536]) -- Ahead of the Curve: G'huun
    tmpCategories[338]:AddAchievement(achievements[12535]) -- Cutting Edge: G'huun
    tmpCategories[338]:AddAchievement(achievements[12991]) -- "New Mog, G'huun This?"
    tmpCategories[339] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1176)), {1352, 1353, 1354, 1356, 1357, 1358, 1364, 1367})); -- Battle of Dazar'alor
    tmpCategories[326]:AddCategory(tmpCategories[339]);
    tmpCategories[339]:AddAchievement(achievements[13316]) -- Can I Get a Hek Hek Hek Yeah?
    tmpCategories[339]:AddAchievement(achievements[13431]) -- Hidden Dragon
    tmpCategories[339]:AddAchievement(achievements[13383]) -- Barrel of Monkeys
    tmpCategories[339]:AddAchievement(achievements[13345]) -- Praise the Sunflower
    tmpCategories[339]:AddAchievement(achievements[13325]) -- Walk the Dinosaur
    tmpCategories[339]:AddAchievement(achievements[13425]) -- "We Got Spirit, How About You?"
    tmpCategories[339]:AddAchievement(achievements[13401]) -- I Got Next!
    tmpCategories[339]:AddAchievement(achievements[13430]) -- De Lurker Be'loa
    tmpCategories[339]:AddAchievement(achievements[13410]) -- Snow Fun Allowed
    tmpCategories[339]:AddAchievement(achievements[13286]) -- Siege of Dazar'alor
    tmpCategories[339]:AddAchievement(achievements[13289]) -- Defense of Dazar'alor
    tmpCategories[339]:AddAchievement(achievements[13287]) -- Empire's Fall
    tmpCategories[339]:AddAchievement(achievements[13290]) -- Death's Bargain
    tmpCategories[339]:AddAchievement(achievements[13288]) -- Might of the Alliance
    tmpCategories[339]:AddAchievement(achievements[13291]) -- Victory or Death
    tmpCategories[339]:AddAchievement(achievements[13292]) -- Mythic: Champion of the Light
    tmpCategories[339]:AddAchievement(achievements[13298]) -- Mythic: Jadefire Masters
    tmpCategories[339]:AddAchievement(achievements[13293]) -- Mythic: Grong
    tmpCategories[339]:AddAchievement(achievements[13295]) -- Mythic: Jadefire Masters
    tmpCategories[339]:AddAchievement(achievements[13299]) -- Mythic: Opulence
    tmpCategories[339]:AddAchievement(achievements[13300]) -- Mythic: Conclave of the Chosen
    tmpCategories[339]:AddAchievement(achievements[13311]) -- Mythic: King Rastakhan
    tmpCategories[339]:AddAchievement(achievements[13312]) -- Mythic: Mekkatorque
    tmpCategories[339]:AddAchievement(achievements[13313]) -- Mythic: Stormwall Blockade
    tmpCategories[339]:AddAchievement(achievements[13314]) -- Mythic: Lady Jaina Proudmoore
    tmpCategories[339]:AddAchievement(achievements[13322]) -- Ahead of the Curve: Lady Jaina Proudmoore
    tmpCategories[339]:AddAchievement(achievements[13323]) -- Cutting Edge: Lady Jaina Proudmoore
    tmpCategories[339]:AddAchievement(achievements[13385]) -- Daz'aling Attire
    tmpCategories[340] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1177)), {1345, 1346})); -- Crucible of Storms
    tmpCategories[326]:AddCategory(tmpCategories[340]);
    tmpCategories[340]:AddAchievement(achievements[13501]) -- Gotta Bounce
    tmpCategories[340]:AddAchievement(achievements[13506]) -- A Good Eye-dea
    tmpCategories[340]:AddAchievement(achievements[13414]) -- Crucible of Storms
    tmpCategories[340]:AddAchievement(achievements[13416]) -- Mythic: The Restless Cabal
    tmpCategories[340]:AddAchievement(achievements[13417]) -- "Mythic: Uu'nat, Harbinger of the Void"
    tmpCategories[340]:AddAchievement(achievements[13418]) -- "Ahead of the Curve: Uu'nat, Harbinger of the Void"
    tmpCategories[340]:AddAchievement(achievements[13419]) -- "Cutting Edge: Uu'nat, Harbinger of the Void"
    tmpCategories[341] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1179)), {1512, 1513, 1514, 1516, 1517, 1518, 1519, 1520})); -- The Eternal Palace
    tmpCategories[326]:AddCategory(tmpCategories[341]);
    tmpCategories[341]:AddAchievement(achievements[13684]) -- You and What Army?
    tmpCategories[341]:AddAchievement(achievements[13628]) -- Intro to Marine Biology
    tmpCategories[341]:AddAchievement(achievements[13767]) -- Fun Run
    tmpCategories[341]:AddAchievement(achievements[13629]) -- Simple Geometry
    tmpCategories[341]:AddAchievement(achievements[13724]) -- A Smack of Jellyfish
    tmpCategories[341]:AddAchievement(achievements[13633]) -- If It Pleases the Court
    tmpCategories[341]:AddAchievement(achievements[13716]) -- Lactose Intolerant
    tmpCategories[341]:AddAchievement(achievements[13768]) -- The Best of Us
    tmpCategories[341]:AddAchievement(achievements[13718]) -- The Grand Reception
    tmpCategories[341]:AddAchievement(achievements[13719]) -- Depths of the Devoted
    tmpCategories[341]:AddAchievement(achievements[13725]) -- The Circle of Stars
    tmpCategories[341]:AddAchievement(achievements[13726]) -- Mythic: Abyssal Commander Sivara
    tmpCategories[341]:AddAchievement(achievements[13728]) -- Mythic: Blackwater Behemoth
    tmpCategories[341]:AddAchievement(achievements[13727]) -- Mythic: Radiance of Azshara
    tmpCategories[341]:AddAchievement(achievements[13729]) -- Mythic: Lady Ashvane
    tmpCategories[341]:AddAchievement(achievements[13730]) -- Mythic: Orgozoa
    tmpCategories[341]:AddAchievement(achievements[13731]) -- Mythic: The Queen's Court
    tmpCategories[341]:AddAchievement(achievements[13732]) -- Mythic: Za'qul
    tmpCategories[341]:AddAchievement(achievements[13733]) -- Mythic: Queen Azshara
    tmpCategories[341]:AddAchievement(achievements[13784]) -- Ahead of the Curve: Queen Azshara
    tmpCategories[341]:AddAchievement(achievements[13785]) -- Cutting Edge: Queen Azshara
    tmpCategories[341]:AddAchievement(achievements[13571]) -- Under the Seams
    tmpCategories[342] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1180)), {1580, 1581, 1582, 1590, 1591, 1592, 1593, 1594, 1595, 1596, 1597})); -- Ny'alotha, the Waking City
    tmpCategories[326]:AddCategory(tmpCategories[342]);
    tmpCategories[342]:AddAchievement(achievements[14019]) -- Smoke Test
    tmpCategories[342]:AddAchievement(achievements[14008]) -- Mana Sponge
    tmpCategories[342]:AddAchievement(achievements[14037]) -- Phase 3: Prophet
    tmpCategories[342]:AddAchievement(achievements[14024]) -- Buzzer Beater
    tmpCategories[342]:AddAchievement(achievements[14139]) -- Total Annihilation
    tmpCategories[342]:AddAchievement(achievements[14023]) -- Realizing Your Potential
    tmpCategories[342]:AddAchievement(achievements[13999]) -- How? Isn't it Obelisk?
    tmpCategories[342]:AddAchievement(achievements[13990]) -- "You Can Pet the Dog, But..."
    tmpCategories[342]:AddAchievement(achievements[14026]) -- Temper Tantrum
    tmpCategories[342]:AddAchievement(achievements[14038]) -- Bloody Mess
    tmpCategories[342]:AddAchievement(achievements[14147]) -- Cleansing Treatment
    tmpCategories[342]:AddAchievement(achievements[14148]) -- It's Not A Cult
    tmpCategories[342]:AddAchievement(achievements[14193]) -- Vision of Destiny
    tmpCategories[342]:AddAchievement(achievements[14194]) -- Halls of Devotion
    tmpCategories[342]:AddAchievement(achievements[14195]) -- Gift of Flesh
    tmpCategories[342]:AddAchievement(achievements[14196]) -- The Waking Dream
    tmpCategories[342]:AddAchievement(achievements[14041]) -- "Mythic: Wrathion, the Black Emperor"
    tmpCategories[342]:AddAchievement(achievements[14043]) -- Mythic: Maut
    tmpCategories[342]:AddAchievement(achievements[14044]) -- Mythic: The Prophet Skitra
    tmpCategories[342]:AddAchievement(achievements[14045]) -- Mythic: Dark Inquisitor Xanesh
    tmpCategories[342]:AddAchievement(achievements[14050]) -- Mythic: Vexiona
    tmpCategories[342]:AddAchievement(achievements[14046]) -- Mythic: The Hivemind
    tmpCategories[342]:AddAchievement(achievements[14051]) -- Mythic: Ra-den the Despoiled
    tmpCategories[342]:AddAchievement(achievements[14048]) -- Mythic: Shad'har the Insatiable
    tmpCategories[342]:AddAchievement(achievements[14049]) -- Mythic: Drest'agath
    tmpCategories[342]:AddAchievement(achievements[14052]) -- "Mythic: Il'gynoth, Corruption Reborn"
    tmpCategories[342]:AddAchievement(achievements[14054]) -- Mythic: Carapace of N'Zoth
    tmpCategories[342]:AddAchievement(achievements[14055]) -- Mythic: N'Zoth the Corruptor
    tmpCategories[342]:AddAchievement(achievements[14068]) -- Ahead of the Curve: N'Zoth the Corruptor
    tmpCategories[342]:AddAchievement(achievements[14069]) -- Cutting Edge: N'Zoth the Corruptor
    tmpCategories[342]:AddAchievement(achievements[14058]) -- All Eyes On Me
    tmpCategories[343] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15117)))); -- Pet Battles
    tmpCategories[258]:AddCategory(tmpCategories[343]);
    tmpCategories[343]:AddAchievement(achievements[12930]) -- Battle Safari
    tmpCategories[343]:AddAchievement(achievements[13693]) -- Mecha-Safari
    tmpCategories[343]:AddAchievement(achievements[13694]) -- Nazjatari Safari
    tmpCategories[343]:AddAchievement(achievements[13715]) -- From The Belly Of The Jelly
    tmpCategories[343]:AddAchievement(achievements[12936]) -- Battle on Zandalar and Kul Tiras
    tmpCategories[343]:AddAchievement(achievements[13280]) -- Hobbyist Aquarist
    tmpCategories[343]:AddAchievement(achievements[13270]) -- Beast Mode
    tmpCategories[343]:AddAchievement(achievements[13271]) -- Critters With Huge Teeth
    tmpCategories[343]:AddAchievement(achievements[13272]) -- Dragons Make Everything Better
    tmpCategories[343]:AddAchievement(achievements[13273]) -- Element of Success
    tmpCategories[343]:AddAchievement(achievements[13274]) -- Fun With Flying
    tmpCategories[343]:AddAchievement(achievements[13281]) -- Human Resources
    tmpCategories[343]:AddAchievement(achievements[13275]) -- Magician's Secrets
    tmpCategories[343]:AddAchievement(achievements[13277]) -- Machine Learning
    tmpCategories[343]:AddAchievement(achievements[13278]) -- Not Quite Dead Yet
    tmpCategories[343]:AddAchievement(achievements[13279]) -- Family Battler
    tmpCategories[343]:AddAchievement(achievements[13625]) -- Mighty Minions of Mechagon
    tmpCategories[343]:AddAchievement(achievements[13626]) -- Nautical Nuisances of Nazjatar
    tmpCategories[343]:AddAchievement(achievements[13695]) -- Team Aquashock
    tmpCategories[793] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15282)) .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Brawler's Guild (Legacy)
    tmpCategories[258]:AddCategory(tmpCategories[793]);
    tmpCategories[793]:AddAchievement(achievements[11558]) -- The First Rule of Brawler's Guild
    tmpCategories[793]:AddAchievement(achievements[13186]) -- You Are Not Your $#*@! Legplates
    tmpCategories[793]:AddAchievement(achievements[13189]) -- The Second Rule of Brawler's Guild
    tmpCategories[793]:AddAchievement(achievements[13191]) -- Brawler for Azeroth
    tmpCategories[793]:AddAchievement(achievements[11559]) -- The First Rule of Brawler's Guild
    tmpCategories[793]:AddAchievement(achievements[13188]) -- You Are Not Your $#*@! Legplates
    tmpCategories[793]:AddAchievement(achievements[13190]) -- The Second Rule of Brawler's Guild
    tmpCategories[793]:AddAchievement(achievements[13192]) -- Brawler for Azeroth
    tmpCategories[793]:AddAchievement(achievements[11567]) -- You Are Not The Contents Of Your Wallet
    tmpCategories[793]:AddAchievement(achievements[11570]) -- Educated Guesser
    tmpCategories[793]:AddAchievement(achievements[13194]) -- I Am Thrall's Complete Lack Of Surprise
    tmpCategories[793]:AddAchievement(achievements[11573]) -- Rumble Club
    tmpCategories[425] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15307)))); -- Island Expeditions
    tmpCategories[258]:AddCategory(tmpCategories[425]);
    tmpCategories[425]:AddAchievement(achievements[13142]) -- Archipelago Explorer
    tmpCategories[425]:AddAchievement(achievements[13122]) -- Island Conqueror
    tmpCategories[425]:AddAchievement(achievements[13141]) -- Island Slayer
    tmpCategories[425]:AddAchievement(achievements[12596]) -- No Tourist
    tmpCategories[425]:AddAchievement(achievements[12594]) -- Competent Captain
    tmpCategories[425]:AddAchievement(achievements[12595]) -- Expert Expeditioner
    tmpCategories[425]:AddAchievement(achievements[12597]) -- Bayside Brawler
    tmpCategories[425]:AddAchievement(achievements[13120]) -- Blood in the Water
    tmpCategories[425]:AddAchievement(achievements[13121]) -- Notorious
    tmpCategories[425]:AddAchievement(achievements[13129]) -- Sucker Punch
    tmpCategories[425]:AddAchievement(achievements[13123]) -- My Dubs
    tmpCategories[425]:AddAchievement(achievements[13124]) -- Metal Detector
    tmpCategories[425]:AddAchievement(achievements[13125]) -- Azerite Admiral
    tmpCategories[425]:AddAchievement(achievements[13126]) -- Give Me The Energy
    tmpCategories[425]:AddAchievement(achievements[13127]) -- Tell Me A Tale
    tmpCategories[425]:AddAchievement(achievements[13128]) -- I'm Here for the Pets
    tmpCategories[425]:AddAchievement(achievements[13132]) -- Helping Hand
    tmpCategories[425]:AddAchievement(achievements[13133]) -- Team Deathmatch
    tmpCategories[425]:AddAchievement(achievements[13135]) -- Team Deathmatch
    tmpCategories[425]:AddAchievement(achievements[13134]) -- Expedition Leader
    tmpCategories[425]:AddAchievement(achievements[13701]) -- Battlefield Brawler
    tmpCategories[425]:AddAchievement(achievements[13702]) -- Battlefield Tactician
    tmpCategories[425]:AddAchievement(achievements[13703]) -- Battlefield Master
    tmpCategories[436] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1687)), {981})); -- Un'gol Ruins
    tmpCategories[425]:AddCategory(tmpCategories[436]);
    tmpCategories[436]:AddAchievement(achievements[12590]) -- Un'gol Ruins
    tmpCategories[436]:AddAchievement(achievements[12589]) -- Heroic: Un'gol Ruins
    tmpCategories[436]:AddAchievement(achievements[12591]) -- Mythic: Un'gol Ruins
    tmpCategories[436]:AddAchievement(achievements[12592]) -- Ruined the Ruins
    tmpCategories[437] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1734)), {1036})); -- The Dread Chain
    tmpCategories[425]:AddCategory(tmpCategories[437]);
    tmpCategories[437]:AddAchievement(achievements[13095]) -- Dread Chain
    tmpCategories[437]:AddAchievement(achievements[13096]) -- Heroic: Dread Chain
    tmpCategories[437]:AddAchievement(achievements[13097]) -- Mythic: Dread Chain
    tmpCategories[437]:AddAchievement(achievements[13098]) -- Bane of the Chain
    tmpCategories[438] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1723)), {1033})); -- The Rotting Mire
    tmpCategories[425]:AddCategory(tmpCategories[438]);
    tmpCategories[438]:AddAchievement(achievements[13103]) -- Rotting Mire
    tmpCategories[438]:AddAchievement(achievements[13104]) -- Heroic: Rotting Mire
    tmpCategories[438]:AddAchievement(achievements[13105]) -- Mythic: Rotting Mire
    tmpCategories[438]:AddAchievement(achievements[13106]) -- Mire Marauder
    tmpCategories[439] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1750)), {1035})); -- The Molten Cay
    tmpCategories[425]:AddCategory(tmpCategories[439]);
    tmpCategories[439]:AddAchievement(achievements[13099]) -- Molten Cay
    tmpCategories[439]:AddAchievement(achievements[13100]) -- Heroic: Molten Cay
    tmpCategories[439]:AddAchievement(achievements[13101]) -- Mythic: Molten Cay
    tmpCategories[439]:AddAchievement(achievements[13102]) -- Clash at the Cay
    tmpCategories[440] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1724)), {1034})); -- Verdant Wilds
    tmpCategories[425]:AddCategory(tmpCategories[440]);
    tmpCategories[440]:AddAchievement(achievements[13111]) -- Verdant Wilds
    tmpCategories[440]:AddAchievement(achievements[13112]) -- Heroic: Verdant Wilds
    tmpCategories[440]:AddAchievement(achievements[13113]) -- Mythic: Verdant Wilds
    tmpCategories[440]:AddAchievement(achievements[13114]) -- War for the Wilds
    tmpCategories[441] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1725)), {1032})); -- Skittering Hollow
    tmpCategories[425]:AddCategory(tmpCategories[441]);
    tmpCategories[441]:AddAchievement(achievements[13107]) -- Skittering Hollow
    tmpCategories[441]:AddAchievement(achievements[13108]) -- Heroic: Skittering Hollow
    tmpCategories[441]:AddAchievement(achievements[13109]) -- Mythic: Skittering Hollow
    tmpCategories[441]:AddAchievement(achievements[13110]) -- Skittering Smashed
    tmpCategories[442] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1735)), {1037})); -- The Whispering Reef
    tmpCategories[425]:AddCategory(tmpCategories[442]);
    tmpCategories[442]:AddAchievement(achievements[13119]) -- Whispering Reef
    tmpCategories[442]:AddAchievement(achievements[13118]) -- Heroic: Whispering Reef
    tmpCategories[442]:AddAchievement(achievements[13116]) -- Mythic: Whispering Reef
    tmpCategories[442]:AddAchievement(achievements[13115]) -- Reef Madness
    tmpCategories[443] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1932)), {1337})); -- Jorundall
    tmpCategories[425]:AddCategory(tmpCategories[443]);
    tmpCategories[443]:AddAchievement(achievements[13389]) -- Jorundall
    tmpCategories[443]:AddAchievement(achievements[13394]) -- Heroic: Jorundall
    tmpCategories[443]:AddAchievement(achievements[13395]) -- Mythic: Jorundall
    tmpCategories[443]:AddAchievement(achievements[13399]) -- Jorundall Justice
    tmpCategories[444] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1928)), {1336})); -- Havenswood
    tmpCategories[425]:AddCategory(tmpCategories[444]);
    tmpCategories[444]:AddAchievement(achievements[13396]) -- Havenswood
    tmpCategories[444]:AddAchievement(achievements[13397]) -- Heroic: Havenswood
    tmpCategories[444]:AddAchievement(achievements[13398]) -- Mythic: Havenswood
    tmpCategories[444]:AddAchievement(achievements[13400]) -- Havenswood Hero
    tmpCategories[445] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1984)), {1501})); -- Crestfall
    tmpCategories[425]:AddCategory(tmpCategories[445]);
    tmpCategories[445]:AddAchievement(achievements[13577]) -- Crestfall
    tmpCategories[445]:AddAchievement(achievements[13578]) -- Heroic: Crestfall
    tmpCategories[445]:AddAchievement(achievements[13579]) -- Mythic: Crestfall
    tmpCategories[445]:AddAchievement(achievements[13580]) -- Crestfallen
    tmpCategories[446] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1983)), {1502})); -- Snowblossom Village
    tmpCategories[425]:AddCategory(tmpCategories[446]);
    tmpCategories[446]:AddAchievement(achievements[13581]) -- Snowblossom Village
    tmpCategories[446]:AddAchievement(achievements[13582]) -- Heroic: Snowblossom Village
    tmpCategories[446]:AddAchievement(achievements[13583]) -- Mythic: Snowblossom Village
    tmpCategories[446]:AddAchievement(achievements[13584]) -- Snowblossom Scrapper
    tmpCategories[426] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15308)), {1161, 1165})); -- War Effort
    tmpCategories[258]:AddCategory(tmpCategories[426]);
    tmpCategories[426]:AddAchievement(achievements[12867]) -- Azeroth at War: The Barrens
    tmpCategories[426]:AddAchievement(achievements[12896]) -- Azeroth at War: The Barrens
    tmpCategories[426]:AddAchievement(achievements[12869]) -- Azeroth at War: After Lordaeron
    tmpCategories[426]:AddAchievement(achievements[12898]) -- Azeroth at War: After Lordaeron
    tmpCategories[426]:AddAchievement(achievements[12870]) -- Azeroth at War: Kalimdor on Fire
    tmpCategories[426]:AddAchievement(achievements[12899]) -- Azeroth at War: Kalimdor on Fire
    tmpCategories[426]:AddAchievement(achievements[12872]) -- The Dirty Five
    tmpCategories[434] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1615)), {943, 1044, 1161, 1165})); -- Battle for Stromgarde
    tmpCategories[426]:AddCategory(tmpCategories[434]);
    tmpCategories[434]:AddAchievement(achievements[12873]) -- War is Hell
    tmpCategories[434]:AddAchievement(achievements[13735]) -- Heroic: War is Hell
    tmpCategories[434]:AddAchievement(achievements[12881]) -- War is Hell
    tmpCategories[434]:AddAchievement(achievements[13737]) -- Heroic: War is Hell
    tmpCategories[434]:AddAchievement(achievements[12877]) -- Strike Hard
    tmpCategories[434]:AddAchievement(achievements[12876]) -- Strike Fast
    tmpCategories[434]:AddAchievement(achievements[12888]) -- Strike Hard
    tmpCategories[434]:AddAchievement(achievements[12889]) -- Strike Fast
    tmpCategories[434]:AddAchievement(achievements[12878]) -- Leader of Troops
    tmpCategories[434]:AddAchievement(achievements[12884]) -- Leader of Troops
    tmpCategories[434]:AddAchievement(achievements[12879]) -- Tour of War
    tmpCategories[434]:AddAchievement(achievements[13738]) -- Heroic: Tour of War
    tmpCategories[434]:AddAchievement(achievements[12886]) -- Tour of War
    tmpCategories[434]:AddAchievement(achievements[13739]) -- Heroic: Tour of War
    tmpCategories[434]:AddAchievement(achievements[12874]) -- An Eventful Battle
    tmpCategories[435] = InsertAndReturn(categories, achievementCategory:New((GetLFGDungeonInfo(1901)), {1161, 1165, 1203, 1332, 1333, 1338})); -- The Battle for Darkshore
    tmpCategories[426]:AddCategory(tmpCategories[435]);
    tmpCategories[435]:AddAchievement(achievements[13296]) -- War for the Shore
    tmpCategories[435]:AddAchievement(achievements[14149]) -- Heroic: War for the Shore
    tmpCategories[435]:AddAchievement(achievements[13297]) -- War for the Shore
    tmpCategories[435]:AddAchievement(achievements[14150]) -- Heroic: War for the Shore
    tmpCategories[435]:AddAchievement(achievements[13301]) -- Under Cover of Darkness
    tmpCategories[435]:AddAchievement(achievements[13306]) -- Night Moves
    tmpCategories[435]:AddAchievement(achievements[13302]) -- Under Cover of Darkness
    tmpCategories[435]:AddAchievement(achievements[13305]) -- Night Moves
    tmpCategories[435]:AddAchievement(achievements[13307]) -- Recruitment Officer
    tmpCategories[435]:AddAchievement(achievements[13308]) -- Recruitment Officer
    tmpCategories[435]:AddAchievement(achievements[13309]) -- Deforester
    tmpCategories[435]:AddAchievement(achievements[13310]) -- By Nature's Call
    tmpCategories[427] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15417)), {1021, 1473, 1604})); -- Heart of Azeroth
    tmpCategories[258]:AddCategory(tmpCategories[427]);
    tmpCategories[427]:AddAchievement(achievements[12918]) -- Have a Heart
    tmpCategories[427]:AddAchievement(achievements[13998]) -- Pure of Heart
    tmpCategories[427]:AddAchievement(achievements[13572]) -- The Heart Forge
    tmpCategories[427]:AddAchievement(achievements[13769]) -- Power Up
    tmpCategories[427]:AddAchievement(achievements[13770]) -- Power Creep
    tmpCategories[427]:AddAchievement(achievements[13771]) -- Power Is Beautiful
    tmpCategories[427]:AddAchievement(achievements[13772]) -- Essence Essentials
    tmpCategories[427]:AddAchievement(achievements[13773]) -- Essence Gains
    tmpCategories[427]:AddAchievement(achievements[13775]) -- Essence Overload
    tmpCategories[427]:AddAchievement(achievements[13777]) -- My Heart Container is Full
    tmpCategories[427]:AddAchievement(achievements[13779]) -- Phenomenal Cosmic Power
    tmpCategories[428] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15426)), {1021, 1469, 1470, 1473, 1604})); -- Visions of N'Zoth	
    tmpCategories[258]:AddCategory(tmpCategories[428]);
    tmpCategories[428]:AddAchievement(achievements[14143]) -- Reeking of Visions
    tmpCategories[428]:AddAchievement(achievements[13994]) -- Through the Depths of Visions
    tmpCategories[428]:AddAchievement(achievements[14060]) -- Unwavering Resolve
    tmpCategories[428]:AddAchievement(achievements[14061]) -- We Have the Technology
    tmpCategories[428]:AddAchievement(achievements[14062]) -- Horrific Vision of Stormwind
    tmpCategories[428]:AddAchievement(achievements[14064]) -- The Even More Horrific Vision of Stormwind
    tmpCategories[428]:AddAchievement(achievements[14066]) -- The Most Horrific Vision of Stormwind
    tmpCategories[428]:AddAchievement(achievements[14063]) -- Horrific Vision of Orgrimmar
    tmpCategories[428]:AddAchievement(achievements[14065]) -- The Even More Horrific Vision of Orgrimmar
    tmpCategories[428]:AddAchievement(achievements[14067]) -- The Most Horrific Vision of Orgrimmar
    tmpCategories[428]:AddAchievement(achievements[14162]) -- Horrific Masquerade
    tmpCategories[428]:AddAchievement(achievements[14165]) -- Masked Soliloquy
    tmpCategories[428]:AddAchievement(achievements[14166]) -- Masked Duet
    tmpCategories[428]:AddAchievement(achievements[14167]) -- Masked Trio
    tmpCategories[428]:AddAchievement(achievements[14168]) -- Masked Quartet
    tmpCategories[428]:AddAchievement(achievements[14169]) -- Symphony of Masks
    tmpCategories[428]:AddAchievement(achievements[14170]) -- Thanks For The Mementos
    tmpCategories[428]:AddAchievement(achievements[14171]) -- Memento Mori
    tmpCategories[428]:AddAchievement(achievements[14172]) -- A Monumental Amount of Mementos
    tmpCategories[428]:AddAchievement(achievements[14173]) -- A Mountain of Mementos
    tmpCategories[428]:AddAchievement(achievements[14140]) -- Mad World
    tmpCategories[6] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15439)))); -- Shadowlands
    tmpCategories[344] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[6]:AddCategory(tmpCategories[344]);
    tmpCategories[344]:AddAchievement(achievements[14280]) -- Loremaster of Shadowlands
    tmpCategories[344]:AddAchievement(achievements[14790]) -- Covenant Campaign
    tmpCategories[344]:AddAchievement(achievements[14758]) -- The World Beyond
    tmpCategories[344]:AddAchievement(achievements[14825]) -- Explorer of the Shadowlands
    tmpCategories[344]:AddAchievement(achievements[14731]) -- To All the Squirrels I've Loved and Lost
    tmpCategories[344]:AddAchievement(achievements[14515]) -- Zo'Sorg's Bidding
    tmpCategories[344]:AddAchievement(achievements[14516]) -- Impressing Zo'Sorg
    tmpCategories[344]:AddAchievement(achievements[14519]) -- Covenant Combat
    tmpCategories[344]:AddAchievement(achievements[14315]) -- Shadowlands Diplomat
    tmpCategories[345] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1533).name, {1533, 1690, 1713, 1714})); -- Bastion
    tmpCategories[344]:AddCategory(tmpCategories[345]);
    tmpCategories[346] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {1533, 1690, 1713, 1714}, nil, true)); -- Quests
    tmpCategories[345]:AddCategory(tmpCategories[346]);
    tmpCategories[346]:AddAchievement(achievements[14281]) -- The Path to Ascension
    tmpCategories[346]:AddAchievement(achievements[14801]) -- Sojourner of Bastion
    tmpCategories[346]:AddAchievement(achievements[14737]) -- What Bastion Remembered
    tmpCategories[346]:AddAchievement(achievements[14735]) -- Flight School Graduate
    tmpCategories[346]:AddAchievement(achievements[14741]) -- Aerial Ace
    tmpCategories[346]:AddAchievement(achievements[14762]) -- Breaking the Stratus Fear
    tmpCategories[347] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {1533, 1690, 1713, 1714}, nil, true)); -- Exploration
    tmpCategories[345]:AddCategory(tmpCategories[347]);
    tmpCategories[347]:AddAchievement(achievements[14303]) -- Explore Bastion
    tmpCategories[347]:AddAchievement(achievements[14307]) -- Adventurer of Bastion
    tmpCategories[347]:AddAchievement(achievements[14311]) -- Treasures of Bastion
    tmpCategories[347]:AddAchievement(achievements[14339]) -- Shard Labor
    tmpCategories[347]:AddAchievement(achievements[14734]) -- Rallying Cry of the Ascended
    tmpCategories[347]:AddAchievement(achievements[14767]) -- Count Your Blessings
    tmpCategories[347]:AddAchievement(achievements[14768]) -- What is that Melody?
    tmpCategories[347]:AddAchievement(achievements[14733]) -- In the Hot Seat
    tmpCategories[348] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), {1533, 1690, 1713, 1714}, nil, true)); -- PvP
    tmpCategories[345]:AddCategory(tmpCategories[348]);
    tmpCategories[348]:AddAchievement(achievements[14514]) -- Tour of Duty: Bastion
    tmpCategories[349] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {1533, 1690, 1713, 1714}, nil, true)); -- Reputation
    tmpCategories[345]:AddCategory(tmpCategories[349]);
    tmpCategories[349]:AddAchievement(achievements[14335]) -- The Ascended
    tmpCategories[350] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1536).name, {1536, 1649, 1650, 1651, 1652})); -- Maldraxxus
    tmpCategories[344]:AddCategory(tmpCategories[350]);
    tmpCategories[351] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {1536, 1649, 1650, 1651, 1652}, nil, true)); -- Quests
    tmpCategories[350]:AddCategory(tmpCategories[351]);
    tmpCategories[351]:AddAchievement(achievements[14206]) -- Blade of the Primus
    tmpCategories[351]:AddAchievement(achievements[14799]) -- Sojourner of Maldraxxus
    tmpCategories[352] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {1536, 1649, 1650, 1651, 1652}, nil, true)); -- Exploration
    tmpCategories[350]:AddCategory(tmpCategories[352]);
    tmpCategories[352]:AddAchievement(achievements[14305]) -- Explore Maldraxxus
    tmpCategories[352]:AddAchievement(achievements[14308]) -- Adventurer of Maldraxxus
    tmpCategories[352]:AddAchievement(achievements[14312]) -- Treasures of Maldraxxus
    tmpCategories[352]:AddAchievement(achievements[14626]) -- Harvester of Sorrow
    tmpCategories[352]:AddAchievement(achievements[14802]) -- Bloodsport
    tmpCategories[352]:AddAchievement(achievements[14721]) -- It's In The Mix
    tmpCategories[352]:AddAchievement(achievements[14634]) -- Nine Afterlives
    tmpCategories[353] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), {1536, 1649, 1650, 1651, 1652}, nil, true)); -- PvP
    tmpCategories[350]:AddCategory(tmpCategories[353]);
    tmpCategories[353]:AddAchievement(achievements[14513]) -- Tour of Duty: Maldraxxus
    tmpCategories[354] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {1536, 1649, 1650, 1651, 1652}, nil, true)); -- Reputation
    tmpCategories[350]:AddCategory(tmpCategories[354]);
    tmpCategories[354]:AddAchievement(achievements[14336]) -- Undying Army
    tmpCategories[355] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1565).name, {1565, 1816, 1818, 1819, 1824, 1825, 1826, 1827, 1829})); -- Ardenweald
    tmpCategories[344]:AddCategory(tmpCategories[355]);
    tmpCategories[356] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {1565, 1816, 1818, 1819, 1824, 1825, 1826, 1827, 1829}, nil, true)); -- Quests
    tmpCategories[355]:AddCategory(tmpCategories[356]);
    tmpCategories[356]:AddAchievement(achievements[14164]) -- "Awaken, Ardenweald"
    tmpCategories[356]:AddAchievement(achievements[14800]) -- Sojourner of Ardenweald
    tmpCategories[356]:AddAchievement(achievements[14671]) -- Something's Not Quite Right....
    tmpCategories[356]:AddAchievement(achievements[14672]) -- "A Bit of This, A Bit of That"
    tmpCategories[357] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {1565, 1816, 1818, 1819, 1824, 1825, 1826, 1827, 1829}, nil, true)); -- Exploration
    tmpCategories[355]:AddCategory(tmpCategories[357]);
    tmpCategories[357]:AddAchievement(achievements[14304]) -- Explore Ardenweald
    tmpCategories[357]:AddAchievement(achievements[14309]) -- Adventurer of Ardenweald
    tmpCategories[357]:AddAchievement(achievements[14313]) -- Treasures of Ardenweald
    tmpCategories[357]:AddAchievement(achievements[14353]) -- Ardenweald's a Stage
    tmpCategories[357]:AddAchievement(achievements[14791]) -- Toss a Seed to Your Hunter...
    tmpCategories[357]:AddAchievement(achievements[14774]) -- Ardenweald Gourmand
    tmpCategories[357]:AddAchievement(achievements[14788]) -- Fractured Faerie Tales
    tmpCategories[357]:AddAchievement(achievements[14779]) -- Wild Hunting
    tmpCategories[357]:AddAchievement(achievements[14504]) -- "Niya, As Xavius"
    tmpCategories[357]:AddAchievement(achievements[14505]) -- "Senthii, As Gul'dan"
    tmpCategories[357]:AddAchievement(achievements[14506]) -- "Glimmerdust, As Kil'jaeden"
    tmpCategories[357]:AddAchievement(achievements[14507]) -- "Mi'kai, As Argus"
    tmpCategories[357]:AddAchievement(achievements[14508]) -- "Glimmerdust, As Jaina"
    tmpCategories[357]:AddAchievement(achievements[14509]) -- "Astra, As Azshara"
    tmpCategories[357]:AddAchievement(achievements[14510]) -- "Dreamweaver, As N'Zoth"
    tmpCategories[358] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), {1565, 1816, 1818, 1819, 1824, 1825, 1826, 1827, 1829}, nil, true)); -- PvP
    tmpCategories[355]:AddCategory(tmpCategories[358]);
    tmpCategories[358]:AddAchievement(achievements[14511]) -- Tour of Duty: Ardenweald
    tmpCategories[359] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {1565, 1816, 1818, 1819, 1824, 1825, 1826, 1827, 1829}, nil, true)); -- Reputation
    tmpCategories[355]:AddCategory(tmpCategories[359]);
    tmpCategories[359]:AddAchievement(achievements[14337]) -- The Wild Hunt
    tmpCategories[360] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1525).name, {1525})); -- Revendreth
    tmpCategories[344]:AddCategory(tmpCategories[360]);
    tmpCategories[361] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {1525}, nil, true)); -- Quests
    tmpCategories[360]:AddCategory(tmpCategories[361]);
    tmpCategories[361]:AddAchievement(achievements[13878]) -- The Master of Revendreth
    tmpCategories[361]:AddAchievement(achievements[14798]) -- Sojourner of Revendreth
    tmpCategories[361]:AddAchievement(achievements[14233]) -- Tea Tales
    tmpCategories[361]:AddAchievement(achievements[14765]) -- Ramparts Racer
    tmpCategories[361]:AddAchievement(achievements[14766]) -- Parasoling
    tmpCategories[361]:AddAchievement(achievements[14772]) -- Caught in a Bat Romance
    tmpCategories[362] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {1525}, nil, true)); -- Exploration
    tmpCategories[360]:AddCategory(tmpCategories[362]);
    tmpCategories[362]:AddAchievement(achievements[14306]) -- Explore Revendreth
    tmpCategories[362]:AddAchievement(achievements[14310]) -- Adventurer of Revendreth
    tmpCategories[362]:AddAchievement(achievements[14314]) -- Treasures of Revendreth
    tmpCategories[362]:AddAchievement(achievements[14277]) -- The Accuser's Avowed
    tmpCategories[362]:AddAchievement(achievements[14274]) -- Absolution for All
    tmpCategories[362]:AddAchievement(achievements[14272]) -- Best Bud With Benefits
    tmpCategories[362]:AddAchievement(achievements[14276]) -- It's Always Sinny in Revendreth
    tmpCategories[362]:AddAchievement(achievements[14769]) -- Bat!
    tmpCategories[362]:AddAchievement(achievements[14771]) -- The Afterlife Express
    tmpCategories[362]:AddAchievement(achievements[14770]) -- What We Ride in the Shadows
    tmpCategories[362]:AddAchievement(achievements[14273]) -- Crypt Kicker
    tmpCategories[363] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15270)), {1525}, nil, true)); -- PvP
    tmpCategories[360]:AddCategory(tmpCategories[363]);
    tmpCategories[363]:AddAchievement(achievements[14512]) -- Tour of Duty: Revendreth
    tmpCategories[364] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {1525}, nil, true)); -- Reputation
    tmpCategories[360]:AddCategory(tmpCategories[364]);
    tmpCategories[364]:AddAchievement(achievements[14338]) -- Court of Harvesters
    tmpCategories[365] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1543).name, {1543, 1820, 1821, 1822, 1823})); -- The Maw
    tmpCategories[344]:AddCategory(tmpCategories[365]);
    tmpCategories[366] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {1543, 1820, 1821, 1822, 1823}, nil, true)); -- Quests
    tmpCategories[365]:AddCategory(tmpCategories[366]);
    tmpCategories[366]:AddAchievement(achievements[14334]) -- Into the Maw
    tmpCategories[367] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {1543, 1820, 1821, 1822, 1823}, nil, true)); -- Exploration
    tmpCategories[365]:AddCategory(tmpCategories[367]);
    tmpCategories[367]:AddAchievement(achievements[14663]) -- Explore The Maw
    tmpCategories[367]:AddAchievement(achievements[14658]) -- Soulkeeper's Burden
    tmpCategories[367]:AddAchievement(achievements[14659]) -- Handling His Henchmen
    tmpCategories[367]:AddAchievement(achievements[14660]) -- It's About Sending a Message
    tmpCategories[367]:AddAchievement(achievements[14738]) -- Hunting Party
    tmpCategories[367]:AddAchievement(achievements[14742]) -- Who Sent You?
    tmpCategories[367]:AddAchievement(achievements[14743]) -- Deadly Serious
    tmpCategories[367]:AddAchievement(achievements[14744]) -- Better to Be Lucky Than Dead
    tmpCategories[367]:AddAchievement(achievements[14745]) -- Grand Theft Shadehound
    tmpCategories[367]:AddAchievement(achievements[14746]) -- Prepare for Trouble!
    tmpCategories[367]:AddAchievement(achievements[14747]) -- Make it Double!
    tmpCategories[367]:AddAchievement(achievements[14761]) -- Deciphering Death's Intentions
    tmpCategories[367]:AddAchievement(achievements[14894]) -- "To 'Ghast, Two Curios"
    tmpCategories[367]:AddAchievement(achievements[14895]) -- 'Ghast Five
    tmpCategories[368] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {1543, 1820, 1821, 1822, 1823}, nil, true)); -- Reputation
    tmpCategories[365]:AddCategory(tmpCategories[368]);
    tmpCategories[368]:AddAchievement(achievements[14656]) -- Trading Partners
    tmpCategories[369] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15272)))); -- Dungeons
    tmpCategories[6]:AddCategory(tmpCategories[369]);
    tmpCategories[369]:AddAchievement(achievements[14418]) -- Shadowlands Dungeon Hero
    tmpCategories[369]:AddAchievement(achievements[14322]) -- Glory of the Shadowlands Hero
    tmpCategories[369]:AddAchievement(achievements[14938]) -- Shadowlands Keystone Explorer: Season One
    tmpCategories[369]:AddAchievement(achievements[14531]) -- Shadowlands Keystone Conqueror: Season One
    tmpCategories[369]:AddAchievement(achievements[14532]) -- Shadowlands Keystone Master: Season One
    tmpCategories[371] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1182)), {1666, 1667, 1668})); -- The Necrotic Wake
    tmpCategories[369]:AddCategory(tmpCategories[371]);
    tmpCategories[371]:AddAchievement(achievements[14295]) -- Bountiful Harvest
    tmpCategories[371]:AddAchievement(achievements[14320]) -- Surgeon's Supplies
    tmpCategories[371]:AddAchievement(achievements[14285]) -- Ready for Raiding VII
    tmpCategories[371]:AddAchievement(achievements[14366]) -- The Necrotic Wake
    tmpCategories[371]:AddAchievement(achievements[14367]) -- Heroic: The Necrotic Wake
    tmpCategories[371]:AddAchievement(achievements[14368]) -- Mythic: The Necrotic Wake
    tmpCategories[372] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1183)), {1674, 1697})); -- Plaguefall
    tmpCategories[369]:AddCategory(tmpCategories[372]);
    tmpCategories[372]:AddAchievement(achievements[14292]) -- Riding with my Slimes
    tmpCategories[372]:AddAchievement(achievements[14347]) -- Full Gores Meal
    tmpCategories[372]:AddAchievement(achievements[14296]) -- Going Viral
    tmpCategories[372]:AddAchievement(achievements[14369]) -- Plaguefall
    tmpCategories[372]:AddAchievement(achievements[14414]) -- Heroic: Plaguefall
    tmpCategories[372]:AddAchievement(achievements[14415]) -- Mythic: Plaguefall
    tmpCategories[373] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1184)), {1669})); -- Mists of Tirna Scithe
    tmpCategories[369]:AddCategory(tmpCategories[373]);
    tmpCategories[373]:AddAchievement(achievements[14503]) -- Hooked On Hydroponics
    tmpCategories[373]:AddAchievement(achievements[14291]) -- Someone Could Trip on These!
    tmpCategories[373]:AddAchievement(achievements[14375]) -- Hunger for Knowledge
    tmpCategories[373]:AddAchievement(achievements[14371]) -- Mists of Tirna Scithe
    tmpCategories[373]:AddAchievement(achievements[14412]) -- Heroic: Mists of Tirna Scithe
    tmpCategories[373]:AddAchievement(achievements[14413]) -- Mythic: Mists of Tirna Scithe
    tmpCategories[374] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1185)), {1663, 1664, 1665})); -- Halls of Atonement
    tmpCategories[369]:AddCategory(tmpCategories[374]);
    tmpCategories[374]:AddAchievement(achievements[14567]) -- Picking Up the Pieces
    tmpCategories[374]:AddAchievement(achievements[14284]) -- Breaking Bad
    tmpCategories[374]:AddAchievement(achievements[14352]) -- Nobody Puts Denathrius in a Corner
    tmpCategories[374]:AddAchievement(achievements[14370]) -- Halls of Atonement
    tmpCategories[374]:AddAchievement(achievements[14410]) -- Heroic: Halls of Atonement
    tmpCategories[374]:AddAchievement(achievements[14411]) -- Mythic: Halls of Atonement
    tmpCategories[375] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1186)), {1692, 1693, 1694, 1695})); -- Spires of Ascension
    tmpCategories[369]:AddCategory(tmpCategories[375]);
    tmpCategories[375]:AddAchievement(achievements[14331]) -- Goliath Offline
    tmpCategories[375]:AddAchievement(achievements[14323]) -- ExSPEARiential
    tmpCategories[375]:AddAchievement(achievements[14327]) -- I Can See My House From Here
    tmpCategories[375]:AddAchievement(achievements[14326]) -- Spires of Ascension
    tmpCategories[375]:AddAchievement(achievements[14324]) -- Heroic: Spires of Ascension
    tmpCategories[375]:AddAchievement(achievements[14325]) -- Mythic: Spires of Ascension
    tmpCategories[376] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1187)), {1683, 1684, 1685, 1686, 1687})); -- Theater of Pain
    tmpCategories[369]:AddCategory(tmpCategories[376]);
    tmpCategories[376]:AddAchievement(achievements[14297]) -- Three Choose One
    tmpCategories[376]:AddAchievement(achievements[14607]) -- Fresh Meat!
    tmpCategories[376]:AddAchievement(achievements[14533]) -- Royal Rumble
    tmpCategories[376]:AddAchievement(achievements[14372]) -- Theater of Pain
    tmpCategories[376]:AddAchievement(achievements[14416]) -- Heroic: Theater of Pain
    tmpCategories[376]:AddAchievement(achievements[14417]) -- Mythic: Theater of Pain
    tmpCategories[377] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1188)), {1677, 1678, 1679, 1680})); -- De Other Side
    tmpCategories[369]:AddCategory(tmpCategories[377]);
    tmpCategories[377]:AddAchievement(achievements[14354]) -- Highly Communicable
    tmpCategories[377]:AddAchievement(achievements[14374]) -- Couple's Therapy
    tmpCategories[377]:AddAchievement(achievements[14606]) -- Thinking with...
    tmpCategories[377]:AddAchievement(achievements[14373]) -- De Other Side
    tmpCategories[377]:AddAchievement(achievements[14408]) -- Heroic: De Other Side
    tmpCategories[377]:AddAchievement(achievements[14409]) -- Mythic: De Other Side
    tmpCategories[378] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1189)), {1675, 1676})); -- Sanguine Depths
    tmpCategories[369]:AddCategory(tmpCategories[378]);
    tmpCategories[378]:AddAchievement(achievements[14286]) -- Residue Evil
    tmpCategories[378]:AddAchievement(achievements[14290]) -- I Only Have Eyes For You
    tmpCategories[378]:AddAchievement(achievements[14289]) -- Kaal-ed Shot
    tmpCategories[378]:AddAchievement(achievements[14197]) -- Sanguine Depths
    tmpCategories[378]:AddAchievement(achievements[14198]) -- Heroic: Sanguine Depths
    tmpCategories[378]:AddAchievement(achievements[14199]) -- Mythic: Sanguine Depths
    tmpCategories[370] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15271)))); -- Raids
    tmpCategories[6]:AddCategory(tmpCategories[370]);
    tmpCategories[370]:AddAchievement(achievements[14355]) -- Glory of the Nathria Raider
    tmpCategories[379] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1190)), {1735, 1744, 1745, 1746, 1747, 1748, 1750})); -- Castle Nathria
    tmpCategories[370]:AddCategory(tmpCategories[379]);
    tmpCategories[379]:AddAchievement(achievements[14293]) -- Blind as a Bat
    tmpCategories[379]:AddAchievement(achievements[14523]) -- Taking Care of Business
    tmpCategories[379]:AddAchievement(achievements[14376]) -- Feed the Beast
    tmpCategories[379]:AddAchievement(achievements[14524]) -- I Don't Know What I Expected
    tmpCategories[379]:AddAchievement(achievements[14617]) -- Private Stock
    tmpCategories[379]:AddAchievement(achievements[14608]) -- Burning Bright
    tmpCategories[379]:AddAchievement(achievements[14619]) -- Pour Decision Making
    tmpCategories[379]:AddAchievement(achievements[14294]) -- Dirtflap's Revenge
    tmpCategories[379]:AddAchievement(achievements[14525]) -- "Feed Me, Seymour!"
    tmpCategories[379]:AddAchievement(achievements[14610]) -- Clear Conscience
    tmpCategories[379]:AddAchievement(achievements[14715]) -- Castle Nathria
    tmpCategories[379]:AddAchievement(achievements[14717]) -- Heroic: Castle Nathria
    tmpCategories[379]:AddAchievement(achievements[14718]) -- Mythic: Castle Nathria
    tmpCategories[379]:AddAchievement(achievements[14356]) -- Mythic: Shriekwing
    tmpCategories[379]:AddAchievement(achievements[14357]) -- Mythic: Huntsman Altimor
    tmpCategories[379]:AddAchievement(achievements[14358]) -- Mythic: Hungering Destroyer
    tmpCategories[379]:AddAchievement(achievements[14361]) -- Mythic: Lady Inerva Darkvein
    tmpCategories[379]:AddAchievement(achievements[14359]) -- Mythic: Artificer Xy'mox
    tmpCategories[379]:AddAchievement(achievements[14360]) -- Mythic: Sun King's Salvation
    tmpCategories[379]:AddAchievement(achievements[14362]) -- Mythic: The Council of Blood
    tmpCategories[379]:AddAchievement(achievements[14363]) -- Mythic: Sludgefist
    tmpCategories[379]:AddAchievement(achievements[14364]) -- Mythic: Stone Legion Generals
    tmpCategories[379]:AddAchievement(achievements[14365]) -- Mythic: Sire Denathrius
    tmpCategories[379]:AddAchievement(achievements[14460]) -- Ahead of the Curve: Sire Denathrius
    tmpCategories[379]:AddAchievement(achievements[14461]) -- Cutting Edge: Sire Denathrius
    tmpCategories[379]:AddAchievement(achievements[14614]) -- Castle Vain
    tmpCategories[380] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15117)))); -- Pet Battles
    tmpCategories[6]:AddCategory(tmpCategories[380]);
    tmpCategories[380]:AddAchievement(achievements[14867]) -- Shadowlands Safari
    tmpCategories[380]:AddAchievement(achievements[14625]) -- Battle in the Shadowlands
    tmpCategories[380]:AddAchievement(achievements[14868]) -- Aquatic Apparitions
    tmpCategories[380]:AddAchievement(achievements[14869]) -- Beast Busters
    tmpCategories[380]:AddAchievement(achievements[14870]) -- Creepy Critters
    tmpCategories[380]:AddAchievement(achievements[14871]) -- Deathly Dragonkin
    tmpCategories[380]:AddAchievement(achievements[14872]) -- Eerie Elementals
    tmpCategories[380]:AddAchievement(achievements[14873]) -- Flickering Fliers
    tmpCategories[380]:AddAchievement(achievements[14874]) -- Haunted Humanoids
    tmpCategories[380]:AddAchievement(achievements[14875]) -- Mummified Magics
    tmpCategories[380]:AddAchievement(achievements[14876]) -- Macabre Mechanicals
    tmpCategories[380]:AddAchievement(achievements[14877]) -- Unholy Undead
    tmpCategories[380]:AddAchievement(achievements[14879]) -- Family Exorcist
    tmpCategories[380]:AddAchievement(achievements[14881]) -- Abhorrent Adversaries of the Afterlife
    tmpCategories[424] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15440)), {1618, 1619, 1620, 1621, 1623, 1624, 1627, 1628, 1629, 1630, 1631, 1632, 1635, 1636, 1641, 1645, 1656, 1705, 1712, 1716, 1720, 1721, 1736, 1749, 1751, 1752, 1753, 1754, 1756, 1757, 1758, 1759, 1760, 1761, 1762, 1763, 1764, 1765, 1766, 1767, 1768, 1769, 1770, 1771, 1772, 1773, 1774, 1776, 1777, 1778, 1779, 1780, 1781, 1782, 1783, 1784, 1785, 1786, 1787, 1788, 1789, 1791, 1792, 1793, 1794, 1795, 1796, 1797, 1798, 1799, 1800, 1801, 1802, 1803, 1804, 1805, 1806, 1807, 1808, 1809, 1810, 1811, 1812, 1833, 1834, 1835, 1836, 1837, 1838, 1839, 1840, 1841, 1842, 1843, 1844, 1845, 1846, 1847, 1848, 1849, 1850, 1851, 1852, 1853, 1854, 1855, 1856, 1857, 1858, 1859, 1860, 1861, 1862, 1863, 1864, 1865, 1867, 1868, 1869, 1870, 1871, 1872, 1873, 1874, 1875, 1876, 1877, 1878, 1879, 1880, 1881, 1882, 1883, 1884, 1885, 1886, 1887, 1888, 1889, 1890, 1891, 1892, 1893, 1894, 1895, 1896, 1897, 1898, 1899, 1900, 1901, 1902, 1903, 1904, 1905, 1907, 1908, 1909, 1910, 1911, 1912, 1913, 1914, 1920, 1921, 1962, 1963, 1964, 1965, 1966, 1967, 1968, 1969, 1974, 1975, 1976, 1977, 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 2009, 2010, 2011, 2012})); -- Torghast
    tmpCategories[6]:AddCategory(tmpCategories[424]);
    tmpCategories[424]:AddAchievement(achievements[14463]) -- Skoldus Hall
    tmpCategories[424]:AddAchievement(achievements[14473]) -- Fracture Chambers
    tmpCategories[424]:AddAchievement(achievements[14478]) -- The Soulforges
    tmpCategories[424]:AddAchievement(achievements[14483]) -- Coldheart Interstitia
    tmpCategories[424]:AddAchievement(achievements[14488]) -- Mort'regar
    tmpCategories[424]:AddAchievement(achievements[14493]) -- The Upper Reaches
    tmpCategories[424]:AddAchievement(achievements[14808]) -- Touring Torghast
    tmpCategories[424]:AddAchievement(achievements[14809]) -- Traversing Torghast
    tmpCategories[424]:AddAchievement(achievements[14810]) -- Terror of Torghast
    tmpCategories[424]:AddAchievement(achievements[14499]) -- Phanciful
    tmpCategories[424]:AddAchievement(achievements[14500]) -- Phantastic
    tmpCategories[424]:AddAchievement(achievements[14501]) -- Phanatical
    tmpCategories[424]:AddAchievement(achievements[14468]) -- Twisting Corridors: Layer 1
    tmpCategories[424]:AddAchievement(achievements[14469]) -- Twisting Corridors: Layer 2
    tmpCategories[424]:AddAchievement(achievements[14470]) -- Twisting Corridors: Layer 3
    tmpCategories[424]:AddAchievement(achievements[14471]) -- Twisting Corridors: Layer 4
    tmpCategories[424]:AddAchievement(achievements[14472]) -- Twisting Corridors: Layer 5
    tmpCategories[424]:AddAchievement(achievements[14568]) -- Twisting Corridors: Layer 6
    tmpCategories[424]:AddAchievement(achievements[14569]) -- Twisting Corridors: Layer 7
    tmpCategories[424]:AddAchievement(achievements[14570]) -- Twisting Corridors: Layer 8
    tmpCategories[424]:AddAchievement(achievements[14498]) -- Gatekeepers of Torghast
    tmpCategories[424]:AddAchievement(achievements[14773]) -- Explosive Extermination
    tmpCategories[424]:AddAchievement(achievements[14776]) -- For the Hoarder!
    tmpCategories[424]:AddAchievement(achievements[14778]) -- Extremely Ravenous
    tmpCategories[424]:AddAchievement(achievements[14754]) -- The Forgotten One
    tmpCategories[424]:AddAchievement(achievements[14755]) -- Legendary Accord
    tmpCategories[424]:AddAchievement(achievements[14759]) -- It's Coming Back to Me...
    tmpCategories[424]:AddAchievement(achievements[14760]) -- Recollection Collection
    tmpCategories[424]:AddAchievement(achievements[14795]) -- Clearing the Fog
    tmpCategories[419] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15441)), {1644, 1698, 1699, 1700, 1701, 1702, 1703, 1707, 1708})); -- Covenant Sanctums
    tmpCategories[6]:AddCategory(tmpCategories[419]);
    tmpCategories[419]:AddAchievement(achievements[14627]) -- Choosing Your Purpose
    tmpCategories[419]:AddAchievement(achievements[14834]) -- Bound with Purpose
    tmpCategories[419]:AddAchievement(achievements[14835]) -- A Resolute Bond
    tmpCategories[419]:AddAchievement(achievements[14836]) -- Unwavering Bond
    tmpCategories[419]:AddAchievement(achievements[14837]) -- Nexus of Bonds
    tmpCategories[419]:AddAchievement(achievements[14628]) -- The Road to Renown
    tmpCategories[419]:AddAchievement(achievements[14629]) -- Gaining Respect
    tmpCategories[419]:AddAchievement(achievements[14630]) -- Becoming a Hero
    tmpCategories[419]:AddAchievement(achievements[14631]) -- Champion of the Covenant
    tmpCategories[419]:AddAchievement(achievements[14632]) -- Conducting Anima
    tmpCategories[419]:AddAchievement(achievements[14633]) -- Master Navigator
    tmpCategories[419]:AddAchievement(achievements[14636]) -- Adventurer in Chief
    tmpCategories[419]:AddAchievement(achievements[14839]) -- Bound To Adventure
    tmpCategories[419]:AddAchievement(achievements[14840]) -- Adventures: Learning the Ropes
    tmpCategories[419]:AddAchievement(achievements[14841]) -- Adventures: Now You're Cooking
    tmpCategories[419]:AddAchievement(achievements[14842]) -- Adventures: Strength and Resilience
    tmpCategories[419]:AddAchievement(achievements[14843]) -- Adventures: Harmony of Purpose
    tmpCategories[419]:AddAchievement(achievements[14844]) -- Adventures: Into the Breach
    tmpCategories[419]:AddAchievement(achievements[14845]) -- Adventures: A Step in the Right Direction
    tmpCategories[419]:AddAchievement(achievements[14846]) -- Adventures: Leaves in the Forest
    tmpCategories[419]:AddAchievement(achievements[14847]) -- Adventures: Protector of the Shadowlands
    tmpCategories[419]:AddAchievement(achievements[14637]) -- Your Covenant's Flavor
    tmpCategories[419]:AddAchievement(achievements[14638]) -- The Anima Must Flow
    tmpCategories[419]:AddAchievement(achievements[14639]) -- Dedication to the Restoration
    tmpCategories[419]:AddAchievement(achievements[14777]) -- Restoration Expert
    tmpCategories[419]:AddAchievement(achievements[15023]) -- We Can Rebuild
    tmpCategories[419]:AddAchievement(achievements[15024]) -- Denying the Drought
    tmpCategories[419]:AddAchievement(achievements[15025]) -- Sanctum Superior
    tmpCategories[423] = InsertAndReturn(categories, achievementCategory:New(C_Covenants.GetCovenantData(1).name, {1644, 1698, 1699, 1700, 1701, 1702, 1703, 1707, 1707, 1708, 1708}, true)); -- Kyrian
    tmpCategories[419]:AddCategory(tmpCategories[423]);
    tmpCategories[423]:AddAchievement(achievements[14851]) -- Bastion of Protection
    tmpCategories[423]:AddAchievement(achievements[14852]) -- The Hoot of the Issue
    tmpCategories[423]:AddAchievement(achievements[14853]) -- All The Colors of the Painbow
    tmpCategories[423]:AddAchievement(achievements[14854]) -- It's Not What You Wear
    tmpCategories[423]:AddAchievement(achievements[14856]) -- "Charmed, I'm Sure"
    tmpCategories[423]:AddAchievement(achievements[14857]) -- Itsy Bitsy Fighters
    tmpCategories[423]:AddAchievement(achievements[14858]) -- Curse of Thirst
    tmpCategories[423]:AddAchievement(achievements[14859]) -- Inside the Park Home Run
    tmpCategories[423]:AddAchievement(achievements[14860]) -- Bare Necessities
    tmpCategories[423]:AddAchievement(achievements[14861]) -- Learning from the Masters
    tmpCategories[423]:AddAchievement(achievements[14862]) -- It's How You Wear It
    tmpCategories[423]:AddAchievement(achievements[14863]) -- Death Foursworn
    tmpCategories[423]:AddAchievement(achievements[14864]) -- Personal Nightmare
    tmpCategories[423]:AddAchievement(achievements[14865]) -- Disciple of Humility
    tmpCategories[423]:AddAchievement(achievements[14866]) -- Master of the Path
    tmpCategories[423]:AddAchievement(achievements[14887]) -- To the Moon
    tmpCategories[421] = InsertAndReturn(categories, achievementCategory:New(C_Covenants.GetCovenantData(2).name, {1644, 1644, 1698, 1699, 1699, 1700, 1700, 1701, 1702, 1703, 1707, 1708}, true)); -- Venthyr
    tmpCategories[419]:AddCategory(tmpCategories[421]);
    tmpCategories[421]:AddAchievement(achievements[14678]) -- Court Favors
    tmpCategories[421]:AddAchievement(achievements[14679]) -- Party Palace
    tmpCategories[421]:AddAchievement(achievements[14680]) -- Something for Everyone
    tmpCategories[421]:AddAchievement(achievements[14681]) -- Dredger Academy
    tmpCategories[421]:AddAchievement(achievements[14682]) -- The Party Herald
    tmpCategories[421]:AddAchievement(achievements[14683]) -- Dredger Style
    tmpCategories[421]:AddAchievement(achievements[14723]) -- Be Our Guest
    tmpCategories[421]:AddAchievement(achievements[14724]) -- People Pleaser
    tmpCategories[421]:AddAchievement(achievements[14725]) -- We Happy Few
    tmpCategories[421]:AddAchievement(achievements[14726]) -- It's Certainly Never Boring
    tmpCategories[421]:AddAchievement(achievements[14727]) -- Master of Ceremonies
    tmpCategories[421]:AddAchievement(achievements[14749]) -- Rendle's Big Day
    tmpCategories[422] = InsertAndReturn(categories, achievementCategory:New(C_Covenants.GetCovenantData(3).name, {1644, 1662, 1698, 1699, 1700, 1701, 1701, 1702, 1702, 1703, 1703, 1707, 1708}, true)); -- Night Fae
    tmpCategories[419]:AddCategory(tmpCategories[422]);
    tmpCategories[422]:AddAchievement(achievements[14670]) -- That's the Spirit
    tmpCategories[422]:AddAchievement(achievements[14675]) -- Spirit Talker
    tmpCategories[422]:AddAchievement(achievements[14676]) -- Divine Spirit Savior
    tmpCategories[422]:AddAchievement(achievements[14677]) -- Spiritual Observations
    tmpCategories[422]:AddAchievement(achievements[14775]) -- Mush Appreciated
    tmpCategories[422]:AddAchievement(achievements[14780]) -- Meditation Master
    tmpCategories[422]:AddAchievement(achievements[14789]) -- All Spirits Great and Small
    tmpCategories[420] = InsertAndReturn(categories, achievementCategory:New(C_Covenants.GetCovenantData(4).name, {1644, 1698, 1698, 1699, 1700, 1701, 1702, 1703, 1707, 1708}, true)); -- Necrolord
    tmpCategories[419]:AddCategory(tmpCategories[420]);
    tmpCategories[420]:AddAchievement(achievements[14684]) -- Abominable Lives
    tmpCategories[420]:AddAchievement(achievements[14748]) -- Wardrobe Makeover
    tmpCategories[420]:AddAchievement(achievements[14751]) -- The Gang's All Here
    tmpCategories[420]:AddAchievement(achievements[14752]) -- Things To Do When You're Dead
    tmpCategories[420]:AddAchievement(achievements[14753]) -- It's a Wrap
    tmpCategories[420]:AddAchievement(achievements[14764]) -- The Great Luckydo
    tmpCategories[420]:AddAchievement(achievements[14833]) -- Fashion Abomination
    tmpCategories[420]:AddAchievement(achievements[14763]) -- Crypt Couture
    tmpCategories[799] = InsertAndReturn(categories, achievementCategory:New(addon.L["Coming in 9.1"])); -- Coming in 9.1
    local nextPatchCategory = tmpCategories[799];
    tmpCategories[814] = InsertAndReturn(categories, achievementCategory:New(string.format(addon.Orange, addon.L["* SPOILER WARNING *"]))); -- * SPOILER WARNING *
    tmpCategories[799]:AddCategory(tmpCategories[814]);
    tmpCategories[811] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[814]:AddCategory(tmpCategories[811]);
    tmpCategories[811]:AddAchievement(achievements[15107]) -- Conquering Korthia
    tmpCategories[815] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1543).name)); -- The Maw
    tmpCategories[811]:AddCategory(tmpCategories[815]);
    tmpCategories[815]:AddAchievement(achievements[15065]) -- Eye Wish You Were Here
    tmpCategories[816] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)))); -- Quests
    tmpCategories[815]:AddCategory(tmpCategories[816]);
    tmpCategories[816]:AddAchievement(achievements[15000]) -- United Front
    tmpCategories[816]:AddAchievement(achievements[15044]) -- Krrprripripkraak's Heroes
    tmpCategories[816]:AddAchievement(achievements[15035]) -- On the Offensive
    tmpCategories[816]:AddAchievement(achievements[15043]) -- Hoarder of Torghast
    tmpCategories[816]:AddAchievement(achievements[15042]) -- Tea for the Troubled
    tmpCategories[816]:AddAchievement(achievements[15036]) -- Rooting Out the Evil
    tmpCategories[816]:AddAchievement(achievements[15034]) -- Wings Against the Flames
    tmpCategories[816]:AddAchievement(achievements[15033]) -- Taking the Tremaculum
    tmpCategories[816]:AddAchievement(achievements[15032]) -- Breaking Their Hold
    tmpCategories[816]:AddAchievement(achievements[15001]) -- Jailer's Personal Stash
    tmpCategories[816]:AddAchievement(achievements[15041]) -- The Zovaal Shuffle
    tmpCategories[816]:AddAchievement(achievements[15039]) -- Up For Grabs
    tmpCategories[816]:AddAchievement(achievements[15037]) -- This Army
    tmpCategories[816]:AddAchievement(achievements[14961]) -- Chains of Domination
    tmpCategories[816]:AddAchievement(achievements[15064]) -- Breaking the Chains
    tmpCategories[819] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)))); -- Exploration
    tmpCategories[815]:AddCategory(tmpCategories[819]);
    tmpCategories[819]:AddAchievement(achievements[15054]) -- Minions of the Cold Dark
    tmpCategories[819]:AddAchievement(achievements[14943]) -- Guarmageddon
    tmpCategories[822] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)))); -- Reputation
    tmpCategories[815]:AddCategory(tmpCategories[822]);
    tmpCategories[822]:AddAchievement(achievements[15059]) -- Death's Advance
    tmpCategories[812] = InsertAndReturn(categories, achievementCategory:New("Korthia", {1961, 2006, 2007, 2008})); -- Korthia
    tmpCategories[811]:AddCategory(tmpCategories[812]);
    tmpCategories[817] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15447)), {1961, 2006, 2007, 2008})); -- Quests
    tmpCategories[812]:AddCategory(tmpCategories[817]);
    tmpCategories[817]:AddAchievement(achievements[15066]) -- Reliquary Restoration
    tmpCategories[817]:AddAchievement(achievements[15055]) -- Friend of Ooz
    tmpCategories[817]:AddAchievement(achievements[15056]) -- Friend of Bloop
    tmpCategories[817]:AddAchievement(achievements[15057]) -- Friend of Plaguey
    tmpCategories[818] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(97)), {1961, 2006, 2007, 2008})); -- Exploration
    tmpCategories[812]:AddCategory(tmpCategories[818]);
    tmpCategories[818]:AddAchievement(achievements[15053]) -- Explore Korthia
    tmpCategories[818]:AddAchievement(achievements[15099]) -- Treasures of Korthia
    tmpCategories[813] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15273)), {1961, 2006, 2007, 2008})); -- Reputation
    tmpCategories[812]:AddCategory(tmpCategories[813]);
    tmpCategories[813]:AddAchievement(achievements[15069]) -- The Archivist's Codex
    tmpCategories[801] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15272)))); -- Dungeons
    tmpCategories[814]:AddCategory(tmpCategories[801]);
    tmpCategories[801]:AddAchievement(achievements[15073]) -- Shadowlands Keystone Explorer: Season Two
    tmpCategories[801]:AddAchievement(achievements[15077]) -- Shadowlands Keystone Conqueror: Season Two
    tmpCategories[801]:AddAchievement(achievements[15078]) -- Shadowlands Keystone Master: Season Two
    tmpCategories[809] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1182)))); -- The Necrotic Wake
    tmpCategories[801]:AddCategory(tmpCategories[809]);
    tmpCategories[809]:AddAchievement(achievements[15045]) -- Keystone Hero: The Necrotic Wake
    tmpCategories[808] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1183)))); -- Plaguefall
    tmpCategories[801]:AddCategory(tmpCategories[808]);
    tmpCategories[808]:AddAchievement(achievements[15046]) -- Keystone Hero: Plaguefall
    tmpCategories[807] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1184)))); -- Mists of Tirna Scithe
    tmpCategories[801]:AddCategory(tmpCategories[807]);
    tmpCategories[807]:AddAchievement(achievements[15047]) -- Keystone Hero: Mists of Tirna Scithe
    tmpCategories[806] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1185)))); -- Halls of Atonement
    tmpCategories[801]:AddCategory(tmpCategories[806]);
    tmpCategories[806]:AddAchievement(achievements[15048]) -- Keystone Hero: Halls of Atonement
    tmpCategories[805] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1186)))); -- Spires of Ascension
    tmpCategories[801]:AddCategory(tmpCategories[805]);
    tmpCategories[805]:AddAchievement(achievements[15049]) -- Keystone Hero: Spires of Ascension
    tmpCategories[804] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1187)))); -- Theater of Pain
    tmpCategories[801]:AddCategory(tmpCategories[804]);
    tmpCategories[804]:AddAchievement(achievements[15050]) -- Keystone Hero: Theater of Pain
    tmpCategories[803] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1188)))); -- De Other Side
    tmpCategories[801]:AddCategory(tmpCategories[803]);
    tmpCategories[803]:AddAchievement(achievements[15051]) -- Keystone Hero: De Other Side
    tmpCategories[802] = InsertAndReturn(categories, achievementCategory:New((EJ_GetInstanceInfo(1189)))); -- Sanguine Depths
    tmpCategories[801]:AddCategory(tmpCategories[802]);
    tmpCategories[802]:AddAchievement(achievements[15052]) -- Keystone Hero: Sanguine Depths
    tmpCategories[823] = InsertAndReturn(categories, achievementCategory:New("Tazavesh, the Veiled Market")); -- Tazavesh, the Veiled Market
    tmpCategories[801]:AddCategory(tmpCategories[823]);
    tmpCategories[823]:AddAchievement(achievements[15106]) -- Quality Control
    tmpCategories[823]:AddAchievement(achievements[15109]) -- Will it Blend?
    tmpCategories[820] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15271)))); -- Raids
    tmpCategories[814]:AddCategory(tmpCategories[820]);
    tmpCategories[820]:AddAchievement(achievements[15130]) -- Glory of the Dominant Raider
    tmpCategories[821] = InsertAndReturn(categories, achievementCategory:New("Sanctum of Domination", {1998, 1999, 2000, 2001, 2002, 2003, 2004})); -- Sanctum of Domination
    tmpCategories[820]:AddCategory(tmpCategories[821]);
    tmpCategories[821]:AddAchievement(achievements[15058]) -- I Used to Bullseye Deeprun Rats Back Home
    tmpCategories[821]:AddAchievement(achievements[14998]) -- "Name A Better Duo, I'll Wait"
    tmpCategories[821]:AddAchievement(achievements[15003]) -- To the Nines
    tmpCategories[821]:AddAchievement(achievements[15040]) -- Retrograde Fate
    tmpCategories[821]:AddAchievement(achievements[15105]) -- Tormentor's Tango
    tmpCategories[821]:AddAchievement(achievements[15108]) -- Together Forever
    tmpCategories[821]:AddAchievement(achievements[15122]) -- The Jailer's Vanguard
    tmpCategories[821]:AddAchievement(achievements[15123]) -- The Dark Bastille
    tmpCategories[821]:AddAchievement(achievements[15124]) -- Shackles of Fate
    tmpCategories[821]:AddAchievement(achievements[15125]) -- The Reckoning
    tmpCategories[821]:AddAchievement(achievements[15131]) -- Painsmith Raznal PH Achievement
    tmpCategories[821]:AddAchievement(achievements[15132]) -- Guardian of the First Ones PH Achievement
    tmpCategories[821]:AddAchievement(achievements[15133]) -- Sylvanas Windrunner PH Achievement
    tmpCategories[821]:AddAchievement(achievements[15126]) -- Sanctum of Domination
    tmpCategories[821]:AddAchievement(achievements[15127]) -- Heroic: Sanctum of Domination
    tmpCategories[821]:AddAchievement(achievements[15128]) -- Mythic: Sanctum of Domination
    tmpCategories[821]:AddAchievement(achievements[15112]) -- Mythic: The Tarragrue
    tmpCategories[821]:AddAchievement(achievements[15113]) -- Mythic: The Eye of the Jailer
    tmpCategories[821]:AddAchievement(achievements[15114]) -- Mythic: The Nine
    tmpCategories[821]:AddAchievement(achievements[15115]) -- Mythic: Remnant of Ner'zhul
    tmpCategories[821]:AddAchievement(achievements[15116]) -- Mythic: Soulrender Dormazain
    tmpCategories[821]:AddAchievement(achievements[15117]) -- Mythic: Painsmith Raznal
    tmpCategories[821]:AddAchievement(achievements[15118]) -- Mythic: Guardian of the First Ones
    tmpCategories[821]:AddAchievement(achievements[15119]) -- Mythic: Fatescribe Roh-Kalo
    tmpCategories[821]:AddAchievement(achievements[15120]) -- Mythic: Kel'Thuzad
    tmpCategories[821]:AddAchievement(achievements[15121]) -- Mythic: Sylvanas Windrunner
    tmpCategories[821]:AddAchievement(achievements[15134]) -- Ahead of the Curve: Sylvanas Windrunner
    tmpCategories[821]:AddAchievement(achievements[15135]) -- Cutting Edge: Sylvanas Windrunner
    tmpCategories[821]:AddAchievement(achievements[15110]) -- Dominating the Catwalk
    tmpCategories[800] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15117)))); -- Pet Battles
    tmpCategories[814]:AddCategory(tmpCategories[800]);
    tmpCategories[800]:AddAchievement(achievements[15004]) -- A Sly Fox
    tmpCategories[810] = InsertAndReturn(categories, achievementCategory:New((GetCategoryInfo(15440)))); -- Torghast
    tmpCategories[814]:AddCategory(tmpCategories[810]);
    tmpCategories[810]:AddAchievement(achievements[15067]) -- Adamant Vaults
    tmpCategories[810]:AddAchievement(achievements[15075]) -- Infiltrators
    tmpCategories[810]:AddAchievement(achievements[15076]) -- The Box of Many Things
    tmpCategories[810]:AddAchievement(achievements[15091]) -- A Taste of Perfection
    tmpCategories[810]:AddAchievement(achievements[15089]) -- Flawless Master
    tmpCategories[810]:AddAchievement(achievements[15081]) -- Flawless: Skoldus Hall
    tmpCategories[810]:AddAchievement(achievements[15082]) -- Flawless: Fracture Chambers
    tmpCategories[810]:AddAchievement(achievements[15084]) -- Flawless: The Soulforges
    tmpCategories[810]:AddAchievement(achievements[15083]) -- Flawless: Coldheart Interstitia
    tmpCategories[810]:AddAchievement(achievements[15087]) -- Flawless: Mort'regar
    tmpCategories[810]:AddAchievement(achievements[15088]) -- Flawless: Upper Reaches
    tmpCategories[810]:AddAchievement(achievements[15080]) -- So Blessed
    tmpCategories[810]:AddAchievement(achievements[15079]) -- "Many, Many Things"
    tmpCategories[810]:AddAchievement(achievements[15092]) -- Master of Torment
    tmpCategories[810]:AddAchievement(achievements[15093]) -- Avenge Me!
    tmpCategories[810]:AddAchievement(achievements[15094]) -- Rampage
    tmpCategories[810]:AddAchievement(achievements[15095]) -- No Doubt
    tmpCategories[810]:AddAchievement(achievements[15096]) -- Crowd Pleaser

    return currentZoneCategory, nextPatchCategory;
end

