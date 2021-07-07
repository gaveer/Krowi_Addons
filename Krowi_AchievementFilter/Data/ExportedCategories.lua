-- [[ Exported at 2021-07-05 22-45-28 ]] --
-- [[ This code is automatically generated as an export from ]] --
-- [[ an SQLite database and is not meant for manual edit. ]] --

-- [[ Namespaces ]] --
local _, addon = ...;
local objects = addon.Objects;
local cat = objects.AchievementCategory;
local data = addon.Data;
data.ExportedCategories = {};
local exportedCategories = data.ExportedCategories;

local function IaR(table, value) -- InsertAndReturn
    tinsert(table, value);
    return value;
end

local function AddC(c1, c2)
    c1:AddCategory(c2)
end

local function AddA(c, a)
    c:AddAchievement(a)
end

function exportedCategories.Load(c, a)
    for i, _ in next, c do
        c[i] = nil;
    end

    local tmp = {};
    tmp[433] = IaR(c, cat:New(addon.L["Current Zone"])); -- Current Zone
    tmp[433].AlwaysVisible = true;
    tmp[433].HasFlexibleData = true;
    local currentZoneCategory = tmp[433];
    tmp[850] = IaR(c, cat:New(addon.L["Selected Zone"])); -- Selected Zone
    tmp[850].HasFlexibleData = true;
    local selectedZoneCategory = tmp[850];
    tmp[1] = IaR(c, cat:New((GetCategoryInfo(14864)))); -- Classic
    tmp[648] = IaR(c, cat:New(addon.L["Zones"])); -- Zones
    AddC(tmp[1], tmp[648]);
    AddA(tmp[648], a[1206]); -- To All The Squirrels I've Loved Before
    AddA(tmp[648], a[944]); -- They Love Me In That Tunnel
    AddA(tmp[648], a[942]); -- The Diplomat
    AddA(tmp[648], a[943]); -- The Diplomat
    tmp[687] = IaR(c, cat:New(C_Map.GetMapInfo(13).name)); -- Eastern Kingdoms
    AddC(tmp[648], tmp[687]);
    AddA(tmp[687], a[1676]); -- Loremaster of Eastern Kingdoms
    AddA(tmp[687], a[42]); -- Eastern Kingdoms Explorer
    tmp[721] = IaR(c, cat:New(C_Map.GetMapInfo(27).name)); -- Dun Morogh
    AddC(tmp[687], tmp[721]);
    AddA(tmp[721], a[1186]); -- Down With The Dark Iron
    tmp[723] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[721], tmp[723]);
    AddA(tmp[723], a[627]); -- Explore Dun Morogh
    tmp[722] = IaR(c, cat:New(C_Map.GetMapInfo(37).name)); -- Elwynn Forest
    AddC(tmp[687], tmp[722]);
    tmp[724] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[722], tmp[724]);
    AddA(tmp[724], a[776]); -- Explore Elwynn Forest
    tmp[725] = IaR(c, cat:New(C_Map.GetMapInfo(18).name)); -- Tirisfal Glades
    AddC(tmp[687], tmp[725]);
    tmp[726] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[725], tmp[726]);
    AddA(tmp[726], a[768]); -- Explore Tirisfal Glades
    tmp[651] = IaR(c, cat:New(C_Map.GetMapInfo(52).name)); -- Westfall
    AddC(tmp[687], tmp[651]);
    tmp[653] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[651], tmp[653]);
    AddA(tmp[653], a[4903]); -- Westfall Quests
    AddA(tmp[653], a[12455]); -- Westfall & Duskwood Quests
    tmp[730] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[651], tmp[730]);
    AddA(tmp[730], a[802]); -- Explore Westfall
    tmp[655] = IaR(c, cat:New(C_Map.GetMapInfo(48).name)); -- Loch Modan
    AddC(tmp[687], tmp[655]);
    tmp[657] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[655], tmp[657]);
    AddA(tmp[657], a[4899]); -- Loch Modan Quests
    AddA(tmp[657], a[12456]); -- Loch Modan & Wetlands Quests
    tmp[729] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[655], tmp[729]);
    AddA(tmp[729], a[779]); -- Explore Loch Modan
    tmp[681] = IaR(c, cat:New(C_Map.GetMapInfo(21).name)); -- Silverpine Forest
    AddC(tmp[687], tmp[681]);
    tmp[682] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[681], tmp[682]);
    AddA(tmp[682], a[4894]); -- Silverpine Forest Quests
    tmp[732] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[681], tmp[732]);
    AddA(tmp[732], a[769]); -- Explore Silverpine Forest
    tmp[678] = IaR(c, cat:New(C_Map.GetMapInfo(49).name)); -- Redridge Mountains
    AddC(tmp[687], tmp[678]);
    tmp[677] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[678], tmp[677]);
    AddA(tmp[677], a[4902]); -- Redridge Mountains Quests
    tmp[734] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[678], tmp[734]);
    AddA(tmp[734], a[780]); -- Explore Redridge Mountains
    tmp[652] = IaR(c, cat:New(C_Map.GetMapInfo(47).name)); -- Duskwood
    AddC(tmp[687], tmp[652]);
    tmp[654] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[652], tmp[654]);
    AddA(tmp[654], a[12430]); -- Duskwood Quests
    AddA(tmp[654], a[12455]); -- Westfall & Duskwood Quests
    tmp[735] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[652], tmp[735]);
    AddA(tmp[735], a[778]); -- Explore Duskwood
    tmp[656] = IaR(c, cat:New(C_Map.GetMapInfo(56).name)); -- Wetlands
    AddC(tmp[687], tmp[656]);
    tmp[658] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[656], tmp[658]);
    AddA(tmp[658], a[12429]); -- Wetlands Quests
    AddA(tmp[658], a[12456]); -- Loch Modan & Wetlands Quests
    tmp[731] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[656], tmp[731]);
    AddA(tmp[731], a[841]); -- Explore Wetlands
    tmp[671] = IaR(c, cat:New(C_Map.GetMapInfo(25).name)); -- Hillsbrad Foothills
    AddC(tmp[687], tmp[671]);
    tmp[672] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[671], tmp[672]);
    AddA(tmp[672], a[4895]); -- Hillsbrad Foothills Quests
    tmp[736] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[671], tmp[736]);
    AddA(tmp[736], a[772]); -- Explore Hillsbrad Foothills
    tmp[649] = IaR(c, cat:New(C_Map.GetMapInfo(14).name)); -- Arathi Highlands
    AddC(tmp[687], tmp[649]);
    tmp[650] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[649], tmp[650]);
    AddA(tmp[650], a[4896]); -- Arathi Highlands Quests
    tmp[741] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[649], tmp[741]);
    AddA(tmp[741], a[761]); -- Explore Arathi Highlands
    tmp[675] = IaR(c, cat:New(C_Map.GetMapInfo(50).name)); -- Northern Stranglethorn
    AddC(tmp[687], tmp[675]);
    tmp[676] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[675], tmp[676]);
    AddA(tmp[676], a[4906]); -- Northern Stranglethorn Quests
    AddA(tmp[676], a[940]); -- The Green Hills of Stranglethorn
    AddA(tmp[676], a[941]); -- Hemet Nesingwary: The Collected Quests
    tmp[739] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[675], tmp[739]);
    AddA(tmp[739], a[781]); -- Explore Northern Stranglethorn
    tmp[665] = IaR(c, cat:New(C_Map.GetMapInfo(210).name)); -- The Cape of Stranglethorn
    AddC(tmp[687], tmp[665]);
    tmp[666] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[665], tmp[666]);
    AddA(tmp[666], a[4905]); -- Cape of Stranglethorn Quests
    tmp[740] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[665], tmp[740]);
    AddA(tmp[740], a[4995]); -- Explore the Cape of Stranglethorn
    tmp[685] = IaR(c, cat:New(C_Map.GetMapInfo(22).name)); -- Western Plaguelands
    AddC(tmp[687], tmp[685]);
    tmp[686] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[685], tmp[686]);
    AddA(tmp[686], a[4893]); -- Western Plaguelands Quests
    tmp[746] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[685], tmp[746]);
    AddA(tmp[746], a[770]); -- Explore Western Plaguelands
    tmp[673] = IaR(c, cat:New(C_Map.GetMapInfo(26).name)); -- The Hinterlands
    AddC(tmp[687], tmp[673]);
    tmp[674] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[673], tmp[674]);
    AddA(tmp[674], a[4897]); -- Hinterlands Quests
    tmp[742] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[673], tmp[742]);
    AddA(tmp[742], a[773]); -- Explore The Hinterlands
    tmp[667] = IaR(c, cat:New(C_Map.GetMapInfo(23).name)); -- Eastern Plaguelands
    AddC(tmp[687], tmp[667]);
    tmp[668] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[667], tmp[668]);
    AddA(tmp[668], a[4892]); -- Eastern Plaguelands Quests
    AddA(tmp[668], a[5442]); -- Full Caravan
    tmp[747] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[667], tmp[747]);
    AddA(tmp[747], a[771]); -- Explore Eastern Plaguelands
    tmp[778] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[667], tmp[778]);
    AddA(tmp[778], a[946]); -- The Argent Dawn
    AddA(tmp[778], a[945]); -- The Argent Champion
    tmp[659] = IaR(c, cat:New(C_Map.GetMapInfo(15).name)); -- Badlands
    AddC(tmp[687], tmp[659]);
    tmp[661] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[659], tmp[661]);
    AddA(tmp[661], a[4900]); -- Badlands Quests
    AddA(tmp[661], a[5444]); -- "Ready, Set, Goat!"
    tmp[738] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[659], tmp[738]);
    AddA(tmp[738], a[765]); -- Explore Badlands
    tmp[679] = IaR(c, cat:New(C_Map.GetMapInfo(32).name)); -- Searing Gorge
    AddC(tmp[687], tmp[679]);
    tmp[680] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[679], tmp[680]);
    AddA(tmp[680], a[4910]); -- Searing Gorge Quests
    tmp[743] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[679], tmp[743]);
    AddA(tmp[743], a[774]); -- Explore Searing Gorge
    tmp[683] = IaR(c, cat:New(C_Map.GetMapInfo(51).name)); -- Swamp of Sorrows
    AddC(tmp[687], tmp[683]);
    tmp[684] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[683], tmp[684]);
    AddA(tmp[684], a[4904]); -- Swamp of Sorrows Quests
    tmp[737] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[683], tmp[737]);
    AddA(tmp[737], a[782]); -- Explore Swamp of Sorrows
    tmp[663] = IaR(c, cat:New(C_Map.GetMapInfo(36).name)); -- Burning Steppes
    AddC(tmp[687], tmp[663]);
    tmp[664] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[663], tmp[664]);
    AddA(tmp[664], a[4901]); -- Burning Steppes Quests
    tmp[745] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[663], tmp[745]);
    AddA(tmp[745], a[775]); -- Explore Burning Steppes
    tmp[660] = IaR(c, cat:New(C_Map.GetMapInfo(17).name)); -- Blasted Lands
    AddC(tmp[687], tmp[660]);
    AddA(tmp[660], a[9618]); -- The Iron Invasion
    tmp[662] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[660], tmp[662]);
    AddA(tmp[662], a[4909]); -- Blasted Lands Quests
    tmp[744] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[660], tmp[744]);
    AddA(tmp[744], a[766]); -- Explore Blasted Lands
    tmp[748] = IaR(c, cat:New(C_Map.GetMapInfo(42).name)); -- Deadwind Pass
    AddC(tmp[687], tmp[748]);
    tmp[749] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[748], tmp[749]);
    AddA(tmp[749], a[777]); -- Explore Deadwind Pass
    tmp[688] = IaR(c, cat:New(C_Map.GetMapInfo(12).name)); -- Kalimdor
    AddC(tmp[648], tmp[688]);
    AddA(tmp[688], a[1678]); -- Loremaster of Kalimdor
    AddA(tmp[688], a[43]); -- Kalimdor Explorer
    tmp[756] = IaR(c, cat:New(C_Map.GetMapInfo(57).name)); -- Teldrassil
    AddC(tmp[688], tmp[756]);
    tmp[757] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[756], tmp[757]);
    AddA(tmp[757], a[842]); -- Explore Teldrassil
    tmp[752] = IaR(c, cat:New(C_Map.GetMapInfo(1).name)); -- Durotar
    AddC(tmp[688], tmp[752]);
    AddA(tmp[752], a[1186]); -- Down With The Dark Iron
    tmp[753] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[752], tmp[753]);
    AddA(tmp[753], a[728]); -- Explore Durotar
    tmp[754] = IaR(c, cat:New(C_Map.GetMapInfo(7).name)); -- Mulgore
    AddC(tmp[688], tmp[754]);
    tmp[755] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[754], tmp[755]);
    AddA(tmp[755], a[736]); -- Explore Mulgore
    tmp[774] = IaR(c, cat:New(C_Map.GetMapInfo(80).name)); -- Moonglade
    AddC(tmp[688], tmp[774]);
    tmp[775] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[774], tmp[775]);
    AddA(tmp[775], a[855]); -- Explore Moonglade
    tmp[705] = IaR(c, cat:New(C_Map.GetMapInfo(10).name)); -- Northern Barrens
    AddC(tmp[688], tmp[705]);
    tmp[706] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[705], tmp[706]);
    AddA(tmp[706], a[4933]); -- Northern Barrens Quests
    tmp[760] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[705], tmp[760]);
    AddA(tmp[760], a[750]); -- Explore Northern Barrens
    tmp[695] = IaR(c, cat:New(C_Map.GetMapInfo(62).name)); -- Darkshore
    AddC(tmp[688], tmp[695]);
    tmp[696] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[695], tmp[696]);
    AddA(tmp[696], a[4928]); -- Darkshore Quests
    AddA(tmp[696], a[5453]); -- Ghosts in the Dark
    tmp[762] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[695], tmp[762]);
    AddA(tmp[762], a[844]); -- Explore Darkshore
    tmp[691] = IaR(c, cat:New(C_Map.GetMapInfo(76).name)); -- Azshara
    AddC(tmp[688], tmp[691]);
    tmp[692] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[691], tmp[692]);
    AddA(tmp[692], a[4927]); -- Azshara Quests
    AddA(tmp[692], a[5454]); -- Joy Ride
    AddA(tmp[692], a[5448]); -- Glutton for Fiery Punishment
    AddA(tmp[692], a[5546]); -- Glutton for Icy Punishment
    AddA(tmp[692], a[5547]); -- Glutton for Shadowy Punishment
    tmp[771] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[691], tmp[771]);
    AddA(tmp[771], a[852]); -- Explore Azshara
    tmp[689] = IaR(c, cat:New(C_Map.GetMapInfo(63).name)); -- Ashenvale
    AddC(tmp[688], tmp[689]);
    tmp[690] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[689], tmp[690]);
    AddA(tmp[690], a[4925]); -- Ashenvale Quests
    AddA(tmp[690], a[4976]); -- Ashenvale Quests
    tmp[764] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[689], tmp[764]);
    AddA(tmp[764], a[845]); -- Explore Ashenvale
    tmp[709] = IaR(c, cat:New(C_Map.GetMapInfo(65).name)); -- Stonetalon Mountains
    AddC(tmp[688], tmp[709]);
    tmp[710] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[709], tmp[710]);
    AddA(tmp[710], a[4936]); -- Stonetalon Mountains Quests
    AddA(tmp[710], a[4980]); -- Stonetalon Mountains Quests
    tmp[766] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[709], tmp[766]);
    AddA(tmp[766], a[847]); -- Explore Stonetalon Mountains
    tmp[697] = IaR(c, cat:New(C_Map.GetMapInfo(66).name)); -- Desolace
    AddC(tmp[688], tmp[697]);
    tmp[698] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[697], tmp[698]);
    AddA(tmp[698], a[4930]); -- Desolace Quests
    tmp[767] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[697], tmp[767]);
    AddA(tmp[767], a[848]); -- Explore Desolace
    tmp[711] = IaR(c, cat:New(C_Map.GetMapInfo(199).name)); -- Southern Barrens
    AddC(tmp[688], tmp[711]);
    tmp[712] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[711], tmp[712]);
    AddA(tmp[712], a[4937]); -- Southern Barrens Quests
    AddA(tmp[712], a[4981]); -- Southern Barrens Quests
    tmp[761] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[711], tmp[761]);
    AddA(tmp[761], a[4996]); -- Explore Southern Barrens
    tmp[703] = IaR(c, cat:New(C_Map.GetMapInfo(69).name)); -- Feralas
    AddC(tmp[688], tmp[703]);
    tmp[704] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[703], tmp[704]);
    AddA(tmp[704], a[4932]); -- Feralas Quests
    AddA(tmp[704], a[4979]); -- Feralas Quests
    tmp[769] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[703], tmp[769]);
    AddA(tmp[769], a[849]); -- Explore Feralas
    tmp[699] = IaR(c, cat:New(C_Map.GetMapInfo(70).name)); -- Dustwallow Marsh
    AddC(tmp[688], tmp[699]);
    tmp[700] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[699], tmp[700]);
    AddA(tmp[700], a[4929]); -- Dustwallow Marsh Quests
    AddA(tmp[700], a[4978]); -- Dustwallow Marsh Quests
    tmp[768] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[699], tmp[768]);
    AddA(tmp[768], a[850]); -- Explore Dustwallow Marsh
    tmp[715] = IaR(c, cat:New(C_Map.GetMapInfo(64).name)); -- Thousand Needles
    AddC(tmp[688], tmp[715]);
    tmp[716] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[715], tmp[716]);
    AddA(tmp[716], a[4938]); -- Thousand Needles Quests
    tmp[765] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[715], tmp[765]);
    AddA(tmp[765], a[846]); -- Explore Thousand Needles
    tmp[713] = IaR(c, cat:New(C_Map.GetMapInfo(71).name)); -- Tanaris
    AddC(tmp[688], tmp[713]);
    tmp[714] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[713], tmp[714]);
    AddA(tmp[714], a[4935]); -- Tanaris Quests
    tmp[770] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[713], tmp[770]);
    AddA(tmp[770], a[851]); -- Explore Tanaris
    tmp[701] = IaR(c, cat:New(C_Map.GetMapInfo(77).name)); -- Felwood
    AddC(tmp[688], tmp[701]);
    tmp[702] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[701], tmp[702]);
    AddA(tmp[702], a[4931]); -- Felwood Quests
    tmp[772] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[701], tmp[772]);
    AddA(tmp[772], a[853]); -- Explore Felwood
    tmp[717] = IaR(c, cat:New(C_Map.GetMapInfo(78).name)); -- Un'Goro Crater
    AddC(tmp[688], tmp[717]);
    AddA(tmp[717], a[3357]); -- Venomhide Ravasaur
    tmp[718] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[717], tmp[718]);
    AddA(tmp[718], a[4939]); -- Un'Goro Crater Quests
    tmp[773] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[717], tmp[773]);
    AddA(tmp[773], a[854]); -- Explore Un'Goro Crater
    tmp[707] = IaR(c, cat:New(C_Map.GetMapInfo(81).name)); -- Silithus
    AddC(tmp[688], tmp[707]);
    AddA(tmp[707], a[416]); -- Scarab Lord
    tmp[708] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[707], tmp[708]);
    AddA(tmp[708], a[4934]); -- Silithus Quests
    tmp[776] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[707], tmp[776]);
    AddA(tmp[776], a[856]); -- Explore Silithus
    tmp[783] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[707], tmp[783]);
    AddA(tmp[783], a[953]); -- Guardian of Cenarius
    tmp[719] = IaR(c, cat:New(C_Map.GetMapInfo(83).name)); -- Winterspring
    AddC(tmp[688], tmp[719]);
    AddA(tmp[719], a[3356]); -- Winterspring Frostsaber
    tmp[720] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[719], tmp[720]);
    AddA(tmp[720], a[4940]); -- Winterspring Quests
    AddA(tmp[720], a[5443]); -- E'ko Madness
    tmp[777] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[719], tmp[777]);
    AddA(tmp[777], a[857]); -- Explore Winterspring
    tmp[2] = IaR(c, cat:New((GetCategoryInfo(15272)))); -- Dungeons
    AddC(tmp[1], tmp[2]);
    AddA(tmp[2], a[1283]); -- Classic Dungeonmaster
    tmp[5] = IaR(c, cat:New((EJ_GetInstanceInfo(226)))); -- Ragefire Chasm
    AddC(tmp[2], tmp[5]);
    AddA(tmp[5], a[629]); -- Ragefire Chasm
    tmp[8] = IaR(c, cat:New((EJ_GetInstanceInfo(240)))); -- Wailing Caverns
    AddC(tmp[2], tmp[8]);
    AddA(tmp[8], a[630]); -- Wailing Caverns
    tmp[10] = IaR(c, cat:New((EJ_GetInstanceInfo(227)))); -- Blackfathom Deeps
    AddC(tmp[2], tmp[10]);
    AddA(tmp[10], a[632]); -- Blackfathom Deeps
    tmp[11] = IaR(c, cat:New((EJ_GetInstanceInfo(238)))); -- The Stockade
    AddC(tmp[2], tmp[11]);
    AddA(tmp[11], a[633]); -- Stormwind Stockade
    tmp[12] = IaR(c, cat:New((EJ_GetInstanceInfo(231)))); -- Gnomeregan
    AddC(tmp[2], tmp[12]);
    AddA(tmp[12], a[634]); -- Gnomeregan
    tmp[13] = IaR(c, cat:New((EJ_GetInstanceInfo(233)))); -- Razorfen Kraul
    AddC(tmp[2], tmp[13]);
    AddA(tmp[13], a[635]); -- Razorfen Kraul
    tmp[14] = IaR(c, cat:New((EJ_GetInstanceInfo(234)))); -- Razorfen Downs
    AddC(tmp[2], tmp[14]);
    AddA(tmp[14], a[636]); -- Razorfen Downs
    tmp[17] = IaR(c, cat:New((EJ_GetInstanceInfo(239)))); -- Uldaman
    AddC(tmp[2], tmp[17]);
    AddA(tmp[17], a[638]); -- Uldaman
    tmp[18] = IaR(c, cat:New((EJ_GetInstanceInfo(241)))); -- Zul'Farrak
    AddC(tmp[2], tmp[18]);
    AddA(tmp[18], a[639]); -- Zul'Farrak
    tmp[19] = IaR(c, cat:New((EJ_GetInstanceInfo(232)))); -- Maraudon
    AddC(tmp[2], tmp[19]);
    AddA(tmp[19], a[640]); -- Maraudon
    tmp[20] = IaR(c, cat:New((EJ_GetInstanceInfo(237)))); -- The Temple Of Atal'hakkar
    AddC(tmp[2], tmp[20]);
    AddA(tmp[20], a[641]); -- Sunken Temple
    tmp[21] = IaR(c, cat:New((EJ_GetInstanceInfo(228)))); -- Blackrock Depths
    AddC(tmp[2], tmp[21]);
    AddA(tmp[21], a[642]); -- Blackrock Depths
    AddA(tmp[21], a[3496]); -- A Brew-FAST Mount
    tmp[22] = IaR(c, cat:New((EJ_GetInstanceInfo(229)))); -- Lower Blackrock Spire
    AddC(tmp[2], tmp[22]);
    AddA(tmp[22], a[643]); -- Lower Blackrock Spire
    tmp[797] = IaR(c, cat:New((EJ_GetInstanceInfo(559)) .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Upper Blackrock Spire
    AddC(tmp[2], tmp[797]);
    AddA(tmp[797], a[1307]); -- Upper Blackrock Spire (Classic)
    AddA(tmp[797], a[2188]); -- Leeeeeeeeeeeeeroy!
    tmp[23] = IaR(c, cat:New((EJ_GetInstanceInfo(230)))); -- Dire Maul
    AddC(tmp[2], tmp[23]);
    AddA(tmp[23], a[644]); -- King of Dire Maul
    AddA(tmp[23], a[5788]); -- Agent of the Shen'dralar
    tmp[25] = IaR(c, cat:New((EJ_GetInstanceInfo(236)))); -- Stratholme
    AddC(tmp[2], tmp[25]);
    AddA(tmp[25], a[646]); -- Stratholme
    AddA(tmp[25], a[729]); -- Deathcharger's Reins
    tmp[3] = IaR(c, cat:New((GetCategoryInfo(15271)))); -- Raids
    AddC(tmp[1], tmp[3]);
    AddA(tmp[3], a[1285]); -- Classic Raider
    tmp[7] = IaR(c, cat:New((EJ_GetInstanceInfo(741)))); -- Molten Core
    AddC(tmp[3], tmp[7]);
    AddA(tmp[7], a[686]); -- Molten Core
    AddA(tmp[7], a[11741]); -- So Hot Right Now
    AddA(tmp[7], a[429]); -- "Sulfuras, Hand of Ragnaros"
    AddA(tmp[7], a[428]); -- "Thunderfury, Blessed Blade of the Windseeker"
    AddA(tmp[7], a[9550]); -- "Boldly, You Sought the Power of Ragnaros"
    tmp[779] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[7], tmp[779]);
    AddA(tmp[779], a[955]); -- Hydraxian Waterlords
    AddA(tmp[779], a[2496]); -- The Fifth Element
    tmp[26] = IaR(c, cat:New((EJ_GetInstanceInfo(760)) .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Onyxia's Lair
    AddC(tmp[3], tmp[26]);
    AddA(tmp[26], a[684]); -- Onyxia's Lair (Level 60)
    tmp[27] = IaR(c, cat:New((EJ_GetInstanceInfo(742)))); -- Blackwing Lair
    AddC(tmp[3], tmp[27]);
    AddA(tmp[27], a[685]); -- Blackwing Lair
    AddA(tmp[27], a[11742]); -- Dress in Lairs
    tmp[28] = IaR(c, cat:New((EJ_GetInstanceInfo(76)) .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Zul'Gurub
    AddC(tmp[3], tmp[28]);
    AddA(tmp[28], a[560]); -- Deadliest Catch
    AddA(tmp[28], a[688]); -- Zul'Gurub
    AddA(tmp[28], a[880]); -- Swift Zulian Tiger
    AddA(tmp[28], a[881]); -- Swift Razzashi Raptor
    tmp[789] = IaR(c, cat:New((GetCategoryInfo(15273)))); -- Reputation
    AddC(tmp[28], tmp[789]);
    AddA(tmp[789], a[957]); -- Hero of the Zandalar Tribe
    tmp[29] = IaR(c, cat:New((EJ_GetInstanceInfo(743)))); -- Ruins of Ahn'Qiraj
    AddC(tmp[3], tmp[29]);
    AddA(tmp[29], a[689]); -- Ruins of Ahn'Qiraj
    tmp[784] = IaR(c, cat:New((GetCategoryInfo(15273)))); -- Reputation
    AddC(tmp[29], tmp[784]);
    AddA(tmp[784], a[953]); -- Guardian of Cenarius
    tmp[30] = IaR(c, cat:New((EJ_GetInstanceInfo(744)))); -- Temple of Ahn'Qiraj
    AddC(tmp[3], tmp[30]);
    AddA(tmp[30], a[687]); -- Temple of Ahn'Qiraj
    AddA(tmp[30], a[424]); -- Why? Because It's Red
    AddA(tmp[30], a[11743]); -- Accessor-Eyes
    tmp[780] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[30], tmp[780]);
    AddA(tmp[780], a[956]); -- Brood of Nozdormu
    tmp[796] = IaR(c, cat:New((EJ_GetInstanceInfo(754)) .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Naxxramas
    AddC(tmp[3], tmp[796]);
    AddA(tmp[796], a[11744]); -- "Drop Dead, Gorgeous"
    tmp[785] = IaR(c, cat:New((GetCategoryInfo(15117)))); -- Pet Battles
    AddC(tmp[1], tmp[785]);
    AddA(tmp[785], a[6586]); -- Eastern Kingdoms Safari
    AddA(tmp[785], a[6585]); -- Kalimdor Safari
    AddA(tmp[785], a[6613]); -- Eastern Kingdoms Tamer
    AddA(tmp[785], a[6612]); -- Kalimdor Tamer
    AddA(tmp[785], a[6603]); -- Taming Eastern Kingdoms
    AddA(tmp[785], a[6602]); -- Taming Kalimdor
    tmp[55] = IaR(c, cat:New((GetCategoryInfo(14865)))); -- The Burning Crusade
    tmp[616] = IaR(c, cat:New(addon.L["Zones"])); -- Zones
    AddC(tmp[55], tmp[616]);
    AddA(tmp[616], a[1262]); -- Loremaster of Outland
    AddA(tmp[616], a[1311]); -- Medium Rare
    AddA(tmp[616], a[1312]); -- Bloody Rare
    AddA(tmp[616], a[44]); -- Outland Explorer
    AddA(tmp[616], a[763]); -- The Burning Crusader
    AddA(tmp[616], a[764]); -- The Burning Crusader
    AddA(tmp[616], a[894]); -- Flying High Over Skettis
    AddA(tmp[616], a[897]); -- You're So Offensive
    AddA(tmp[616], a[902]); -- Chief Exalted Officer
    tmp[794] = IaR(c, cat:New(C_Map.GetMapInfo(111).name)); -- Shattrath City
    AddC(tmp[616], tmp[794]);
    AddA(tmp[794], a[1165]); -- "My Sack is ""Gigantique"""
    tmp[758] = IaR(c, cat:New(C_Map.GetMapInfo(97).name)); -- Azuremyst Isle
    AddC(tmp[616], tmp[758]);
    tmp[759] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[758], tmp[759]);
    AddA(tmp[759], a[860]); -- Explore Azuremyst Isle
    tmp[693] = IaR(c, cat:New(C_Map.GetMapInfo(106).name)); -- Bloodmyst Isle
    AddC(tmp[616], tmp[693]);
    tmp[694] = IaR(c, cat:New((GetCategoryInfo(15447)))); -- Quests
    AddC(tmp[693], tmp[694]);
    AddA(tmp[694], a[4926]); -- Bloodmyst Isle Quests
    tmp[763] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[693], tmp[763]);
    AddA(tmp[763], a[861]); -- Explore Bloodmyst Isle
    tmp[727] = IaR(c, cat:New(C_Map.GetMapInfo(94).name)); -- Eversong Woods
    AddC(tmp[616], tmp[727]);
    tmp[728] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[727], tmp[728]);
    AddA(tmp[728], a[859]); -- Explore Eversong Woods
    tmp[669] = IaR(c, cat:New(C_Map.GetMapInfo(95).name)); -- Ghostlands
    AddC(tmp[616], tmp[669]);
    tmp[670] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[669], tmp[670]);
    AddA(tmp[670], a[4908]); -- Ghostlands Quests
    tmp[733] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[669], tmp[733]);
    AddA(tmp[733], a[858]); -- Explore Ghostlands
    tmp[617] = IaR(c, cat:New(C_Map.GetMapInfo(100).name)); -- Hellfire Peninsula
    AddC(tmp[616], tmp[617]);
    tmp[624] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[617], tmp[624]);
    AddA(tmp[624], a[1189]); -- To Hellfire and Back
    AddA(tmp[624], a[1271]); -- To Hellfire and Back
    tmp[631] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[617], tmp[631]);
    AddA(tmp[631], a[862]); -- Explore Hellfire Peninsula
    tmp[618] = IaR(c, cat:New(C_Map.GetMapInfo(102).name)); -- Zangarmarsh
    AddC(tmp[616], tmp[618]);
    tmp[625] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[618], tmp[625]);
    AddA(tmp[625], a[1190]); -- Mysteries of the Marsh
    tmp[632] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[618], tmp[632]);
    AddA(tmp[632], a[863]); -- Explore Zangarmarsh
    tmp[643] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[618], tmp[643]);
    AddA(tmp[643], a[893]); -- Cenarion War Hippogryph
    AddA(tmp[643], a[953]); -- Guardian of Cenarius
    AddA(tmp[643], a[900]); -- The Czar of Sporeggar
    AddA(tmp[643], a[942]); -- The Diplomat
    AddA(tmp[643], a[943]); -- The Diplomat
    tmp[619] = IaR(c, cat:New(C_Map.GetMapInfo(108).name)); -- Terokkar Forest
    AddC(tmp[616], tmp[619]);
    tmp[626] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[619], tmp[626]);
    AddA(tmp[626], a[1191]); -- Terror of Terokkar
    AddA(tmp[626], a[1272]); -- Terror of Terokkar
    AddA(tmp[626], a[1275]); -- Bombs Away
    tmp[633] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[619], tmp[633]);
    AddA(tmp[633], a[867]); -- Explore Terokkar Forest
    tmp[642] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[619], tmp[642]);
    AddA(tmp[642], a[903]); -- Shattrath Divided
    AddA(tmp[642], a[1205]); -- Hero of Shattrath
    tmp[620] = IaR(c, cat:New(C_Map.GetMapInfo(107).name)); -- Nagrand
    AddC(tmp[616], tmp[620]);
    tmp[627] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[620], tmp[627]);
    AddA(tmp[627], a[1192]); -- Nagrand Slam
    AddA(tmp[627], a[1273]); -- Nagrand Slam
    AddA(tmp[627], a[939]); -- Hills Like White Elekk
    AddA(tmp[627], a[941]); -- Hemet Nesingwary: The Collected Quests
    AddA(tmp[627], a[1576]); -- Of Blood and Anguish
    AddA(tmp[627], a[4958]); -- The First Rule of Ring of Blood is You Don't Talk About Ring of Blood
    tmp[634] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[620], tmp[634]);
    AddA(tmp[634], a[866]); -- Explore Nagrand
    tmp[641] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[620], tmp[641]);
    AddA(tmp[641], a[899]); -- "Oh My, Kurenai"
    AddA(tmp[641], a[901]); -- Mag'har of Draenor
    AddA(tmp[641], a[942]); -- The Diplomat
    AddA(tmp[641], a[943]); -- The Diplomat
    tmp[621] = IaR(c, cat:New(C_Map.GetMapInfo(105).name)); -- Blade's Edge Mountains
    AddC(tmp[616], tmp[621]);
    tmp[628] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[621], tmp[628]);
    AddA(tmp[628], a[1193]); -- On the Blade's Edge
    AddA(tmp[628], a[1276]); -- Blade's Edge Bomberman
    tmp[635] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[621], tmp[635]);
    AddA(tmp[635], a[865]); -- Explore Blade's Edge Mountains
    tmp[640] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[621], tmp[640]);
    AddA(tmp[640], a[896]); -- A Quest a Day Keeps the Ogres at Bay
    tmp[622] = IaR(c, cat:New(C_Map.GetMapInfo(109).name)); -- Netherstorm
    AddC(tmp[616], tmp[622]);
    tmp[629] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[622], tmp[629]);
    AddA(tmp[629], a[1194]); -- Into the Nether
    tmp[636] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[622], tmp[636]);
    AddA(tmp[636], a[843]); -- Explore Netherstorm
    tmp[623] = IaR(c, cat:New(C_Map.GetMapInfo(104).name)); -- Shadowmoon Valley
    AddC(tmp[616], tmp[623]);
    tmp[630] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[623], tmp[630]);
    AddA(tmp[630], a[1195]); -- Shadow of the Betrayer
    tmp[637] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[623], tmp[637]);
    AddA(tmp[637], a[864]); -- Explore Shadowmoon Valley
    tmp[638] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[623], tmp[638]);
    AddA(tmp[638], a[898]); -- On Wings of Nether
    AddA(tmp[638], a[1638]); -- Skyshattered
    tmp[750] = IaR(c, cat:New(C_Map.GetMapInfo(122).name)); -- Isle of Quel'Danas
    AddC(tmp[616], tmp[750]);
    tmp[751] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[750], tmp[751]);
    AddA(tmp[751], a[868]); -- Explore Isle of Quel'Danas
    tmp[56] = IaR(c, cat:New((GetCategoryInfo(15272)))); -- Dungeons
    AddC(tmp[55], tmp[56]);
    AddA(tmp[56], a[1284]); -- Outland Dungeonmaster
    AddA(tmp[56], a[1287]); -- Outland Dungeon Hero
    tmp[57] = IaR(c, cat:New((EJ_GetInstanceInfo(248)))); -- Hellfire Ramparts
    AddC(tmp[56], tmp[57]);
    AddA(tmp[57], a[647]); -- Hellfire Ramparts
    AddA(tmp[57], a[667]); -- Heroic: Hellfire Ramparts
    tmp[58] = IaR(c, cat:New((EJ_GetInstanceInfo(256)))); -- The Blood Furnace
    AddC(tmp[56], tmp[58]);
    AddA(tmp[58], a[648]); -- The Blood Furnace
    AddA(tmp[58], a[668]); -- Heroic: The Blood Furnace
    tmp[59] = IaR(c, cat:New((EJ_GetInstanceInfo(259)))); -- The Shattered Halls
    AddC(tmp[56], tmp[59]);
    AddA(tmp[59], a[657]); -- The Shattered Halls
    AddA(tmp[59], a[678]); -- Heroic: The Shattered Halls
    tmp[60] = IaR(c, cat:New((EJ_GetInstanceInfo(260)))); -- The Slave Pens
    AddC(tmp[56], tmp[60]);
    AddA(tmp[60], a[649]); -- The Slave Pens
    AddA(tmp[60], a[669]); -- Heroic: The Slave Pens
    tmp[61] = IaR(c, cat:New((EJ_GetInstanceInfo(262)))); -- The Underbog
    AddC(tmp[56], tmp[61]);
    AddA(tmp[61], a[650]); -- Underbog
    AddA(tmp[61], a[670]); -- Heroic: Underbog
    tmp[62] = IaR(c, cat:New((EJ_GetInstanceInfo(261)))); -- The Steamvault
    AddC(tmp[56], tmp[62]);
    AddA(tmp[62], a[656]); -- The Steamvault
    AddA(tmp[62], a[677]); -- Heroic: The Steamvault
    tmp[63] = IaR(c, cat:New((EJ_GetInstanceInfo(250)))); -- Mana-Tombs
    AddC(tmp[56], tmp[63]);
    AddA(tmp[63], a[651]); -- Mana-Tombs
    AddA(tmp[63], a[671]); -- Heroic: Mana-Tombs
    tmp[64] = IaR(c, cat:New((EJ_GetInstanceInfo(247)))); -- Auchenai Crypts
    AddC(tmp[56], tmp[64]);
    AddA(tmp[64], a[666]); -- Auchenai Crypts
    AddA(tmp[64], a[672]); -- Heroic: Auchenai Crypts
    tmp[65] = IaR(c, cat:New((EJ_GetInstanceInfo(252)))); -- Sethekk Halls
    AddC(tmp[56], tmp[65]);
    AddA(tmp[65], a[653]); -- Sethekk Halls
    AddA(tmp[65], a[674]); -- Heroic: Sethekk Halls
    AddA(tmp[65], a[883]); -- Reins of the Raven Lord
    tmp[66] = IaR(c, cat:New((EJ_GetInstanceInfo(253)))); -- Shadow Labyrinth
    AddC(tmp[56], tmp[66]);
    AddA(tmp[66], a[654]); -- Shadow Labyrinth
    AddA(tmp[66], a[675]); -- Heroic: Shadow Labyrinth
    tmp[67] = IaR(c, cat:New((EJ_GetInstanceInfo(251)))); -- Old Hillsbrad Foothills
    AddC(tmp[56], tmp[67]);
    AddA(tmp[67], a[652]); -- The Escape From Durnholde
    AddA(tmp[67], a[673]); -- Heroic: The Escape From Durnholde
    tmp[68] = IaR(c, cat:New((EJ_GetInstanceInfo(255)))); -- The Black Morass
    AddC(tmp[56], tmp[68]);
    AddA(tmp[68], a[655]); -- Opening of the Dark Portal
    AddA(tmp[68], a[676]); -- Heroic: Opening of the Dark Portal
    tmp[69] = IaR(c, cat:New((EJ_GetInstanceInfo(258)))); -- The Mechanar
    AddC(tmp[56], tmp[69]);
    AddA(tmp[69], a[658]); -- The Mechanar
    AddA(tmp[69], a[679]); -- Heroic: The Mechanar
    tmp[70] = IaR(c, cat:New((EJ_GetInstanceInfo(257)))); -- The Botanica
    AddC(tmp[56], tmp[70]);
    AddA(tmp[70], a[659]); -- The Botanica
    AddA(tmp[70], a[680]); -- Heroic: The Botanica
    tmp[71] = IaR(c, cat:New((EJ_GetInstanceInfo(254)))); -- The Arcatraz
    AddC(tmp[56], tmp[71]);
    AddA(tmp[71], a[660]); -- The Arcatraz
    AddA(tmp[71], a[681]); -- Heroic: The Arcatraz
    tmp[72] = IaR(c, cat:New((EJ_GetInstanceInfo(249)))); -- Magisters Terrace
    AddC(tmp[56], tmp[72]);
    AddA(tmp[72], a[661]); -- Magister's Terrace
    AddA(tmp[72], a[682]); -- Heroic: Magister's Terrace
    AddA(tmp[72], a[884]); -- Swift White Hawkstrider
    tmp[73] = IaR(c, cat:New((GetCategoryInfo(15271)))); -- Raids
    AddC(tmp[55], tmp[73]);
    AddA(tmp[73], a[1286]); -- Outland Raider
    tmp[74] = IaR(c, cat:New((EJ_GetInstanceInfo(745)))); -- Karazhan
    AddC(tmp[73], tmp[74]);
    AddA(tmp[74], a[690]); -- Karazhan
    AddA(tmp[74], a[882]); -- Fiery Warhorse's Reins
    AddA(tmp[74], a[11746]); -- Outlandish Style
    AddA(tmp[74], a[2456]); -- Vampire Hunter
    tmp[647] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[74], tmp[647]);
    AddA(tmp[647], a[960]); -- The Violet Eye
    tmp[75] = IaR(c, cat:New((EJ_GetInstanceInfo(746)))); -- Gruul's Lair
    AddC(tmp[73], tmp[75]);
    AddA(tmp[75], a[692]); -- Gruul's Lair
    AddA(tmp[75], a[11746]); -- Outlandish Style
    tmp[76] = IaR(c, cat:New((EJ_GetInstanceInfo(747)))); -- Magtheridon's Lair
    AddC(tmp[73], tmp[76]);
    AddA(tmp[76], a[693]); -- Magtheridon's Lair
    AddA(tmp[76], a[11746]); -- Outlandish Style
    tmp[77] = IaR(c, cat:New((EJ_GetInstanceInfo(748)))); -- Serpentshrine Cavern
    AddC(tmp[73], tmp[77]);
    AddA(tmp[77], a[694]); -- Serpentshrine Cavern
    AddA(tmp[77], a[11747]); -- Merely a Set
    tmp[78] = IaR(c, cat:New((EJ_GetInstanceInfo(749)))); -- The Eye
    AddC(tmp[73], tmp[78]);
    AddA(tmp[78], a[696]); -- Tempest Keep
    AddA(tmp[78], a[885]); -- Ashes of Al'ar
    tmp[79] = IaR(c, cat:New((EJ_GetInstanceInfo(750)))); -- The Battle for Mount Hyjal
    AddC(tmp[73], tmp[79]);
    AddA(tmp[79], a[695]); -- The Battle for Mount Hyjal
    tmp[646] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[79], tmp[646]);
    AddA(tmp[646], a[959]); -- The Scale of the Sands
    tmp[80] = IaR(c, cat:New((EJ_GetInstanceInfo(751)))); -- Black Temple
    AddC(tmp[73], tmp[80]);
    AddA(tmp[80], a[697]); -- The Black Temple
    AddA(tmp[80], a[9016]); -- Breaker of the Black Harvest
    AddA(tmp[80], a[11748]); -- Black is the New Black
    AddA(tmp[80], a[426]); -- Warglaives of Azzinoth
    AddA(tmp[80], a[11869]); -- I'll Hold These For You Until You Get Out
    tmp[645] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[80], tmp[645]);
    AddA(tmp[645], a[958]); -- Sworn to the Deathsworn
    tmp[81] = IaR(c, cat:New((EJ_GetInstanceInfo(77)) .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Zul'Aman
    AddC(tmp[73], tmp[81]);
    AddA(tmp[81], a[691]); -- Zul'Aman
    AddA(tmp[81], a[430]); -- Amani War Bear
    tmp[82] = IaR(c, cat:New((EJ_GetInstanceInfo(752)))); -- Sunwell Plateau
    AddC(tmp[73], tmp[82]);
    AddA(tmp[82], a[698]); -- Sunwell Plateau
    AddA(tmp[82], a[11749]); -- "Suns Out, Thori'dals Out"
    AddA(tmp[82], a[725]); -- "Thori'dal, the Stars' Fury"
    tmp[786] = IaR(c, cat:New((GetCategoryInfo(15117)))); -- Pet Battles
    AddC(tmp[55], tmp[786]);
    AddA(tmp[786], a[6587]); -- Outland Safari
    AddA(tmp[786], a[6614]); -- Outland Tamer
    AddA(tmp[786], a[6604]); -- Taming Outland
    tmp[83] = IaR(c, cat:New((GetCategoryInfo(14866)))); -- Wrath of the Lich King
    tmp[577] = IaR(c, cat:New(addon.L["Zones"])); -- Zones
    AddC(tmp[83], tmp[577]);
    AddA(tmp[577], a[41]); -- Loremaster of Northrend
    AddA(tmp[577], a[2256]); -- Northern Exposure
    AddA(tmp[577], a[2257]); -- Frostbitten
    AddA(tmp[577], a[2557]); -- To All The Squirrels Who Shared My Life
    AddA(tmp[577], a[45]); -- Northrend Explorer
    AddA(tmp[577], a[1008]); -- The Kirin Tor
    AddA(tmp[577], a[1009]); -- Knights of the Ebon Blade
    AddA(tmp[577], a[1010]); -- Northrend Vanguard
    AddA(tmp[577], a[1011]); -- The Winds of the North
    AddA(tmp[577], a[1012]); -- The Winds of the North
    tmp[614] = IaR(c, cat:New(C_Map.GetMapInfo(125).name)); -- Dalaran
    AddC(tmp[577], tmp[614]);
    AddA(tmp[614], a[1956]); -- Higher Learning
    AddA(tmp[614], a[2084]); -- Ring of the Kirin Tor
    AddA(tmp[614], a[2076]); -- Armored Brown Bear
    AddA(tmp[614], a[2077]); -- Wooly Mammoth
    AddA(tmp[614], a[2078]); -- Traveler's Tundra Mammoth
    tmp[578] = IaR(c, cat:New(C_Map.GetMapInfo(114).name)); -- Borean Tundra
    AddC(tmp[577], tmp[578]);
    tmp[586] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[578], tmp[586]);
    AddA(tmp[586], a[33]); -- Nothing Boring About Borean
    AddA(tmp[586], a[1358]); -- Nothing Boring About Borean
    AddA(tmp[586], a[561]); -- D.E.H.T.A's Little P.I.T.A.
    tmp[587] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[578], tmp[587]);
    AddA(tmp[587], a[1264]); -- Explore Borean Tundra
    tmp[588] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[578], tmp[588]);
    AddA(tmp[588], a[949]); -- Tuskarrmageddon
    tmp[579] = IaR(c, cat:New(C_Map.GetMapInfo(117).name)); -- Howling Fjord
    AddC(tmp[577], tmp[579]);
    tmp[589] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[579], tmp[589]);
    AddA(tmp[589], a[34]); -- I've Toured the Fjord
    AddA(tmp[589], a[1356]); -- I've Toured the Fjord
    tmp[590] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[579], tmp[590]);
    AddA(tmp[590], a[1263]); -- Explore Howling Fjord
    AddA(tmp[590], a[1254]); -- Friend or Fowl?
    tmp[580] = IaR(c, cat:New(C_Map.GetMapInfo(115).name)); -- Dragonblight
    AddC(tmp[577], tmp[580]);
    tmp[592] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[580], tmp[592]);
    AddA(tmp[592], a[35]); -- Might of Dragonblight
    AddA(tmp[592], a[1359]); -- Might of Dragonblight
    AddA(tmp[592], a[547]); -- Veteran of the Wrathgate
    AddA(tmp[592], a[1277]); -- Rapid Defense
    tmp[593] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[580], tmp[593]);
    AddA(tmp[593], a[1265]); -- Explore Dragonblight
    tmp[594] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[580], tmp[594]);
    AddA(tmp[594], a[1007]); -- The Wyrmrest Accord
    tmp[581] = IaR(c, cat:New(C_Map.GetMapInfo(116).name)); -- Grizzly Hills
    AddC(tmp[577], tmp[581]);
    tmp[595] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[581], tmp[595]);
    AddA(tmp[595], a[37]); -- Fo' Grizzle My Shizzle
    AddA(tmp[595], a[1357]); -- Fo' Grizzle My Shizzle
    tmp[596] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[581], tmp[596]);
    AddA(tmp[596], a[1266]); -- Explore Grizzly Hills
    tmp[782] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[581], tmp[782]);
    AddA(tmp[782], a[2016]); -- Grizzled Veteran
    AddA(tmp[782], a[2017]); -- Grizzled Veteran
    tmp[582] = IaR(c, cat:New(C_Map.GetMapInfo(121).name)); -- Zul'Drak
    AddC(tmp[577], tmp[582]);
    tmp[598] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[582], tmp[598]);
    AddA(tmp[598], a[36]); -- The Empire of Zul'Drak
    AddA(tmp[598], a[1596]); -- Guru of Drakuru
    AddA(tmp[598], a[1576]); -- Of Blood and Anguish
    AddA(tmp[598], a[4958]); -- The First Rule of Ring of Blood is You Don't Talk About Ring of Blood
    tmp[599] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[582], tmp[599]);
    AddA(tmp[599], a[1267]); -- Explore Zul'Drak
    tmp[583] = IaR(c, cat:New(C_Map.GetMapInfo(119).name)); -- Sholazar Basin
    AddC(tmp[577], tmp[583]);
    tmp[601] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[583], tmp[601]);
    AddA(tmp[601], a[39]); -- Into the Basin
    AddA(tmp[601], a[961]); -- Honorary Frenzyheart
    AddA(tmp[601], a[962]); -- Savior of the Oracles
    AddA(tmp[601], a[938]); -- The Snows of Northrend
    AddA(tmp[601], a[941]); -- Hemet Nesingwary: The Collected Quests
    tmp[602] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[583], tmp[602]);
    AddA(tmp[602], a[1268]); -- Explore Sholazar Basin
    tmp[603] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[583], tmp[603]);
    AddA(tmp[603], a[950]); -- Frenzyheart Tribe
    AddA(tmp[603], a[951]); -- The Oracles
    AddA(tmp[603], a[952]); -- Mercenary of Sholazar
    tmp[610] = IaR(c, cat:New(C_Map.GetMapInfo(127).name)); -- Crystalsong Forest
    AddC(tmp[577], tmp[610]);
    AddA(tmp[610], a[1457]); -- Explore Crystalsong Forest
    tmp[584] = IaR(c, cat:New(C_Map.GetMapInfo(120).name)); -- Storm Peaks
    AddC(tmp[577], tmp[584]);
    tmp[604] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[584], tmp[604]);
    AddA(tmp[604], a[38]); -- The Summit of Storm Peaks
    AddA(tmp[604], a[1428]); -- Mine Sweeper
    tmp[612] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[584], tmp[612]);
    AddA(tmp[612], a[1269]); -- Explore Storm Peaks
    tmp[606] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[584], tmp[606]);
    AddA(tmp[606], a[2082]); -- Ice Mammoth
    AddA(tmp[606], a[2083]); -- Grand Ice Mammoth
    tmp[585] = IaR(c, cat:New(C_Map.GetMapInfo(118).name)); -- Icecrown
    AddC(tmp[577], tmp[585]);
    AddA(tmp[585], a[14750]); -- Death Rising
    tmp[607] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[585], tmp[607]);
    AddA(tmp[607], a[40]); -- Icecrown: The Final Goal
    tmp[608] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[585], tmp[608]);
    AddA(tmp[608], a[1270]); -- Explore Icecrown
    tmp[609] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[585], tmp[609]);
    AddA(tmp[609], a[947]); -- The Argent Crusade
    AddA(tmp[609], a[945]); -- The Argent Champion
    tmp[84] = IaR(c, cat:New((GetCategoryInfo(15272)))); -- Dungeons
    AddC(tmp[83], tmp[84]);
    AddA(tmp[84], a[1288]); -- Northrend Dungeonmaster
    AddA(tmp[84], a[1289]); -- Northrend Dungeon Hero
    AddA(tmp[84], a[1658]); -- Champion of the Frozen Wastes
    AddA(tmp[84], a[2136]); -- Glory of the Hero
    AddA(tmp[84], a[2018]); -- Timear Foresees
    AddA(tmp[84], a[2019]); -- Proof of Demise
    tmp[86] = IaR(c, cat:New((EJ_GetInstanceInfo(285)))); -- Utgarde Keep
    AddC(tmp[84], tmp[86]);
    AddA(tmp[86], a[1919]); -- On The Rocks
    AddA(tmp[86], a[477]); -- Utgarde Keep
    AddA(tmp[86], a[489]); -- Heroic: Utgarde Keep
    tmp[87] = IaR(c, cat:New((EJ_GetInstanceInfo(281)))); -- The Nexus
    AddC(tmp[84], tmp[87]);
    AddA(tmp[87], a[2150]); -- Split Personality
    AddA(tmp[87], a[2037]); -- Chaos Theory
    AddA(tmp[87], a[2036]); -- Intense Cold
    AddA(tmp[87], a[478]); -- The Nexus
    AddA(tmp[87], a[490]); -- Heroic: The Nexus
    tmp[88] = IaR(c, cat:New((EJ_GetInstanceInfo(272)))); -- Azjol-Nerub
    AddC(tmp[84], tmp[88]);
    AddA(tmp[88], a[1296]); -- Watch Him Die
    AddA(tmp[88], a[1297]); -- Hadronox Denied
    AddA(tmp[88], a[1860]); -- Gotta Go!
    AddA(tmp[88], a[480]); -- Azjol-Nerub
    AddA(tmp[88], a[491]); -- Heroic: Azjol-Nerub
    tmp[89] = IaR(c, cat:New((EJ_GetInstanceInfo(271)))); -- Ahn'kahet: The Old Kingdom
    AddC(tmp[84], tmp[89]);
    AddA(tmp[89], a[2038]); -- Respect Your Elders
    AddA(tmp[89], a[2056]); -- Volunteer Work
    AddA(tmp[89], a[1862]); -- Volazj's Quick Demise
    AddA(tmp[89], a[481]); -- Ahn'kahet: The Old Kingdom
    AddA(tmp[89], a[492]); -- Heroic: Ahn'kahet: The Old Kingdom
    tmp[90] = IaR(c, cat:New((EJ_GetInstanceInfo(273)))); -- Drak'Tharon Keep
    AddC(tmp[84], tmp[90]);
    AddA(tmp[90], a[2151]); -- Consumption Junction
    AddA(tmp[90], a[2057]); -- Oh Novos!
    AddA(tmp[90], a[2039]); -- Better Off Dred
    AddA(tmp[90], a[482]); -- Drak'Tharon Keep
    AddA(tmp[90], a[493]); -- Heroic: Drak'Tharon Keep
    tmp[91] = IaR(c, cat:New((EJ_GetInstanceInfo(283)))); -- The Violet Hold
    AddC(tmp[84], tmp[91]);
    AddA(tmp[91], a[1865]); -- Lockdown!
    AddA(tmp[91], a[2041]); -- Dehydration
    AddA(tmp[91], a[2153]); -- A Void Dance
    AddA(tmp[91], a[1816]); -- Defenseless
    AddA(tmp[91], a[483]); -- The Violet Hold
    AddA(tmp[91], a[494]); -- Heroic: The Violet Hold
    tmp[92] = IaR(c, cat:New((EJ_GetInstanceInfo(274)))); -- Gundrak
    AddC(tmp[84], tmp[92]);
    AddA(tmp[92], a[2058]); -- Snakes. Why'd It Have To Be Snakes?
    AddA(tmp[92], a[2040]); -- Less-rabi
    AddA(tmp[92], a[1864]); -- What the Eck?
    AddA(tmp[92], a[2152]); -- Share The Love
    AddA(tmp[92], a[484]); -- Gundrak
    AddA(tmp[92], a[495]); -- Heroic: Gundrak
    tmp[93] = IaR(c, cat:New((EJ_GetInstanceInfo(277)))); -- Halls of Stone
    AddC(tmp[84], tmp[93]);
    AddA(tmp[93], a[1866]); -- Good Grief
    AddA(tmp[93], a[2154]); -- Brann Spankin' New
    AddA(tmp[93], a[2155]); -- Abuse the Ooze
    AddA(tmp[93], a[485]); -- Halls of Stone
    AddA(tmp[93], a[496]); -- Heroic: Halls of Stone
    tmp[94] = IaR(c, cat:New((EJ_GetInstanceInfo(275)))); -- Halls of Lightning
    AddC(tmp[84], tmp[94]);
    AddA(tmp[94], a[1834]); -- Lightning Struck
    AddA(tmp[94], a[2042]); -- Shatter Resistant
    AddA(tmp[94], a[1867]); -- Timely Death
    AddA(tmp[94], a[486]); -- Halls of Lightning
    AddA(tmp[94], a[497]); -- Heroic: Halls of Lightning
    tmp[95] = IaR(c, cat:New((EJ_GetInstanceInfo(282)))); -- The Oculus
    AddC(tmp[84], tmp[95]);
    AddA(tmp[95], a[1868]); -- Make It Count
    AddA(tmp[95], a[2046]); -- Amber Void
    AddA(tmp[95], a[2045]); -- Emerald Void
    AddA(tmp[95], a[2044]); -- Ruby Void
    AddA(tmp[95], a[1871]); -- Experienced Drake Rider
    AddA(tmp[95], a[487]); -- The Oculus
    AddA(tmp[95], a[498]); -- Heroic: The Oculus
    tmp[97] = IaR(c, cat:New((EJ_GetInstanceInfo(286)))); -- Utgarde Pinnacle
    AddC(tmp[84], tmp[97]);
    AddA(tmp[97], a[2043]); -- The Incredible Hulk
    AddA(tmp[97], a[1873]); -- Lodi Dodi We Loves the Skadi
    AddA(tmp[97], a[2156]); -- My Girl Loves to Skadi All the Time
    AddA(tmp[97], a[2157]); -- King's Bane
    AddA(tmp[97], a[488]); -- Utgarde Pinnacle
    AddA(tmp[97], a[499]); -- Heroic: Utgarde Pinnacle
    tmp[96] = IaR(c, cat:New((EJ_GetInstanceInfo(279)))); -- The Culling of Stratholme
    AddC(tmp[84], tmp[96]);
    AddA(tmp[96], a[1872]); -- Zombiefest!
    AddA(tmp[96], a[1817]); -- The Culling of Time
    AddA(tmp[96], a[479]); -- The Culling of Stratholme
    AddA(tmp[96], a[500]); -- Heroic: The Culling of Stratholme
    tmp[98] = IaR(c, cat:New((EJ_GetInstanceInfo(284)))); -- Trial of the Champion
    AddC(tmp[84], tmp[98]);
    AddA(tmp[98], a[3803]); -- The Faceroller
    AddA(tmp[98], a[3802]); -- Argent Confessor
    AddA(tmp[98], a[3804]); -- I've Had Worse
    AddA(tmp[98], a[4296]); -- Trial of the Champion
    AddA(tmp[98], a[4298]); -- Heroic: Trial of the Champion
    AddA(tmp[98], a[3778]); -- Trial of the Champion
    AddA(tmp[98], a[4297]); -- Heroic: Trial of the Champion
    tmp[99] = IaR(c, cat:New((EJ_GetInstanceInfo(280)))); -- The Forge of Souls
    AddC(tmp[84], tmp[99]);
    AddA(tmp[99], a[4522]); -- Soul Power
    AddA(tmp[99], a[4523]); -- Three Faced
    AddA(tmp[99], a[4516]); -- The Forge of Souls
    AddA(tmp[99], a[4519]); -- Heroic: The Forge of Souls
    tmp[100] = IaR(c, cat:New((EJ_GetInstanceInfo(278)))); -- Pit of Saron
    AddC(tmp[84], tmp[100]);
    AddA(tmp[100], a[4524]); -- Doesn't Go to Eleven
    AddA(tmp[100], a[4525]); -- Don't Look Up
    AddA(tmp[100], a[4517]); -- The Pit of Saron
    AddA(tmp[100], a[4520]); -- Heroic: The Pit of Saron
    tmp[101] = IaR(c, cat:New((EJ_GetInstanceInfo(276)))); -- Halls of Reflection
    AddC(tmp[84], tmp[101]);
    AddA(tmp[101], a[4526]); -- We're Not Retreating; We're Advancing in a Different Direction.
    AddA(tmp[101], a[4518]); -- The Halls of Reflection
    AddA(tmp[101], a[4521]); -- Heroic: The Halls of Reflection
    tmp[85] = IaR(c, cat:New((GetCategoryInfo(15271)))); -- Raids
    AddC(tmp[83], tmp[85]);
    AddA(tmp[85], a[1658]); -- Champion of the Frozen Wastes
    AddA(tmp[85], a[2137]); -- Glory of the Raider (10 player)
    AddA(tmp[85], a[2138]); -- Glory of the Raider (25 player)
    AddA(tmp[85], a[12401]); -- Glory of the Ulduar Raider
    AddA(tmp[85], a[4602]); -- Glory of the Icecrown Raider (10 player)
    AddA(tmp[85], a[4603]); -- Glory of the Icecrown Raider (25 player)
    AddA(tmp[85], a[2957]); -- Glory of the Ulduar Raider (10 player)
    AddA(tmp[85], a[2958]); -- Glory of the Ulduar Raider (25 player)
    tmp[102] = IaR(c, cat:New((EJ_GetInstanceInfo(753)))); -- Vault of Archavon
    AddC(tmp[85], tmp[102]);
    AddA(tmp[102], a[2081]); -- Grand Black War Mammoth
    tmp[103] = IaR(c, cat:New((GetDifficultyInfo(3)))); -- Vault of Archavon 10
    AddC(tmp[102], tmp[103]);
    AddA(tmp[103], a[4016]); -- "Earth, Wind & Fire (10 player)"
    AddA(tmp[103], a[1722]); -- Archavon the Stone Watcher (10 player)
    AddA(tmp[103], a[3136]); -- Emalon the Storm Watcher (10 player)
    AddA(tmp[103], a[3836]); -- Koralon the Flame Watcher (10 player)
    AddA(tmp[103], a[4585]); -- Toravon the Ice Watcher (10 player)
    tmp[104] = IaR(c, cat:New((GetDifficultyInfo(4)))); -- Vault of Archavon 25
    AddC(tmp[102], tmp[104]);
    AddA(tmp[104], a[4017]); -- "Earth, Wind & Fire (25 player)"
    AddA(tmp[104], a[1721]); -- Archavon the Stone Watcher (25 player)
    AddA(tmp[104], a[3137]); -- Emalon the Storm Watcher (25 player)
    AddA(tmp[104], a[3837]); -- Koralon the Flame Watcher (25 player)
    AddA(tmp[104], a[4586]); -- Toravon the Ice Watcher (25 player)
    tmp[105] = IaR(c, cat:New((EJ_GetInstanceInfo(754)))); -- Naxxramas
    AddC(tmp[85], tmp[105]);
    AddA(tmp[105], a[11750]); -- Undying Aesthetic
    tmp[106] = IaR(c, cat:New((GetDifficultyInfo(3)))); -- Naxxramas 10
    AddC(tmp[105], tmp[106]);
    AddA(tmp[106], a[1997]); -- Momma Said Knock You Out (10 player)
    AddA(tmp[106], a[1858]); -- Arachnophobia (10 player)
    AddA(tmp[106], a[1856]); -- Make Quick Werk of Him (10 player)
    AddA(tmp[106], a[2178]); -- Shocking! (10 player)
    AddA(tmp[106], a[2180]); -- Subtraction (10 player)
    AddA(tmp[106], a[1996]); -- The Safety Dance (10 player)
    AddA(tmp[106], a[2182]); -- Spore Loser (10 player)
    AddA(tmp[106], a[2176]); -- And They Would All Go Down Together (10 player)
    AddA(tmp[106], a[2146]); -- The Hundred Club (10 player)
    AddA(tmp[106], a[2184]); -- Just Can't Get Enough (10 player)
    AddA(tmp[106], a[578]); -- The Dedicated Few (10 player)
    AddA(tmp[106], a[562]); -- The Arachnid Quarter (10 player)
    AddA(tmp[106], a[564]); -- The Construct Quarter (10 player)
    AddA(tmp[106], a[566]); -- The Plague Quarter (10 player)
    AddA(tmp[106], a[568]); -- The Military Quarter (10 player)
    AddA(tmp[106], a[572]); -- Sapphiron's Demise (10 player)
    AddA(tmp[106], a[574]); -- Kel'Thuzad's Defeat (10 player)
    AddA(tmp[106], a[576]); -- The Fall of Naxxramas (10 player)
    AddA(tmp[106], a[2187]); -- The Undying
    tmp[107] = IaR(c, cat:New((GetDifficultyInfo(4)))); -- Naxxramas 25
    AddC(tmp[105], tmp[107]);
    AddA(tmp[107], a[2140]); -- Momma Said Knock You Out (25 player)
    AddA(tmp[107], a[1859]); -- Arachnophobia (25 player)
    AddA(tmp[107], a[1857]); -- Make Quick Werk of Him (25 player)
    AddA(tmp[107], a[2179]); -- Shocking! (25 player)
    AddA(tmp[107], a[2181]); -- Subtraction (25 player)
    AddA(tmp[107], a[2139]); -- The Safety Dance (25 player)
    AddA(tmp[107], a[2183]); -- Spore Loser (25 player)
    AddA(tmp[107], a[2177]); -- And They Would All Go Down Together (25 player)
    AddA(tmp[107], a[2147]); -- The Hundred Club (25 player)
    AddA(tmp[107], a[2185]); -- Just Can't Get Enough (25 player)
    AddA(tmp[107], a[579]); -- The Dedicated Few (25 player)
    AddA(tmp[107], a[563]); -- The Arachnid Quarter (25 player)
    AddA(tmp[107], a[565]); -- The Construct Quarter (25 player)
    AddA(tmp[107], a[567]); -- The Plague Quarter (25 player)
    AddA(tmp[107], a[569]); -- The Military Quarter (25 player)
    AddA(tmp[107], a[573]); -- Sapphiron's Demise (25 player)
    AddA(tmp[107], a[575]); -- Kel'Thuzad's Defeat (25 player)
    AddA(tmp[107], a[577]); -- The Fall of Naxxramas (25 player)
    AddA(tmp[107], a[2186]); -- The Immortal
    tmp[108] = IaR(c, cat:New((EJ_GetInstanceInfo(755)))); -- The Obsidian Sanctum
    AddC(tmp[85], tmp[108]);
    tmp[109] = IaR(c, cat:New((GetDifficultyInfo(3)))); -- The Obsidian Sanctum 10
    AddC(tmp[108], tmp[109]);
    AddA(tmp[109], a[2047]); -- Gonna Go When the Volcano Blows (10 player)
    AddA(tmp[109], a[2049]); -- Twilight Assist (10 player)
    AddA(tmp[109], a[2050]); -- Twilight Duo (10 player)
    AddA(tmp[109], a[2051]); -- The Twilight Zone (10 player)
    AddA(tmp[109], a[624]); -- Less Is More (10 player)
    AddA(tmp[109], a[1876]); -- Besting the Black Dragonflight (10 player)
    tmp[110] = IaR(c, cat:New((GetDifficultyInfo(4)))); -- The Obsidian Sanctum 25
    AddC(tmp[108], tmp[110]);
    AddA(tmp[110], a[2048]); -- Gonna Go When the Volcano Blows (25 player)
    AddA(tmp[110], a[2052]); -- Twilight Assist (25 player)
    AddA(tmp[110], a[2053]); -- Twilight Duo (25 player)
    AddA(tmp[110], a[2054]); -- The Twilight Zone (25 player)
    AddA(tmp[110], a[1877]); -- Less Is More (25 player)
    AddA(tmp[110], a[625]); -- Besting the Black Dragonflight (25 player)
    tmp[111] = IaR(c, cat:New((EJ_GetInstanceInfo(756)))); -- The Eye of Eternity
    AddC(tmp[85], tmp[111]);
    tmp[112] = IaR(c, cat:New((GetDifficultyInfo(3)))); -- The Eye of Eternity 10
    AddC(tmp[111], tmp[112]);
    AddA(tmp[112], a[2148]); -- Denyin' the Scion (10 player)
    AddA(tmp[112], a[1874]); -- You Don't Have an Eternity (10 player)
    AddA(tmp[112], a[1869]); -- A Poke in the Eye (10 player)
    AddA(tmp[112], a[622]); -- The Spellweaver's Downfall (10 player)
    tmp[113] = IaR(c, cat:New((GetDifficultyInfo(4)))); -- The Eye of Eternity 25
    AddC(tmp[111], tmp[113]);
    AddA(tmp[113], a[2149]); -- Denyin' the Scion (25 player)
    AddA(tmp[113], a[1875]); -- You Don't Have an Eternity (25 player)
    AddA(tmp[113], a[1870]); -- A Poke in the Eye (25 player)
    AddA(tmp[113], a[623]); -- The Spellweaver's Downfall (25 player)
    tmp[114] = IaR(c, cat:New((EJ_GetInstanceInfo(759)))); -- Ulduar
    AddC(tmp[85], tmp[114]);
    AddA(tmp[114], a[12312]); -- Dwarfageddon
    AddA(tmp[114], a[12314]); -- Three Car Garage
    AddA(tmp[114], a[12313]); -- Unbroken
    AddA(tmp[114], a[12316]); -- Shutout
    AddA(tmp[114], a[12315]); -- Take Out Those Turrets
    AddA(tmp[114], a[12317]); -- Orbital Bombardment
    AddA(tmp[114], a[12318]); -- Orbital Devastation
    AddA(tmp[114], a[12319]); -- Nuked from Orbit
    AddA(tmp[114], a[12320]); -- Orbit-uary
    AddA(tmp[114], a[12323]); -- Shattered
    AddA(tmp[114], a[12324]); -- Hot Pocket
    AddA(tmp[114], a[12325]); -- Stokin' the Furnace
    AddA(tmp[114], a[12321]); -- A Quick Shave
    AddA(tmp[114], a[12322]); -- "Iron Dwarf, Medium Rare"
    AddA(tmp[114], a[12326]); -- Nerf Engineering
    AddA(tmp[114], a[12327]); -- Nerf Scrapbots
    AddA(tmp[114], a[12328]); -- Nerf Gravity Bombs
    AddA(tmp[114], a[12329]); -- Must Deconstruct Faster
    AddA(tmp[114], a[12330]); -- Heartbreaker
    AddA(tmp[114], a[12335]); -- But I'm On Your Side
    AddA(tmp[114], a[12336]); -- Can't Do That While Stunned
    AddA(tmp[114], a[12332]); -- "I Choose You, Runemaster Molgeim"
    AddA(tmp[114], a[12333]); -- "I Choose You, Stormcaller Brundir"
    AddA(tmp[114], a[12334]); -- "I Choose You, Steelbreaker"
    AddA(tmp[114], a[12339]); -- If Looks Could Kill
    AddA(tmp[114], a[12340]); -- Rubble and Roll
    AddA(tmp[114], a[12337]); -- With Open Arms
    AddA(tmp[114], a[12338]); -- Disarmed
    AddA(tmp[114], a[12342]); -- Nine Lives
    AddA(tmp[114], a[12341]); -- Crazy Cat Lady
    AddA(tmp[114], a[12343]); -- Cheese the Freeze
    AddA(tmp[114], a[12344]); -- I Have the Coolest Friends
    AddA(tmp[114], a[12345]); -- Getting Cold in Here
    AddA(tmp[114], a[12346]); -- Staying Buffed All Winter
    AddA(tmp[114], a[12347]); -- I Could Say That This Cache Was Rare
    AddA(tmp[114], a[12348]); -- Don't Stand in the Lightning
    AddA(tmp[114], a[12349]); -- I'll Take You All On
    AddA(tmp[114], a[12350]); -- Who Needs Bloodlust?
    AddA(tmp[114], a[12351]); -- Siffed
    AddA(tmp[114], a[12352]); -- Lose Your Illusion
    AddA(tmp[114], a[12360]); -- Lumberjacked
    AddA(tmp[114], a[12361]); -- Con-speed-atory
    AddA(tmp[114], a[12362]); -- Deforestation
    AddA(tmp[114], a[12363]); -- Getting Back to Nature
    AddA(tmp[114], a[12364]); -- Knock on Wood
    AddA(tmp[114], a[12365]); -- "Knock, Knock on Wood"
    AddA(tmp[114], a[12366]); -- "Knock, Knock, Knock on Wood"
    AddA(tmp[114], a[12367]); -- Set Up Us the Bomb
    AddA(tmp[114], a[12368]); -- Not-So-Friendly Fire
    AddA(tmp[114], a[12369]); -- Firefighter
    AddA(tmp[114], a[12372]); -- Shadowdodger
    AddA(tmp[114], a[12373]); -- I Love the Smell of Saronite in the Morning
    AddA(tmp[114], a[12384]); -- Kiss and Make Up
    AddA(tmp[114], a[12395]); -- Drive Me Crazy
    AddA(tmp[114], a[12396]); -- He's Not Getting Any Older
    AddA(tmp[114], a[12397]); -- They're Coming Out of the Walls
    AddA(tmp[114], a[12398]); -- In His House He Waits Dreaming
    AddA(tmp[114], a[12385]); -- Three Lights in the Darkness
    AddA(tmp[114], a[12386]); -- Two Lights in the Darkness
    AddA(tmp[114], a[12387]); -- One Light in the Darkness
    AddA(tmp[114], a[12388]); -- Alone in the Darkness
    AddA(tmp[114], a[12400]); -- Supermassive
    AddA(tmp[114], a[12297]); -- The Siege of Ulduar
    AddA(tmp[114], a[12302]); -- The Antechamber of Ulduar
    AddA(tmp[114], a[12309]); -- The Keepers of Ulduar
    AddA(tmp[114], a[12310]); -- The Descent into Madness
    AddA(tmp[114], a[12311]); -- The Secrets of Ulduar
    AddA(tmp[114], a[12399]); -- Observed
    AddA(tmp[114], a[11751]); -- Mogg-Saron
    AddA(tmp[114], a[4626]); -- And I'll Form the Head!
    AddA(tmp[114], a[3142]); -- "Val'anyr, Hammer of Ancient Kings"
    AddA(tmp[114], a[3316]); -- Herald of the Titans
    tmp[115] = IaR(c, cat:New((GetDifficultyInfo(3)) .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Ulduar 10
    AddC(tmp[114], tmp[115]);
    AddA(tmp[115], a[3097]); -- Dwarfageddon (10 player)
    AddA(tmp[115], a[2907]); -- Three Car Garage (10 player)
    AddA(tmp[115], a[2905]); -- Unbroken (10 player)
    AddA(tmp[115], a[2911]); -- Shutout (10 player)
    AddA(tmp[115], a[2909]); -- Take Out Those Turrets (10 player)
    AddA(tmp[115], a[2913]); -- Orbital Bombardment (10 player)
    AddA(tmp[115], a[2914]); -- Orbital Devastation (10 player)
    AddA(tmp[115], a[2915]); -- Nuked from Orbit (10 player)
    AddA(tmp[115], a[3056]); -- Orbit-uary (10 player)
    AddA(tmp[115], a[2925]); -- Shattered (10 player)
    AddA(tmp[115], a[2927]); -- Hot Pocket (10 player)
    AddA(tmp[115], a[2930]); -- Stokin' the Furnace (10 player)
    AddA(tmp[115], a[2919]); -- A Quick Shave (10 player)
    AddA(tmp[115], a[2923]); -- "Iron Dwarf, Medium Rare (10 player)"
    AddA(tmp[115], a[2931]); -- Nerf Engineering (10 player)
    AddA(tmp[115], a[2933]); -- Nerf Scrapbots (10 player)
    AddA(tmp[115], a[2934]); -- Nerf Gravity Bombs (10 player)
    AddA(tmp[115], a[2937]); -- Must Deconstruct Faster (10 player)
    AddA(tmp[115], a[3058]); -- Heartbreaker (10 player)
    AddA(tmp[115], a[2945]); -- But I'm On Your Side (10 player)
    AddA(tmp[115], a[2947]); -- Can't Do That While Stunned (10 player)
    AddA(tmp[115], a[2939]); -- "I Choose You, Runemaster Molgeim (10 player)"
    AddA(tmp[115], a[2940]); -- "I Choose You, Stormcaller Brundir (10 player)"
    AddA(tmp[115], a[2941]); -- "I Choose You, Steelbreaker (10 player)"
    AddA(tmp[115], a[2955]); -- If Looks Could Kill (10 player)
    AddA(tmp[115], a[2959]); -- Rubble and Roll (10 player)
    AddA(tmp[115], a[2951]); -- With Open Arms (10 player)
    AddA(tmp[115], a[2953]); -- Disarmed (10 player)
    AddA(tmp[115], a[3076]); -- Nine Lives (10 player)
    AddA(tmp[115], a[3006]); -- Crazy Cat Lady (10 player)
    AddA(tmp[115], a[2961]); -- Cheese the Freeze (10 player)
    AddA(tmp[115], a[2963]); -- I Have the Coolest Friends (10 player)
    AddA(tmp[115], a[2967]); -- Getting Cold in Here (10 player)
    AddA(tmp[115], a[2969]); -- Staying Buffed All Winter (10 player)
    AddA(tmp[115], a[3182]); -- I Could Say That This Cache Was Rare (10 player)
    AddA(tmp[115], a[2971]); -- Don't Stand in the Lightning (10 player)
    AddA(tmp[115], a[2973]); -- I'll Take You All On (10 player)
    AddA(tmp[115], a[2975]); -- Who Needs Bloodlust? (10 player)
    AddA(tmp[115], a[2977]); -- Siffed (10 player)
    AddA(tmp[115], a[3176]); -- Lose Your Illusion (10 player)
    AddA(tmp[115], a[2979]); -- Lumberjacked (10 player)
    AddA(tmp[115], a[2980]); -- Con-speed-atory (10 player)
    AddA(tmp[115], a[2985]); -- Deforestation (10 player)
    AddA(tmp[115], a[2982]); -- Getting Back to Nature (10 player)
    AddA(tmp[115], a[3177]); -- Knock on Wood (10 player)
    AddA(tmp[115], a[3178]); -- "Knock, Knock on Wood (10 player)"
    AddA(tmp[115], a[3179]); -- "Knock, Knock, Knock on Wood (10 player)"
    AddA(tmp[115], a[2989]); -- Set Up Us the Bomb (10 player)
    AddA(tmp[115], a[3138]); -- Not-So-Friendly Fire (10 player)
    AddA(tmp[115], a[3180]); -- Firefighter (10 player)
    AddA(tmp[115], a[2996]); -- Shadowdodger (10 player)
    AddA(tmp[115], a[3181]); -- I Love the Smell of Saronite in the Morning (10 player)
    AddA(tmp[115], a[3009]); -- Kiss and Make Up (10 player)
    AddA(tmp[115], a[3008]); -- Drive Me Crazy (10 player)
    AddA(tmp[115], a[3012]); -- He's Not Getting Any Older (10 player)
    AddA(tmp[115], a[3014]); -- They're Coming Out of the Walls (10 player)
    AddA(tmp[115], a[3015]); -- In His House He Waits Dreaming (10 player)
    AddA(tmp[115], a[3157]); -- Three Lights in the Darkness (10 player)
    AddA(tmp[115], a[3141]); -- Two Lights in the Darkness (10 player)
    AddA(tmp[115], a[3158]); -- One Light in the Darkness (10 player)
    AddA(tmp[115], a[3159]); -- Alone in the Darkness (10 player)
    AddA(tmp[115], a[3003]); -- Supermassive (10 player)
    AddA(tmp[115], a[2886]); -- The Siege of Ulduar (10 player)
    AddA(tmp[115], a[2888]); -- The Antechamber of Ulduar (10 player)
    AddA(tmp[115], a[2890]); -- The Keepers of Ulduar (10 player)
    AddA(tmp[115], a[2892]); -- The Descent into Madness (10 player)
    AddA(tmp[115], a[2894]); -- The Secrets of Ulduar (10 player)
    AddA(tmp[115], a[3036]); -- Observed (10 player)
    AddA(tmp[115], a[3004]); -- He Feeds On Your Tears (10 player)
    AddA(tmp[115], a[2903]); -- Champion of Ulduar
    tmp[116] = IaR(c, cat:New((GetDifficultyInfo(4)) .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Ulduar 25
    AddC(tmp[114], tmp[116]);
    AddA(tmp[116], a[3098]); -- Dwarfageddon (25 player)
    AddA(tmp[116], a[2908]); -- Three Car Garage (25 player)
    AddA(tmp[116], a[2906]); -- Unbroken (25 player)
    AddA(tmp[116], a[2912]); -- Shutout (25 player)
    AddA(tmp[116], a[2910]); -- Take Out Those Turrets (25 player)
    AddA(tmp[116], a[2918]); -- Orbital Bombardment (25 player)
    AddA(tmp[116], a[2916]); -- Orbital Devastation (25 player)
    AddA(tmp[116], a[2917]); -- Nuked from Orbit (25 player)
    AddA(tmp[116], a[3057]); -- Orbit-uary (25 player)
    AddA(tmp[116], a[2926]); -- Shattered (25 player)
    AddA(tmp[116], a[2928]); -- Hot Pocket (25 player)
    AddA(tmp[116], a[2929]); -- Stokin' the Furnace (25 player)
    AddA(tmp[116], a[2921]); -- A Quick Shave (25 player)
    AddA(tmp[116], a[2924]); -- "Iron Dwarf, Medium Rare (25 player)"
    AddA(tmp[116], a[2932]); -- Nerf Engineering (25 player)
    AddA(tmp[116], a[2935]); -- Nerf Scrapbots (25 player)
    AddA(tmp[116], a[2936]); -- Nerf Gravity Bombs (25 player)
    AddA(tmp[116], a[2938]); -- Must Deconstruct Faster (25 player)
    AddA(tmp[116], a[3059]); -- Heartbreaker (25 player)
    AddA(tmp[116], a[2946]); -- But I'm On Your Side (25 player)
    AddA(tmp[116], a[2948]); -- Can't Do That While Stunned (25 player)
    AddA(tmp[116], a[2942]); -- "I Choose You, Runemaster Molgeim (25 player)"
    AddA(tmp[116], a[2943]); -- "I Choose You, Stormcaller Brundir (25 player)"
    AddA(tmp[116], a[2944]); -- "I Choose You, Steelbreaker (25 player)"
    AddA(tmp[116], a[2956]); -- If Looks Could Kill (25 player)
    AddA(tmp[116], a[2960]); -- Rubble and Roll (25 player)
    AddA(tmp[116], a[2952]); -- With Open Arms (25 player)
    AddA(tmp[116], a[2954]); -- Disarmed (25 player)
    AddA(tmp[116], a[3077]); -- Nine Lives (25 player)
    AddA(tmp[116], a[3007]); -- Crazy Cat Lady (25 player)
    AddA(tmp[116], a[2962]); -- Cheese the Freeze (25 player)
    AddA(tmp[116], a[2965]); -- I Have the Coolest Friends (25 player)
    AddA(tmp[116], a[2968]); -- Getting Cold in Here (25 player)
    AddA(tmp[116], a[2970]); -- Staying Buffed All Winter (25 player)
    AddA(tmp[116], a[3184]); -- I Could Say That This Cache Was Rare (25 player)
    AddA(tmp[116], a[2972]); -- Don't Stand in the Lightning (25 player)
    AddA(tmp[116], a[2974]); -- I'll Take You All On (25 player)
    AddA(tmp[116], a[2976]); -- Who Needs Bloodlust? (25 player)
    AddA(tmp[116], a[2978]); -- Siffed (25 player)
    AddA(tmp[116], a[3183]); -- Lose Your Illusion (25 player)
    AddA(tmp[116], a[3118]); -- Lumberjacked (25 player)
    AddA(tmp[116], a[2981]); -- Con-speed-atory (25 player)
    AddA(tmp[116], a[2984]); -- Deforestation (25 player)
    AddA(tmp[116], a[2983]); -- Getting Back to Nature (25 player)
    AddA(tmp[116], a[3185]); -- Knock on Wood (25 player)
    AddA(tmp[116], a[3186]); -- "Knock, Knock on Wood (25 player)"
    AddA(tmp[116], a[3187]); -- "Knock, Knock, Knock on Wood (25 player)"
    AddA(tmp[116], a[3237]); -- Set Up Us the Bomb (25 player)
    AddA(tmp[116], a[2995]); -- Not-So-Friendly Fire (25 player)
    AddA(tmp[116], a[3189]); -- Firefighter (25 player)
    AddA(tmp[116], a[2997]); -- Shadowdodger (25 player)
    AddA(tmp[116], a[3188]); -- I Love the Smell of Saronite in the Morning (25 player)
    AddA(tmp[116], a[3011]); -- Kiss and Make Up (25 player)
    AddA(tmp[116], a[3010]); -- Drive Me Crazy (25 player)
    AddA(tmp[116], a[3013]); -- He's Not Getting Any Older (25 player)
    AddA(tmp[116], a[3017]); -- They're Coming Out of the Walls (25 player)
    AddA(tmp[116], a[3016]); -- In His House He Waits Dreaming (25 player)
    AddA(tmp[116], a[3161]); -- Three Lights in the Darkness (25 player)
    AddA(tmp[116], a[3162]); -- Two Lights in the Darkness (25 player)
    AddA(tmp[116], a[3163]); -- One Light in the Darkness (25 player)
    AddA(tmp[116], a[3164]); -- Alone in the Darkness (25 player)
    AddA(tmp[116], a[3002]); -- Supermassive (25 player)
    AddA(tmp[116], a[2887]); -- The Siege of Ulduar (25 player)
    AddA(tmp[116], a[2889]); -- The Antechamber of Ulduar (25 player)
    AddA(tmp[116], a[2891]); -- The Keepers of Ulduar (25 player)
    AddA(tmp[116], a[2893]); -- The Descent into Madness (25 player)
    AddA(tmp[116], a[2895]); -- The Secrets of Ulduar (25 player)
    AddA(tmp[116], a[3037]); -- Observed (25 player)
    AddA(tmp[116], a[3005]); -- He Feeds On Your Tears (25 player)
    AddA(tmp[116], a[2904]); -- Conqueror of Ulduar
    tmp[117] = IaR(c, cat:New((EJ_GetInstanceInfo(757)))); -- Trial of the Crusader
    AddC(tmp[85], tmp[117]);
    AddA(tmp[117], a[11752]); -- Style of the Crusader
    tmp[118] = IaR(c, cat:New((GetDifficultyInfo(3)))); -- Trial of the Crusader 10
    AddC(tmp[117], tmp[118]);
    AddA(tmp[118], a[3797]); -- Upper Back Pain (10 player)
    AddA(tmp[118], a[3936]); -- "Not One, But Two Jormungars (10 player)"
    AddA(tmp[118], a[3996]); -- Three Sixty Pain Spike (10 player)
    AddA(tmp[118], a[3798]); -- Resilience Will Fix It (10 player)
    AddA(tmp[118], a[3799]); -- Salt and Pepper (10 player)
    AddA(tmp[118], a[3800]); -- The Traitor King (10 player)
    AddA(tmp[118], a[3917]); -- Call of the Crusade (10 player)
    AddA(tmp[118], a[3918]); -- Call of the Grand Crusade (10 player)
    AddA(tmp[118], a[3808]); -- A Tribute to Skill (10 player)
    AddA(tmp[118], a[3809]); -- A Tribute to Mad Skill (10 player)
    AddA(tmp[118], a[3810]); -- A Tribute to Insanity (10 player)
    AddA(tmp[118], a[4080]); -- A Tribute to Dedicated Insanity
    tmp[119] = IaR(c, cat:New((GetDifficultyInfo(4)))); -- Trial of the Crusader 25
    AddC(tmp[117], tmp[119]);
    AddA(tmp[119], a[3813]); -- Upper Back Pain (25 player)
    AddA(tmp[119], a[3937]); -- "Not One, But Two Jormungars (25 player)"
    AddA(tmp[119], a[3997]); -- Three Sixty Pain Spike (25 player)
    AddA(tmp[119], a[3815]); -- Salt and Pepper (25 player)
    AddA(tmp[119], a[3816]); -- The Traitor King (25 player)
    AddA(tmp[119], a[3916]); -- Call of the Crusade (25 player)
    AddA(tmp[119], a[3812]); -- Call of the Grand Crusade (25 player)
    AddA(tmp[119], a[3817]); -- A Tribute to Skill (25 player)
    AddA(tmp[119], a[3818]); -- A Tribute to Mad Skill (25 player)
    AddA(tmp[119], a[3819]); -- A Tribute to Insanity (25 player)
    AddA(tmp[119], a[4156]); -- A Tribute to Immortality
    AddA(tmp[119], a[4079]); -- A Tribute to Immortality
    tmp[120] = IaR(c, cat:New((EJ_GetInstanceInfo(760)))); -- Onyxia's Lair
    AddC(tmp[85], tmp[120]);
    tmp[121] = IaR(c, cat:New((GetDifficultyInfo(3)))); -- Onyxia's Lair 10
    AddC(tmp[120], tmp[121]);
    AddA(tmp[121], a[4402]); -- More Dots! (10 player)
    AddA(tmp[121], a[4403]); -- Many Whelps! Handle It! (10 player)
    AddA(tmp[121], a[4404]); -- She Deep Breaths More (10 player)
    AddA(tmp[121], a[4396]); -- Onyxia's Lair (10 player)
    tmp[122] = IaR(c, cat:New((GetDifficultyInfo(4)))); -- Onyxia's Lair 25
    AddC(tmp[120], tmp[122]);
    AddA(tmp[122], a[4405]); -- More Dots! (25 player)
    AddA(tmp[122], a[4406]); -- Many Whelps! Handle It! (25 player)
    AddA(tmp[122], a[4407]); -- She Deep Breaths More (25 player)
    AddA(tmp[122], a[4397]); -- Onyxia's Lair (25 player)
    tmp[123] = IaR(c, cat:New((EJ_GetInstanceInfo(758)))); -- Icecrown Citadel
    AddC(tmp[85], tmp[123]);
    AddA(tmp[123], a[11753]); -- Winter Catalog
    AddA(tmp[123], a[4625]); -- Invincible's Reins
    AddA(tmp[123], a[4623]); -- Shadowmourne
    tmp[124] = IaR(c, cat:New((GetDifficultyInfo(3)))); -- Icecrown Citadel 10
    AddC(tmp[123], tmp[124]);
    AddA(tmp[124], a[4534]); -- Boned (10 player)
    AddA(tmp[124], a[4535]); -- Full House (10 player)
    AddA(tmp[124], a[4536]); -- I'm on a Boat (10 player)
    AddA(tmp[124], a[4537]); -- I've Gone and Made a Mess (10 player)
    AddA(tmp[124], a[4577]); -- Flu Shot Shortage (10 player)
    AddA(tmp[124], a[4538]); -- Dances with Oozes (10 player)
    AddA(tmp[124], a[4578]); -- "Nausea, Heartburn, Indigestion... (10 player)"
    AddA(tmp[124], a[4582]); -- The Orb Whisperer (10 player)
    AddA(tmp[124], a[4539]); -- "Once Bitten, Twice Shy (10 player)"
    AddA(tmp[124], a[4579]); -- Portal Jockey (10 player)
    AddA(tmp[124], a[4580]); -- All You Can Eat (10 player)
    AddA(tmp[124], a[4601]); -- Been Waiting a Long Time for This (10 player)
    AddA(tmp[124], a[4581]); -- Neck-Deep in Vile (10 player)
    AddA(tmp[124], a[4531]); -- Storming the Citadel (10 player)
    AddA(tmp[124], a[4528]); -- The Plagueworks (10 player)
    AddA(tmp[124], a[4529]); -- The Crimson Hall (10 player)
    AddA(tmp[124], a[4527]); -- The Frostwing Halls (10 player)
    AddA(tmp[124], a[4530]); -- The Frozen Throne (10 player)
    AddA(tmp[124], a[4532]); -- Fall of the Lich King (10 player)
    AddA(tmp[124], a[4628]); -- Heroic: Storming the Citadel (10 player)
    AddA(tmp[124], a[4629]); -- Heroic: The Plagueworks (10 player)
    AddA(tmp[124], a[4630]); -- Heroic: The Crimson Hall (10 player)
    AddA(tmp[124], a[4631]); -- Heroic: The Frostwing Halls (10 player)
    AddA(tmp[124], a[4583]); -- Bane of the Fallen King
    AddA(tmp[124], a[4636]); -- Heroic: Fall of the Lich King (10 player)
    tmp[125] = IaR(c, cat:New((GetDifficultyInfo(4)))); -- Icecrown Citadel 25
    AddC(tmp[123], tmp[125]);
    AddA(tmp[125], a[4610]); -- Boned (25 player)
    AddA(tmp[125], a[4611]); -- Full House (25 player)
    AddA(tmp[125], a[4612]); -- I'm on a Boat (25 player)
    AddA(tmp[125], a[4613]); -- I've Gone and Made a Mess (25 player)
    AddA(tmp[125], a[4615]); -- Flu Shot Shortage (25 player)
    AddA(tmp[125], a[4614]); -- Dances with Oozes (25 player)
    AddA(tmp[125], a[4616]); -- "Nausea, Heartburn, Indigestion... (25 player)"
    AddA(tmp[125], a[4617]); -- The Orb Whisperer (25 player)
    AddA(tmp[125], a[4618]); -- "Once Bitten, Twice Shy (25 player)"
    AddA(tmp[125], a[4619]); -- Portal Jockey (25 player)
    AddA(tmp[125], a[4620]); -- All You Can Eat (25 player)
    AddA(tmp[125], a[4621]); -- Been Waiting a Long Time for This (25 player)
    AddA(tmp[125], a[4622]); -- Neck-Deep in Vile (25 player)
    AddA(tmp[125], a[4604]); -- Storming the Citadel (25 player)
    AddA(tmp[125], a[4605]); -- The Plagueworks (25 player)
    AddA(tmp[125], a[4606]); -- The Crimson Hall (25 player)
    AddA(tmp[125], a[4607]); -- The Frostwing Halls (25 player)
    AddA(tmp[125], a[4597]); -- The Frozen Throne (25 player)
    AddA(tmp[125], a[4608]); -- Fall of the Lich King (25 player)
    AddA(tmp[125], a[4632]); -- Heroic: Storming the Citadel (25 player)
    AddA(tmp[125], a[4633]); -- Heroic: The Plagueworks (25 player)
    AddA(tmp[125], a[4634]); -- Heroic: The Crimson Hall (25 player)
    AddA(tmp[125], a[4635]); -- Heroic: The Frostwing Halls (25 player)
    AddA(tmp[125], a[4584]); -- The Light of Dawn
    AddA(tmp[125], a[4637]); -- Heroic: Fall of the Lich King (25 player)
    tmp[615] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[123], tmp[615]);
    AddA(tmp[615], a[4598]); -- The Ashen Verdict
    tmp[126] = IaR(c, cat:New((EJ_GetInstanceInfo(761)))); -- The Ruby Sanctum
    AddC(tmp[85], tmp[126]);
    tmp[127] = IaR(c, cat:New((GetDifficultyInfo(3)))); -- The Ruby Sanctum 10
    AddC(tmp[126], tmp[127]);
    AddA(tmp[127], a[4817]); -- The Twilight Destroyer (10 player)
    AddA(tmp[127], a[4818]); -- Heroic: The Twilight Destroyer (10 player)
    tmp[128] = IaR(c, cat:New((GetDifficultyInfo(4)))); -- The Ruby Sanctum 25
    AddC(tmp[126], tmp[128]);
    AddA(tmp[128], a[4815]); -- The Twilight Destroyer (25 player)
    AddA(tmp[128], a[4816]); -- Heroic: The Twilight Destroyer (25 player)
    tmp[787] = IaR(c, cat:New((GetCategoryInfo(15117)))); -- Pet Battles
    AddC(tmp[83], tmp[787]);
    AddA(tmp[787], a[6588]); -- Northrend Safari
    AddA(tmp[787], a[6615]); -- Northrend Tamer
    AddA(tmp[787], a[6605]); -- Taming Northrend
    tmp[781] = IaR(c, cat:New((GetCategoryInfo(14941)))); -- Argent Tournament
    AddC(tmp[83], tmp[781]);
    AddA(tmp[781], a[2756]); -- Argent Aspiration
    AddA(tmp[781], a[2758]); -- Argent Valor
    AddA(tmp[781], a[2772]); -- Tilted!
    AddA(tmp[781], a[2836]); -- Lance a Lot
    AddA(tmp[781], a[2773]); -- It's Just a Flesh Wound
    AddA(tmp[781], a[3736]); -- Pony Up!
    AddA(tmp[781], a[2777]); -- Champion of Darnassus
    AddA(tmp[781], a[2760]); -- Exalted Champion of Darnassus
    AddA(tmp[781], a[2778]); -- Champion of the Exodar
    AddA(tmp[781], a[2761]); -- Exalted Champion of the Exodar
    AddA(tmp[781], a[2779]); -- Champion of Gnomeregan
    AddA(tmp[781], a[2762]); -- Exalted Champion of Gnomeregan
    AddA(tmp[781], a[2780]); -- Champion of Ironforge
    AddA(tmp[781], a[2763]); -- Exalted Champion of Ironforge
    AddA(tmp[781], a[2781]); -- Champion of Stormwind
    AddA(tmp[781], a[2764]); -- Exalted Champion of Stormwind
    AddA(tmp[781], a[2782]); -- Champion of the Alliance
    AddA(tmp[781], a[2770]); -- Exalted Champion of the Alliance
    AddA(tmp[781], a[2817]); -- Exalted Argent Champion of the Alliance
    AddA(tmp[781], a[2783]); -- Champion of Orgrimmar
    AddA(tmp[781], a[2765]); -- Exalted Champion of Orgrimmar
    AddA(tmp[781], a[2784]); -- Champion of Sen'jin
    AddA(tmp[781], a[2766]); -- Exalted Champion of Sen'jin
    AddA(tmp[781], a[2785]); -- Champion of Silvermoon City
    AddA(tmp[781], a[2767]); -- Exalted Champion of Silvermoon City
    AddA(tmp[781], a[2786]); -- Champion of Thunder Bluff
    AddA(tmp[781], a[2768]); -- Exalted Champion of Thunder Bluff
    AddA(tmp[781], a[2787]); -- Champion of the Undercity
    AddA(tmp[781], a[2769]); -- Exalted Champion of the Undercity
    AddA(tmp[781], a[2788]); -- Champion of the Horde
    AddA(tmp[781], a[2771]); -- Exalted Champion of the Horde
    AddA(tmp[781], a[2816]); -- Exalted Argent Champion of the Horde
    AddA(tmp[781], a[3676]); -- A Silver Confidant
    AddA(tmp[781], a[3677]); -- The Sunreavers
    AddA(tmp[781], a[4596]); -- The Sword in the Skull
    tmp[129] = IaR(c, cat:New((GetCategoryInfo(15072)))); -- Cataclysm
    tmp[550] = IaR(c, cat:New(addon.L["Zones"])); -- Zones
    AddC(tmp[129], tmp[550]);
    AddA(tmp[550], a[4875]); -- Loremaster of Cataclysm
    AddA(tmp[550], a[4827]); -- Surveying the Damage
    AddA(tmp[550], a[5518]); -- Stood in the Fire
    AddA(tmp[550], a[5548]); -- To All the Squirrels Who Cared for Me
    AddA(tmp[550], a[5754]); -- Drown Your Sorrows
    AddA(tmp[550], a[5753]); -- Cataclysmically Delicious
    AddA(tmp[550], a[4868]); -- Cataclysm Explorer
    AddA(tmp[550], a[4881]); -- The Earthen Ring
    tmp[551] = IaR(c, cat:New(C_Map.GetMapInfo(203).name)); -- Vashj'ir
    AddC(tmp[550], tmp[551]);
    tmp[557] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[551], tmp[557]);
    AddA(tmp[557], a[4869]); -- Sinking into Vashj'ir
    AddA(tmp[557], a[4982]); -- Sinking into Vashj'ir
    AddA(tmp[557], a[5452]); -- Visions of Vashj'ir Past
    AddA(tmp[557], a[5318]); -- "20,000 Leagues Under the Sea"
    AddA(tmp[557], a[5319]); -- "20,000 Leagues Under the Sea"
    tmp[564] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[551], tmp[564]);
    AddA(tmp[564], a[4825]); -- Explore Vashj'ir
    AddA(tmp[564], a[4975]); -- From Hell's Heart I Stab at Thee
    tmp[552] = IaR(c, cat:New(C_Map.GetMapInfo(198).name)); -- Mount Hyjal
    AddC(tmp[550], tmp[552]);
    tmp[558] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[552], tmp[558]);
    AddA(tmp[558], a[4870]); -- Coming Down the Mountain
    AddA(tmp[558], a[4959]); -- Beware of the 'Unbeatable?' Pterodactyl
    AddA(tmp[558], a[5860]); -- The 'Unbeatable?' Pterodactyl: BEATEN.
    AddA(tmp[558], a[5483]); -- Bounce
    AddA(tmp[558], a[5859]); -- Legacy of Leyara
    AddA(tmp[558], a[5866]); -- The Molten Front Offensive
    AddA(tmp[558], a[5861]); -- The Fiery Lords of Sethria's Roost
    AddA(tmp[558], a[5870]); -- Fireside Chat
    AddA(tmp[558], a[5862]); -- Ludicrous Speed
    AddA(tmp[558], a[5868]); -- And the Meek Shall Inherit Kalimdor
    AddA(tmp[558], a[5864]); -- Gang War
    AddA(tmp[558], a[5865]); -- Have... Have We Met?
    AddA(tmp[558], a[5869]); -- Infernal Ambassadors
    AddA(tmp[558], a[5879]); -- Veteran of the Molten Front
    tmp[565] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[552], tmp[565]);
    AddA(tmp[565], a[4863]); -- Explore Hyjal
    tmp[571] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[552], tmp[571]);
    AddA(tmp[571], a[4882]); -- The Guardians of Hyjal
    tmp[553] = IaR(c, cat:New(C_Map.GetMapInfo(207).name)); -- Deepholm
    AddC(tmp[550], tmp[553]);
    tmp[559] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[553], tmp[559]);
    AddA(tmp[559], a[4871]); -- Deep into Deepholm
    AddA(tmp[559], a[5445]); -- Fungalophobia
    AddA(tmp[559], a[5446]); -- The Glop Family Line
    AddA(tmp[559], a[5449]); -- Rock Lover
    AddA(tmp[559], a[5450]); -- Fungal Frenzy
    AddA(tmp[559], a[5447]); -- My Very Own Broodmother
    tmp[566] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[553], tmp[566]);
    AddA(tmp[566], a[4864]); -- Explore Deepholm
    tmp[572] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[553], tmp[572]);
    AddA(tmp[572], a[4883]); -- Therazane
    tmp[554] = IaR(c, cat:New(C_Map.GetMapInfo(249).name)); -- Uldum
    AddC(tmp[550], tmp[554]);
    AddA(tmp[554], a[5767]); -- Scourer of the Eternal Sands
    AddA(tmp[554], a[4888]); -- One Hump or Two?
    tmp[560] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[554], tmp[560]);
    AddA(tmp[560], a[4872]); -- Unearthing Uldum
    AddA(tmp[560], a[4961]); -- In a Thousand Years Even You Might be Worth Something
    AddA(tmp[560], a[5317]); -- Help the Bombardier! I'm the Bombardier!
    tmp[567] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[554], tmp[567]);
    AddA(tmp[567], a[4865]); -- Explore Uldum
    tmp[574] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[554], tmp[574]);
    AddA(tmp[574], a[4884]); -- Ramkahen
    tmp[555] = IaR(c, cat:New(C_Map.GetMapInfo(241).name)); -- Twilight Highlands
    AddC(tmp[550], tmp[555]);
    tmp[561] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[555], tmp[561]);
    AddA(tmp[561], a[4873]); -- Fading into Twilight
    AddA(tmp[561], a[5501]); -- Fading into Twilight
    AddA(tmp[561], a[4960]); -- Round Three. Fight!
    AddA(tmp[561], a[5481]); -- Wildhammer Tour of Duty
    AddA(tmp[561], a[5482]); -- Dragonmaw Tour of Duty
    AddA(tmp[561], a[5320]); -- King of the Mountain
    AddA(tmp[561], a[5321]); -- King of the Mountain
    AddA(tmp[561], a[5451]); -- Consumed by Nightmare
    AddA(tmp[561], a[4958]); -- The First Rule of Ring of Blood is You Don't Talk About Ring of Blood
    tmp[568] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[555], tmp[568]);
    AddA(tmp[568], a[4866]); -- Explore Twilight Highlands
    tmp[573] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[555], tmp[573]);
    AddA(tmp[573], a[4885]); -- Wildhammer Clan
    AddA(tmp[573], a[4886]); -- Dragonmaw Clan
    tmp[556] = IaR(c, cat:New(C_Map.GetMapInfo(338).name)); -- Molten Front
    AddC(tmp[550], tmp[556]);
    AddA(tmp[556], a[5859]); -- Legacy of Leyara
    AddA(tmp[556], a[5866]); -- The Molten Front Offensive
    AddA(tmp[556], a[5867]); -- Flawless Victory
    AddA(tmp[556], a[5871]); -- Master of the Molten Flow
    AddA(tmp[556], a[5872]); -- King of the Spider-Hill
    AddA(tmp[556], a[5874]); -- Death From Above
    AddA(tmp[556], a[5873]); -- Ready for Raiding II
    AddA(tmp[556], a[5879]); -- Veteran of the Molten Front
    tmp[130] = IaR(c, cat:New((GetCategoryInfo(15272)))); -- Dungeons
    AddC(tmp[129], tmp[130]);
    AddA(tmp[130], a[4844]); -- Cataclysm Dungeon Hero
    AddA(tmp[130], a[5506]); -- Defender of a Shattered World
    AddA(tmp[130], a[4845]); -- Glory of the Cataclysm Hero
    tmp[132] = IaR(c, cat:New((EJ_GetInstanceInfo(66)))); -- Blackrock Caverns
    AddC(tmp[130], tmp[132]);
    AddA(tmp[132], a[5281]); -- Crushing Bones and Cracking Skulls
    AddA(tmp[132], a[5282]); -- Arrested Development
    AddA(tmp[132], a[5283]); -- Too Hot to Handle
    AddA(tmp[132], a[5284]); -- Ascendant Descending
    AddA(tmp[132], a[4833]); -- Blackrock Caverns
    AddA(tmp[132], a[5060]); -- Heroic: Blackrock Caverns
    tmp[133] = IaR(c, cat:New((EJ_GetInstanceInfo(65)))); -- Throne of the Tides
    AddC(tmp[130], tmp[133]);
    AddA(tmp[133], a[5285]); -- Old Faithful
    AddA(tmp[133], a[5286]); -- Prince of Tides
    AddA(tmp[133], a[4839]); -- Throne of the Tides
    AddA(tmp[133], a[5061]); -- Heroic: Throne of the Tides
    tmp[134] = IaR(c, cat:New((EJ_GetInstanceInfo(67)))); -- The Stonecore
    AddC(tmp[130], tmp[134]);
    AddA(tmp[134], a[5287]); -- Rotten to the Core
    AddA(tmp[134], a[4846]); -- The Stonecore
    AddA(tmp[134], a[5063]); -- Heroic: The Stonecore
    tmp[135] = IaR(c, cat:New((EJ_GetInstanceInfo(68)))); -- The Vortex Pinnacle
    AddC(tmp[130], tmp[135]);
    AddA(tmp[135], a[5289]); -- Extra Credit Bonus Stage
    AddA(tmp[135], a[5288]); -- No Static at All
    AddA(tmp[135], a[4847]); -- The Vortex Pinnacle
    AddA(tmp[135], a[5064]); -- Heroic: The Vortex Pinnacle
    tmp[136] = IaR(c, cat:New((EJ_GetInstanceInfo(71)))); -- Grim Batol
    AddC(tmp[130], tmp[136]);
    AddA(tmp[136], a[5297]); -- Umbrage for Umbriss
    AddA(tmp[136], a[5298]); -- Don't Need to Break Eggs to Make an Omelet
    AddA(tmp[136], a[4840]); -- Grim Batol
    AddA(tmp[136], a[5062]); -- Heroic: Grim Batol
    tmp[137] = IaR(c, cat:New((EJ_GetInstanceInfo(70)))); -- Halls of Origination
    AddC(tmp[130], tmp[137]);
    AddA(tmp[137], a[5293]); -- I Hate That Song
    AddA(tmp[137], a[5294]); -- Straw That Broke the Camel's Back
    AddA(tmp[137], a[5296]); -- Faster Than the Speed of Light
    AddA(tmp[137], a[5295]); -- Sun of a....
    AddA(tmp[137], a[4841]); -- Halls of Origination
    AddA(tmp[137], a[5065]); -- Heroic: Halls of Origination
    tmp[138] = IaR(c, cat:New((EJ_GetInstanceInfo(69)))); -- Lost City of the Tol'vir
    AddC(tmp[130], tmp[138]);
    AddA(tmp[138], a[5291]); -- Acrocalypse Now
    AddA(tmp[138], a[5290]); -- Kill It With Fire!
    AddA(tmp[138], a[5292]); -- Headed South
    AddA(tmp[138], a[4848]); -- Lost City of the Tol'vir
    AddA(tmp[138], a[5066]); -- Heroic: Lost City of the Tol'vir
    tmp[139] = IaR(c, cat:New((EJ_GetInstanceInfo(63)))); -- Deadmines
    AddC(tmp[130], tmp[139]);
    AddA(tmp[139], a[5366]); -- Ready for Raiding
    AddA(tmp[139], a[5367]); -- Rat Pack
    AddA(tmp[139], a[5368]); -- Prototype Prodigy
    AddA(tmp[139], a[5369]); -- It's Frost Damage
    AddA(tmp[139], a[5370]); -- I'm on a Diet
    AddA(tmp[139], a[5371]); -- Vigorous VanCleef Vindicator
    AddA(tmp[139], a[628]); -- Deadmines
    AddA(tmp[139], a[5083]); -- Heroic: Deadmines
    tmp[140] = IaR(c, cat:New((EJ_GetInstanceInfo(64)))); -- Shadowfang Keep
    AddC(tmp[130], tmp[140]);
    AddA(tmp[140], a[5503]); -- Pardon Denied
    AddA(tmp[140], a[5504]); -- To the Ground!
    AddA(tmp[140], a[5505]); -- Bullet Time
    AddA(tmp[140], a[631]); -- Shadowfang Keep
    AddA(tmp[140], a[5093]); -- Heroic: Shadowfang Keep
    AddA(tmp[140], a[4627]); -- Big Love Rocket
    tmp[141] = IaR(c, cat:New((EJ_GetInstanceInfo(76)))); -- Zul'Gurub
    AddC(tmp[130], tmp[141]);
    AddA(tmp[141], a[5743]); -- It's Not Easy Being Green
    AddA(tmp[141], a[5762]); -- Ohganot So Fast!
    AddA(tmp[141], a[5765]); -- "Here, Kitty Kitty..."
    AddA(tmp[141], a[5759]); -- Spirit Twister
    AddA(tmp[141], a[5744]); -- Gurubashi Headhunter
    AddA(tmp[141], a[5768]); -- Heroic: Zul'Gurub
    tmp[142] = IaR(c, cat:New((EJ_GetInstanceInfo(77)))); -- Zul'Aman
    AddC(tmp[130], tmp[142]);
    AddA(tmp[142], a[5858]); -- Bear-ly Made It
    AddA(tmp[142], a[5750]); -- Tunnel Vision
    AddA(tmp[142], a[5761]); -- Hex Mix
    AddA(tmp[142], a[5760]); -- Ring Out!
    AddA(tmp[142], a[5769]); -- Heroic: Zul'Aman
    tmp[143] = IaR(c, cat:New((EJ_GetInstanceInfo(184)))); -- End Time
    AddC(tmp[130], tmp[143]);
    AddA(tmp[143], a[5995]); -- Moon Guard
    AddA(tmp[143], a[6130]); -- Severed Ties
    AddA(tmp[143], a[6117]); -- Heroic: End Time
    tmp[144] = IaR(c, cat:New((EJ_GetInstanceInfo(185)))); -- Well of Eternity
    AddC(tmp[130], tmp[144]);
    AddA(tmp[144], a[6127]); -- Lazy Eye
    AddA(tmp[144], a[6070]); -- That's Not Canon!
    AddA(tmp[144], a[6118]); -- Heroic: Well of Eternity
    tmp[145] = IaR(c, cat:New((EJ_GetInstanceInfo(186)))); -- Hour of Twilight
    AddC(tmp[130], tmp[145]);
    AddA(tmp[145], a[6132]); -- Eclipse
    AddA(tmp[145], a[6119]); -- Heroic: Hour of Twilight
    tmp[131] = IaR(c, cat:New((GetCategoryInfo(15271)))); -- Raids
    AddC(tmp[129], tmp[131]);
    AddA(tmp[131], a[5506]); -- Defender of a Shattered World
    AddA(tmp[131], a[4853]); -- Glory of the Cataclysm Raider
    AddA(tmp[131], a[5828]); -- Glory of the Firelands Raider
    AddA(tmp[131], a[6169]); -- Glory of the Dragon Soul Raider
    tmp[146] = IaR(c, cat:New((EJ_GetInstanceInfo(75)))); -- Baradin Hold
    AddC(tmp[131], tmp[146]);
    AddA(tmp[146], a[5416]); -- Pit Lord Argaloth
    AddA(tmp[146], a[6045]); -- Occu'thar
    AddA(tmp[146], a[6108]); -- Alizabal
    tmp[147] = IaR(c, cat:New((EJ_GetInstanceInfo(73)))); -- Blackwing Descent
    AddC(tmp[131], tmp[147]);
    AddA(tmp[147], a[5306]); -- Parasite Evening
    AddA(tmp[147], a[5307]); -- Achieve-a-tron
    AddA(tmp[147], a[5309]); -- Full of Sound and Fury
    AddA(tmp[147], a[5308]); -- Silence is Golden
    AddA(tmp[147], a[5310]); -- Aberrant Behavior
    AddA(tmp[147], a[4849]); -- Keeping it in the Family
    AddA(tmp[147], a[4842]); -- Blackwing Descent
    AddA(tmp[147], a[5094]); -- Heroic: Magmaw
    AddA(tmp[147], a[5107]); -- Heroic: Omnotron Defense System
    AddA(tmp[147], a[5115]); -- Heroic: Chimaeron
    AddA(tmp[147], a[5109]); -- Heroic: Atramedes
    AddA(tmp[147], a[5108]); -- Heroic: Maloriak
    AddA(tmp[147], a[5116]); -- Heroic: Nefarian
    tmp[148] = IaR(c, cat:New((EJ_GetInstanceInfo(72)))); -- The Bastion of Twilight
    AddC(tmp[131], tmp[148]);
    AddA(tmp[148], a[5300]); -- The Only Escape
    AddA(tmp[148], a[4852]); -- Double Dragon
    AddA(tmp[148], a[5311]); -- Elementary
    AddA(tmp[148], a[5312]); -- The Abyss Will Gaze Back Into You
    AddA(tmp[148], a[5118]); -- Heroic: Halfus Wyrmbreaker
    AddA(tmp[148], a[5117]); -- Heroic: Valiona and Theralion
    AddA(tmp[148], a[5119]); -- Heroic: Ascendant Council
    AddA(tmp[148], a[5120]); -- Heroic: Cho'gall
    AddA(tmp[148], a[5121]); -- Heroic: Sinestra
    AddA(tmp[148], a[4850]); -- The Bastion of Twilight
    AddA(tmp[148], a[5313]); -- I Can't Hear You Over the Sound of How Awesome I Am
    AddA(tmp[148], a[11754]); -- Glamour of Twilight
    tmp[149] = IaR(c, cat:New((EJ_GetInstanceInfo(74)))); -- Throne of the Four Winds
    AddC(tmp[131], tmp[149]);
    AddA(tmp[149], a[5304]); -- Stay Chill
    AddA(tmp[149], a[5305]); -- Four Play
    AddA(tmp[149], a[5122]); -- Heroic: Conclave of Wind
    AddA(tmp[149], a[5123]); -- Heroic: Al'Akir
    AddA(tmp[149], a[4851]); -- Throne of the Four Winds
    tmp[150] = IaR(c, cat:New((EJ_GetInstanceInfo(78)))); -- Firelands
    AddC(tmp[131], tmp[150]);
    AddA(tmp[150], a[5821]); -- Death from Above
    AddA(tmp[150], a[5813]); -- Do a Barrel Roll!
    AddA(tmp[150], a[5810]); -- Not an Ambi-Turner
    AddA(tmp[150], a[5829]); -- Bucket List
    AddA(tmp[150], a[5830]); -- Share the Pain
    AddA(tmp[150], a[5799]); -- Only the Penitent...
    AddA(tmp[150], a[5855]); -- Ragnar-O's
    AddA(tmp[150], a[5807]); -- Heroic: Beth'tilac
    AddA(tmp[150], a[5809]); -- Heroic: Alysrazor
    AddA(tmp[150], a[5808]); -- Heroic: Lord Rhyolith
    AddA(tmp[150], a[5806]); -- Heroic: Shannox
    AddA(tmp[150], a[5805]); -- Heroic: Baleroc
    AddA(tmp[150], a[5804]); -- Heroic: Majordomo Fandral Staghelm
    AddA(tmp[150], a[5803]); -- Heroic: Ragnaros
    AddA(tmp[150], a[5802]); -- Firelands
    AddA(tmp[150], a[11755]); -- Hot Couture
    AddA(tmp[150], a[5839]); -- "Dragonwrath, Tarecgosa's Rest"
    tmp[576] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[150], tmp[576]);
    AddA(tmp[576], a[5827]); -- Avengers of Hyjal
    tmp[151] = IaR(c, cat:New((EJ_GetInstanceInfo(187)))); -- Dragon Soul
    AddC(tmp[131], tmp[151]);
    AddA(tmp[151], a[6174]); -- Don't Stand So Close to Me
    AddA(tmp[151], a[6128]); -- Ping Pong Champion
    AddA(tmp[151], a[6129]); -- Taste the Rainbow!
    AddA(tmp[151], a[6175]); -- Holding Hands
    AddA(tmp[151], a[6084]); -- Minutes to Midnight
    AddA(tmp[151], a[6105]); -- Deck Defender
    AddA(tmp[151], a[6133]); -- Maybe He'll Get Dizzy...
    AddA(tmp[151], a[6180]); -- Chromatic Champion
    AddA(tmp[151], a[6109]); -- Heroic: Morchok
    AddA(tmp[151], a[6110]); -- Heroic: Warlord Zon'ozz
    AddA(tmp[151], a[6111]); -- Heroic: Yor'sahj the Unsleeping
    AddA(tmp[151], a[6112]); -- Heroic: Hagara the Stormbinder
    AddA(tmp[151], a[6113]); -- Heroic: Ultraxion
    AddA(tmp[151], a[6114]); -- Heroic: Warmaster Blackhorn
    AddA(tmp[151], a[6115]); -- Heroic: Spine of Deathwing
    AddA(tmp[151], a[6116]); -- Heroic: Madness of Deathwing
    AddA(tmp[151], a[6106]); -- Siege of Wyrmrest Temple
    AddA(tmp[151], a[6107]); -- Fall of Deathwing
    AddA(tmp[151], a[6177]); -- Destroyer's End
    AddA(tmp[151], a[11756]); -- Wardrobe of the Old Gods
    AddA(tmp[151], a[6181]); -- Fangs of the Father
    tmp[788] = IaR(c, cat:New((GetCategoryInfo(15117)))); -- Pet Battles
    AddC(tmp[129], tmp[788]);
    AddA(tmp[788], a[7525]); -- Taming Cataclysm
    tmp[547] = IaR(c, cat:New((GetCategoryInfo(15075)))); -- Tol Barad
    AddC(tmp[129], tmp[547]);
    AddA(tmp[547], a[5489]); -- Master of Tol Barad
    AddA(tmp[547], a[5490]); -- Master of Tol Barad
    tmp[563] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[547], tmp[563]);
    AddA(tmp[563], a[4874]); -- Breaking Out of Tol Barad
    AddA(tmp[563], a[5718]); -- Just Another Day in Tol Barad
    AddA(tmp[563], a[5719]); -- Just Another Day in Tol Barad
    tmp[569] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[547], tmp[569]);
    AddA(tmp[569], a[5412]); -- Tol Barad Victory
    AddA(tmp[569], a[5418]); -- Tol Barad Veteran
    AddA(tmp[569], a[5417]); -- Tol Barad Veteran
    AddA(tmp[569], a[5415]); -- Tower Plower
    AddA(tmp[569], a[5488]); -- Towers of Power
    AddA(tmp[569], a[5487]); -- Tol Barad Saboteur
    AddA(tmp[569], a[5486]); -- Tol Barad All-Star
    tmp[575] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[547], tmp[575]);
    AddA(tmp[575], a[5375]); -- Baradin's Wardens
    AddA(tmp[575], a[5376]); -- Hellscream's Reach
    tmp[189] = IaR(c, cat:New((GetCategoryInfo(15164)))); -- Mists of Pandaria
    AddA(tmp[189], a[6926]); -- Tranquil Master
    AddA(tmp[189], a[7533]); -- Chapter I: Trial of the Black Prince
    AddA(tmp[189], a[8030]); -- A Test of Valor
    AddA(tmp[189], a[8031]); -- A Test of Valor
    AddA(tmp[189], a[7534]); -- Chapter II: Wrathion's War
    AddA(tmp[189], a[8008]); -- Chapter II: Wrathion's War
    AddA(tmp[189], a[7535]); -- Chapter III: Two Princes
    AddA(tmp[189], a[7536]); -- Chapter IV: Celestial Blessings
    AddA(tmp[189], a[8325]); -- Chapter V: Judgment of the Black Prince
    tmp[491] = IaR(c, cat:New(addon.L["Zones"])); -- Zones
    AddC(tmp[189], tmp[491]);
    tmp[526] = IaR(c, cat:New(C_Map.GetMapInfo(424).name)); -- Pandaria
    AddC(tmp[491], tmp[526]);
    tmp[527] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[526], tmp[527]);
    AddA(tmp[527], a[6541]); -- Loremaster of Pandaria
    AddA(tmp[527], a[7285]); -- Every Day I'm Pand-a-ren
    AddA(tmp[527], a[7928]); -- Operation: Shieldwall Campaign
    AddA(tmp[527], a[7929]); -- Dominance Offensive Campaign
    tmp[528] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[526], tmp[528]);
    AddA(tmp[528], a[6716]); -- Between a Saurok and a Hard Place
    AddA(tmp[528], a[6754]); -- The Dark Heart of the Mogu
    AddA(tmp[528], a[6846]); -- Fish Tales
    AddA(tmp[528], a[6850]); -- Hozen in the Mist
    AddA(tmp[528], a[6847]); -- The Song of the Yaungol
    AddA(tmp[528], a[6855]); -- The Seven Burdens of Shaohao
    AddA(tmp[528], a[6856]); -- Ballad of Liu Lang
    AddA(tmp[528], a[6858]); -- What Is Worth Fighting For
    AddA(tmp[528], a[7230]); -- Legend of the Brewfathers
    AddA(tmp[528], a[7281]); -- Lost and Found
    AddA(tmp[528], a[7994]); -- Treasure of Pandaria
    AddA(tmp[528], a[7995]); -- Fortune of Pandaria
    AddA(tmp[528], a[7996]); -- Bounty of Pandaria
    AddA(tmp[528], a[7997]); -- Riches of Pandaria
    AddA(tmp[528], a[7282]); -- Finders Keepers
    AddA(tmp[528], a[7283]); -- One Man's Trash...
    AddA(tmp[528], a[7284]); -- Is Another Man's Treasure
    AddA(tmp[528], a[7437]); -- A Worthy Opponent
    AddA(tmp[528], a[7438]); -- Could We Find More Like That?
    AddA(tmp[528], a[7439]); -- Glorious!
    AddA(tmp[528], a[8078]); -- Zul'Again
    AddA(tmp[528], a[6350]); -- To All the Squirrels I Once Caressed?
    AddA(tmp[528], a[7329]); -- Pandaren Cuisine
    AddA(tmp[528], a[7330]); -- Pandaren Delicacies
    AddA(tmp[528], a[6974]); -- Pandaria Explorer
    tmp[529] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[526], tmp[529]);
    AddA(tmp[529], a[7479]); -- The Shado-Master
    AddA(tmp[529], a[6543]); -- The August Celestials
    AddA(tmp[529], a[6547]); -- The Anglers
    AddA(tmp[529], a[6548]); -- The Lorewalkers
    AddA(tmp[529], a[6827]); -- Pandaren Ambassador
    AddA(tmp[529], a[6828]); -- Pandaren Ambassador
    tmp[492] = IaR(c, cat:New(C_Map.GetMapInfo(371).name)); -- The Jade Forest
    AddC(tmp[491], tmp[492]);
    tmp[519] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[492], tmp[519]);
    AddA(tmp[519], a[6300]); -- Upjade Complete
    AddA(tmp[519], a[6534]); -- Upjade Complete
    AddA(tmp[519], a[7289]); -- Shadow Hopper
    AddA(tmp[519], a[7290]); -- How To Strain Your Dragon
    AddA(tmp[519], a[7291]); -- In a Trail of Smoke
    tmp[545] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[492], tmp[545]);
    AddA(tmp[545], a[6351]); -- Explore Jade Forest
    AddA(tmp[545], a[7381]); -- Restore Balance
    tmp[546] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[492], tmp[546]);
    AddA(tmp[546], a[6550]); -- Order of the Cloud Serpent
    tmp[493] = IaR(c, cat:New(C_Map.GetMapInfo(376).name)); -- Valley of the Four Winds
    AddC(tmp[491], tmp[493]);
    AddA(tmp[493], a[6517]); -- Extinction Event
    tmp[516] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[493], tmp[516]);
    AddA(tmp[516], a[6301]); -- Rally the Valley
    AddA(tmp[516], a[7292]); -- Green Acres
    AddA(tmp[516], a[7293]); -- Till the Break of Dawn
    AddA(tmp[516], a[7294]); -- A Taste of Things to Come
    AddA(tmp[516], a[7295]); -- Listen to the Drunk Fish
    AddA(tmp[516], a[7296]); -- Ain't Lost No More
    AddA(tmp[516], a[7502]); -- Savior of Stoneplow
    tmp[544] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[493], tmp[544]);
    AddA(tmp[544], a[6969]); -- Explore Valley of the Four Winds
    tmp[518] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[493], tmp[518]);
    AddA(tmp[518], a[6544]); -- The Tillers
    AddA(tmp[518], a[6551]); -- Friend on the Farm
    AddA(tmp[518], a[6552]); -- Friends on the Farm
    tmp[494] = IaR(c, cat:New(C_Map.GetMapInfo(418).name)); -- Krasarang Wilds
    AddC(tmp[491], tmp[494]);
    tmp[513] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[494], tmp[513]);
    AddA(tmp[513], a[6535]); -- Mighty Roamin' Krasaranger
    AddA(tmp[513], a[6536]); -- Mighty Roamin' Krasaranger
    AddA(tmp[513], a[7287]); -- Champion of Chi-Ji
    tmp[514] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[494], tmp[514]);
    AddA(tmp[514], a[6975]); -- Explore Krasarang Wilds
    AddA(tmp[514], a[7518]); -- "Wanderers, Dreamers, and You"
    AddA(tmp[514], a[7932]); -- "I'm In Your Base, Killing Your Dudes"
    tmp[543] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[494], tmp[543]);
    AddA(tmp[543], a[8205]); -- Operation: Shieldwall
    AddA(tmp[543], a[8206]); -- Dominance Offensive
    tmp[495] = IaR(c, cat:New(C_Map.GetMapInfo(379).name)); -- Kun-Lai Summit
    AddC(tmp[491], tmp[495]);
    AddA(tmp[495], a[6480]); -- "Settle Down, Bro"
    AddA(tmp[495], a[7386]); -- Grand Expedition Yak
    tmp[510] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[495], tmp[510]);
    AddA(tmp[510], a[6537]); -- Slum It in the Summit
    AddA(tmp[510], a[6538]); -- Slum It in the Summit
    AddA(tmp[510], a[7286]); -- Finish Them!
    tmp[542] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[495], tmp[542]);
    AddA(tmp[542], a[6976]); -- Explore Kun-Lai Summit
    tmp[496] = IaR(c, cat:New(C_Map.GetMapInfo(388).name)); -- Townlong Steppes
    AddC(tmp[491], tmp[496]);
    tmp[507] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[496], tmp[507]);
    AddA(tmp[507], a[6539]); -- "One Steppe Forward, Two Steppes Back"
    AddA(tmp[507], a[7288]); -- Yak Attack
    AddA(tmp[507], a[7297]); -- Proven Strength
    AddA(tmp[507], a[7298]); -- Getting Around with the Shado-Pan
    AddA(tmp[507], a[7299]); -- Loner and a Rebel
    AddA(tmp[507], a[7307]); -- Silent Assassin
    AddA(tmp[507], a[7308]); -- Know Your Role
    AddA(tmp[507], a[7309]); -- Fire in the Yaung-hole!
    AddA(tmp[507], a[7310]); -- Defender of Gods
    tmp[540] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[496], tmp[540]);
    AddA(tmp[540], a[6977]); -- Explore Townlong Steppes
    tmp[541] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[496], tmp[541]);
    AddA(tmp[541], a[6366]); -- Shado-Pan
    tmp[497] = IaR(c, cat:New(C_Map.GetMapInfo(422).name)); -- Dread Wastes
    AddC(tmp[491], tmp[497]);
    tmp[504] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[497], tmp[504]);
    AddA(tmp[504], a[6540]); -- Dread Haste Makes Dread Waste
    AddA(tmp[504], a[7312]); -- Amber is the Color of My Energy
    AddA(tmp[504], a[7313]); -- Stay Klaxxi
    AddA(tmp[504], a[7314]); -- Test Drive
    AddA(tmp[504], a[7316]); -- Over Their Heads
    tmp[538] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[497], tmp[538]);
    AddA(tmp[538], a[6978]); -- Explore Dread Wastes
    AddA(tmp[538], a[6857]); -- Heart of the Mantid Swarm
    tmp[539] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[497], tmp[539]);
    AddA(tmp[539], a[6545]); -- Klaxxi
    AddA(tmp[539], a[8023]); -- Wakener
    tmp[498] = IaR(c, cat:New(C_Map.GetMapInfo(390).name)); -- Vale of Eternal Blossoms
    AddC(tmp[491], tmp[498]);
    tmp[501] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[498], tmp[501]);
    AddA(tmp[501], a[7317]); -- One Many Army
    AddA(tmp[501], a[7318]); -- A Taste of History
    AddA(tmp[501], a[7319]); -- Ready for Raiding III
    AddA(tmp[501], a[7320]); -- Dog Pile
    AddA(tmp[501], a[7321]); -- Spreading the Warmth
    AddA(tmp[501], a[7322]); -- Roll Club
    AddA(tmp[501], a[7323]); -- Collateral Damage
    AddA(tmp[501], a[7324]); -- One Step at a Time
    AddA(tmp[501], a[7315]); -- Eternally in the Vale
    tmp[536] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[498], tmp[536]);
    AddA(tmp[536], a[6979]); -- Explore Vale of Eternal Blossoms
    tmp[537] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[498], tmp[537]);
    AddA(tmp[537], a[6546]); -- The Golden Lotus
    tmp[534] = IaR(c, cat:New(C_Map.GetMapInfo(507).name)); -- Isle of Giants
    AddC(tmp[491], tmp[534]);
    AddA(tmp[534], a[8123]); -- Millions of Years of Evolution vs. My Fist
    AddA(tmp[534], a[8092]); -- I've Got 9999 Problems but a Bone-White Primal Raptor Ain't One
    tmp[522] = IaR(c, cat:New(C_Map.GetMapInfo(504).name)); -- Isle of Thunder
    AddC(tmp[491], tmp[522]);
    AddA(tmp[522], a[8028]); -- Praise the Sun!
    tmp[523] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[522], tmp[523]);
    AddA(tmp[523], a[8099]); -- Isle of Thunder
    AddA(tmp[523], a[8100]); -- Pay to Slay
    AddA(tmp[523], a[8101]); -- It Was Worth Every Ritual Stone
    AddA(tmp[523], a[8104]); -- Thunder Plunder
    AddA(tmp[523], a[8105]); -- The Crumble Bundle
    AddA(tmp[523], a[8107]); -- Ready for RAAAAIIIIDDD?!?ing
    AddA(tmp[523], a[8108]); -- "When in Ihgaluk, Do as the Skumblade Do"
    AddA(tmp[523], a[8109]); -- The Mogu Below-gu
    AddA(tmp[523], a[8110]); -- These Mogu Have Gotta Go-gu
    AddA(tmp[523], a[8111]); -- This Isn't Even My Final Form
    AddA(tmp[523], a[8112]); -- Blue Response
    AddA(tmp[523], a[8114]); -- Platform Hero
    AddA(tmp[523], a[8115]); -- Speed Metal
    AddA(tmp[523], a[8116]); -- You Made Me Bleed My Own Blood
    AddA(tmp[523], a[8117]); -- For the Ward!
    AddA(tmp[523], a[8118]); -- Boop
    AddA(tmp[523], a[8119]); -- Our Powers Combined
    AddA(tmp[523], a[8120]); -- Direhorn in a China Shop
    AddA(tmp[523], a[8212]); -- Zandalari Library Card
    AddA(tmp[523], a[8121]); -- Stormbreaker
    AddA(tmp[523], a[8106]); -- In the Hall of the Thunder King
    tmp[524] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[522], tmp[524]);
    AddA(tmp[524], a[8103]); -- Champions of Lei Shen
    AddA(tmp[524], a[8049]); -- The Zandalari Prophecy
    AddA(tmp[524], a[8050]); -- Rumbles of Thunder
    AddA(tmp[524], a[8051]); -- Gods and Monsters
    tmp[525] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[522], tmp[525]);
    AddA(tmp[525], a[8208]); -- Kirin Tor Offensive
    AddA(tmp[525], a[8209]); -- Sunreaver Onslaught
    AddA(tmp[525], a[8210]); -- Shado-Pan Assault
    tmp[530] = IaR(c, cat:New(C_Map.GetMapInfo(554).name)); -- Timeless Isle
    AddC(tmp[491], tmp[530]);
    AddA(tmp[530], a[8535]); -- Celestial Challenge
    AddA(tmp[530], a[8533]); -- Ordos
    tmp[531] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[530], tmp[531]);
    AddA(tmp[531], a[8712]); -- Killing Time
    AddA(tmp[531], a[8714]); -- Timeless Champion
    AddA(tmp[531], a[8722]); -- Timeless Nutriment
    AddA(tmp[531], a[8724]); -- Pilgrimage
    AddA(tmp[531], a[8723]); -- Legend of the Past
    AddA(tmp[531], a[8784]); -- Timeless Legends
    AddA(tmp[531], a[8725]); -- Eyes On The Ground
    AddA(tmp[531], a[8726]); -- Extreme Treasure Hunter
    AddA(tmp[531], a[8727]); -- "Where There's Pirates, There's Booty"
    AddA(tmp[531], a[8729]); -- "Treasure, Treasure Everywhere"
    AddA(tmp[531], a[8730]); -- Rolo's Riddle
    AddA(tmp[531], a[8743]); -- Zarhym Altogether
    AddA(tmp[531], a[8716]); -- Emissary of Ordos
    AddA(tmp[531], a[8717]); -- Candlekeeper
    AddA(tmp[531], a[8718]); -- Oathguard
    AddA(tmp[531], a[8719]); -- Blazebinder
    AddA(tmp[531], a[8720]); -- Kilnmaster
    AddA(tmp[531], a[8721]); -- Fire-Watcher
    AddA(tmp[531], a[8728]); -- Going To Need A Bigger Bag
    tmp[535] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[530], tmp[535]);
    AddA(tmp[535], a[8715]); -- Emperor Shaohao
    tmp[190] = IaR(c, cat:New((GetCategoryInfo(15272)))); -- Dungeons
    AddC(tmp[189], tmp[190]);
    AddA(tmp[190], a[6925]); -- Pandaria Dungeon Hero
    AddA(tmp[190], a[6927]); -- Glory of the Pandaria Hero
    AddA(tmp[190], a[8903]); -- Mistwalker
    AddA(tmp[190], a[6920]); -- Challenge Conqueror
    AddA(tmp[190], a[6374]); -- Challenge Conqueror: Bronze
    AddA(tmp[190], a[6375]); -- Challenge Conqueror: Silver
    AddA(tmp[190], a[6378]); -- Challenge Conqueror: Gold
    tmp[193] = IaR(c, cat:New((EJ_GetInstanceInfo(313)))); -- Temple of the Jade Serpent
    AddC(tmp[190], tmp[193]);
    AddA(tmp[193], a[6475]); -- Cleaning Up
    AddA(tmp[193], a[6460]); -- Hydrophobia
    AddA(tmp[193], a[6671]); -- Seeds of Doubt
    AddA(tmp[193], a[6757]); -- Temple of the Jade Serpent
    AddA(tmp[193], a[6758]); -- Heroic: Temple of the Jade Serpent
    AddA(tmp[193], a[6884]); -- Temple of the Jade Serpent Challenger
    AddA(tmp[193], a[6885]); -- Temple of the Jade Serpent: Bronze
    AddA(tmp[193], a[6886]); -- Temple of the Jade Serpent: Silver
    AddA(tmp[193], a[6887]); -- Temple of the Jade Serpent: Gold
    AddA(tmp[193], a[8430]); -- Challenge Master: Temple of the Jade Serpent
    tmp[194] = IaR(c, cat:New((EJ_GetInstanceInfo(302)))); -- Stormstout Brewery
    AddC(tmp[190], tmp[194]);
    AddA(tmp[194], a[6402]); -- Ling-Ting's Herbal Journey
    AddA(tmp[194], a[6089]); -- Keep Rollin' Rollin' Rollin'
    AddA(tmp[194], a[6400]); -- How Did He Get Up There?
    AddA(tmp[194], a[6420]); -- Hopocalypse Now!
    AddA(tmp[194], a[6457]); -- Stormstout Brewery
    AddA(tmp[194], a[6456]); -- Heroic: Stormstout Brewery
    AddA(tmp[194], a[6888]); -- Stormstout Brewery Challenger
    AddA(tmp[194], a[6889]); -- Stormstout Brewery: Bronze
    AddA(tmp[194], a[6890]); -- Stormstout Brewery: Silver
    AddA(tmp[194], a[6891]); -- Stormstout Brewery: Gold
    AddA(tmp[194], a[8431]); -- Challenge Master: Stormstout Brewery
    tmp[195] = IaR(c, cat:New((EJ_GetInstanceInfo(321)))); -- Mogu'shan Palace
    AddC(tmp[190], tmp[195]);
    AddA(tmp[195], a[6713]); -- Quarrelsome Quilen Quintet
    AddA(tmp[195], a[6478]); -- Glintrok N' Roll
    AddA(tmp[195], a[6736]); -- What Does This Button Do?
    AddA(tmp[195], a[6755]); -- Mogu'shan Palace
    AddA(tmp[195], a[6756]); -- Heroic: Mogu'shan Palace
    AddA(tmp[195], a[6892]); -- Mogu'shan Palace Challenger
    AddA(tmp[195], a[6899]); -- Mogu'shan Palace: Bronze
    AddA(tmp[195], a[6900]); -- Mogu'shan Palace: Silver
    AddA(tmp[195], a[6901]); -- Mogu'shan Palace: Gold
    AddA(tmp[195], a[8433]); -- Challenge Master: Mogu'shan Palace
    tmp[196] = IaR(c, cat:New((EJ_GetInstanceInfo(312)))); -- Shado-Pan Monastery
    AddC(tmp[190], tmp[196]);
    AddA(tmp[196], a[6477]); -- Respect
    AddA(tmp[196], a[6472]); -- The Obvious Solution
    AddA(tmp[196], a[6471]); -- Hate Leads to Suffering
    AddA(tmp[196], a[6469]); -- Shado-Pan Monastery
    AddA(tmp[196], a[6470]); -- Heroic: Shado-Pan Monastery
    AddA(tmp[196], a[6893]); -- Shado-Pan Monastery Challenger
    AddA(tmp[196], a[6902]); -- Shado-Pan Monastery: Bronze
    AddA(tmp[196], a[6903]); -- Shado-Pan Monastery: Silver
    AddA(tmp[196], a[6904]); -- Shado-Pan Monastery: Gold
    AddA(tmp[196], a[8432]); -- Challenge Master: Shado-Pan Monastery
    tmp[197] = IaR(c, cat:New((EJ_GetInstanceInfo(303)))); -- Gate of the Setting Sun
    AddC(tmp[190], tmp[197]);
    AddA(tmp[197], a[6479]); -- Bomberman
    AddA(tmp[197], a[6476]); -- Conscriptinator
    AddA(tmp[197], a[6945]); -- Mantid Swarm
    AddA(tmp[197], a[10010]); -- Gate of the Setting Sun
    AddA(tmp[197], a[6759]); -- Heroic: Gate of the Setting Sun
    AddA(tmp[197], a[6894]); -- Gate of the Setting Sun Challenger
    AddA(tmp[197], a[6905]); -- Gate of the Setting Sun: Bronze
    AddA(tmp[197], a[6906]); -- Gate of the Setting Sun: Silver
    AddA(tmp[197], a[6907]); -- Gate of the Setting Sun: Gold
    AddA(tmp[197], a[8434]); -- Challenge Master: Gate of the Setting Sun
    tmp[198] = IaR(c, cat:New((EJ_GetInstanceInfo(324)))); -- Siege of Niuzao Temple
    AddC(tmp[190], tmp[198]);
    AddA(tmp[198], a[6688]); -- Where's My Air Support?
    AddA(tmp[198], a[6485]); -- Return to Sender
    AddA(tmp[198], a[6822]); -- Run with the Wind
    AddA(tmp[198], a[10011]); -- Siege of Niuzao Temple
    AddA(tmp[198], a[6763]); -- Heroic: Siege of Niuzao Temple
    AddA(tmp[198], a[6898]); -- Siege of Niuzao Temple Challenger
    AddA(tmp[198], a[6917]); -- Siege of Niuzao Temple: Bronze
    AddA(tmp[198], a[6918]); -- Siege of Niuzao Temple: Silver
    AddA(tmp[198], a[6919]); -- Siege of Niuzao Temple: Gold
    AddA(tmp[198], a[8439]); -- Challenge Master: Siege of Niuzao Temple
    tmp[199] = IaR(c, cat:New((EJ_GetInstanceInfo(311)))); -- Scarlet Halls
    AddC(tmp[190], tmp[199]);
    AddA(tmp[199], a[6684]); -- Humane Society
    AddA(tmp[199], a[6427]); -- Mosh Pit
    AddA(tmp[199], a[7413]); -- Scarlet Halls
    AddA(tmp[199], a[6760]); -- Heroic: Scarlet Halls
    AddA(tmp[199], a[6895]); -- Scarlet Halls Challenger
    AddA(tmp[199], a[6908]); -- Scarlet Halls: Bronze
    AddA(tmp[199], a[6909]); -- Scarlet Halls: Silver
    AddA(tmp[199], a[6910]); -- Scarlet Halls: Gold
    AddA(tmp[199], a[8436]); -- Challenge Master: Scarlet Halls
    tmp[200] = IaR(c, cat:New((EJ_GetInstanceInfo(316)))); -- Scarlet Monastery
    AddC(tmp[190], tmp[200]);
    AddA(tmp[200], a[6946]); -- Empowered Spiritualist
    AddA(tmp[200], a[6928]); -- Burning Man
    AddA(tmp[200], a[6929]); -- And Stay Dead!
    AddA(tmp[200], a[637]); -- Scarlet Monastery
    AddA(tmp[200], a[6761]); -- Heroic: Scarlet Monastery
    AddA(tmp[200], a[6896]); -- Scarlet Monastery Challenger
    AddA(tmp[200], a[6911]); -- Scarlet Monastery: Bronze
    AddA(tmp[200], a[6912]); -- Scarlet Monastery: Silver
    AddA(tmp[200], a[6913]); -- Scarlet Monastery: Gold
    AddA(tmp[200], a[8437]); -- Challenge Master: Scarlet Monastery
    AddA(tmp[200], a[980]); -- The Horseman's Reins
    tmp[201] = IaR(c, cat:New((EJ_GetInstanceInfo(246)))); -- Scholomance
    AddC(tmp[190], tmp[201]);
    AddA(tmp[201], a[6531]); -- Attention to Detail
    AddA(tmp[201], a[6394]); -- Rattle No More
    AddA(tmp[201], a[6396]); -- Sanguinarian
    AddA(tmp[201], a[6715]); -- Polyformic Acid Science
    AddA(tmp[201], a[6821]); -- School's Out Forever
    AddA(tmp[201], a[645]); -- Scholomance
    AddA(tmp[201], a[6762]); -- Heroic: Scholomance
    AddA(tmp[201], a[6897]); -- Scholomance Challenger
    AddA(tmp[201], a[6914]); -- Scholomance: Bronze
    AddA(tmp[201], a[6915]); -- Scholomance: Silver
    AddA(tmp[201], a[6916]); -- Scholomance: Gold
    AddA(tmp[201], a[8438]); -- Challenge Master: Scholomance
    tmp[191] = IaR(c, cat:New((GetCategoryInfo(15271)))); -- Raids
    AddC(tmp[189], tmp[191]);
    AddA(tmp[191], a[6932]); -- Glory of the Pandaria Raider
    AddA(tmp[191], a[8124]); -- Glory of the Thundering Raider
    AddA(tmp[191], a[8454]); -- Glory of the Orgrimmar Raider
    tmp[202] = IaR(c, cat:New((EJ_GetInstanceInfo(317)))); -- Mogu'shan Vaults
    AddC(tmp[191], tmp[202]);
    AddA(tmp[202], a[6823]); -- Must Love Dogs
    AddA(tmp[202], a[6674]); -- "Anything You Can Do, I Can Do Better..."
    AddA(tmp[202], a[7056]); -- "Sorry, Were You Looking for This?"
    AddA(tmp[202], a[7933]); -- And... It's Good!
    AddA(tmp[202], a[6687]); -- Getting Hot In Here
    AddA(tmp[202], a[6686]); -- Straight Six
    AddA(tmp[202], a[6455]); -- Show Me Your Moves!
    AddA(tmp[202], a[6719]); -- Heroic: Stone Guard
    AddA(tmp[202], a[6720]); -- Heroic: Feng the Accursed
    AddA(tmp[202], a[6721]); -- Heroic: Gara'jal the Spiritbinder
    AddA(tmp[202], a[6722]); -- Heroic: Four Kings
    AddA(tmp[202], a[6723]); -- Heroic: Elegon
    AddA(tmp[202], a[6724]); -- Heroic: Will of the Emperor
    AddA(tmp[202], a[6458]); -- Guardians of Mogu'shan
    AddA(tmp[202], a[6844]); -- The Vault of Mysteries
    AddA(tmp[202], a[6954]); -- Ahead of the Curve: Will of the Emperor
    AddA(tmp[202], a[7485]); -- Cutting Edge: Will of the Emperor
    tmp[203] = IaR(c, cat:New((EJ_GetInstanceInfo(330)))); -- Heart of Fear
    AddC(tmp[191], tmp[203]);
    AddA(tmp[203], a[6937]); -- Overzealous
    AddA(tmp[203], a[6936]); -- Candle in the Wind
    AddA(tmp[203], a[6553]); -- Like an Arrow to the Face
    AddA(tmp[203], a[6683]); -- Less Than Three
    AddA(tmp[203], a[6518]); -- I Heard You Like Amber...
    AddA(tmp[203], a[6922]); -- Timing is Everything
    AddA(tmp[203], a[6725]); -- Heroic: Imperial Vizier Zor'lok
    AddA(tmp[203], a[6726]); -- Heroic: Blade Lord Ta'yak
    AddA(tmp[203], a[6727]); -- Heroic: Garalon
    AddA(tmp[203], a[6728]); -- Heroic: Wind Lord Mel'jarak
    AddA(tmp[203], a[6729]); -- Heroic: Amber-Shaper Un'sok
    AddA(tmp[203], a[6730]); -- Heroic: Grand Empress Shek'zeer
    AddA(tmp[203], a[6718]); -- The Dread Approach
    AddA(tmp[203], a[6845]); -- Nightmare of Shek'zeer
    AddA(tmp[203], a[8246]); -- Ahead of the Curve: Grand Empress Shek'zeer
    AddA(tmp[203], a[7486]); -- Cutting Edge: Grand Empress Shek'zeer
    AddA(tmp[203], a[11757]); -- Sha of Fabulous
    tmp[204] = IaR(c, cat:New((EJ_GetInstanceInfo(320)))); -- Terrace of Endless Spring
    AddC(tmp[191], tmp[204]);
    AddA(tmp[204], a[6717]); -- Power Overwhelming
    AddA(tmp[204], a[6933]); -- Who's Got Two Green Thumbs?
    AddA(tmp[204], a[6824]); -- Face Clutchers
    AddA(tmp[204], a[6825]); -- The Mind-Killer
    AddA(tmp[204], a[6731]); -- Heroic: Protectors of the Endless
    AddA(tmp[204], a[6732]); -- Heroic: Tsulong
    AddA(tmp[204], a[6733]); -- Heroic: Lei Shi
    AddA(tmp[204], a[6734]); -- Heroic: Sha of Fear
    AddA(tmp[204], a[6689]); -- Terrace of Endless Spring
    AddA(tmp[204], a[8248]); -- Ahead of the Curve: Sha of Fear
    AddA(tmp[204], a[7487]); -- Cutting Edge: Sha of Fear
    tmp[205] = IaR(c, cat:New((EJ_GetInstanceInfo(362)))); -- Throne of Thunder
    AddC(tmp[191], tmp[205]);
    AddA(tmp[205], a[8094]); -- Lightning Overload
    AddA(tmp[205], a[8038]); -- Cretaceous Collector
    AddA(tmp[205], a[8073]); -- Cage Match
    AddA(tmp[205], a[8077]); -- One-Up
    AddA(tmp[205], a[8082]); -- Head Case
    AddA(tmp[205], a[8097]); -- Soft Hands
    AddA(tmp[205], a[8098]); -- You Said Crossing the Streams Was Bad
    AddA(tmp[205], a[8037]); -- Genetically Unmodified Organism
    AddA(tmp[205], a[8081]); -- Ritualist Who?
    AddA(tmp[205], a[8087]); -- Can't Touch This
    AddA(tmp[205], a[8086]); -- From Dusk 'til Dawn
    AddA(tmp[205], a[8090]); -- A Complete Circuit
    AddA(tmp[205], a[8056]); -- Heroic: Jin'rokh the Breaker
    AddA(tmp[205], a[8057]); -- Heroic: Horridon
    AddA(tmp[205], a[8058]); -- Heroic: Council of Elders
    AddA(tmp[205], a[8059]); -- Heroic: Tortos
    AddA(tmp[205], a[8060]); -- Heroic: Megaera
    AddA(tmp[205], a[8061]); -- Heroic: Ji-Kun
    AddA(tmp[205], a[8062]); -- Heroic: Durumu the Forgotten
    AddA(tmp[205], a[8063]); -- Heroic: Primordius
    AddA(tmp[205], a[8064]); -- Heroic: Dark Animus
    AddA(tmp[205], a[8065]); -- Heroic: Iron Qon
    AddA(tmp[205], a[8066]); -- Heroic: Twin Consorts
    AddA(tmp[205], a[8067]); -- Heroic: Lei Shen
    AddA(tmp[205], a[8068]); -- Heroic: Ra-den
    AddA(tmp[205], a[8069]); -- Last Stand of the Zandalari
    AddA(tmp[205], a[8070]); -- Forgotten Depths
    AddA(tmp[205], a[8071]); -- Halls of Flesh-Shaping
    AddA(tmp[205], a[8072]); -- Pinnacle of Storms
    AddA(tmp[205], a[8089]); -- I Thought He Was Supposed to Be Hard?
    AddA(tmp[205], a[8249]); -- Ahead of the Curve: Lei Shen
    AddA(tmp[205], a[8238]); -- Cutting Edge: Lei Shen
    AddA(tmp[205], a[8260]); -- Cutting Edge: Ra-den
    AddA(tmp[205], a[11758]); -- Thunderwear
    tmp[206] = IaR(c, cat:New((EJ_GetInstanceInfo(369)))); -- Siege of Orgrimmar
    AddC(tmp[191], tmp[206]);
    AddA(tmp[206], a[8536]); -- No More Tears
    AddA(tmp[206], a[8528]); -- Go Long
    AddA(tmp[206], a[8532]); -- None Shall Pass
    AddA(tmp[206], a[8521]); -- Swallow Your Pride
    AddA(tmp[206], a[8530]); -- The Immortal Vanguard
    AddA(tmp[206], a[8520]); -- Fire in the Hole!
    AddA(tmp[206], a[8453]); -- Rescue Raiders
    AddA(tmp[206], a[8448]); -- Gamon Will Save Us!
    AddA(tmp[206], a[8538]); -- Unlimited Potential
    AddA(tmp[206], a[8529]); -- Criss Cross
    AddA(tmp[206], a[8527]); -- Giant Dinosaur vs. Mega Snail
    AddA(tmp[206], a[8543]); -- Lasers and Magnets and Drills! Oh My!
    AddA(tmp[206], a[8531]); -- Now We are the Paragon
    AddA(tmp[206], a[8537]); -- Strike!
    AddA(tmp[206], a[8463]); -- Mythic: Immerseus
    AddA(tmp[206], a[8465]); -- Mythic: Fallen Protectors
    AddA(tmp[206], a[8466]); -- Mythic: Norushen
    AddA(tmp[206], a[8467]); -- Mythic: Sha of Pride
    AddA(tmp[206], a[8468]); -- Mythic: Galakras
    AddA(tmp[206], a[8469]); -- Mythic: Iron Juggernaut
    AddA(tmp[206], a[8470]); -- Mythic: Kor'kron Dark Shaman
    AddA(tmp[206], a[8471]); -- Mythic: General Nazgrim
    AddA(tmp[206], a[8472]); -- Mythic: Malkorok
    AddA(tmp[206], a[8478]); -- Mythic: Spoils of Pandaria
    AddA(tmp[206], a[8479]); -- Mythic: Thok the Bloodthirsty
    AddA(tmp[206], a[8480]); -- Mythic: Siegecrafter Blackfuse
    AddA(tmp[206], a[8481]); -- Mythic: Paragons of the Klaxxi
    AddA(tmp[206], a[8482]); -- Mythic: Garrosh Hellscream
    AddA(tmp[206], a[8458]); -- Vale of Eternal Sorrows
    AddA(tmp[206], a[8459]); -- Gates of Retribution
    AddA(tmp[206], a[8461]); -- The Underhold
    AddA(tmp[206], a[8462]); -- Downfall
    AddA(tmp[206], a[8679]); -- Conqueror of Orgrimmar
    AddA(tmp[206], a[8680]); -- Liberator of Orgrimmar
    AddA(tmp[206], a[8398]); -- Ahead of the Curve: Garrosh Hellscream (10 player)
    AddA(tmp[206], a[8399]); -- Ahead of the Curve: Garrosh Hellscream (25 player)
    AddA(tmp[206], a[8400]); -- Cutting Edge: Garrosh Hellscream (10 player)
    AddA(tmp[206], a[8401]); -- Cutting Edge: Garrosh Hellscream (25 player)
    AddA(tmp[206], a[11759]); -- Yaass'shaarj
    tmp[549] = IaR(c, cat:New((GetCategoryInfo(15117)))); -- Pet Battles
    AddC(tmp[189], tmp[549]);
    AddA(tmp[549], a[6616]); -- Pandaria Tamer
    AddA(tmp[549], a[6589]); -- Pandaria Safari
    AddA(tmp[549], a[8519]); -- Celestial Family
    AddA(tmp[549], a[13469]); -- Raiding with Leashes VI: Pets of Pandaria
    AddA(tmp[549], a[6606]); -- Taming Pandaria
    AddA(tmp[549], a[8410]); -- The Celestial Tournament
    AddA(tmp[549], a[8518]); -- Master of the Masters
    AddA(tmp[549], a[7908]); -- I Choose You
    AddA(tmp[549], a[7936]); -- Pandaren Spirit Tamer
    AddA(tmp[549], a[8080]); -- Fabled Pandaren Tamer
    tmp[790] = IaR(c, cat:New((GetCategoryInfo(15282)) .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Brawler's Guild
    AddC(tmp[189], tmp[790]);
    AddA(tmp[790], a[7937]); -- You Are Not Your $#*@! Legplates (Season 1)
    AddA(tmp[790], a[7940]); -- The Second Rule of Brawler's Guild (Season 1)
    AddA(tmp[790], a[7941]); -- Brawlin' and Shot Callin' (Season 1)
    AddA(tmp[790], a[8335]); -- Having a Brawl (Season 1)
    AddA(tmp[790], a[8336]); -- I've Got the Biggest Brawls of Them All (Season 1)
    AddA(tmp[790], a[7946]); -- Now You're Just Showing Off (Season 1)
    AddA(tmp[790], a[8340]); -- Deck Your Collection (Season 1)
    AddA(tmp[790], a[8020]); -- You Are Not Your $#*@! Legplates (Season 1)
    AddA(tmp[790], a[7939]); -- The Second Rule of Brawler's Guild (Season 1)
    AddA(tmp[790], a[7942]); -- Brawlin' and Shot Callin' (Season 1)
    AddA(tmp[790], a[8337]); -- Having a Brawl (Season 1)
    AddA(tmp[790], a[8338]); -- I've Got the Biggest Brawls of Them All (Season 1)
    AddA(tmp[790], a[8022]); -- Now You're Just Showing Off (Season 1)
    AddA(tmp[790], a[8343]); -- Deck Your Collection (Season 1)
    AddA(tmp[790], a[7947]); -- The First Rule of Brawler's Guild (Season 1 or 2)
    AddA(tmp[790], a[7948]); -- The First Rule of Brawler's Guild (Season 1 or 2)
    tmp[192] = IaR(c, cat:New(addon.L["Scenarios"])); -- Scenarios
    AddC(tmp[189], tmp[192]);
    AddA(tmp[192], a[6943]); -- Queuing Spree
    AddA(tmp[192], a[7385]); -- Pub Crawl
    AddA(tmp[192], a[6874]); -- Scenaturday
    AddA(tmp[192], a[7509]); -- Scenaturday
    tmp[207] = IaR(c, cat:New((GetLFGDungeonInfo(517)))); -- A Brewing Storm
    AddC(tmp[192], tmp[207]);
    AddA(tmp[207], a[7252]); -- A Brewing Storm
    AddA(tmp[207], a[8310]); -- Heroic: A Brewing Storm
    AddA(tmp[207], a[7257]); -- Don't Shake the Keg
    AddA(tmp[207], a[7261]); -- The Perfect Pour
    AddA(tmp[207], a[7258]); -- Party of Six
    tmp[499] = IaR(c, cat:New((GetLFGDungeonInfo(589)))); -- A Little Patience
    AddC(tmp[192], tmp[499]);
    AddA(tmp[499], a[7988]); -- A Little Patience
    AddA(tmp[499], a[7989]); -- Bubbletrapped!
    AddA(tmp[499], a[7990]); -- Cannonballer
    AddA(tmp[499], a[7992]); -- I Used To Love Them
    AddA(tmp[499], a[7993]); -- We've Been Dancin'
    AddA(tmp[499], a[7991]); -- Which Came First?
    tmp[208] = IaR(c, cat:New((GetLFGDungeonInfo(511)))); -- Arena of Annihilation
    AddC(tmp[192], tmp[208]);
    AddA(tmp[208], a[7271]); -- Arena of Annihilation
    AddA(tmp[208], a[7273]); -- Beat the Heat
    AddA(tmp[208], a[7272]); -- In the Eye of the Tiger
    tmp[214] = IaR(c, cat:New((GetLFGDungeonInfo(593)))); -- Assault on Zan'vess
    AddC(tmp[192], tmp[214]);
    AddA(tmp[214], a[8016]); -- Assault on Zan'vess
    AddA(tmp[214], a[8017]); -- For the Swarm
    tmp[220] = IaR(c, cat:New((GetLFGDungeonInfo(646)))); -- Blood in the Snow
    AddC(tmp[192], tmp[220]);
    AddA(tmp[220], a[8316]); -- Blood in the Snow
    AddA(tmp[220], a[8312]); -- Heroic: Blood in the Snow
    AddA(tmp[220], a[8329]); -- Heed the Weed
    AddA(tmp[220], a[8330]); -- Hekima's Heal-Halter
    tmp[209] = IaR(c, cat:New((GetLFGDungeonInfo(539)))); -- Brewmoon Festival
    AddC(tmp[192], tmp[209]);
    AddA(tmp[209], a[6923]); -- Brewmoon Festival
    AddA(tmp[209], a[6931]); -- Binan Village All-Star
    AddA(tmp[209], a[6930]); -- Yaungolian Barbecue
    tmp[210] = IaR(c, cat:New((GetLFGDungeonInfo(504)))); -- Crypt of Forgotten Kings
    AddC(tmp[192], tmp[210]);
    AddA(tmp[210], a[7522]); -- Crypt of Forgotten Kings
    AddA(tmp[210], a[8311]); -- Heroic: Crypt of Forgotten Kings
    AddA(tmp[210], a[7276]); -- Fancy Footwork
    AddA(tmp[210], a[7275]); -- It's a Trap!
    AddA(tmp[210], a[8368]); -- Fight Anger with Anger
    tmp[215] = IaR(c, cat:New((GetLFGDungeonInfo(616)))); -- Dagger in the Dark
    AddC(tmp[192], tmp[215]);
    AddA(tmp[215], a[8009]); -- Dagger in the Dark
    AddA(tmp[215], a[7987]); -- No Egg Left Behind
    AddA(tmp[215], a[7984]); -- Watery Grave
    AddA(tmp[215], a[7986]); -- You Mean That Wasn't a Void Zone?
    tmp[221] = IaR(c, cat:New((GetLFGDungeonInfo(647)))); -- Dark Heart of Pandaria
    AddC(tmp[192], tmp[221]);
    AddA(tmp[221], a[8317]); -- Dark Heart of Pandaria
    AddA(tmp[221], a[8318]); -- Heroic: Dark Heart of Pandaria
    AddA(tmp[221], a[8319]); -- Accelerated Archaeology
    tmp[218] = IaR(c, cat:New((GetLFGDungeonInfo(595)))); -- Domination Point
    AddC(tmp[192], tmp[218]);
    AddA(tmp[218], a[8013]); -- Domination Point
    AddA(tmp[218], a[8014]); -- Number Five Is Alive
    AddA(tmp[218], a[8015]); -- "Waste Not, Want Not"
    tmp[211] = IaR(c, cat:New((GetLFGDungeonInfo(492)))); -- Greenstone Village
    AddC(tmp[192], tmp[211]);
    AddA(tmp[211], a[7265]); -- Greenstone Village
    AddA(tmp[211], a[7267]); -- Perfect Delivery
    AddA(tmp[211], a[7266]); -- Save it for Later
    tmp[216] = IaR(c, cat:New((GetLFGDungeonInfo(590)))); -- Lion's Landing
    AddC(tmp[192], tmp[216]);
    AddA(tmp[216], a[8010]); -- Lion's Landing
    AddA(tmp[216], a[8011]); -- Number Five Is Alive
    AddA(tmp[216], a[8012]); -- "Waste Not, Want Not"
    tmp[500] = IaR(c, cat:New(C_Map.GetMapInfo(417).name .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Temple of Kotmogu
    AddC(tmp[192], tmp[500]);
    AddA(tmp[500], a[7268]); -- The Temple of Kotmogu
    AddA(tmp[500], a[7270]); -- For Display Only
    AddA(tmp[500], a[7269]); -- Stay Off the Grass
    tmp[222] = IaR(c, cat:New((GetLFGDungeonInfo(649)))); -- The Secrets of Ragefire
    AddC(tmp[192], tmp[222]);
    AddA(tmp[222], a[8294]); -- The Secrets of Ragefire
    AddA(tmp[222], a[8327]); -- Heroic: The Secrets of Ragefire
    AddA(tmp[222], a[8295]); -- "The Few, the Proud, the Gob Squad"
    tmp[212] = IaR(c, cat:New((GetLFGDungeonInfo(566)))); -- Theramore's Fall
    AddC(tmp[192], tmp[212]);
    AddA(tmp[212], a[7523]); -- Theramore's Fall
    AddA(tmp[212], a[7524]); -- Theramore's Fall
    AddA(tmp[212], a[7526]); -- Kite Fight
    AddA(tmp[212], a[7529]); -- Kite Fight
    AddA(tmp[212], a[7527]); -- No Tank You
    AddA(tmp[212], a[7530]); -- No Tank You
    AddA(tmp[212], a[7467]); -- Theramore's Fall
    AddA(tmp[212], a[7468]); -- Theramore's Fall
    tmp[213] = IaR(c, cat:New((GetLFGDungeonInfo(499)))); -- Unga Ingoo
    AddC(tmp[192], tmp[213]);
    AddA(tmp[213], a[7249]); -- Unga Ingoo
    AddA(tmp[213], a[7232]); -- The Keg Runner
    AddA(tmp[213], a[7239]); -- Monkey in the Middle
    AddA(tmp[213], a[7248]); -- "Monkey See, Monkey Kill"
    AddA(tmp[213], a[7231]); -- Spill No Evil
    tmp[219] = IaR(c, cat:New((GetLFGDungeonInfo(655)))); -- Battle on the High Seas
    AddC(tmp[192], tmp[219]);
    AddA(tmp[219], a[8314]); -- Battle on the High Seas
    AddA(tmp[219], a[8364]); -- Heroic: Battle on the High Seas
    AddA(tmp[219], a[8315]); -- Battle on the High Seas
    AddA(tmp[219], a[8366]); -- Heroic: Battle on the High Seas
    AddA(tmp[219], a[8347]); -- Keep those Bombs Away! (From Me)
    tmp[490] = IaR(c, cat:New((GetCategoryInfo(15222)))); -- Proving Grounds
    AddC(tmp[189], tmp[490]);
    AddA(tmp[490], a[9572]); -- Proving Yourself: Bronze Damage
    AddA(tmp[490], a[9573]); -- Proving Yourself: Silver Damage
    AddA(tmp[490], a[9574]); -- Proving Yourself: Gold Damage
    AddA(tmp[490], a[9575]); -- Proving Yourself: Endless Damage (Wave 10)
    AddA(tmp[490], a[9576]); -- Proving Yourself: Endless Damage (Wave 20)
    AddA(tmp[490], a[9577]); -- Proving Yourself: Endless Damage (Wave 30)
    AddA(tmp[490], a[9578]); -- Proving Yourself: Bronze Tank
    AddA(tmp[490], a[9579]); -- Proving Yourself: Silver Tank
    AddA(tmp[490], a[9580]); -- Proving Yourself: Gold Tank
    AddA(tmp[490], a[9581]); -- Proving Yourself: Endless Tank (Wave 10)
    AddA(tmp[490], a[9582]); -- Proving Yourself: Endless Tank (Wave 20)
    AddA(tmp[490], a[9583]); -- Proving Yourself: Endless Tank (Wave 30)
    AddA(tmp[490], a[9584]); -- Proving Yourself: Bronze Healer
    AddA(tmp[490], a[9585]); -- Proving Yourself: Silver Healer
    AddA(tmp[490], a[9586]); -- Proving Yourself: Gold Healer
    AddA(tmp[490], a[9587]); -- Proving Yourself: Endless Healer (Wave 10)
    AddA(tmp[490], a[9588]); -- Proving Yourself: Endless Healer (Wave 20)
    AddA(tmp[490], a[9589]); -- Proving Yourself: Endless Healer (Wave 30)
    AddA(tmp[490], a[9590]); -- You're Doing it Wrong
    AddA(tmp[490], a[9597]); -- You're Really Doing It Wrong
    AddA(tmp[490], a[8486]); -- Proving Yourself: Bronze Damage (Level 90)
    AddA(tmp[490], a[8491]); -- Proving Yourself: Silver Damage (Level 90)
    AddA(tmp[490], a[8496]); -- Proving Yourself: Gold Damage (Level 90)
    AddA(tmp[490], a[8501]); -- Proving Yourself: Endless Damage (Wave 10) (Level 90)
    AddA(tmp[490], a[8504]); -- Proving Yourself: Endless Damage (Wave 20) (Level 90)
    AddA(tmp[490], a[8507]); -- Proving Yourself: Endless Damage (Wave 30) (Level 90)
    AddA(tmp[490], a[8487]); -- Proving Yourself: Bronze Tank (Level 90)
    AddA(tmp[490], a[8492]); -- Proving Yourself: Silver Tank (Level 90)
    AddA(tmp[490], a[8497]); -- Proving Yourself: Gold Tank (Level 90)
    AddA(tmp[490], a[8502]); -- Proving Yourself: Endless Tank (Wave 10) (Level 90)
    AddA(tmp[490], a[8505]); -- Proving Yourself: Endless Tank (Wave 20) (Level 90)
    AddA(tmp[490], a[8508]); -- Proving Yourself: Endless Tank (Wave 30) (Level 90)
    AddA(tmp[490], a[8488]); -- Proving Yourself: Bronze Healer (Level 90)
    AddA(tmp[490], a[8493]); -- Proving Yourself: Silver Healer (Level 90)
    AddA(tmp[490], a[8498]); -- Proving Yourself: Gold Healer (Level 90)
    AddA(tmp[490], a[8503]); -- Proving Yourself: Endless Healer (Wave 10) (Level 90)
    AddA(tmp[490], a[8506]); -- Proving Yourself: Endless Healer (Wave 20) (Level 90)
    AddA(tmp[490], a[8509]); -- Proving Yourself: Endless Healer (Wave 30) (Level 90)
    AddA(tmp[490], a[8697]); -- You're Doing it Wrong (Level 90)
    AddA(tmp[490], a[8812]); -- You're Really Doing It Wrong (Level 90)
    tmp[223] = IaR(c, cat:New((GetCategoryInfo(15233)))); -- Warlords of Dreanor
    AddA(tmp[223], a[9838]); -- "What A Strange, Interdimensional Trip It's Been"
    AddA(tmp[223], a[9640]); -- Chapter I: Call of the Archmage
    AddA(tmp[223], a[9641]); -- Chapter II: Gul'dan Strikes Back
    AddA(tmp[223], a[9642]); -- Chapter III: The Foundry Falls
    AddA(tmp[223], a[10021]); -- Chapter IV: Darkness Incarnate
    AddA(tmp[223], a[10148]); -- Chapter IV: Darkness Incarnate
    tmp[449] = IaR(c, cat:New(addon.L["Zones"])); -- Zones
    AddC(tmp[223], tmp[449]);
    tmp[486] = IaR(c, cat:New(C_Map.GetMapInfo(572).name)); -- Draenor
    AddC(tmp[449], tmp[486]);
    AddA(tmp[486], a[10053]); -- I Found Pepe!
    tmp[487] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[486], tmp[487]);
    AddA(tmp[487], a[8921]); -- Welcome to Draenor
    AddA(tmp[487], a[8922]); -- Welcome to Draenor
    AddA(tmp[487], a[9491]); -- The Garrison Campaign
    AddA(tmp[487], a[9492]); -- The Garrison Campaign
    AddA(tmp[487], a[9564]); -- Securing Draenor
    AddA(tmp[487], a[9562]); -- Securing Draenor
    AddA(tmp[487], a[9833]); -- Loremaster of Draenor
    AddA(tmp[487], a[9923]); -- Loremaster of Draenor
    tmp[488] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[486], tmp[488]);
    AddA(tmp[488], a[10018]); -- Draenor Pathfinder
    AddA(tmp[488], a[9726]); -- Treasure Hunter
    AddA(tmp[488], a[9727]); -- Expert Treasure Hunter
    AddA(tmp[488], a[10348]); -- Master Treasure Hunter
    AddA(tmp[488], a[9728]); -- Grand Treasure Hunter
    AddA(tmp[488], a[9502]); -- Draenor Cuisine
    AddA(tmp[488], a[14728]); -- To All the Squirrels Through Time and Space
    AddA(tmp[488], a[8935]); -- Draenor Explorer
    tmp[489] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[486], tmp[489]);
    AddA(tmp[489], a[9477]); -- Savage Friends
    AddA(tmp[489], a[9478]); -- Savage Friends
    tmp[450] = IaR(c, cat:New(C_Map.GetMapInfo(539).name)); -- Shadowmoon Valley
    AddC(tmp[449], tmp[450]);
    tmp[457] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[450], tmp[457]);
    AddA(tmp[457], a[8845]); -- As I Walk Through the Valley of the Shadow of Moon
    AddA(tmp[457], a[9602]); -- Shoot For the Moon
    AddA(tmp[457], a[9528]); -- On the Shadow's Trail
    AddA(tmp[457], a[9433]); -- A-VOID-ance
    AddA(tmp[457], a[9434]); -- One of Us! One of Us!
    AddA(tmp[457], a[9432]); -- Would You Like a Pamphlet?
    AddA(tmp[457], a[9436]); -- It's the Stones!
    AddA(tmp[457], a[9435]); -- Take From Them Everything
    AddA(tmp[457], a[9437]); -- A Demidos of Reality
    AddA(tmp[457], a[9483]); -- I Was Framed!
    AddA(tmp[457], a[9479]); -- You Can't Make a Giant Omelette...
    AddA(tmp[457], a[9481]); -- You Have Been Rylakinated!
    tmp[458] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[450], tmp[458]);
    AddA(tmp[458], a[8938]); -- Explore Shadowmoon Valley
    tmp[460] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[450], tmp[460]);
    AddA(tmp[460], a[9470]); -- Council of Exarchs
    tmp[451] = IaR(c, cat:New(C_Map.GetMapInfo(525).name)); -- Frostfire Ridge
    AddC(tmp[449], tmp[451]);
    tmp[461] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[451], tmp[461]);
    AddA(tmp[461], a[8671]); -- You'll Get Caught Up In The... Frostfire!
    AddA(tmp[461], a[9606]); -- Frostfire Fridge
    AddA(tmp[461], a[9529]); -- On the Shadow's Trail
    AddA(tmp[461], a[9533]); -- Breaker of Chains
    AddA(tmp[461], a[9530]); -- Writing in the Snow
    AddA(tmp[461], a[9531]); -- Writing in the Snow
    AddA(tmp[461], a[9534]); -- Delectable Ogre Delicacies
    AddA(tmp[461], a[9537]); -- By Fire Be... Merged?
    AddA(tmp[461], a[9536]); -- Slagnarok
    AddA(tmp[461], a[9535]); -- That Was Entirely Unnecessary
    AddA(tmp[461], a[9710]); -- Poisoning the Well
    AddA(tmp[461], a[9711]); -- Planned to Fail
    tmp[462] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[451], tmp[462]);
    AddA(tmp[462], a[8937]); -- Explore Frostfire Ridge
    tmp[464] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[451], tmp[464]);
    AddA(tmp[464], a[9471]); -- Frostwolf Orcs
    tmp[452] = IaR(c, cat:New(C_Map.GetMapInfo(543).name)); -- Gorgrond
    AddC(tmp[449], tmp[452]);
    AddA(tmp[452], a[9423]); -- Goliaths of Gorgrond
    tmp[465] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[452], tmp[465]);
    AddA(tmp[465], a[8923]); -- Putting the Gore in Gorgrond
    AddA(tmp[465], a[8924]); -- Putting the Gore in Gorgrond
    AddA(tmp[465], a[9607]); -- Make It a Bonus
    AddA(tmp[465], a[9655]); -- Fight the Power
    AddA(tmp[465], a[9656]); -- In Plain Sight
    AddA(tmp[465], a[9659]); -- Iron Wings
    AddA(tmp[465], a[9678]); -- Ancient No More
    AddA(tmp[465], a[9667]); -- Burn It to the Ground
    AddA(tmp[465], a[9654]); -- Mean and Green
    AddA(tmp[465], a[9658]); -- Pillars of Draenor
    AddA(tmp[465], a[9663]); -- Picky Palate
    tmp[466] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[452], tmp[466]);
    AddA(tmp[466], a[8939]); -- Explore Gorgrond
    AddA(tmp[466], a[9400]); -- Gorgrond Monster Hunter
    AddA(tmp[466], a[9401]); -- Shredder Maniac
    AddA(tmp[466], a[9402]); -- Prove Your Strength
    tmp[468] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[452], tmp[468]);
    AddA(tmp[468], a[9475]); -- Laughing Skull Orcs
    tmp[453] = IaR(c, cat:New(C_Map.GetMapInfo(535).name)); -- Talador
    AddC(tmp[449], tmp[453]);
    tmp[469] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[453], tmp[469]);
    AddA(tmp[469], a[8920]); -- Don't Let the Tala-door Hit You on the Way Out
    AddA(tmp[469], a[8919]); -- Don't Let the Tala-door Hit You on the Way Out
    AddA(tmp[469], a[9674]); -- I Want More Talador
    AddA(tmp[469], a[9633]); -- Cut off the Head
    AddA(tmp[469], a[9638]); -- Heralds of the Legion
    AddA(tmp[469], a[9635]); -- Bobbing for Orcs
    AddA(tmp[469], a[9634]); -- Charged Up
    AddA(tmp[469], a[9636]); -- United We Stand
    AddA(tmp[469], a[9632]); -- The Power Is Yours
    AddA(tmp[469], a[9637]); -- Poor Communication
    AddA(tmp[469], a[9486]); -- Goodness Gracious
    tmp[470] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[453], tmp[470]);
    AddA(tmp[470], a[8940]); -- Explore Talador
    tmp[472] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[453], tmp[472]);
    AddA(tmp[472], a[9476]); -- Sha'tari Defense
    tmp[454] = IaR(c, cat:New(C_Map.GetMapInfo(542).name)); -- Spires of Arak
    AddC(tmp[449], tmp[454]);
    AddA(tmp[454], a[9425]); -- So Grossly Incandescent
    tmp[473] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[454], tmp[473]);
    AddA(tmp[473], a[8925]); -- Between Arak and a Hard Place
    AddA(tmp[473], a[8926]); -- Between Arak and a Hard Place
    AddA(tmp[473], a[9605]); -- Arak Star
    AddA(tmp[473], a[9612]); -- Eggs in One Basket
    AddA(tmp[473], a[9613]); -- "Fish Gotta Swim, Birds Gotta Eat"
    AddA(tmp[473], a[9601]); -- King of the Monsters
    AddA(tmp[473], a[9600]); -- Monster Mash
    tmp[474] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[454], tmp[474]);
    AddA(tmp[474], a[8941]); -- Explore Spires of Arak
    tmp[476] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[454], tmp[476]);
    AddA(tmp[476], a[9469]); -- Arakkoa Outcasts
    AddA(tmp[476], a[9072]); -- Mantle of the Talon King
    tmp[455] = IaR(c, cat:New(C_Map.GetMapInfo(550).name)); -- Nagrand
    AddC(tmp[449], tmp[455]);
    tmp[477] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[455], tmp[477]);
    AddA(tmp[477], a[8927]); -- Nagrandeur
    AddA(tmp[477], a[8928]); -- Nagrandeur
    AddA(tmp[477], a[9615]); -- With a Nagrand Cherry On Top
    AddA(tmp[477], a[9610]); -- History of Violence
    AddA(tmp[477], a[9571]); -- Broke Back Precipice
    AddA(tmp[477], a[9548]); -- Buried Treasures
    AddA(tmp[477], a[9541]); -- The Song of Silence
    AddA(tmp[477], a[9617]); -- Making the Cut
    tmp[478] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[455], tmp[478]);
    AddA(tmp[478], a[8942]); -- Explore Nagrand
    tmp[480] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[455], tmp[480]);
    AddA(tmp[480], a[9472]); -- Steamwheedle Preservation Society
    tmp[456] = IaR(c, cat:New(C_Map.GetMapInfo(534).name)); -- Tanaan Jungle
    AddC(tmp[449], tmp[456]);
    AddA(tmp[456], a[10071]); -- The Legion Will NOT Conquer All
    tmp[481] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[456], tmp[481]);
    AddA(tmp[481], a[10067]); -- In Pursuit of Gul'dan
    AddA(tmp[481], a[10074]); -- In Pursuit of Gul'dan
    AddA(tmp[481], a[10068]); -- Draenor's Last Stand
    AddA(tmp[481], a[10075]); -- Draenor's Last Stand
    AddA(tmp[481], a[10072]); -- Rumble in the Jungle
    AddA(tmp[481], a[10265]); -- Rumble in the Jungle
    tmp[482] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[456], tmp[482]);
    AddA(tmp[482], a[10261]); -- Jungle Treasure Hunter
    AddA(tmp[482], a[10262]); -- Jungle Treasure Master
    AddA(tmp[482], a[10260]); -- Explore Tanaan Jungle
    AddA(tmp[482], a[10069]); -- "I Came, I Clawed, I Conquered"
    AddA(tmp[482], a[10061]); -- Hellbane
    AddA(tmp[482], a[10259]); -- Jungle Hunter
    AddA(tmp[482], a[10070]); -- Jungle Stalker
    AddA(tmp[482], a[10334]); -- Predator
    tmp[484] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[456], tmp[484]);
    AddA(tmp[484], a[10349]); -- Tanaan Diplomat
    AddA(tmp[484], a[10350]); -- Tanaan Diplomat
    tmp[224] = IaR(c, cat:New((GetCategoryInfo(15272)))); -- Dungeons
    AddC(tmp[223], tmp[224]);
    AddA(tmp[224], a[9391]); -- Draenor Dungeon Hero
    AddA(tmp[224], a[9619]); -- Savage Hero
    AddA(tmp[224], a[9396]); -- Glory of the Draenor Hero
    AddA(tmp[224], a[8895]); -- Challenge Warlord
    AddA(tmp[224], a[8897]); -- Challenge Warlord: Bronze
    AddA(tmp[224], a[8898]); -- Challenge Warlord: Silver
    AddA(tmp[224], a[8899]); -- Challenge Warlord: Gold
    tmp[226] = IaR(c, cat:New((EJ_GetInstanceInfo(385)))); -- Bloodmaul Slag Mines
    AddC(tmp[224], tmp[226]);
    AddA(tmp[226], a[9005]); -- Come With Me If You Want to Live
    AddA(tmp[226], a[8993]); -- A Gift of Earth and Fire
    AddA(tmp[226], a[9008]); -- Is Draenor on Fire?
    AddA(tmp[226], a[9037]); -- Bloodmaul Slag Mines
    AddA(tmp[226], a[9046]); -- Heroic: Bloodmaul Slag Mines
    AddA(tmp[226], a[10076]); -- Mythic: Bloodmaul Slag Mines
    AddA(tmp[226], a[8875]); -- Bloodmaul Slag Mines Challenger
    AddA(tmp[226], a[8876]); -- Bloodmaul Slag Mines: Bronze
    AddA(tmp[226], a[8877]); -- Bloodmaul Slag Mines: Silver
    AddA(tmp[226], a[8878]); -- Bloodmaul Slag Mines: Gold
    AddA(tmp[226], a[9620]); -- Challenge Master: Bloodmaul Slag Mines
    tmp[227] = IaR(c, cat:New((EJ_GetInstanceInfo(558)))); -- Iron Docks
    AddC(tmp[224], tmp[227]);
    AddA(tmp[227], a[9081]); -- Expert Timing
    AddA(tmp[227], a[9083]); -- "Militaristic, Expansionist"
    AddA(tmp[227], a[9082]); -- Take Cover!
    AddA(tmp[227], a[9038]); -- Iron Docks
    AddA(tmp[227], a[9047]); -- Heroic: Iron Docks
    AddA(tmp[227], a[10079]); -- Mythic: Iron Docks
    AddA(tmp[227], a[8997]); -- Iron Docks Challenger
    AddA(tmp[227], a[8998]); -- Iron Docks: Bronze
    AddA(tmp[227], a[8999]); -- Iron Docks: Silver
    AddA(tmp[227], a[9000]); -- Iron Docks: Gold
    AddA(tmp[227], a[9621]); -- Challenge Master: Iron Docks
    tmp[228] = IaR(c, cat:New((EJ_GetInstanceInfo(547)))); -- Auchindoun
    AddC(tmp[224], tmp[228]);
    AddA(tmp[228], a[9023]); -- ...They All Fall Down
    AddA(tmp[228], a[9551]); -- Demon's Souls
    AddA(tmp[228], a[9552]); -- No Tag-backs!
    AddA(tmp[228], a[9039]); -- Auchindoun
    AddA(tmp[228], a[9049]); -- Heroic: Auchindoun
    AddA(tmp[228], a[10080]); -- Mythic: Auchindoun
    AddA(tmp[228], a[8879]); -- Auchindoun Challenger
    AddA(tmp[228], a[8880]); -- Auchindoun: Bronze
    AddA(tmp[228], a[8881]); -- Auchindoun: Silver
    AddA(tmp[228], a[8882]); -- Auchindoun: Gold
    AddA(tmp[228], a[9622]); -- Challenge Master: Auchindoun
    tmp[229] = IaR(c, cat:New((EJ_GetInstanceInfo(476)))); -- Skyreach
    AddC(tmp[224], tmp[229]);
    AddA(tmp[229], a[9033]); -- Ready for Raiding IV
    AddA(tmp[229], a[9035]); -- I Saw Solis
    AddA(tmp[229], a[9034]); -- Magnify... Enhance
    AddA(tmp[229], a[9036]); -- Monomania
    AddA(tmp[229], a[8843]); -- Skyreach
    AddA(tmp[229], a[8844]); -- Heroic: Skyreach
    AddA(tmp[229], a[10081]); -- Mythic: Skyreach
    AddA(tmp[229], a[8871]); -- Skyreach Challenger
    AddA(tmp[229], a[8872]); -- Skyreach: Bronze
    AddA(tmp[229], a[8873]); -- Skyreach: Silver
    AddA(tmp[229], a[8874]); -- Skyreach: Gold
    AddA(tmp[229], a[9623]); -- Challenge Master: Skyreach
    tmp[230] = IaR(c, cat:New((EJ_GetInstanceInfo(536)))); -- Grimrail Depot
    AddC(tmp[224], tmp[230]);
    AddA(tmp[230], a[9024]); -- This Is Why We Can't Have Nice Things
    AddA(tmp[230], a[9007]); -- No Ticket
    AddA(tmp[230], a[9043]); -- Grimrail Depot
    AddA(tmp[230], a[9052]); -- Heroic: Grimrail Depot
    AddA(tmp[230], a[10082]); -- Mythic: Grimrail Depot
    AddA(tmp[230], a[8887]); -- Grimrail Depot Challenger
    AddA(tmp[230], a[8888]); -- Grimrail Depot: Bronze
    AddA(tmp[230], a[8889]); -- Grimrail Depot: Silver
    AddA(tmp[230], a[8890]); -- Grimrail Depot: Gold
    AddA(tmp[230], a[9625]); -- Challenge Master: Grimrail Depot
    tmp[231] = IaR(c, cat:New((EJ_GetInstanceInfo(556)))); -- The Everbloom
    AddC(tmp[224], tmp[231]);
    AddA(tmp[231], a[9017]); -- Water Management
    AddA(tmp[231], a[9493]); -- "They Burn, Burn, Burn"
    AddA(tmp[231], a[9223]); -- Weed Whacker
    AddA(tmp[231], a[9044]); -- The Everbloom
    AddA(tmp[231], a[9053]); -- Heroic: The Everbloom
    AddA(tmp[231], a[10083]); -- Mythic: The Everbloom
    AddA(tmp[231], a[9001]); -- The Everbloom Challenger
    AddA(tmp[231], a[9002]); -- The Everbloom: Bronze
    AddA(tmp[231], a[9003]); -- The Everbloom: Silver
    AddA(tmp[231], a[9004]); -- The Everbloom: Gold
    AddA(tmp[231], a[9624]); -- Challenge Master: The Everbloom
    tmp[232] = IaR(c, cat:New((EJ_GetInstanceInfo(537)))); -- Shadowmoon Burial Grounds
    AddC(tmp[224], tmp[232]);
    AddA(tmp[232], a[9018]); -- What's Your Sign?
    AddA(tmp[232], a[9025]); -- Icky Ichors
    AddA(tmp[232], a[9026]); -- Souls of the Lost
    AddA(tmp[232], a[9041]); -- Shadowmoon Burial Grounds
    AddA(tmp[232], a[9054]); -- Heroic: Shadowmoon Burial Grounds
    AddA(tmp[232], a[10084]); -- Mythic: Shadowmoon Burial Grounds
    AddA(tmp[232], a[8883]); -- Shadowmoon Burial Grounds Challenger
    AddA(tmp[232], a[8884]); -- Shadowmoon Burial Grounds: Bronze
    AddA(tmp[232], a[8885]); -- Shadowmoon Burial Grounds: Silver
    AddA(tmp[232], a[8886]); -- Shadowmoon Burial Grounds: Gold
    AddA(tmp[232], a[9626]); -- Challenge Master: Shadowmoon Burial Grounds
    tmp[233] = IaR(c, cat:New((EJ_GetInstanceInfo(559)))); -- Upper Blackrock Spire
    AddC(tmp[224], tmp[233]);
    AddA(tmp[233], a[9045]); -- "Magnets, How Do They Work?"
    AddA(tmp[233], a[9058]); -- Leeeeeeeeeeeeeroy...?
    AddA(tmp[233], a[9056]); -- Bridge Over Troubled Fire
    AddA(tmp[233], a[9057]); -- Dragonmaw? More Like Dragonfall!
    AddA(tmp[233], a[9042]); -- Upper Blackrock Spire
    AddA(tmp[233], a[9055]); -- Heroic: Upper Blackrock Spire
    AddA(tmp[233], a[10085]); -- Mythic: Upper Blackrock Spire
    AddA(tmp[233], a[8891]); -- Upper Blackrock Spire Challenger
    AddA(tmp[233], a[8892]); -- Upper Blackrock Spire: Bronze
    AddA(tmp[233], a[8893]); -- Upper Blackrock Spire: Silver
    AddA(tmp[233], a[8894]); -- Upper Blackrock Spire: Gold
    AddA(tmp[233], a[9627]); -- Challenge Master: Upper Blackrock Spire
    tmp[225] = IaR(c, cat:New((GetCategoryInfo(15271)))); -- Raids
    AddC(tmp[223], tmp[225]);
    AddA(tmp[225], a[9619]); -- Savage Hero
    AddA(tmp[225], a[8985]); -- Glory of the Draenor Raider
    AddA(tmp[225], a[10149]); -- Glory of the Hellfire Raider
    tmp[234] = IaR(c, cat:New((EJ_GetInstanceInfo(477)))); -- Highmaul
    AddC(tmp[225], tmp[234]);
    AddA(tmp[234], a[8948]); -- Flame On!
    AddA(tmp[234], a[8947]); -- "Hurry Up, Maggot!"
    AddA(tmp[234], a[8974]); -- More Like Wrecked-us
    AddA(tmp[234], a[8975]); -- A Fungus Among Us
    AddA(tmp[234], a[8958]); -- Brothers in Arms
    AddA(tmp[234], a[8976]); -- Pair Annihilation
    AddA(tmp[234], a[8977]); -- Lineage of Power
    AddA(tmp[234], a[8949]); -- Mythic: Kargath Bladefist
    AddA(tmp[234], a[8960]); -- Mythic: The Butcher
    AddA(tmp[234], a[8961]); -- Mythic: Tectus
    AddA(tmp[234], a[8962]); -- Mythic: Brackenspore
    AddA(tmp[234], a[8963]); -- Mythic: Twin Ogron
    AddA(tmp[234], a[8964]); -- Mythic: Ko'ragh
    AddA(tmp[234], a[8965]); -- Mythic: Imperator's Fall
    AddA(tmp[234], a[8986]); -- The Walled City
    AddA(tmp[234], a[8987]); -- Arcane Sanctum
    AddA(tmp[234], a[8988]); -- Imperator's Fall
    AddA(tmp[234], a[9441]); -- Ahead of the Curve: Imperator's Fall
    AddA(tmp[234], a[9442]); -- Cutting Edge: Imperator's Fall
    tmp[235] = IaR(c, cat:New((EJ_GetInstanceInfo(457)))); -- Blackrock Foundry
    AddC(tmp[225], tmp[235]);
    AddA(tmp[235], a[8979]); -- "He Shoots, He Ores"
    AddA(tmp[235], a[8978]); -- The Iron Price
    AddA(tmp[235], a[8930]); -- "Ya, We've Got Time..."
    AddA(tmp[235], a[8980]); -- Stamp Stamp Revolution
    AddA(tmp[235], a[8929]); -- The Steel Has Been Brought
    AddA(tmp[235], a[8983]); -- Would You Give Me a Hand?
    AddA(tmp[235], a[8981]); -- Fain Would Lie Down
    AddA(tmp[235], a[8982]); -- There's Always a Bigger Train
    AddA(tmp[235], a[8984]); -- Be Quick or Be Dead
    AddA(tmp[235], a[8952]); -- "Ashes, Ashes..."
    AddA(tmp[235], a[8967]); -- Mythic: Oregorger
    AddA(tmp[235], a[8966]); -- Mythic: Gruul
    AddA(tmp[235], a[8970]); -- Mythic: Blast Furnace
    AddA(tmp[235], a[8968]); -- Mythic: Hans'gar and Franzok
    AddA(tmp[235], a[8932]); -- Mythic: Flamebender Ka'graz
    AddA(tmp[235], a[8971]); -- Mythic: Kromog
    AddA(tmp[235], a[8956]); -- Mythic: Beastlord Darmac
    AddA(tmp[235], a[8969]); -- Mythic: Operator Thogar
    AddA(tmp[235], a[8972]); -- Mythic: Iron Maidens
    AddA(tmp[235], a[8973]); -- Mythic: Blackhand's Crucible
    AddA(tmp[235], a[8989]); -- Slagworks
    AddA(tmp[235], a[8990]); -- Black Forge
    AddA(tmp[235], a[8991]); -- Iron Assembly
    AddA(tmp[235], a[8992]); -- Blackhand's Crucible
    AddA(tmp[235], a[9444]); -- Ahead of the Curve: Blackhand's Crucible
    AddA(tmp[235], a[9443]); -- Cutting Edge: Blackhand's Crucible
    AddA(tmp[235], a[11740]); -- Make it W-orc W-orc
    tmp[236] = IaR(c, cat:New((EJ_GetInstanceInfo(669)))); -- Hellfire Citadel
    AddC(tmp[225], tmp[236]);
    AddA(tmp[236], a[10026]); -- Nearly Indestructible
    AddA(tmp[236], a[10057]); -- Turning the Tide
    AddA(tmp[236], a[10013]); -- Waves Came Crashing Down All Around
    AddA(tmp[236], a[10054]); -- Don't Fear the Reaper
    AddA(tmp[236], a[9972]); -- A Race Against Slime
    AddA(tmp[236], a[9979]); -- Get In My Belly!
    AddA(tmp[236], a[9988]); -- Pro Toss
    AddA(tmp[236], a[10086]); -- I'm a Soul Man
    AddA(tmp[236], a[9989]); -- Non-Lethal Enforcer
    AddA(tmp[236], a[10012]); -- This Land Was Green and Good Until...
    AddA(tmp[236], a[10087]); -- You Gotta Keep 'em Separated
    AddA(tmp[236], a[10030]); -- Bad Manner(oth)
    AddA(tmp[236], a[10073]); -- Echoes of Doomfire
    AddA(tmp[236], a[10027]); -- Mythic: Hellfire Assault
    AddA(tmp[236], a[10032]); -- Mythic: Iron Reaver
    AddA(tmp[236], a[10033]); -- Mythic: Kormrok
    AddA(tmp[236], a[10034]); -- Mythic: Hellfire High Council
    AddA(tmp[236], a[10035]); -- Mythic: Kilrogg Deadeye
    AddA(tmp[236], a[10253]); -- Mythic: Gorefiend
    AddA(tmp[236], a[10037]); -- Mythic: Shadow-Lord Iskar
    AddA(tmp[236], a[10040]); -- Mythic: Socrethar the Eternal
    AddA(tmp[236], a[10041]); -- Mythic: Tyrant Velhari
    AddA(tmp[236], a[10038]); -- Mythic: Fel Lord Zakuun
    AddA(tmp[236], a[10039]); -- Mythic: Xhul'horac
    AddA(tmp[236], a[10042]); -- Mythic: Mannoroth
    AddA(tmp[236], a[10043]); -- Mythic: Archimonde
    AddA(tmp[236], a[10023]); -- Hellbreach
    AddA(tmp[236], a[10024]); -- Halls of Blood
    AddA(tmp[236], a[10025]); -- Bastion of Shadows
    AddA(tmp[236], a[10020]); -- Destructor's Rise
    AddA(tmp[236], a[10019]); -- The Black Gate
    AddA(tmp[236], a[9680]); -- Time is a Flat Circle
    AddA(tmp[236], a[10044]); -- Ahead of the Curve: The Black Gate
    AddA(tmp[236], a[10045]); -- Cutting Edge: The Black Gate
    AddA(tmp[236], a[11631]); -- Extreme Makeover: Fel Edition
    tmp[548] = IaR(c, cat:New((GetCategoryInfo(15117)))); -- Pet Battles
    AddC(tmp[223], tmp[548]);
    AddA(tmp[548], a[9685]); -- Draenor Safari
    AddA(tmp[548], a[9069]); -- An Awfully Big Adventure
    AddA(tmp[548], a[9463]); -- Draenic Pet Battler
    AddA(tmp[548], a[9724]); -- Taming Draenor
    AddA(tmp[548], a[10052]); -- Tiny Terrors in Tanaan
    tmp[791] = IaR(c, cat:New((GetCategoryInfo(15282)) .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Brawler's Guild
    AddC(tmp[223], tmp[791]);
    AddA(tmp[791], a[9168]); -- You Are Not Your $#*@! Legplates (Season 2)
    AddA(tmp[791], a[9169]); -- The Second Rule of Brawler's Guild (Season 2)
    AddA(tmp[791], a[9170]); -- Brawlin' and Shot Callin' (Season 2)
    AddA(tmp[791], a[9171]); -- Now You're Just Showing Off (Season 2)
    AddA(tmp[791], a[8339]); -- Collect Your Deck (Season 2)
    AddA(tmp[791], a[9176]); -- Deck Your Collection (Season 2)
    AddA(tmp[791], a[9172]); -- You Are Not Your $#*@! Legplates (Season 2)
    AddA(tmp[791], a[9173]); -- The Second Rule of Brawler's Guild (Season 2)
    AddA(tmp[791], a[9174]); -- Brawlin' and Shot Callin' (Season 2)
    AddA(tmp[791], a[9175]); -- Now You're Just Showing Off (Season 2)
    AddA(tmp[791], a[8342]); -- Collect Your Deck (Season 2)
    AddA(tmp[791], a[9177]); -- Deck Your Collection (Season 2)
    AddA(tmp[791], a[7949]); -- Rabble Rabble Rabble (Season 2)
    AddA(tmp[791], a[7950]); -- Rabble Rabble Rabble (Season 2)
    AddA(tmp[791], a[7943]); -- I'm Your Number One Fan (Season 2)
    AddA(tmp[791], a[7945]); -- Haters Gonna Hate (Season 2)
    AddA(tmp[791], a[7944]); -- Bottle Service (Season 2)
    AddA(tmp[791], a[7947]); -- The First Rule of Brawler's Guild (Season 1 or 2)
    AddA(tmp[791], a[7948]); -- The First Rule of Brawler's Guild (Season 1 or 2)
    tmp[432] = IaR(c, cat:New(addon.L["Garrison"])); -- Garrison
    AddC(tmp[223], tmp[432]);
    AddA(tmp[432], a[9100]); -- More Plots
    AddA(tmp[432], a[9101]); -- Even More Plots
    AddA(tmp[432], a[9545]); -- More Plots
    AddA(tmp[432], a[9546]); -- Even More Plots
    AddA(tmp[432], a[9210]); -- Garrison Buddies
    AddA(tmp[432], a[9132]); -- Garrison Buddies
    AddA(tmp[432], a[8933]); -- Staying Regular
    AddA(tmp[432], a[9901]); -- Don't Call Me Junior
    AddA(tmp[432], a[9928]); -- Don't Call Me Junior
    AddA(tmp[432], a[9828]); -- Ten Hit Tunes
    AddA(tmp[432], a[9912]); -- Azeroth's Top Twenty Tunes
    AddA(tmp[432], a[10015]); -- Full Discography
    AddA(tmp[432], a[9897]); -- Ten Hit Tunes
    AddA(tmp[432], a[9914]); -- Azeroth's Top Twenty Tunes
    AddA(tmp[432], a[10016]); -- Full Discography
    AddA(tmp[432], a[9107]); -- Follow the Leader
    AddA(tmp[432], a[9108]); -- "Where You Go, They Will Follow"
    AddA(tmp[432], a[9109]); -- Fearless Leader
    AddA(tmp[432], a[9494]); -- Commander
    AddA(tmp[432], a[9110]); -- Following Up
    AddA(tmp[432], a[9111]); -- Raising the Bar
    AddA(tmp[432], a[9129]); -- Filling the Ranks
    AddA(tmp[432], a[9130]); -- A Rare Friend
    AddA(tmp[432], a[9131]); -- An Epic Buddy
    AddA(tmp[432], a[9211]); -- My Item Level Is Higher than Yours
    AddA(tmp[432], a[9212]); -- My Item Level Is Way Higher than Yours
    AddA(tmp[432], a[9213]); -- Item Level Army
    AddA(tmp[432], a[9243]); -- Item Level Force
    AddA(tmp[432], a[9152]); -- It's an Invasion!
    AddA(tmp[432], a[9133]); -- On a Mission
    AddA(tmp[432], a[9134]); -- On a Few Missions
    AddA(tmp[432], a[9138]); -- On a Lot of Missions
    AddA(tmp[432], a[9139]); -- On a Massive Number of Missions
    AddA(tmp[432], a[9140]); -- On a Metric Ton of Missions
    AddA(tmp[432], a[9141]); -- A Rare Mission
    AddA(tmp[432], a[9142]); -- Keeping It Rare
    AddA(tmp[432], a[9143]); -- The Rarer the Better
    AddA(tmp[432], a[9145]); -- Treasure Mission Specialist
    AddA(tmp[432], a[9524]); -- Treasure Master
    AddA(tmp[432], a[9146]); -- Patrol Mission Specialist
    AddA(tmp[432], a[9523]); -- Patrolling Draenor
    AddA(tmp[432], a[9147]); -- Mission Specialist
    AddA(tmp[432], a[9150]); -- Exploration Mission Specialist
    AddA(tmp[432], a[9900]); -- Exploration Mission Master
    AddA(tmp[432], a[9246]); -- Master Draenor Crafter
    AddA(tmp[432], a[9248]); -- Defender of Draenor
    AddA(tmp[432], a[9630]); -- Defender of Draenor
    AddA(tmp[432], a[9255]); -- Mythic Draenor Raider
    AddA(tmp[432], a[9631]); -- Mythic Draenor Raider
    AddA(tmp[432], a[9264]); -- Draenor Pet Brawler
    AddA(tmp[432], a[9265]); -- Master of Apexis
    tmp[485] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[432], tmp[485]);
    AddA(tmp[485], a[9825]); -- Master Relic Hunter
    AddA(tmp[485], a[9836]); -- Master Relic Hunter
    tmp[852] = IaR(c, cat:New(addon.L["Buildings"])); -- Buildings
    AddC(tmp[432], tmp[852]);
    AddA(tmp[852], a[9125]); -- Draftsman
    AddA(tmp[852], a[9126]); -- Master Draftsman
    AddA(tmp[852], a[9128]); -- Grand Master Draftsman
    AddA(tmp[852], a[9095]); -- Builder
    AddA(tmp[852], a[9096]); -- Master Builder
    AddA(tmp[852], a[9097]); -- Keepin' Busy
    AddA(tmp[852], a[9094]); -- Garrison Architect
    AddA(tmp[852], a[9487]); -- Got My Mind On My Draenor Money
    AddA(tmp[852], a[9076]); -- Choppin' Some Logs
    AddA(tmp[852], a[9077]); -- Choppin' Some More Logs
    AddA(tmp[852], a[9080]); -- Choppin' Even More Logs
    AddA(tmp[852], a[9078]); -- Choppin' Even More Logs
    AddA(tmp[852], a[9429]); -- Upgrading the Mill
    AddA(tmp[852], a[9099]); -- Time for an Upgrade
    AddA(tmp[852], a[9098]); -- Movin' On Up
    AddA(tmp[852], a[9405]); -- Working Some Orders
    AddA(tmp[852], a[9406]); -- Working More Orders
    AddA(tmp[852], a[9407]); -- Working Many Orders
    AddA(tmp[852], a[9450]); -- The Trap Game
    AddA(tmp[852], a[9565]); -- Master Trapper
    AddA(tmp[852], a[9451]); -- Trapper's Delight
    AddA(tmp[852], a[9452]); -- Trap Superstar
    AddA(tmp[852], a[9468]); -- Salvaging Pays Off
    AddA(tmp[852], a[9495]); -- The Bone Collector
    AddA(tmp[852], a[9497]); -- Finding Your Waystones
    AddA(tmp[852], a[9498]); -- Wingman
    AddA(tmp[852], a[9499]); -- Wingmen
    AddA(tmp[852], a[9538]); -- Intro to Husbandry
    AddA(tmp[852], a[9527]); -- Terrific Technology
    AddA(tmp[852], a[9703]); -- Stay Awhile and Listen
    tmp[854] = IaR(c, cat:New(addon.L["Stables"], true)); -- Stables
    AddC(tmp[852], tmp[854]);
    AddA(tmp[854], a[9526]); -- Master of Mounts
    AddA(tmp[854], a[9539]); -- Advanced Husbandry
    AddA(tmp[854], a[9705]); -- Advanced Husbandry
    AddA(tmp[854], a[9540]); -- The Stable Master
    AddA(tmp[854], a[9706]); -- The Stable Master
    tmp[853] = IaR(c, cat:New(addon.L["Gladiator's Sanctum"], true)); -- Gladiator's Sanctum
    AddC(tmp[852], tmp[853]);
    AddA(tmp[853], a[9516]); -- Nemesis: Slayer of Sin'dorei
    AddA(tmp[853], a[9517]); -- Nemesis: Death Stalker
    AddA(tmp[853], a[9518]); -- Nemesis: Killer of Kezan
    AddA(tmp[853], a[9519]); -- Nemesis: Orcslayer
    AddA(tmp[853], a[9520]); -- Nemesis: Huojin's Fall
    AddA(tmp[853], a[9521]); -- Nemesis: The Butcher
    AddA(tmp[853], a[9522]); -- Nemesis: Troll Hunter
    AddA(tmp[853], a[9509]); -- Nemesis: Draenei Destroyer
    AddA(tmp[853], a[9510]); -- Nemesis: Dwarfstalker
    AddA(tmp[853], a[9511]); -- Nemesis: Gnomebane
    AddA(tmp[853], a[9512]); -- Nemesis: Manslayer
    AddA(tmp[853], a[9513]); -- Nemesis: Scourge of the Kaldorei
    AddA(tmp[853], a[9514]); -- Nemesis: Terror of the Tushui
    AddA(tmp[853], a[9515]); -- Nemesis: Worgen Hunter
    AddA(tmp[853], a[9639]); -- "Fight, Kill, Salute!"
    AddA(tmp[853], a[9508]); -- Warlord of Draenor
    AddA(tmp[853], a[9738]); -- Warlord of Draenor
    tmp[856] = IaR(c, cat:New(addon.L["Shipyard"], true)); -- Shipyard
    AddC(tmp[852], tmp[856]);
    AddA(tmp[856], a[10177]); -- Set Sail!
    AddA(tmp[856], a[10169]); -- Naval Fleet
    AddA(tmp[856], a[10168]); -- Naval Armada
    AddA(tmp[856], a[10170]); -- Seaman
    AddA(tmp[856], a[10172]); -- Petty Officer
    AddA(tmp[856], a[10173]); -- Fleet Commander
    AddA(tmp[856], a[10255]); -- Petty Officer
    AddA(tmp[856], a[10275]); -- Fleet Commander
    AddA(tmp[856], a[10276]); -- Admiral
    AddA(tmp[856], a[10174]); -- Admiral
    AddA(tmp[856], a[10156]); -- Naval Combat Specialist
    AddA(tmp[856], a[10154]); -- Naval Combat Expert
    AddA(tmp[856], a[10159]); -- Naval Treasure Specialist
    AddA(tmp[856], a[10160]); -- Naval Treasure Expert
    AddA(tmp[856], a[10161]); -- Naval Siege Specialist
    AddA(tmp[856], a[10155]); -- Naval Siege Expert
    AddA(tmp[856], a[10162]); -- Naval Training Specialist
    AddA(tmp[856], a[10163]); -- Naval Training Expert
    AddA(tmp[856], a[10017]); -- Naval Bonus Specialist
    AddA(tmp[856], a[10036]); -- Naval Bonus Expert
    AddA(tmp[856], a[10164]); -- Master of the Seas
    AddA(tmp[856], a[10165]); -- Ironsides
    AddA(tmp[856], a[10166]); -- Naval Mechanics
    AddA(tmp[856], a[10256]); -- Charting a Course
    AddA(tmp[856], a[10167]); -- Exploring the High Seas
    AddA(tmp[856], a[10258]); -- Charting a Course
    AddA(tmp[856], a[10307]); -- Exploring the High Seas
    tmp[855] = IaR(c, cat:New(addon.L["Invasions"], true)); -- Invasions
    AddC(tmp[432], tmp[855]);
    AddA(tmp[855], a[9167]); -- Invasion Specialist
    AddA(tmp[855], a[9543]); -- Invasion? What Invasion?
    AddA(tmp[855], a[9244]); -- Invasions Are Better with Friends
    AddA(tmp[855], a[9205]); -- Iron Horde Invasion
    AddA(tmp[855], a[9206]); -- Shadowmoon Clan Invasion
    AddA(tmp[855], a[9203]); -- Shadow Council Invasion
    AddA(tmp[855], a[9204]); -- Ogre Invasion
    AddA(tmp[855], a[9207]); -- Goren Invasion
    AddA(tmp[855], a[9208]); -- Botani Invasion
    AddA(tmp[855], a[9162]); -- Bronze Defender
    AddA(tmp[855], a[9164]); -- Silver Defender
    AddA(tmp[855], a[9165]); -- Golden Defender
    AddA(tmp[855], a[9826]); -- Platinum Defender
    AddA(tmp[855], a[9209]); -- Master Defender
    AddA(tmp[855], a[9827]); -- Impervious Defender
    AddA(tmp[855], a[9181]); -- Save Those Buildings!
    AddA(tmp[855], a[9858]); -- Master and Commander
    tmp[237] = IaR(c, cat:New((GetCategoryInfo(15258)))); -- Legion
    tmp[381] = IaR(c, cat:New(addon.L["Zones"])); -- Zones
    AddC(tmp[237], tmp[381]);
    tmp[396] = IaR(c, cat:New(C_Map.GetMapInfo(619).name)); -- Broken Isles
    AddC(tmp[381], tmp[396]);
    AddA(tmp[396], a[11160]); -- Unleashed Monstrosities
    tmp[397] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[396], tmp[397]);
    AddA(tmp[397], a[11157]); -- Loremaster of Legion
    AddA(tmp[397], a[10877]); -- Pillars of Creation
    AddA(tmp[397], a[11189]); -- Variety is the Spice of Life
    AddA(tmp[397], a[11186]); -- Tehd & Marius' Excellent Adventure
    AddA(tmp[397], a[11240]); -- Harbinger
    AddA(tmp[397], a[11544]); -- Defender of the Broken Isles
    AddA(tmp[397], a[11846]); -- Champions of Legionfall
    tmp[398] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[396], tmp[398]);
    AddA(tmp[398], a[11190]); -- "Broken Isles Pathfinder, Part One"
    AddA(tmp[398], a[11446]); -- "Broken Isles Pathfinder, Part Two"
    AddA(tmp[398], a[14729]); -- To All the Squirrels I Love Despite Their Scars
    AddA(tmp[398], a[11188]); -- Broken Isles Explorer
    tmp[413] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[396], tmp[413]);
    AddA(tmp[413], a[11474]); -- "Free For All, More For Me"
    tmp[414] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[396], tmp[414]);
    AddA(tmp[414], a[10672]); -- Broken Isles Diplomat
    AddA(tmp[414], a[11159]); -- Friends in a Broken Land
    AddA(tmp[414], a[11652]); -- The Reputable
    AddA(tmp[414], a[11653]); -- Paragon of the Broken Isles
    AddA(tmp[414], a[11941]); -- Chromie Homie
    tmp[382] = IaR(c, cat:New(C_Map.GetMapInfo(626).name)); -- Dalaran
    AddC(tmp[381], tmp[382]);
    AddA(tmp[382], a[10770]); -- The Tangerine Traveler
    tmp[383] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[382], tmp[383]);
    AddA(tmp[383], a[12416]); -- The Total Package
    AddA(tmp[383], a[12431]); -- Post Haste
    AddA(tmp[383], a[12439]); -- Priority Mail
    tmp[405] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[382], tmp[405]);
    AddA(tmp[405], a[11066]); -- Underbelly Tycoon
    tmp[384] = IaR(c, cat:New(C_Map.GetMapInfo(630).name)); -- Azsuna
    AddC(tmp[381], tmp[384]);
    tmp[385] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[384], tmp[385]);
    AddA(tmp[385], a[10763]); -- Azsuna Matata
    tmp[399] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[384], tmp[399]);
    AddA(tmp[399], a[10665]); -- Explore Azsuna
    AddA(tmp[399], a[11175]); -- Higher Dimensional Learning
    AddA(tmp[399], a[11256]); -- Treasures of Azsuna
    AddA(tmp[399], a[11261]); -- Adventurer of Azsuna
    tmp[412] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[384], tmp[412]);
    AddA(tmp[412], a[11475]); -- Mission Accomplished
    tmp[387] = IaR(c, cat:New(C_Map.GetMapInfo(641).name)); -- Val'sharah
    AddC(tmp[381], tmp[387]);
    tmp[391] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[387], tmp[391]);
    AddA(tmp[391], a[10698]); -- That's Val'sharah Folks!
    tmp[400] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[387], tmp[400]);
    AddA(tmp[400], a[10666]); -- Explore Val'sharah
    AddA(tmp[400], a[11258]); -- Treasures of Val'sharah
    AddA(tmp[400], a[11262]); -- Adventurer of Val'sharah
    tmp[411] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[387], tmp[411]);
    AddA(tmp[411], a[11477]); -- Off the Top Rook
    tmp[388] = IaR(c, cat:New(C_Map.GetMapInfo(650).name)); -- Highmountain
    AddC(tmp[381], tmp[388]);
    tmp[392] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[388], tmp[392]);
    AddA(tmp[392], a[10059]); -- Ain't No Mountain High Enough
    AddA(tmp[392], a[10774]); -- Hatchling of the Talon
    AddA(tmp[392], a[10626]); -- Zoom!
    AddA(tmp[392], a[10398]); -- Drum Circle
    AddA(tmp[392], a[11427]); -- No Shellfish Endeavor
    tmp[401] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[388], tmp[401]);
    AddA(tmp[401], a[10667]); -- Explore Highmountain
    AddA(tmp[401], a[11257]); -- Treasures of Highmountain
    AddA(tmp[401], a[11264]); -- Adventurer of Highmountain
    tmp[410] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[388], tmp[410]);
    AddA(tmp[410], a[11478]); -- The Darkbrul-oh
    tmp[416] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[388], tmp[416]);
    AddA(tmp[416], a[12292]); -- Highmountain Tribe
    tmp[386] = IaR(c, cat:New(C_Map.GetMapInfo(634).name)); -- Stormheim
    AddC(tmp[381], tmp[386]);
    tmp[390] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[386], tmp[390]);
    AddA(tmp[390], a[10790]); -- "Vrykul Story, Bro"
    AddA(tmp[390], a[10793]); -- What a Ripoff!
    AddA(tmp[390], a[11232]); -- "Lock, Stock and Two Smoking Goblins"
    AddA(tmp[390], a[11427]); -- No Shellfish Endeavor
    tmp[402] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[386], tmp[402]);
    AddA(tmp[402], a[10668]); -- Explore Stormheim
    AddA(tmp[402], a[10627]); -- Going Up
    AddA(tmp[402], a[11259]); -- Treasures of Stormheim
    AddA(tmp[402], a[11263]); -- Adventurer of Stormheim
    AddA(tmp[402], a[11178]); -- Wake the Dragon
    tmp[409] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[386], tmp[409]);
    AddA(tmp[409], a[11476]); -- Saddle Sore
    tmp[389] = IaR(c, cat:New(C_Map.GetMapInfo(680).name)); -- Suramar
    AddC(tmp[381], tmp[389]);
    tmp[393] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[389], tmp[393]);
    AddA(tmp[393], a[10617]); -- Nightfallen But Not Forgotten
    AddA(tmp[393], a[11124]); -- Good Suramaritan
    AddA(tmp[393], a[10756]); -- Leyline Bling
    AddA(tmp[393], a[11125]); -- Now You're Thinking With Portals
    AddA(tmp[393], a[11133]); -- Why Can't I Hold All This Mana?
    AddA(tmp[393], a[11340]); -- Insurrection
    AddA(tmp[393], a[11427]); -- No Shellfish Endeavor
    tmp[403] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[389], tmp[403]);
    AddA(tmp[403], a[10669]); -- Explore Suramar
    AddA(tmp[403], a[11260]); -- Treasures of Suramar
    AddA(tmp[403], a[11265]); -- Adventurer of Suramar
    tmp[415] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[389], tmp[415]);
    AddA(tmp[415], a[10778]); -- The Nightfallen
    tmp[394] = IaR(c, cat:New(C_Map.GetMapInfo(646).name)); -- Broken Shore
    AddC(tmp[381], tmp[394]);
    AddA(tmp[394], a[11786]); -- Terrors of the Shore
    tmp[395] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[394], tmp[395]);
    AddA(tmp[395], a[11607]); -- They See Me Rolling
    AddA(tmp[395], a[11546]); -- Breaching the Tomb
    AddA(tmp[395], a[11681]); -- Crate Expectations
    AddA(tmp[395], a[11731]); -- A Magic Contribution
    AddA(tmp[395], a[11732]); -- A Magnificent Contribution
    AddA(tmp[395], a[11735]); -- Take Command
    AddA(tmp[395], a[11736]); -- Assume Command
    AddA(tmp[395], a[11737]); -- Disrupting the Nether
    AddA(tmp[395], a[11738]); -- It'll Nether Happen
    tmp[404] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[394], tmp[404]);
    AddA(tmp[404], a[11543]); -- Explore Broken Shore
    AddA(tmp[404], a[11802]); -- Bringing Home the Beacon
    AddA(tmp[404], a[11841]); -- Naxt Victim
    tmp[417] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[394], tmp[417]);
    AddA(tmp[417], a[11545]); -- Legionfall Commander
    AddA(tmp[417], a[11796]); -- Armies of Legionfall
    tmp[406] = IaR(c, cat:New(C_Map.GetMapInfo(905).name)); -- Argus
    AddC(tmp[381], tmp[406]);
    tmp[407] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[406], tmp[407]);
    AddA(tmp[407], a[12066]); -- You Are Now Prepared!
    AddA(tmp[407], a[12073]); -- Locked and Loaded
    tmp[408] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[406], tmp[408]);
    AddA(tmp[408], a[12074]); -- "Shoot First, Loot Later"
    AddA(tmp[408], a[12084]); -- Infused and Abused
    AddA(tmp[408], a[12028]); -- Envision Invasion Eradication
    AddA(tmp[408], a[12026]); -- Invasion Obliteration
    AddA(tmp[408], a[12069]); -- Explore Argus
    AddA(tmp[408], a[12077]); -- Adventurer of Argus
    AddA(tmp[408], a[12078]); -- Commander of Argus
    AddA(tmp[408], a[12083]); -- Paragon of Argus
    AddA(tmp[408], a[12101]); -- We Came Here For Two Reasons
    AddA(tmp[408], a[12102]); -- To Kill Demons...
    AddA(tmp[408], a[12103]); -- ...And Chew Mana Buns
    AddA(tmp[408], a[12104]); -- And We're All Out of Mana Buns
    tmp[418] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[406], tmp[418]);
    AddA(tmp[418], a[12076]); -- Protector of the Argussian Reach
    AddA(tmp[418], a[12081]); -- Officer of the Light
    tmp[238] = IaR(c, cat:New((GetCategoryInfo(15272)))); -- Dungeons
    AddC(tmp[237], tmp[238]);
    AddA(tmp[238], a[11164]); -- Legion Dungeon Hero
    AddA(tmp[238], a[11163]); -- Glory of the Legion Hero
    AddA(tmp[238], a[11181]); -- Legion Keymaster
    tmp[240] = IaR(c, cat:New((EJ_GetInstanceInfo(716)))); -- Eye of Azshara
    AddC(tmp[238], tmp[240]);
    AddA(tmp[240], a[10456]); -- But You Say He's Just a Friend
    AddA(tmp[240], a[10457]); -- Stay Salty
    AddA(tmp[240], a[10458]); -- Ready for Raiding V
    AddA(tmp[240], a[10780]); -- Eye of Azshara
    AddA(tmp[240], a[10781]); -- Heroic: Eye of Azshara
    AddA(tmp[240], a[10782]); -- Mythic: Eye of Azshara
    tmp[241] = IaR(c, cat:New((EJ_GetInstanceInfo(762)))); -- Darkheart Thicket
    AddC(tmp[238], tmp[241]);
    AddA(tmp[241], a[10766]); -- Egg-cellent!
    AddA(tmp[241], a[10769]); -- Burning Down the House
    AddA(tmp[241], a[10783]); -- Darkheart Thicket
    AddA(tmp[241], a[10784]); -- Heroic: Darkheart Thicket
    AddA(tmp[241], a[10785]); -- Mythic: Darkheart Thicket
    tmp[242] = IaR(c, cat:New((EJ_GetInstanceInfo(721)))); -- Halls of Valor
    AddC(tmp[238], tmp[242]);
    AddA(tmp[242], a[10544]); -- Stag Party
    AddA(tmp[242], a[10542]); -- I Got What You Mead
    AddA(tmp[242], a[10543]); -- Surge Protector
    AddA(tmp[242], a[10786]); -- Halls of Valor
    AddA(tmp[242], a[10788]); -- Heroic: Halls of Valor
    AddA(tmp[242], a[10789]); -- Mythic: Halls of Valor
    tmp[243] = IaR(c, cat:New((EJ_GetInstanceInfo(767)))); -- Neltharions Lair
    AddC(tmp[238], tmp[243]);
    AddA(tmp[243], a[10996]); -- Got to Ketchum All
    AddA(tmp[243], a[10875]); -- Can't Eat Just One
    AddA(tmp[243], a[10795]); -- Neltharion's Lair
    AddA(tmp[243], a[10796]); -- Heroic: Neltharion's Lair
    AddA(tmp[243], a[10797]); -- Mythic: Neltharion's Lair
    tmp[244] = IaR(c, cat:New((EJ_GetInstanceInfo(777)))); -- Assault on Violet Hold
    AddC(tmp[238], tmp[244]);
    AddA(tmp[244], a[10554]); -- I Made a Food!
    AddA(tmp[244], a[10553]); -- You're Just Making It WORSE!
    AddA(tmp[244], a[10798]); -- Assault on Violet Hold
    AddA(tmp[244], a[10799]); -- Heroic: Assault on Violet Hold
    AddA(tmp[244], a[10800]); -- Mythic: Assault on Violet Hold
    tmp[245] = IaR(c, cat:New((EJ_GetInstanceInfo(707)))); -- Vault of the Wardens
    AddC(tmp[238], tmp[245]);
    AddA(tmp[245], a[10679]); -- I Ain't Even Cold
    AddA(tmp[245], a[10680]); -- Who's Afraid of the Dark?
    AddA(tmp[245], a[10707]); -- "A Specter, Illuminated"
    AddA(tmp[245], a[10801]); -- Vault of the Wardens
    AddA(tmp[245], a[10802]); -- Heroic: Vault of the Wardens
    AddA(tmp[245], a[10803]); -- Mythic: Vault of the Wardens
    tmp[246] = IaR(c, cat:New((EJ_GetInstanceInfo(740)))); -- Black Rook Hold
    AddC(tmp[238], tmp[246]);
    AddA(tmp[246], a[10710]); -- Black Rook Moan
    AddA(tmp[246], a[10709]); -- You Used to Scrawl Me In Your Fel Tome
    AddA(tmp[246], a[10711]); -- Adds? More Like Bads
    AddA(tmp[246], a[10804]); -- Black Rook Hold
    AddA(tmp[246], a[10805]); -- Heroic: Black Rook Hold
    AddA(tmp[246], a[10806]); -- Mythic: Black Rook Hold
    tmp[247] = IaR(c, cat:New((EJ_GetInstanceInfo(727)))); -- Maw of Souls
    AddC(tmp[238], tmp[247]);
    AddA(tmp[247], a[10413]); -- Instant Karma
    AddA(tmp[247], a[10411]); -- Helheim Hath No Fury
    AddA(tmp[247], a[10412]); -- Poor Unfortunate Souls
    AddA(tmp[247], a[10807]); -- Maw of Souls
    AddA(tmp[247], a[10808]); -- Heroic: Maw of Souls
    AddA(tmp[247], a[10809]); -- Mythic: Maw of Souls
    tmp[248] = IaR(c, cat:New((EJ_GetInstanceInfo(726)))); -- The Arcway
    AddC(tmp[238], tmp[248]);
    AddA(tmp[248], a[10773]); -- Arcanic Cling
    AddA(tmp[248], a[10775]); -- Clean House
    AddA(tmp[248], a[10776]); -- No Time to Waste
    AddA(tmp[248], a[10813]); -- Mythic: The Arcway
    tmp[249] = IaR(c, cat:New((EJ_GetInstanceInfo(800)))); -- Court of Stars
    AddC(tmp[238], tmp[249]);
    AddA(tmp[249], a[10610]); -- Waiting for Gerdo
    AddA(tmp[249], a[10611]); -- Dropping Some Eaves
    AddA(tmp[249], a[10816]); -- Mythic: Court of Stars
    tmp[250] = IaR(c, cat:New((EJ_GetInstanceInfo(860)))); -- Return to Karazhan
    AddC(tmp[238], tmp[250]);
    AddA(tmp[250], a[11430]); -- One Night in Karazhan
    AddA(tmp[250], a[11335]); -- Season Tickets
    AddA(tmp[250], a[11338]); -- Dine and Bash
    AddA(tmp[250], a[11432]); -- Scared Straight
    AddA(tmp[250], a[11431]); -- The Rat Pack
    AddA(tmp[250], a[11433]); -- Burn After Reading
    AddA(tmp[250], a[11929]); -- Heroic: Return to Karazhan
    AddA(tmp[250], a[11429]); -- Mythic: Return to Karazhan
    tmp[251] = IaR(c, cat:New((EJ_GetInstanceInfo(900)))); -- Cathedral of Eternal Night
    AddC(tmp[238], tmp[251]);
    AddA(tmp[251], a[11768]); -- Boom Bloom
    AddA(tmp[251], a[11769]); -- A Steamy Romance Saga
    AddA(tmp[251], a[11703]); -- Master of Shadows
    AddA(tmp[251], a[11700]); -- Cathedral of Eternal Night
    AddA(tmp[251], a[11701]); -- Heroic: Cathedral of Eternal Night
    AddA(tmp[251], a[11702]); -- Mythic: Cathedral of Eternal Night
    tmp[252] = IaR(c, cat:New((EJ_GetInstanceInfo(945)))); -- Seat of the Triumvirate
    AddC(tmp[238], tmp[252]);
    AddA(tmp[252], a[12004]); -- Welcome the Void
    AddA(tmp[252], a[12005]); -- Let it All Out
    AddA(tmp[252], a[12009]); -- Darker Side
    AddA(tmp[252], a[12007]); -- Heroic: Seat of the Triumvirate
    AddA(tmp[252], a[12008]); -- Mythic: Seat of the Triumvirate
    tmp[239] = IaR(c, cat:New((GetCategoryInfo(15271)))); -- Raids
    AddC(tmp[237], tmp[239]);
    AddA(tmp[239], a[11180]); -- Glory of the Legion Raider
    AddA(tmp[239], a[11763]); -- Glory of the Tomb Raider
    AddA(tmp[239], a[11987]); -- Glory of the Argus Raider
    tmp[253] = IaR(c, cat:New((EJ_GetInstanceInfo(768)))); -- The Emerald Nightmare
    AddC(tmp[239], tmp[253]);
    AddA(tmp[253], a[10555]); -- Buggy Fight
    AddA(tmp[253], a[10830]); -- Took the Red Eye Down
    AddA(tmp[253], a[10771]); -- Webbing Crashers
    AddA(tmp[253], a[10753]); -- Scare Bear
    AddA(tmp[253], a[10663]); -- Imagined Dragons World Tour
    AddA(tmp[253], a[10772]); -- Use the Force(s)
    AddA(tmp[253], a[10755]); -- I Attack the Darkness
    AddA(tmp[253], a[10821]); -- Mythic: Nythendra
    AddA(tmp[253], a[10823]); -- Mythic: Il'gynoth
    AddA(tmp[253], a[10822]); -- Mythic: Elerethe Renferal
    AddA(tmp[253], a[10824]); -- Mythic: Ursoc
    AddA(tmp[253], a[10825]); -- Mythic: Dragons of Nightmare
    AddA(tmp[253], a[10826]); -- Mythic: Cenarius
    AddA(tmp[253], a[10827]); -- Mythic: Xavius
    AddA(tmp[253], a[10818]); -- Darkbough
    AddA(tmp[253], a[10819]); -- Tormented Guardians
    AddA(tmp[253], a[10820]); -- Rift of Aln
    AddA(tmp[253], a[11194]); -- Ahead of the Curve: Xavius
    AddA(tmp[253], a[11191]); -- Cutting Edge: Xavius
    tmp[254] = IaR(c, cat:New((EJ_GetInstanceInfo(786)))); -- The Nighthold
    AddC(tmp[239], tmp[254]);
    AddA(tmp[254], a[10678]); -- Cage Rematch
    AddA(tmp[254], a[10697]); -- Grand Opening
    AddA(tmp[254], a[10742]); -- Gluten Free
    AddA(tmp[254], a[10817]); -- A Change In Scenery
    AddA(tmp[254], a[10851]); -- Elementalry!
    AddA(tmp[254], a[10754]); -- Fruit of All Evil
    AddA(tmp[254], a[10575]); -- Burning Bridges
    AddA(tmp[254], a[10704]); -- Not For You
    AddA(tmp[254], a[10699]); -- Infinitesimal
    AddA(tmp[254], a[10696]); -- I've Got My Eyes On You
    AddA(tmp[254], a[10840]); -- Mythic: Skorpyron
    AddA(tmp[254], a[10842]); -- Mythic: Chronomatic Anomaly
    AddA(tmp[254], a[10843]); -- Mythic: Trilliax
    AddA(tmp[254], a[10844]); -- Mythic: Spellblade Aluriel
    AddA(tmp[254], a[10845]); -- Mythic: Star Augur Etraeus
    AddA(tmp[254], a[10846]); -- Mythic: High Botanist Tel'arn
    AddA(tmp[254], a[10848]); -- Mythic: Krosus
    AddA(tmp[254], a[10847]); -- Mythic: Tichondrius
    AddA(tmp[254], a[10849]); -- Mythic: Grand Magistrix Elisande
    AddA(tmp[254], a[10850]); -- Mythic: Gul'dan
    AddA(tmp[254], a[10829]); -- Arcing Aqueducts
    AddA(tmp[254], a[10837]); -- Royal Athenaeum
    AddA(tmp[254], a[10838]); -- Nightspire
    AddA(tmp[254], a[10839]); -- Betrayer's Rise
    AddA(tmp[254], a[11195]); -- Ahead of the Curve: Gul'dan
    AddA(tmp[254], a[11192]); -- Cutting Edge: Gul'dan
    AddA(tmp[254], a[11628]); -- That's So Last Millennium
    tmp[255] = IaR(c, cat:New((EJ_GetInstanceInfo(861)))); -- Trial of Valor
    AddC(tmp[239], tmp[255]);
    AddA(tmp[255], a[11337]); -- You Runed Everything!
    AddA(tmp[255], a[11386]); -- Boneafide Tri Tip
    AddA(tmp[255], a[11377]); -- Patient Zero
    AddA(tmp[255], a[11396]); -- Mythic: Odyn
    AddA(tmp[255], a[11397]); -- Mythic: Guarm
    AddA(tmp[255], a[11398]); -- Mythic: Helya
    AddA(tmp[255], a[11394]); -- Trial of Valor
    AddA(tmp[255], a[11426]); -- Heroic: Trial of Valor
    AddA(tmp[255], a[11387]); -- The Chosen
    AddA(tmp[255], a[11581]); -- Ahead of the Curve: Helya
    AddA(tmp[255], a[11580]); -- Cutting Edge: Helya
    AddA(tmp[255], a[11762]); -- Can I Get A Helya
    tmp[256] = IaR(c, cat:New((EJ_GetInstanceInfo(875)))); -- Tomb of Sargeras
    AddC(tmp[239], tmp[256]);
    AddA(tmp[256], a[11724]); -- Fel Turkey!
    AddA(tmp[256], a[11699]); -- Grand Fin-ale
    AddA(tmp[256], a[11676]); -- Five Course Seafood Buffet
    AddA(tmp[256], a[11696]); -- Grin and Bear It
    AddA(tmp[256], a[11773]); -- "Wax On, Wax Off"
    AddA(tmp[256], a[11674]); -- "Great Soul, Great Purpose"
    AddA(tmp[256], a[11675]); -- Sky Walker
    AddA(tmp[256], a[11683]); -- Bingo!
    AddA(tmp[256], a[11770]); -- Dark Souls
    AddA(tmp[256], a[11767]); -- Mythic: Goroth
    AddA(tmp[256], a[11775]); -- Mythic: Harjatan
    AddA(tmp[256], a[11776]); -- Mythic: Mistress Sassz'ine
    AddA(tmp[256], a[11774]); -- Mythic: Demonic Inquisition
    AddA(tmp[256], a[11777]); -- Mythic: Sisters of the Moon
    AddA(tmp[256], a[11778]); -- Mythic: The Desolate Host
    AddA(tmp[256], a[11779]); -- Mythic: Maiden of Vigilance
    AddA(tmp[256], a[11780]); -- Mythic: Fallen Avatar
    AddA(tmp[256], a[11781]); -- Mythic: Kil'jaeden
    AddA(tmp[256], a[11787]); -- The Gates of Hell
    AddA(tmp[256], a[11788]); -- Wailing Halls
    AddA(tmp[256], a[11789]); -- Chamber of the Avatar
    AddA(tmp[256], a[11790]); -- Deceiver's Fall
    AddA(tmp[256], a[11874]); -- Ahead of the Curve: Kil'jaeden
    AddA(tmp[256], a[11875]); -- Cutting Edge: Kil'jaeden
    AddA(tmp[256], a[11760]); -- Retro Trend
    tmp[257] = IaR(c, cat:New((EJ_GetInstanceInfo(946)))); -- Antorus, the Burning Throne
    AddC(tmp[239], tmp[257]);
    AddA(tmp[257], a[11930]); -- Worm-monger
    AddA(tmp[257], a[12065]); -- Hounds Good To Me
    AddA(tmp[257], a[12129]); -- This is the War Room!
    AddA(tmp[257], a[11928]); -- Portal Combat
    AddA(tmp[257], a[12067]); -- Spheres of Influence
    AddA(tmp[257], a[11949]); -- Hard to Kill
    AddA(tmp[257], a[12030]); -- The World Revolves Around Me
    AddA(tmp[257], a[11948]); -- Together We Stand
    AddA(tmp[257], a[12046]); -- Remember the Titans
    AddA(tmp[257], a[11915]); -- Don't Sweat the Technique
    AddA(tmp[257], a[12257]); -- Stardust Crusaders
    AddA(tmp[257], a[11992]); -- Mythic: Garothi Worldbreaker
    AddA(tmp[257], a[11993]); -- Mythic: Hounds of Sargeras
    AddA(tmp[257], a[11994]); -- Mythic: Antoran High Command
    AddA(tmp[257], a[11995]); -- Mythic: Portal Keeper Hasabel
    AddA(tmp[257], a[11996]); -- Mythic: Eonar
    AddA(tmp[257], a[11997]); -- Mythic: Imonar the Soulhunter
    AddA(tmp[257], a[11998]); -- Mythic: Kin'garoth
    AddA(tmp[257], a[11999]); -- Mythic: Varimathras
    AddA(tmp[257], a[12000]); -- Mythic: The Coven of Shivarra
    AddA(tmp[257], a[12001]); -- Mythic: Aggramar
    AddA(tmp[257], a[12002]); -- Mythic: Argus the Unmaker
    AddA(tmp[257], a[11988]); -- Light's Breach
    AddA(tmp[257], a[11990]); -- Hope's End
    AddA(tmp[257], a[11989]); -- Forbidden Descent
    AddA(tmp[257], a[11991]); -- Seat of the Pantheon
    AddA(tmp[257], a[12110]); -- Ahead of the Curve: Argus the Unmaker
    AddA(tmp[257], a[12111]); -- Cutting Edge: Argus the Unmaker
    AddA(tmp[257], a[12020]); -- Argussy Up
    tmp[430] = IaR(c, cat:New((GetCategoryInfo(15117)))); -- Pet Battles
    AddC(tmp[237], tmp[430]);
    AddA(tmp[430], a[11233]); -- Broken Isles Safari
    AddA(tmp[430], a[10876]); -- Battle on the Broken Isles
    AddA(tmp[430], a[9686]); -- Aquatic Acquiescence
    AddA(tmp[430], a[9687]); -- Best of the Beasts
    AddA(tmp[430], a[9688]); -- Mousing Around
    AddA(tmp[430], a[9689]); -- Dragons!
    AddA(tmp[430], a[9690]); -- "Ragnaros, Watch and Learn"
    AddA(tmp[430], a[9691]); -- Flock Together
    AddA(tmp[430], a[9692]); -- "Murlocs, Harpies, and Wolvar, Oh My!"
    AddA(tmp[430], a[9693]); -- Master of Magic
    AddA(tmp[430], a[9694]); -- Roboteer
    AddA(tmp[430], a[9695]); -- The Lil' Necromancer
    AddA(tmp[430], a[9696]); -- Family Familiar
    AddA(tmp[430], a[12088]); -- Anomalous Animals of Argus
    AddA(tmp[430], a[12089]); -- Aquatic Assault
    AddA(tmp[430], a[12091]); -- Beast Blitz
    AddA(tmp[430], a[12092]); -- Critical Critters
    AddA(tmp[430], a[12093]); -- Draconic Destruction
    AddA(tmp[430], a[12094]); -- Elemental Escalation
    AddA(tmp[430], a[12095]); -- Fierce Fliers
    AddA(tmp[430], a[12096]); -- Humanoid Havoc
    AddA(tmp[430], a[12097]); -- Magical Mayhem
    AddA(tmp[430], a[12098]); -- Mechanical Melee
    AddA(tmp[430], a[12099]); -- Unstoppable Undead
    AddA(tmp[430], a[12100]); -- Family Fighter
    tmp[792] = IaR(c, cat:New((GetCategoryInfo(15282)) .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Brawler's Guild
    AddC(tmp[237], tmp[792]);
    AddA(tmp[792], a[11560]); -- You Are Not Your $#*@! Legplates (Season 3)
    AddA(tmp[792], a[11561]); -- You Are Not Your $#*@! Legplates (Season 3)
    AddA(tmp[792], a[11563]); -- The Second Rule of Brawler's Guild (Season 3)
    AddA(tmp[792], a[11564]); -- The Second Rule of Brawler's Guild (Season 3)
    AddA(tmp[792], a[11565]); -- King of the Guild (Season 3)
    AddA(tmp[792], a[11566]); -- King of the Guild (Season 3)
    AddA(tmp[792], a[11572]); -- I Am Thrall's Complete Lack Of Surprise (Season 3)
    tmp[429] = IaR(c, cat:New(addon.L["Class Hall"])); -- Class Hall
    AddC(tmp[237], tmp[429]);
    AddA(tmp[429], a[10994]); -- A Glorious Campaign
    AddA(tmp[429], a[11135]); -- A Heroic Campaign
    AddA(tmp[429], a[11136]); -- An Epic Campaign
    AddA(tmp[429], a[10706]); -- Training the Troops
    AddA(tmp[429], a[11212]); -- Raise an Army
    AddA(tmp[429], a[11213]); -- Lead a Legion
    AddA(tmp[429], a[11214]); -- Many Missions
    AddA(tmp[429], a[11215]); -- Quite a Few Missions
    AddA(tmp[429], a[11216]); -- So Many Missions
    AddA(tmp[429], a[11217]); -- "Many Many Missions, Handle It!"
    AddA(tmp[429], a[11219]); -- Need Backup
    AddA(tmp[429], a[11220]); -- Roster of Champions
    AddA(tmp[429], a[11221]); -- Champions Rise
    AddA(tmp[429], a[11222]); -- Champions of Power
    AddA(tmp[429], a[11223]); -- Legendary Research
    AddA(tmp[429], a[11298]); -- A Classy Outfit
    AddA(tmp[429], a[10746]); -- Forged for Battle
    AddA(tmp[429], a[10459]); -- Improving on History
    AddA(tmp[429], a[10743]); -- The Prestige
    AddA(tmp[429], a[10745]); -- The Prestige
    AddA(tmp[429], a[10460]); -- Hidden Potential
    AddA(tmp[429], a[10461]); -- Fighting with Style: Classic
    AddA(tmp[429], a[10747]); -- Fighting with Style: Upgraded
    AddA(tmp[429], a[10748]); -- Fighting with Style: Valorous
    AddA(tmp[429], a[11173]); -- Fighting with Style: War-torn
    AddA(tmp[429], a[10749]); -- Fighting with Style: War-torn
    AddA(tmp[429], a[10750]); -- Fighting with Style: Hidden
    AddA(tmp[429], a[11171]); -- Arsenal of Power
    AddA(tmp[429], a[11137]); -- A Legendary Campaign
    AddA(tmp[429], a[11611]); -- A Challenging Look
    AddA(tmp[429], a[11612]); -- Fighting with Style: Challenging
    AddA(tmp[429], a[11144]); -- Power Realized
    AddA(tmp[429], a[11772]); -- Power Ascended
    AddA(tmp[429], a[11609]); -- Power Unbound
    AddA(tmp[429], a[11610]); -- Power Unleashed
    AddA(tmp[429], a[10852]); -- Artifact or Artifiction
    AddA(tmp[429], a[10853]); -- Part of History
    AddA(tmp[429], a[12071]); -- Crucible's Promise
    AddA(tmp[429], a[12072]); -- Now You're Cooking with Netherlight
    AddA(tmp[429], a[11218]); -- There's a Boss In There
    tmp[258] = IaR(c, cat:New((GetCategoryInfo(15305)))); -- Battle for Azeroth
    tmp[259] = IaR(c, cat:New(addon.L["Zones"])); -- Zones
    AddC(tmp[258], tmp[259]);
    tmp[271] = IaR(c, cat:New(C_Map.GetMapInfo(876).name .. " & " .. C_Map.GetMapInfo(875).name)); -- Kul Tiras & Zandalar
    AddC(tmp[259], tmp[271]);
    AddA(tmp[271], a[14183]); -- Conspicuous Consumption
    AddA(tmp[271], a[12587]); -- Unbound Monstrosities
    tmp[272] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[271], tmp[272]);
    AddA(tmp[272], a[12582]); -- Come Sail Away
    AddA(tmp[272], a[12997]); -- The Pride of Kul Tiras
    AddA(tmp[272], a[12593]); -- Loremaster of Kul Tiras
    AddA(tmp[272], a[12891]); -- A Nation United
    AddA(tmp[272], a[12555]); -- Welcome to Zandalar
    AddA(tmp[272], a[12479]); -- Zandalar Forever!
    AddA(tmp[272], a[13294]); -- Loremaster of Zandalar
    AddA(tmp[272], a[13512]); -- Master Calligrapher
    AddA(tmp[272], a[13384]); -- Kul Tirans Don't Look at Explosions
    AddA(tmp[272], a[12510]); -- Ready for War
    AddA(tmp[272], a[13467]); -- Tides of Vengeance
    AddA(tmp[272], a[13925]); -- The Fourth War
    AddA(tmp[272], a[12509]); -- Ready for War
    AddA(tmp[272], a[13466]); -- Tides of Vengeance
    AddA(tmp[272], a[13924]); -- The Fourth War
    AddA(tmp[272], a[13517]); -- Two Sides to Every Tale
    AddA(tmp[272], a[13283]); -- Frontline Warrior
    AddA(tmp[272], a[13251]); -- In Teldrassil's Shadow
    AddA(tmp[272], a[13284]); -- Frontline Warrior
    AddA(tmp[272], a[13144]); -- Wide World of Quests
    AddA(tmp[272], a[13263]); -- The Shadow Hunter
    AddA(tmp[272], a[14157]); -- The Corruptor's End
    tmp[273] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[271], tmp[273]);
    AddA(tmp[273], a[12989]); -- "Battle for Azeroth Pathfinder, Part One"
    AddA(tmp[273], a[13250]); -- "Battle for Azeroth Pathfinder, Part Two"
    AddA(tmp[273], a[13061]); -- Three Sheets to the Wind
    AddA(tmp[273], a[12482]); -- Get Hek'd
    AddA(tmp[273], a[13036]); -- A Loa of a Tale
    AddA(tmp[273], a[13029]); -- Eating Out of the Palm of My Tiny Hand
    AddA(tmp[273], a[13027]); -- Mushroom Harvest
    AddA(tmp[273], a[14730]); -- To All the Squirrels I Set Sail to See
    AddA(tmp[273], a[12988]); -- Battle for Azeroth Explorer
    tmp[274] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[271], tmp[274]);
    AddA(tmp[274], a[13429]); -- Azerfighter
    AddA(tmp[274], a[13317]); -- Supplied and Ready
    AddA(tmp[274], a[12572]); -- War Supplied
    AddA(tmp[274], a[12571]); -- Bounty Hunting
    AddA(tmp[274], a[12573]); -- Band of Brothers
    AddA(tmp[274], a[12605]); -- Conqueror of Azeroth
    AddA(tmp[274], a[12604]); -- Conqueror of Azeroth
    tmp[275] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[271], tmp[275]);
    AddA(tmp[275], a[12947]); -- Azerothian Diplomat
    AddA(tmp[275], a[12955]); -- Champions of Azeroth
    AddA(tmp[275], a[12956]); -- Tortollan Seekers
    tmp[276] = IaR(c, cat:New(C_Map.GetMapInfo(895).name)); -- Tiragarde Sound
    AddC(tmp[259], tmp[276]);
    tmp[281] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[276], tmp[281]);
    AddA(tmp[281], a[12473]); -- A Sound Plan
    AddA(tmp[281], a[13060]); -- Kul Runnings
    AddA(tmp[281], a[13059]); -- Drag Race
    AddA(tmp[281], a[13050]); -- Bless the Rains Down in Freehold
    AddA(tmp[281], a[13049]); -- The Long Con
    AddA(tmp[281], a[12087]); -- The Reining Champion
    AddA(tmp[281], a[13285]); -- Upright Citizens
    tmp[278] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[276], tmp[278]);
    AddA(tmp[278], a[12556]); -- Explore Tiragarde Sound
    AddA(tmp[278], a[12939]); -- Adventurer of Tiragarde Sound
    AddA(tmp[278], a[12852]); -- Treasures of Tiragarde Sound
    AddA(tmp[278], a[13057]); -- Shanty Raid
    AddA(tmp[278], a[13058]); -- Kul Tiran Up the Dance Floor
    tmp[279] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[276], tmp[279]);
    AddA(tmp[279], a[12577]); -- Tour of Duty: Tiragarde Sound
    tmp[280] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[276], tmp[280]);
    AddA(tmp[280], a[12951]); -- Proudmoore Admiralty
    AddA(tmp[280], a[12954]); -- Champion of the 7th Legion
    tmp[282] = IaR(c, cat:New(C_Map.GetMapInfo(896).name)); -- Drustvar
    AddC(tmp[259], tmp[282]);
    tmp[283] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[282], tmp[283]);
    AddA(tmp[283], a[12497]); -- Drust Do It.
    AddA(tmp[283], a[13435]); -- Doomsoul Surprise
    tmp[284] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[282], tmp[284]);
    AddA(tmp[284], a[12557]); -- Explore Drustvar
    AddA(tmp[284], a[12941]); -- Adventurer of Drustvar
    AddA(tmp[284], a[12995]); -- Treasures of Drustvar
    AddA(tmp[284], a[13087]); -- Sausage Sampler
    AddA(tmp[284], a[13083]); -- "Better, Faster, Stronger"
    AddA(tmp[284], a[13082]); -- Everything Old Is New Again
    AddA(tmp[284], a[13064]); -- "Drust the Facts, Ma'am"
    AddA(tmp[284], a[13094]); -- Cursed Game Hunter
    tmp[285] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[282], tmp[285]);
    AddA(tmp[285], a[12579]); -- Tour of Duty: Drustvar
    tmp[286] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[282], tmp[286]);
    AddA(tmp[286], a[12952]); -- Order of Embers
    tmp[287] = IaR(c, cat:New(C_Map.GetMapInfo(942).name)); -- Stormsong Valley
    AddC(tmp[259], tmp[287]);
    tmp[288] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[287], tmp[288]);
    AddA(tmp[288], a[12496]); -- Stormsong and Dance
    AddA(tmp[288], a[13054]); -- Sabertron Assemble
    AddA(tmp[288], a[13053]); -- Deadliest Cache
    AddA(tmp[288], a[13047]); -- Clever Use of Mechanical Explosives
    AddA(tmp[288], a[13046]); -- These Hills Sing
    AddA(tmp[288], a[13045]); -- Every Day I'm Truffling
    AddA(tmp[288], a[13042]); -- About To Break
    AddA(tmp[288], a[13062]); -- Let's Bee Friends
    tmp[289] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[287], tmp[289]);
    AddA(tmp[289], a[12558]); -- Explore Stormsong Valley
    AddA(tmp[289], a[12940]); -- Adventurer of Stormsong Valley
    AddA(tmp[289], a[12853]); -- Treasures of Stormsong Valley
    AddA(tmp[289], a[13051]); -- Legends of the Tidesages
    tmp[290] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[287], tmp[290]);
    AddA(tmp[290], a[12578]); -- Tour of Duty: Stormsong Valley
    tmp[291] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[287], tmp[291]);
    AddA(tmp[291], a[12953]); -- Storm's Wake
    tmp[292] = IaR(c, cat:New(C_Map.GetMapInfo(862).name)); -- Zuldazar
    AddC(tmp[259], tmp[292]);
    tmp[293] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[292], tmp[293]);
    AddA(tmp[293], a[13440]); -- Pushing the Payload
    AddA(tmp[293], a[11861]); -- The Throne of Zuldazar
    AddA(tmp[293], a[12480]); -- A Bargain of Blood
    AddA(tmp[293], a[12481]); -- The Final Seal
    AddA(tmp[293], a[13441]); -- Pushing the Payload
    AddA(tmp[293], a[13039]); -- Paku'ai
    AddA(tmp[293], a[13048]); -- Life Finds a Way... To Die!
    AddA(tmp[293], a[13038]); -- Raptari Rider
    AddA(tmp[293], a[13037]); -- Torcanata
    AddA(tmp[293], a[12719]); -- Spirits Be With You
    AddA(tmp[293], a[13020]); -- Bow to Your Masters
    AddA(tmp[293], a[12614]); -- Loa Expectations
    AddA(tmp[293], a[13030]); -- How to Ptrain Your Pterrordax
    AddA(tmp[293], a[13573]); -- How to Ptrain Your Pterrordax
    AddA(tmp[293], a[13542]); -- How to Train Your Direhorn
    AddA(tmp[293], a[13035]); -- By de Power of de Loa!
    tmp[294] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[292], tmp[294]);
    AddA(tmp[294], a[12559]); -- Explore Zuldazar
    AddA(tmp[294], a[12944]); -- Adventurer of Zuldazar
    AddA(tmp[294], a[12851]); -- Treasures of Zuldazar
    tmp[295] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[292], tmp[295]);
    AddA(tmp[295], a[12575]); -- Tour of Duty: Zuldazar
    AddA(tmp[295], a[13439]); -- Boxing Match
    AddA(tmp[295], a[13438]); -- Boxing Match
    tmp[296] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[292], tmp[296]);
    AddA(tmp[296], a[12950]); -- Zandalari Empire
    AddA(tmp[296], a[12957]); -- Champion of the Honorbound
    tmp[297] = IaR(c, cat:New(C_Map.GetMapInfo(863).name)); -- Nazmir
    AddC(tmp[259], tmp[297]);
    tmp[298] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[297], tmp[298]);
    AddA(tmp[298], a[13426]); -- Come On and Slam
    AddA(tmp[298], a[13026]); -- 7th Legion Spycatcher
    AddA(tmp[298], a[11868]); -- The Dark Heart of Nazmir
    AddA(tmp[298], a[13048]); -- Life Finds a Way... To Die!
    AddA(tmp[298], a[13025]); -- Zandalari Spycatcher
    AddA(tmp[298], a[13023]); -- It's Really Getting Out of Hand
    AddA(tmp[298], a[13022]); -- Revenge is Best Served Speedily
    AddA(tmp[298], a[13021]); -- A Most Efficient Apocalypse
    tmp[299] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[297], tmp[299]);
    AddA(tmp[299], a[12561]); -- Explore Nazmir
    AddA(tmp[299], a[12942]); -- Adventurer of Nazmir
    AddA(tmp[299], a[12771]); -- Treasures of Nazmir
    AddA(tmp[299], a[12588]); -- Eat Your Greens
    AddA(tmp[299], a[13024]); -- "Carved in Stone, Written in Blood"
    AddA(tmp[299], a[13028]); -- Hoppin' Sad
    tmp[300] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[297], tmp[300]);
    AddA(tmp[300], a[12574]); -- Tour of Duty: Nazmir
    tmp[301] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[297], tmp[301]);
    AddA(tmp[301], a[12948]); -- Talanji's Expedition
    tmp[302] = IaR(c, cat:New(C_Map.GetMapInfo(864).name)); -- Vol'dun
    AddC(tmp[259], tmp[302]);
    tmp[303] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[302], tmp[303]);
    AddA(tmp[303], a[12478]); -- Secrets in the Sands
    AddA(tmp[303], a[13437]); -- Scavenge like a Vulpera
    AddA(tmp[303], a[13009]); -- Adept Sandfisher
    AddA(tmp[303], a[13011]); -- Scourge of Zem'lan
    AddA(tmp[303], a[13014]); -- Vorrik's Champion
    AddA(tmp[303], a[13041]); -- "Hungry, Hungry Ranishu"
    AddA(tmp[303], a[13017]); -- Champion of the Vulpera
    tmp[304] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[302], tmp[304]);
    AddA(tmp[304], a[12560]); -- Explore Vol'dun
    AddA(tmp[304], a[12943]); -- Adventurer of Vol'dun
    AddA(tmp[304], a[12849]); -- Treasures of Vol'dun
    AddA(tmp[304], a[13016]); -- Scavenger of the Sands
    AddA(tmp[304], a[13018]); -- Dune Rider
    tmp[305] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[302], tmp[305]);
    AddA(tmp[305], a[12576]); -- Tour of Duty: Vol'dun
    tmp[306] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[302], tmp[306]);
    AddA(tmp[306], a[12949]); -- The Voldunai
    tmp[307] = IaR(c, cat:New(C_Map.GetMapInfo(1462).name)); -- Mechagon Island
    AddC(tmp[259], tmp[307]);
    AddA(tmp[307], a[13708]); -- Most Minis Wins
    AddA(tmp[307], a[13513]); -- Available in Eight Colors
    tmp[308] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[307], tmp[308]);
    AddA(tmp[308], a[13553]); -- The Mechagonian Threat
    AddA(tmp[308], a[13700]); -- The Mechagonian Threat
    AddA(tmp[308], a[13790]); -- Armed for Action
    AddA(tmp[308], a[13791]); -- Making the Mount
    tmp[309] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[307], tmp[309]);
    AddA(tmp[309], a[13776]); -- Explore Mechagon
    AddA(tmp[309], a[13470]); -- Rest In Pistons
    AddA(tmp[309], a[13472]); -- Deep Pockets
    AddA(tmp[309], a[13482]); -- Head Financier of Mechagon
    AddA(tmp[309], a[13473]); -- Diversified Investments
    AddA(tmp[309], a[13474]); -- Junkyard Machinist
    AddA(tmp[309], a[13696]); -- Scrappy's Best Friend
    AddA(tmp[309], a[13686]); -- Junkyard Melomaniac
    AddA(tmp[309], a[13475]); -- Junkyard Scavenger
    AddA(tmp[309], a[13477]); -- Junkyard Apprentice
    AddA(tmp[309], a[13476]); -- Junkyard Tinkerer
    AddA(tmp[309], a[13555]); -- Junkyard Tinkmaster
    AddA(tmp[309], a[13478]); -- Junkyard Collector
    AddA(tmp[309], a[13479]); -- Junkyard Architect
    AddA(tmp[309], a[13556]); -- Outside Influences
    AddA(tmp[309], a[13541]); -- Mecha-Done
    tmp[310] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[307], tmp[310]);
    AddA(tmp[310], a[13570]); -- Tour of Duty: Mechagon
    tmp[311] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[307], tmp[311]);
    AddA(tmp[311], a[13557]); -- Rustbolt Rebellion
    tmp[312] = IaR(c, cat:New(C_Map.GetMapInfo(1355).name)); -- Nazjatar
    AddC(tmp[259], tmp[312]);
    tmp[313] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[312], tmp[313]);
    AddA(tmp[313], a[13710]); -- Sunken Ambitions
    AddA(tmp[313], a[13709]); -- Unfathomable
    tmp[314] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[312], tmp[314]);
    AddA(tmp[314], a[13712]); -- Explore Nazjatar
    AddA(tmp[314], a[13635]); -- Tour of the Depths
    AddA(tmp[314], a[13690]); -- Nazjatarget Eliminated
    AddA(tmp[314], a[13691]); -- I Thought You Said They'd Be Rare?
    AddA(tmp[314], a[13692]); -- Give Me the Biggest Bag You've Got
    AddA(tmp[314], a[13743]); -- Seasoned: Hunter Akana
    AddA(tmp[314], a[13753]); -- Veteran: Hunter Akana
    AddA(tmp[314], a[13758]); -- Battle-Scarred: Hunter Akana
    AddA(tmp[314], a[13744]); -- Seasoned: Bladesman Inowari
    AddA(tmp[314], a[13754]); -- Veteran: Bladesman Inowari
    AddA(tmp[314], a[13759]); -- Battle-Scarred: Bladesman Inowari
    AddA(tmp[314], a[13745]); -- Seasoned: Farseer Ori
    AddA(tmp[314], a[13755]); -- Veteran: Farseer Ori
    AddA(tmp[314], a[13760]); -- Battle-Scarred: Farseer Ori
    AddA(tmp[314], a[13704]); -- Nautical Battlefield Training
    AddA(tmp[314], a[13762]); -- Aqua Team Murder Force
    AddA(tmp[314], a[13746]); -- Seasoned: Neri Sharpfin
    AddA(tmp[314], a[13749]); -- Veteran: Neri Sharpfin
    AddA(tmp[314], a[13750]); -- Battle-Scarred: Neri Sharpfin
    AddA(tmp[314], a[13747]); -- Seasoned: Poen Gillbrack
    AddA(tmp[314], a[13751]); -- Veteran: Poen Gillbrack
    AddA(tmp[314], a[13756]); -- Battle-Scarred: Poen Gillbrack
    AddA(tmp[314], a[13748]); -- Seasoned: Vim Brineheart
    AddA(tmp[314], a[13752]); -- Veteran: Vim Brineheart
    AddA(tmp[314], a[13757]); -- Battle-Scarred: Vim Brineheart
    AddA(tmp[314], a[13645]); -- Nautical Battlefield Training
    AddA(tmp[314], a[13761]); -- Aqua Team Murder Force
    AddA(tmp[314], a[13711]); -- A Fistful of Manapearls
    AddA(tmp[314], a[13765]); -- Subaquatic Support
    AddA(tmp[314], a[13549]); -- Trove Tracker
    AddA(tmp[314], a[13722]); -- Terror of the Tadpoles
    AddA(tmp[314], a[13699]); -- Periodic Destruction
    AddA(tmp[314], a[13713]); -- Nothing To Scry About
    AddA(tmp[314], a[13707]); -- Mrrl's Secret Stash
    AddA(tmp[314], a[13763]); -- Back to the Depths!
    AddA(tmp[314], a[13764]); -- Puzzle Performer
    AddA(tmp[314], a[13836]); -- Feline Figurines Found
    AddA(tmp[314], a[13638]); -- Undersea Usurper
    tmp[315] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[312], tmp[315]);
    AddA(tmp[315], a[13569]); -- Tour of Duty: Nazjatar
    AddA(tmp[315], a[13568]); -- For Nazjatar!
    AddA(tmp[315], a[13720]); -- Supplying the Assassins
    tmp[316] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[312], tmp[316]);
    AddA(tmp[316], a[13558]); -- Waveblade Ankoan
    AddA(tmp[316], a[13559]); -- The Unshackled
    tmp[317] = IaR(c, cat:New(C_Map.GetMapInfo(1530).name)); -- Vale of Eternal Blossoms
    AddC(tmp[259], tmp[317]);
    tmp[318] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[317], tmp[318]);
    AddA(tmp[318], a[14154]); -- Defend the Vale
    AddA(tmp[318], a[14161]); -- All Consuming
    tmp[447] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[317], tmp[447]);
    AddA(tmp[447], a[14160]); -- Rare to Well Done
    AddA(tmp[447], a[14159]); -- Combating the Corruption
    AddA(tmp[447], a[14158]); -- It's Not A Tumor!
    tmp[321] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[317], tmp[321]);
    AddA(tmp[321], a[14156]); -- The Rajani
    tmp[322] = IaR(c, cat:New(C_Map.GetMapInfo(1527).name)); -- Uldum
    AddC(tmp[259], tmp[322]);
    tmp[323] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[322], tmp[323]);
    AddA(tmp[323], a[14153]); -- Uldum Under Assault
    AddA(tmp[323], a[14161]); -- All Consuming
    tmp[448] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[322], tmp[448]);
    AddA(tmp[448], a[14160]); -- Rare to Well Done
    AddA(tmp[448], a[14159]); -- Combating the Corruption
    AddA(tmp[448], a[14158]); -- It's Not A Tumor!
    tmp[324] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[322], tmp[324]);
    AddA(tmp[324], a[14155]); -- Uldum Accord
    tmp[325] = IaR(c, cat:New((GetCategoryInfo(15272)))); -- Dungeons
    AddC(tmp[258], tmp[325]);
    AddA(tmp[325], a[12807]); -- Battle for Azeroth Dungeon Hero
    AddA(tmp[325], a[12812]); -- Glory of the Wartorn Hero
    AddA(tmp[325], a[13075]); -- Battle for Azeroth Keymaster
    AddA(tmp[325], a[13079]); -- Battle for Azeroth Keystone Conqueror: Season One
    AddA(tmp[325], a[13080]); -- Battle for Azeroth Keystone Master: Season One
    AddA(tmp[325], a[13448]); -- Battle for Azeroth Keystone Conqueror: Season Two
    AddA(tmp[325], a[13449]); -- Battle for Azeroth Keystone Master: Season Two
    AddA(tmp[325], a[13780]); -- Battle for Azeroth Keystone Conqueror: Season Three
    AddA(tmp[325], a[13781]); -- Battle for Azeroth Keystone Master: Season Three
    AddA(tmp[325], a[14144]); -- Battle for Azeroth Keystone Conqueror: Season Four
    AddA(tmp[325], a[14145]); -- Battle for Azeroth Keystone Master: Season Four
    tmp[327] = IaR(c, cat:New((EJ_GetInstanceInfo(1001)))); -- Freelhold
    AddC(tmp[325], tmp[327]);
    AddA(tmp[327], a[12550]); -- Pecking Order
    AddA(tmp[327], a[12548]); -- I'm in Charge Now!
    AddA(tmp[327], a[12998]); -- That Sweete Booty
    AddA(tmp[327], a[12831]); -- Freehold
    AddA(tmp[327], a[12832]); -- Heroic: Freehold
    AddA(tmp[327], a[12833]); -- Mythic: Freehold
    tmp[328] = IaR(c, cat:New((EJ_GetInstanceInfo(1021)))); -- Waycrest Manor
    AddC(tmp[325], tmp[328]);
    AddA(tmp[328], a[12495]); -- Run Wild Like a Man On Fire
    AddA(tmp[328], a[12490]); -- Alchemical Romance
    AddA(tmp[328], a[12489]); -- Losing My Profession
    AddA(tmp[328], a[12483]); -- Waycrest Manor
    AddA(tmp[328], a[12484]); -- Heroic: Waycrest Manor
    AddA(tmp[328], a[12488]); -- Mythic: Waycrest Manor
    tmp[329] = IaR(c, cat:New((EJ_GetInstanceInfo(1036)))); -- Shrine of the Storm
    AddC(tmp[325], tmp[329]);
    AddA(tmp[329], a[12600]); -- Breath of the Shrine
    AddA(tmp[329], a[12601]); -- The Void Lies Sleeping
    AddA(tmp[329], a[12602]); -- Trust No One
    AddA(tmp[329], a[12835]); -- Shrine of the Storm
    AddA(tmp[329], a[12837]); -- Heroic: Shrine of the Storm
    AddA(tmp[329], a[12838]); -- Mythic: Shrine of the Storm
    tmp[330] = IaR(c, cat:New((EJ_GetInstanceInfo(968)))); -- Atal'Dazar
    AddC(tmp[325], tmp[330]);
    AddA(tmp[330], a[12270]); -- Bringing Hexy Back
    AddA(tmp[330], a[12272]); -- Gold Fever
    AddA(tmp[330], a[12273]); -- It's Lit!
    AddA(tmp[330], a[12824]); -- Atal'Dazar
    AddA(tmp[330], a[12825]); -- Heroic: Atal'Dazar
    AddA(tmp[330], a[12826]); -- Mythic: Atal'Dazar
    tmp[331] = IaR(c, cat:New((EJ_GetInstanceInfo(1022)))); -- The Underrot
    AddC(tmp[325], tmp[331]);
    AddA(tmp[331], a[12498]); -- Taint Nobody Got Time For That
    AddA(tmp[331], a[12549]); -- Not a Fun Guy
    AddA(tmp[331], a[12499]); -- Sporely Alive
    AddA(tmp[331], a[12500]); -- Underrot
    AddA(tmp[331], a[12501]); -- Heroic: Underrot
    AddA(tmp[331], a[12502]); -- Mythic: Underrot
    tmp[332] = IaR(c, cat:New((EJ_GetInstanceInfo(1030)))); -- Temple of Sethraliss
    AddC(tmp[325], tmp[332]);
    AddA(tmp[332], a[12507]); -- Snake Eater
    AddA(tmp[332], a[12503]); -- Snake Eyes
    AddA(tmp[332], a[12508]); -- "Good Night, Sweet Prince"
    AddA(tmp[332], a[12504]); -- The Temple of Sethraliss
    AddA(tmp[332], a[12505]); -- Heroic: The Temple of Sethraliss
    AddA(tmp[332], a[12506]); -- Mythic: The Temple of Sethraliss
    tmp[333] = IaR(c, cat:New((EJ_GetInstanceInfo(1002)))); -- Tol Dagor
    AddC(tmp[325], tmp[333]);
    AddA(tmp[333], a[12457]); -- Remix to Ignition
    AddA(tmp[333], a[12462]); -- Shot Through the Heart
    AddA(tmp[333], a[12840]); -- Tol Dagor
    AddA(tmp[333], a[12841]); -- Heroic: Tol Dagor
    AddA(tmp[333], a[12842]); -- Mythic: Tol Dagor
    tmp[334] = IaR(c, cat:New((EJ_GetInstanceInfo(1012)))); -- The MOTHERLODE!!
    AddC(tmp[325], tmp[334]);
    AddA(tmp[334], a[12855]); -- Pitch Invasion
    AddA(tmp[334], a[12854]); -- Ready for Raiding VI
    AddA(tmp[334], a[12844]); -- The MOTHERLODE!!
    AddA(tmp[334], a[12845]); -- Heroic: The MOTHERLODE!!
    AddA(tmp[334], a[12846]); -- Mythic: The MOTHERLODE!!
    tmp[335] = IaR(c, cat:New((EJ_GetInstanceInfo(1023)))); -- Siege of Boralus
    AddC(tmp[325], tmp[335]);
    AddA(tmp[335], a[12727]); -- Stand by Me
    AddA(tmp[335], a[12726]); -- A Fish Out of Water
    AddA(tmp[335], a[12489]); -- Losing My Profession
    AddA(tmp[335], a[12847]); -- Siege of Boralus
    tmp[336] = IaR(c, cat:New((EJ_GetInstanceInfo(1041)))); -- Kings' Rest
    AddC(tmp[325], tmp[336]);
    AddA(tmp[336], a[12722]); -- It Belongs in a Mausoleum!
    AddA(tmp[336], a[12721]); -- Wrap God
    AddA(tmp[336], a[12723]); -- How to Keep a Mummy
    AddA(tmp[336], a[12848]); -- Kings' Rest
    tmp[337] = IaR(c, cat:New((EJ_GetInstanceInfo(1178)))); -- Operation: Mechagon
    AddC(tmp[325], tmp[337]);
    AddA(tmp[337], a[13706]); -- Stay Positive
    AddA(tmp[337], a[13698]); -- Clean Up On Aisle Mechagon
    AddA(tmp[337], a[13723]); -- "M.C., Hammered"
    AddA(tmp[337], a[13545]); -- "Go Ahead, Make My Daisy"
    AddA(tmp[337], a[13624]); -- Keep DPS-ing and Nobody Explodes
    AddA(tmp[337], a[13789]); -- Hertz Locker
    tmp[326] = IaR(c, cat:New((GetCategoryInfo(15271)))); -- Raids
    AddC(tmp[258], tmp[326]);
    AddA(tmp[326], a[12806]); -- Glory of the Uldir Raider
    AddA(tmp[326], a[13315]); -- Glory of the Dazar'alor Raider
    AddA(tmp[326], a[13687]); -- Glory of the Eternal Raider
    AddA(tmp[326], a[14146]); -- Glory of the Ny'alotha Raider
    tmp[338] = IaR(c, cat:New((EJ_GetInstanceInfo(1031)))); -- Uldir
    AddC(tmp[326], tmp[338]);
    AddA(tmp[338], a[12937]); -- Elevator Music
    AddA(tmp[338], a[12938]); -- Parental Controls
    AddA(tmp[338], a[12828]); -- What's in the Box?
    AddA(tmp[338], a[12823]); -- Thrash Mouth - All Stars
    AddA(tmp[338], a[12772]); -- Now We Got Bad Blood
    AddA(tmp[338], a[12830]); -- Edgelords
    AddA(tmp[338], a[12836]); -- Existential Crisis
    AddA(tmp[338], a[12551]); -- Double Dribble
    AddA(tmp[338], a[12521]); -- Halls of Containment
    AddA(tmp[338], a[12522]); -- Crimson Descent
    AddA(tmp[338], a[12523]); -- Heart of Corruption
    AddA(tmp[338], a[12524]); -- Mythic: Taloc
    AddA(tmp[338], a[12526]); -- Mythic: MOTHER
    AddA(tmp[338], a[12527]); -- Mythic: Zek'voz
    AddA(tmp[338], a[12530]); -- Mythic: Fetid Devourer
    AddA(tmp[338], a[12529]); -- Mythic: Vectis
    AddA(tmp[338], a[12531]); -- Mythic: Zul
    AddA(tmp[338], a[12532]); -- Mythic: Mythrax the Unraveler
    AddA(tmp[338], a[12533]); -- Mythic: G'huun
    AddA(tmp[338], a[12536]); -- Ahead of the Curve: G'huun
    AddA(tmp[338], a[12535]); -- Cutting Edge: G'huun
    AddA(tmp[338], a[12991]); -- "New Mog, G'huun This?"
    tmp[339] = IaR(c, cat:New((EJ_GetInstanceInfo(1176)))); -- Battle of Dazar'alor
    AddC(tmp[326], tmp[339]);
    AddA(tmp[339], a[13316]); -- Can I Get a Hek Hek Hek Yeah?
    AddA(tmp[339], a[13431]); -- Hidden Dragon
    AddA(tmp[339], a[13383]); -- Barrel of Monkeys
    AddA(tmp[339], a[13345]); -- Praise the Sunflower
    AddA(tmp[339], a[13325]); -- Walk the Dinosaur
    AddA(tmp[339], a[13425]); -- "We Got Spirit, How About You?"
    AddA(tmp[339], a[13401]); -- I Got Next!
    AddA(tmp[339], a[13430]); -- De Lurker Be'loa
    AddA(tmp[339], a[13410]); -- Snow Fun Allowed
    AddA(tmp[339], a[13286]); -- Siege of Dazar'alor
    AddA(tmp[339], a[13289]); -- Defense of Dazar'alor
    AddA(tmp[339], a[13287]); -- Empire's Fall
    AddA(tmp[339], a[13290]); -- Death's Bargain
    AddA(tmp[339], a[13288]); -- Might of the Alliance
    AddA(tmp[339], a[13291]); -- Victory or Death
    AddA(tmp[339], a[13292]); -- Mythic: Champion of the Light
    AddA(tmp[339], a[13298]); -- Mythic: Jadefire Masters
    AddA(tmp[339], a[13293]); -- Mythic: Grong
    AddA(tmp[339], a[13295]); -- Mythic: Jadefire Masters
    AddA(tmp[339], a[13299]); -- Mythic: Opulence
    AddA(tmp[339], a[13300]); -- Mythic: Conclave of the Chosen
    AddA(tmp[339], a[13311]); -- Mythic: King Rastakhan
    AddA(tmp[339], a[13312]); -- Mythic: Mekkatorque
    AddA(tmp[339], a[13313]); -- Mythic: Stormwall Blockade
    AddA(tmp[339], a[13314]); -- Mythic: Lady Jaina Proudmoore
    AddA(tmp[339], a[13322]); -- Ahead of the Curve: Lady Jaina Proudmoore
    AddA(tmp[339], a[13323]); -- Cutting Edge: Lady Jaina Proudmoore
    AddA(tmp[339], a[13385]); -- Daz'aling Attire
    tmp[340] = IaR(c, cat:New((EJ_GetInstanceInfo(1177)))); -- Crucible of Storms
    AddC(tmp[326], tmp[340]);
    AddA(tmp[340], a[13501]); -- Gotta Bounce
    AddA(tmp[340], a[13506]); -- A Good Eye-dea
    AddA(tmp[340], a[13414]); -- Crucible of Storms
    AddA(tmp[340], a[13416]); -- Mythic: The Restless Cabal
    AddA(tmp[340], a[13417]); -- "Mythic: Uu'nat, Harbinger of the Void"
    AddA(tmp[340], a[13418]); -- "Ahead of the Curve: Uu'nat, Harbinger of the Void"
    AddA(tmp[340], a[13419]); -- "Cutting Edge: Uu'nat, Harbinger of the Void"
    tmp[341] = IaR(c, cat:New((EJ_GetInstanceInfo(1179)))); -- The Eternal Palace
    AddC(tmp[326], tmp[341]);
    AddA(tmp[341], a[13684]); -- You and What Army?
    AddA(tmp[341], a[13628]); -- Intro to Marine Biology
    AddA(tmp[341], a[13767]); -- Fun Run
    AddA(tmp[341], a[13629]); -- Simple Geometry
    AddA(tmp[341], a[13724]); -- A Smack of Jellyfish
    AddA(tmp[341], a[13633]); -- If It Pleases the Court
    AddA(tmp[341], a[13716]); -- Lactose Intolerant
    AddA(tmp[341], a[13768]); -- The Best of Us
    AddA(tmp[341], a[13718]); -- The Grand Reception
    AddA(tmp[341], a[13719]); -- Depths of the Devoted
    AddA(tmp[341], a[13725]); -- The Circle of Stars
    AddA(tmp[341], a[13726]); -- Mythic: Abyssal Commander Sivara
    AddA(tmp[341], a[13728]); -- Mythic: Blackwater Behemoth
    AddA(tmp[341], a[13727]); -- Mythic: Radiance of Azshara
    AddA(tmp[341], a[13729]); -- Mythic: Lady Ashvane
    AddA(tmp[341], a[13730]); -- Mythic: Orgozoa
    AddA(tmp[341], a[13731]); -- Mythic: The Queen's Court
    AddA(tmp[341], a[13732]); -- Mythic: Za'qul
    AddA(tmp[341], a[13733]); -- Mythic: Queen Azshara
    AddA(tmp[341], a[13784]); -- Ahead of the Curve: Queen Azshara
    AddA(tmp[341], a[13785]); -- Cutting Edge: Queen Azshara
    AddA(tmp[341], a[13571]); -- Under the Seams
    tmp[342] = IaR(c, cat:New((EJ_GetInstanceInfo(1180)))); -- Ny'alotha, the Waking City
    AddC(tmp[326], tmp[342]);
    AddA(tmp[342], a[14019]); -- Smoke Test
    AddA(tmp[342], a[14008]); -- Mana Sponge
    AddA(tmp[342], a[14037]); -- Phase 3: Prophet
    AddA(tmp[342], a[14024]); -- Buzzer Beater
    AddA(tmp[342], a[14139]); -- Total Annihilation
    AddA(tmp[342], a[14023]); -- Realizing Your Potential
    AddA(tmp[342], a[13999]); -- How? Isn't it Obelisk?
    AddA(tmp[342], a[13990]); -- "You Can Pet the Dog, But..."
    AddA(tmp[342], a[14026]); -- Temper Tantrum
    AddA(tmp[342], a[14038]); -- Bloody Mess
    AddA(tmp[342], a[14147]); -- Cleansing Treatment
    AddA(tmp[342], a[14148]); -- It's Not A Cult
    AddA(tmp[342], a[14193]); -- Vision of Destiny
    AddA(tmp[342], a[14194]); -- Halls of Devotion
    AddA(tmp[342], a[14195]); -- Gift of Flesh
    AddA(tmp[342], a[14196]); -- The Waking Dream
    AddA(tmp[342], a[14041]); -- "Mythic: Wrathion, the Black Emperor"
    AddA(tmp[342], a[14043]); -- Mythic: Maut
    AddA(tmp[342], a[14044]); -- Mythic: The Prophet Skitra
    AddA(tmp[342], a[14045]); -- Mythic: Dark Inquisitor Xanesh
    AddA(tmp[342], a[14050]); -- Mythic: Vexiona
    AddA(tmp[342], a[14046]); -- Mythic: The Hivemind
    AddA(tmp[342], a[14051]); -- Mythic: Ra-den the Despoiled
    AddA(tmp[342], a[14048]); -- Mythic: Shad'har the Insatiable
    AddA(tmp[342], a[14049]); -- Mythic: Drest'agath
    AddA(tmp[342], a[14052]); -- "Mythic: Il'gynoth, Corruption Reborn"
    AddA(tmp[342], a[14054]); -- Mythic: Carapace of N'Zoth
    AddA(tmp[342], a[14055]); -- Mythic: N'Zoth the Corruptor
    AddA(tmp[342], a[14068]); -- Ahead of the Curve: N'Zoth the Corruptor
    AddA(tmp[342], a[14069]); -- Cutting Edge: N'Zoth the Corruptor
    AddA(tmp[342], a[14058]); -- All Eyes On Me
    tmp[343] = IaR(c, cat:New((GetCategoryInfo(15117)))); -- Pet Battles
    AddC(tmp[258], tmp[343]);
    AddA(tmp[343], a[12930]); -- Battle Safari
    AddA(tmp[343], a[13693]); -- Mecha-Safari
    AddA(tmp[343], a[13694]); -- Nazjatari Safari
    AddA(tmp[343], a[13715]); -- From The Belly Of The Jelly
    AddA(tmp[343], a[12936]); -- Battle on Zandalar and Kul Tiras
    AddA(tmp[343], a[13280]); -- Hobbyist Aquarist
    AddA(tmp[343], a[13270]); -- Beast Mode
    AddA(tmp[343], a[13271]); -- Critters With Huge Teeth
    AddA(tmp[343], a[13272]); -- Dragons Make Everything Better
    AddA(tmp[343], a[13273]); -- Element of Success
    AddA(tmp[343], a[13274]); -- Fun With Flying
    AddA(tmp[343], a[13281]); -- Human Resources
    AddA(tmp[343], a[13275]); -- Magician's Secrets
    AddA(tmp[343], a[13277]); -- Machine Learning
    AddA(tmp[343], a[13278]); -- Not Quite Dead Yet
    AddA(tmp[343], a[13279]); -- Family Battler
    AddA(tmp[343], a[13625]); -- Mighty Minions of Mechagon
    AddA(tmp[343], a[13626]); -- Nautical Nuisances of Nazjatar
    AddA(tmp[343], a[13695]); -- Team Aquashock
    tmp[793] = IaR(c, cat:New((GetCategoryInfo(15282)) .. " (" .. (GetCategoryInfo(15234)) .. ")")); -- Brawler's Guild
    AddC(tmp[258], tmp[793]);
    AddA(tmp[793], a[11558]); -- The First Rule of Brawler's Guild
    AddA(tmp[793], a[13186]); -- You Are Not Your $#*@! Legplates
    AddA(tmp[793], a[13189]); -- The Second Rule of Brawler's Guild
    AddA(tmp[793], a[13191]); -- Brawler for Azeroth
    AddA(tmp[793], a[11559]); -- The First Rule of Brawler's Guild
    AddA(tmp[793], a[13188]); -- You Are Not Your $#*@! Legplates
    AddA(tmp[793], a[13190]); -- The Second Rule of Brawler's Guild
    AddA(tmp[793], a[13192]); -- Brawler for Azeroth
    AddA(tmp[793], a[11567]); -- You Are Not The Contents Of Your Wallet
    AddA(tmp[793], a[11570]); -- Educated Guesser
    AddA(tmp[793], a[13194]); -- I Am Thrall's Complete Lack Of Surprise
    AddA(tmp[793], a[11573]); -- Rumble Club
    tmp[851] = IaR(c, cat:New(addon.L["Dueler's Guild"])); -- Dueler's Guild
    AddC(tmp[258], tmp[851]);
    AddA(tmp[851], a[12856]); -- The First Rule of Dueler's Guild
    AddA(tmp[851], a[12857]); -- Trial by Combat
    AddA(tmp[851], a[12858]); -- Slugfest
    AddA(tmp[851], a[12860]); -- Contender
    AddA(tmp[851], a[12863]); -- Dueling Master
    AddA(tmp[851], a[12859]); -- Prize Fighter
    AddA(tmp[851], a[12861]); -- Master of Duels
    AddA(tmp[851], a[12862]); -- Thirty Six and Two
    AddA(tmp[851], a[13387]); -- Frontline Veteran
    AddA(tmp[851], a[13388]); -- Frontline Veteran
    AddA(tmp[851], a[13402]); -- Frontline Slayer
    AddA(tmp[851], a[13403]); -- Frontline Slayer
    AddA(tmp[851], a[13623]); -- Fighting on Two Fronts
    tmp[425] = IaR(c, cat:New((GetCategoryInfo(15307)))); -- Island Expeditions
    AddC(tmp[258], tmp[425]);
    AddA(tmp[425], a[13142]); -- Archipelago Explorer
    AddA(tmp[425], a[13122]); -- Island Conqueror
    AddA(tmp[425], a[13141]); -- Island Slayer
    AddA(tmp[425], a[12596]); -- No Tourist
    AddA(tmp[425], a[12594]); -- Competent Captain
    AddA(tmp[425], a[12595]); -- Expert Expeditioner
    AddA(tmp[425], a[12597]); -- Bayside Brawler
    AddA(tmp[425], a[13120]); -- Blood in the Water
    AddA(tmp[425], a[13121]); -- Notorious
    AddA(tmp[425], a[13129]); -- Sucker Punch
    AddA(tmp[425], a[13123]); -- My Dubs
    AddA(tmp[425], a[13124]); -- Metal Detector
    AddA(tmp[425], a[13125]); -- Azerite Admiral
    AddA(tmp[425], a[13126]); -- Give Me The Energy
    AddA(tmp[425], a[13127]); -- Tell Me A Tale
    AddA(tmp[425], a[13128]); -- I'm Here for the Pets
    AddA(tmp[425], a[13132]); -- Helping Hand
    AddA(tmp[425], a[13133]); -- Team Deathmatch
    AddA(tmp[425], a[13135]); -- Team Deathmatch
    AddA(tmp[425], a[13134]); -- Expedition Leader
    AddA(tmp[425], a[13701]); -- Battlefield Brawler
    AddA(tmp[425], a[13702]); -- Battlefield Tactician
    AddA(tmp[425], a[13703]); -- Battlefield Master
    tmp[436] = IaR(c, cat:New((GetLFGDungeonInfo(1687)))); -- Un'gol Ruins
    AddC(tmp[425], tmp[436]);
    AddA(tmp[436], a[12590]); -- Un'gol Ruins
    AddA(tmp[436], a[12589]); -- Heroic: Un'gol Ruins
    AddA(tmp[436], a[12591]); -- Mythic: Un'gol Ruins
    AddA(tmp[436], a[12592]); -- Ruined the Ruins
    tmp[437] = IaR(c, cat:New((GetLFGDungeonInfo(1734)))); -- The Dread Chain
    AddC(tmp[425], tmp[437]);
    AddA(tmp[437], a[13095]); -- Dread Chain
    AddA(tmp[437], a[13096]); -- Heroic: Dread Chain
    AddA(tmp[437], a[13097]); -- Mythic: Dread Chain
    AddA(tmp[437], a[13098]); -- Bane of the Chain
    tmp[438] = IaR(c, cat:New((GetLFGDungeonInfo(1723)))); -- The Rotting Mire
    AddC(tmp[425], tmp[438]);
    AddA(tmp[438], a[13103]); -- Rotting Mire
    AddA(tmp[438], a[13104]); -- Heroic: Rotting Mire
    AddA(tmp[438], a[13105]); -- Mythic: Rotting Mire
    AddA(tmp[438], a[13106]); -- Mire Marauder
    tmp[439] = IaR(c, cat:New((GetLFGDungeonInfo(1750)))); -- The Molten Cay
    AddC(tmp[425], tmp[439]);
    AddA(tmp[439], a[13099]); -- Molten Cay
    AddA(tmp[439], a[13100]); -- Heroic: Molten Cay
    AddA(tmp[439], a[13101]); -- Mythic: Molten Cay
    AddA(tmp[439], a[13102]); -- Clash at the Cay
    tmp[440] = IaR(c, cat:New((GetLFGDungeonInfo(1724)))); -- Verdant Wilds
    AddC(tmp[425], tmp[440]);
    AddA(tmp[440], a[13111]); -- Verdant Wilds
    AddA(tmp[440], a[13112]); -- Heroic: Verdant Wilds
    AddA(tmp[440], a[13113]); -- Mythic: Verdant Wilds
    AddA(tmp[440], a[13114]); -- War for the Wilds
    tmp[441] = IaR(c, cat:New((GetLFGDungeonInfo(1725)))); -- Skittering Hollow
    AddC(tmp[425], tmp[441]);
    AddA(tmp[441], a[13107]); -- Skittering Hollow
    AddA(tmp[441], a[13108]); -- Heroic: Skittering Hollow
    AddA(tmp[441], a[13109]); -- Mythic: Skittering Hollow
    AddA(tmp[441], a[13110]); -- Skittering Smashed
    tmp[442] = IaR(c, cat:New((GetLFGDungeonInfo(1735)))); -- The Whispering Reef
    AddC(tmp[425], tmp[442]);
    AddA(tmp[442], a[13119]); -- Whispering Reef
    AddA(tmp[442], a[13118]); -- Heroic: Whispering Reef
    AddA(tmp[442], a[13116]); -- Mythic: Whispering Reef
    AddA(tmp[442], a[13115]); -- Reef Madness
    tmp[443] = IaR(c, cat:New((GetLFGDungeonInfo(1932)))); -- Jorundall
    AddC(tmp[425], tmp[443]);
    AddA(tmp[443], a[13389]); -- Jorundall
    AddA(tmp[443], a[13394]); -- Heroic: Jorundall
    AddA(tmp[443], a[13395]); -- Mythic: Jorundall
    AddA(tmp[443], a[13399]); -- Jorundall Justice
    tmp[444] = IaR(c, cat:New((GetLFGDungeonInfo(1928)))); -- Havenswood
    AddC(tmp[425], tmp[444]);
    AddA(tmp[444], a[13396]); -- Havenswood
    AddA(tmp[444], a[13397]); -- Heroic: Havenswood
    AddA(tmp[444], a[13398]); -- Mythic: Havenswood
    AddA(tmp[444], a[13400]); -- Havenswood Hero
    tmp[445] = IaR(c, cat:New((GetLFGDungeonInfo(1984)))); -- Crestfall
    AddC(tmp[425], tmp[445]);
    AddA(tmp[445], a[13577]); -- Crestfall
    AddA(tmp[445], a[13578]); -- Heroic: Crestfall
    AddA(tmp[445], a[13579]); -- Mythic: Crestfall
    AddA(tmp[445], a[13580]); -- Crestfallen
    tmp[446] = IaR(c, cat:New((GetLFGDungeonInfo(1983)))); -- Snowblossom Village
    AddC(tmp[425], tmp[446]);
    AddA(tmp[446], a[13581]); -- Snowblossom Village
    AddA(tmp[446], a[13582]); -- Heroic: Snowblossom Village
    AddA(tmp[446], a[13583]); -- Mythic: Snowblossom Village
    AddA(tmp[446], a[13584]); -- Snowblossom Scrapper
    tmp[426] = IaR(c, cat:New((GetCategoryInfo(15308)))); -- War Effort
    AddC(tmp[258], tmp[426]);
    AddA(tmp[426], a[12867]); -- Azeroth at War: The Barrens
    AddA(tmp[426], a[12896]); -- Azeroth at War: The Barrens
    AddA(tmp[426], a[12869]); -- Azeroth at War: After Lordaeron
    AddA(tmp[426], a[12898]); -- Azeroth at War: After Lordaeron
    AddA(tmp[426], a[12870]); -- Azeroth at War: Kalimdor on Fire
    AddA(tmp[426], a[12899]); -- Azeroth at War: Kalimdor on Fire
    AddA(tmp[426], a[12872]); -- The Dirty Five
    tmp[434] = IaR(c, cat:New((GetLFGDungeonInfo(1615)))); -- Battle for Stromgarde
    AddC(tmp[426], tmp[434]);
    AddA(tmp[434], a[12873]); -- War is Hell
    AddA(tmp[434], a[13735]); -- Heroic: War is Hell
    AddA(tmp[434], a[12881]); -- War is Hell
    AddA(tmp[434], a[13737]); -- Heroic: War is Hell
    AddA(tmp[434], a[12877]); -- Strike Hard
    AddA(tmp[434], a[12876]); -- Strike Fast
    AddA(tmp[434], a[12888]); -- Strike Hard
    AddA(tmp[434], a[12889]); -- Strike Fast
    AddA(tmp[434], a[12878]); -- Leader of Troops
    AddA(tmp[434], a[12884]); -- Leader of Troops
    AddA(tmp[434], a[12879]); -- Tour of War
    AddA(tmp[434], a[13738]); -- Heroic: Tour of War
    AddA(tmp[434], a[12886]); -- Tour of War
    AddA(tmp[434], a[13739]); -- Heroic: Tour of War
    AddA(tmp[434], a[12874]); -- An Eventful Battle
    tmp[435] = IaR(c, cat:New((GetLFGDungeonInfo(1901)))); -- The Battle for Darkshore
    AddC(tmp[426], tmp[435]);
    AddA(tmp[435], a[13296]); -- War for the Shore
    AddA(tmp[435], a[14149]); -- Heroic: War for the Shore
    AddA(tmp[435], a[13297]); -- War for the Shore
    AddA(tmp[435], a[14150]); -- Heroic: War for the Shore
    AddA(tmp[435], a[13301]); -- Under Cover of Darkness
    AddA(tmp[435], a[13306]); -- Night Moves
    AddA(tmp[435], a[13302]); -- Under Cover of Darkness
    AddA(tmp[435], a[13305]); -- Night Moves
    AddA(tmp[435], a[13307]); -- Recruitment Officer
    AddA(tmp[435], a[13308]); -- Recruitment Officer
    AddA(tmp[435], a[13309]); -- Deforester
    AddA(tmp[435], a[13310]); -- By Nature's Call
    tmp[427] = IaR(c, cat:New((GetCategoryInfo(15417)))); -- Heart of Azeroth
    AddC(tmp[258], tmp[427]);
    AddA(tmp[427], a[12918]); -- Have a Heart
    AddA(tmp[427], a[13998]); -- Pure of Heart
    AddA(tmp[427], a[13572]); -- The Heart Forge
    AddA(tmp[427], a[13769]); -- Power Up
    AddA(tmp[427], a[13770]); -- Power Creep
    AddA(tmp[427], a[13771]); -- Power Is Beautiful
    AddA(tmp[427], a[13772]); -- Essence Essentials
    AddA(tmp[427], a[13773]); -- Essence Gains
    AddA(tmp[427], a[13775]); -- Essence Overload
    AddA(tmp[427], a[13777]); -- My Heart Container is Full
    AddA(tmp[427], a[13779]); -- Phenomenal Cosmic Power
    tmp[428] = IaR(c, cat:New((GetCategoryInfo(15426)))); -- Visions of N'Zoth
    AddC(tmp[258], tmp[428]);
    AddA(tmp[428], a[14143]); -- Reeking of Visions
    AddA(tmp[428], a[13994]); -- Through the Depths of Visions
    AddA(tmp[428], a[14060]); -- Unwavering Resolve
    AddA(tmp[428], a[14061]); -- We Have the Technology
    AddA(tmp[428], a[14062]); -- Horrific Vision of Stormwind
    AddA(tmp[428], a[14064]); -- The Even More Horrific Vision of Stormwind
    AddA(tmp[428], a[14066]); -- The Most Horrific Vision of Stormwind
    AddA(tmp[428], a[14063]); -- Horrific Vision of Orgrimmar
    AddA(tmp[428], a[14065]); -- The Even More Horrific Vision of Orgrimmar
    AddA(tmp[428], a[14067]); -- The Most Horrific Vision of Orgrimmar
    AddA(tmp[428], a[14162]); -- Horrific Masquerade
    AddA(tmp[428], a[14165]); -- Masked Soliloquy
    AddA(tmp[428], a[14166]); -- Masked Duet
    AddA(tmp[428], a[14167]); -- Masked Trio
    AddA(tmp[428], a[14168]); -- Masked Quartet
    AddA(tmp[428], a[14169]); -- Symphony of Masks
    AddA(tmp[428], a[14170]); -- Thanks For The Mementos
    AddA(tmp[428], a[14171]); -- Memento Mori
    AddA(tmp[428], a[14172]); -- A Monumental Amount of Mementos
    AddA(tmp[428], a[14173]); -- A Mountain of Mementos
    AddA(tmp[428], a[14140]); -- Mad World
    tmp[6] = IaR(c, cat:New((GetCategoryInfo(15439)))); -- Shadowlands
    tmp[344] = IaR(c, cat:New(addon.L["Zones"])); -- Zones
    AddC(tmp[6], tmp[344]);
    AddA(tmp[344], a[14280]); -- Loremaster of Shadowlands
    AddA(tmp[344], a[14758]); -- The World Beyond
    AddA(tmp[344], a[14825]); -- Explorer of the Shadowlands
    AddA(tmp[344], a[14731]); -- To All the Squirrels I've Loved and Lost
    AddA(tmp[344], a[14515]); -- Zo'Sorg's Bidding
    AddA(tmp[344], a[14516]); -- Impressing Zo'Sorg
    AddA(tmp[344], a[14519]); -- Covenant Combat
    AddA(tmp[344], a[14315]); -- Shadowlands Diplomat
    AddA(tmp[344], a[15064]); -- Breaking the Chains
    tmp[345] = IaR(c, cat:New(C_Map.GetMapInfo(1533).name)); -- Bastion
    AddC(tmp[344], tmp[345]);
    tmp[346] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[345], tmp[346]);
    AddA(tmp[346], a[14281]); -- The Path to Ascension
    AddA(tmp[346], a[14801]); -- Sojourner of Bastion
    AddA(tmp[346], a[14737]); -- What Bastion Remembered
    AddA(tmp[346], a[14735]); -- Flight School Graduate
    AddA(tmp[346], a[14741]); -- Aerial Ace
    AddA(tmp[346], a[14762]); -- Breaking the Stratus Fear
    tmp[347] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[345], tmp[347]);
    AddA(tmp[347], a[14303]); -- Explore Bastion
    AddA(tmp[347], a[14307]); -- Adventurer of Bastion
    AddA(tmp[347], a[14311]); -- Treasures of Bastion
    AddA(tmp[347], a[14339]); -- Shard Labor
    AddA(tmp[347], a[14734]); -- Rallying Cry of the Ascended
    AddA(tmp[347], a[14767]); -- Count Your Blessings
    AddA(tmp[347], a[14768]); -- What is that Melody?
    AddA(tmp[347], a[14733]); -- In the Hot Seat
    tmp[348] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[345], tmp[348]);
    AddA(tmp[348], a[14514]); -- Tour of Duty: Bastion
    tmp[349] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[345], tmp[349]);
    AddA(tmp[349], a[14335]); -- The Ascended
    tmp[350] = IaR(c, cat:New(C_Map.GetMapInfo(1536).name)); -- Maldraxxus
    AddC(tmp[344], tmp[350]);
    tmp[351] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[350], tmp[351]);
    AddA(tmp[351], a[14206]); -- Blade of the Primus
    AddA(tmp[351], a[14799]); -- Sojourner of Maldraxxus
    tmp[352] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[350], tmp[352]);
    AddA(tmp[352], a[14305]); -- Explore Maldraxxus
    AddA(tmp[352], a[14308]); -- Adventurer of Maldraxxus
    AddA(tmp[352], a[14312]); -- Treasures of Maldraxxus
    AddA(tmp[352], a[14626]); -- Harvester of Sorrow
    AddA(tmp[352], a[14802]); -- Bloodsport
    AddA(tmp[352], a[14721]); -- It's In The Mix
    AddA(tmp[352], a[14634]); -- Nine Afterlives
    tmp[353] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[350], tmp[353]);
    AddA(tmp[353], a[14513]); -- Tour of Duty: Maldraxxus
    tmp[354] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[350], tmp[354]);
    AddA(tmp[354], a[14336]); -- Undying Army
    tmp[355] = IaR(c, cat:New(C_Map.GetMapInfo(1565).name)); -- Ardenweald
    AddC(tmp[344], tmp[355]);
    tmp[356] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[355], tmp[356]);
    AddA(tmp[356], a[14164]); -- "Awaken, Ardenweald"
    AddA(tmp[356], a[14800]); -- Sojourner of Ardenweald
    AddA(tmp[356], a[14671]); -- Something's Not Quite Right....
    AddA(tmp[356], a[14672]); -- "A Bit of This, A Bit of That"
    tmp[357] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[355], tmp[357]);
    AddA(tmp[357], a[14304]); -- Explore Ardenweald
    AddA(tmp[357], a[14309]); -- Adventurer of Ardenweald
    AddA(tmp[357], a[14313]); -- Treasures of Ardenweald
    AddA(tmp[357], a[14353]); -- Ardenweald's a Stage
    AddA(tmp[357], a[14791]); -- Toss a Seed to Your Hunter...
    AddA(tmp[357], a[14774]); -- Ardenweald Gourmand
    AddA(tmp[357], a[14788]); -- Fractured Faerie Tales
    AddA(tmp[357], a[14779]); -- Wild Hunting
    AddA(tmp[357], a[14504]); -- "Niya, As Xavius"
    AddA(tmp[357], a[14505]); -- "Senthii, As Gul'dan"
    AddA(tmp[357], a[14506]); -- "Glimmerdust, As Kil'jaeden"
    AddA(tmp[357], a[14507]); -- "Mi'kai, As Argus"
    AddA(tmp[357], a[14508]); -- "Glimmerdust, As Jaina"
    AddA(tmp[357], a[14509]); -- "Astra, As Azshara"
    AddA(tmp[357], a[14510]); -- "Dreamweaver, As N'Zoth"
    tmp[358] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[355], tmp[358]);
    AddA(tmp[358], a[14511]); -- Tour of Duty: Ardenweald
    tmp[359] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[355], tmp[359]);
    AddA(tmp[359], a[14337]); -- The Wild Hunt
    tmp[360] = IaR(c, cat:New(C_Map.GetMapInfo(1525).name)); -- Revendreth
    AddC(tmp[344], tmp[360]);
    tmp[361] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[360], tmp[361]);
    AddA(tmp[361], a[13878]); -- The Master of Revendreth
    AddA(tmp[361], a[14798]); -- Sojourner of Revendreth
    AddA(tmp[361], a[14233]); -- Tea Tales
    AddA(tmp[361], a[14765]); -- Ramparts Racer
    AddA(tmp[361], a[14766]); -- Parasoling
    AddA(tmp[361], a[14772]); -- Caught in a Bat Romance
    tmp[362] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[360], tmp[362]);
    AddA(tmp[362], a[14306]); -- Explore Revendreth
    AddA(tmp[362], a[14310]); -- Adventurer of Revendreth
    AddA(tmp[362], a[14314]); -- Treasures of Revendreth
    AddA(tmp[362], a[14277]); -- The Accuser's Avowed
    AddA(tmp[362], a[14274]); -- Absolution for All
    AddA(tmp[362], a[14272]); -- Best Bud With Benefits
    AddA(tmp[362], a[14276]); -- It's Always Sinny in Revendreth
    AddA(tmp[362], a[14769]); -- Bat!
    AddA(tmp[362], a[14771]); -- The Afterlife Express
    AddA(tmp[362], a[14770]); -- What We Ride in the Shadows
    AddA(tmp[362], a[14273]); -- Crypt Kicker
    tmp[363] = IaR(c, cat:New((GetCategoryInfo(15270)), true)); -- PvP
    AddC(tmp[360], tmp[363]);
    AddA(tmp[363], a[14512]); -- Tour of Duty: Revendreth
    tmp[364] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[360], tmp[364]);
    AddA(tmp[364], a[14338]); -- Court of Harvesters
    tmp[365] = IaR(c, cat:New(C_Map.GetMapInfo(1543).name)); -- The Maw
    AddC(tmp[344], tmp[365]);
    tmp[366] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[365], tmp[366]);
    AddA(tmp[366], a[14334]); -- Into the Maw
    AddA(tmp[366], a[14961]); -- Chains of Domination
    AddA(tmp[366], a[15000]); -- United Front
    AddA(tmp[366], a[15001]); -- Jailer's Personal Stash
    AddA(tmp[366], a[15037]); -- This Army
    AddA(tmp[366], a[15039]); -- Up For Grabs
    AddA(tmp[366], a[15041]); -- The Zovaal Shuffle
    AddA(tmp[366], a[15043]); -- Hoarder of Torghast
    AddA(tmp[366], a[15042]); -- Tea for the Troubled
    AddA(tmp[366], a[15044]); -- Krrprripripkraak's Heroes
    AddA(tmp[366], a[15035]); -- On the Offensive
    AddA(tmp[366], a[15036]); -- Rooting Out the Evil
    AddA(tmp[366], a[15034]); -- Wings Against the Flames
    AddA(tmp[366], a[15033]); -- Taking the Tremaculum
    AddA(tmp[366], a[15032]); -- Breaking Their Hold
    tmp[367] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[365], tmp[367]);
    AddA(tmp[367], a[14663]); -- Explore The Maw
    AddA(tmp[367], a[14658]); -- Soulkeeper's Burden
    AddA(tmp[367], a[14659]); -- Handling His Henchmen
    AddA(tmp[367], a[14660]); -- It's About Sending a Message
    AddA(tmp[367], a[14738]); -- Hunting Party
    AddA(tmp[367], a[14742]); -- Who Sent You?
    AddA(tmp[367], a[14743]); -- Deadly Serious
    AddA(tmp[367], a[14744]); -- Better to Be Lucky Than Dead
    AddA(tmp[367], a[14745]); -- Grand Theft Shadehound
    AddA(tmp[367], a[14746]); -- Prepare for Trouble!
    AddA(tmp[367], a[14747]); -- Make it Double!
    AddA(tmp[367], a[14761]); -- Deciphering Death's Intentions
    AddA(tmp[367], a[14894]); -- "To 'Ghast, Two Curios"
    AddA(tmp[367], a[14895]); -- 'Ghast Five
    AddA(tmp[367], a[15054]); -- Minions of the Cold Dark
    AddA(tmp[367], a[15107]); -- Conquering Korthia
    AddA(tmp[367], a[14943]); -- Guarmageddon
    tmp[368] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[365], tmp[368]);
    AddA(tmp[368], a[14656]); -- Trading Partners
    tmp[812] = IaR(c, cat:New("Korthia")); -- Korthia
    AddC(tmp[344], tmp[812]);
    tmp[817] = IaR(c, cat:New((GetCategoryInfo(15447)), true)); -- Quests
    AddC(tmp[812], tmp[817]);
    AddA(tmp[817], a[15066]); -- Reliquary Restoration
    AddA(tmp[817], a[15055]); -- Friend of Ooz
    AddA(tmp[817], a[15056]); -- Friend of Bloop
    AddA(tmp[817], a[15057]); -- Friend of Plaguey
    tmp[818] = IaR(c, cat:New((GetCategoryInfo(97)), true)); -- Exploration
    AddC(tmp[812], tmp[818]);
    AddA(tmp[818], a[15053]); -- Explore Korthia
    AddA(tmp[818], a[15107]); -- Conquering Korthia
    AddA(tmp[818], a[15099]); -- Treasures of Korthia
    tmp[813] = IaR(c, cat:New((GetCategoryInfo(15273)), true)); -- Reputation
    AddC(tmp[812], tmp[813]);
    AddA(tmp[813], a[15059]); -- Death's Advance
    AddA(tmp[813], a[15069]); -- The Archivists' Codex
    tmp[369] = IaR(c, cat:New((GetCategoryInfo(15272)))); -- Dungeons
    AddC(tmp[6], tmp[369]);
    AddA(tmp[369], a[14418]); -- Shadowlands Dungeon Hero
    AddA(tmp[369], a[14322]); -- Glory of the Shadowlands Hero
    AddA(tmp[369], a[14938]); -- Shadowlands Keystone Explorer: Season One
    AddA(tmp[369], a[14531]); -- Shadowlands Keystone Conqueror: Season One
    AddA(tmp[369], a[14532]); -- Shadowlands Keystone Master: Season One
    AddA(tmp[369], a[15073]); -- Shadowlands Keystone Explorer: Season Two
    AddA(tmp[369], a[15077]); -- Shadowlands Keystone Conqueror: Season Two
    AddA(tmp[369], a[15078]); -- Shadowlands Keystone Master: Season Two
    tmp[371] = IaR(c, cat:New((EJ_GetInstanceInfo(1182)))); -- The Necrotic Wake
    AddC(tmp[369], tmp[371]);
    AddA(tmp[371], a[14295]); -- Bountiful Harvest
    AddA(tmp[371], a[14320]); -- Surgeon's Supplies
    AddA(tmp[371], a[14285]); -- Ready for Raiding VII
    AddA(tmp[371], a[14366]); -- The Necrotic Wake
    AddA(tmp[371], a[14367]); -- Heroic: The Necrotic Wake
    AddA(tmp[371], a[14368]); -- Mythic: The Necrotic Wake
    AddA(tmp[371], a[15045]); -- Keystone Hero: The Necrotic Wake
    tmp[372] = IaR(c, cat:New((EJ_GetInstanceInfo(1183)))); -- Plaguefall
    AddC(tmp[369], tmp[372]);
    AddA(tmp[372], a[14292]); -- Riding with my Slimes
    AddA(tmp[372], a[14347]); -- Full Gores Meal
    AddA(tmp[372], a[14296]); -- Going Viral
    AddA(tmp[372], a[14369]); -- Plaguefall
    AddA(tmp[372], a[14414]); -- Heroic: Plaguefall
    AddA(tmp[372], a[14415]); -- Mythic: Plaguefall
    AddA(tmp[372], a[15046]); -- Keystone Hero: Plaguefall
    tmp[373] = IaR(c, cat:New((EJ_GetInstanceInfo(1184)))); -- Mists of Tirna Scithe
    AddC(tmp[369], tmp[373]);
    AddA(tmp[373], a[14503]); -- Hooked On Hydroponics
    AddA(tmp[373], a[14291]); -- Someone Could Trip on These!
    AddA(tmp[373], a[14375]); -- Hunger for Knowledge
    AddA(tmp[373], a[14371]); -- Mists of Tirna Scithe
    AddA(tmp[373], a[14412]); -- Heroic: Mists of Tirna Scithe
    AddA(tmp[373], a[14413]); -- Mythic: Mists of Tirna Scithe
    AddA(tmp[373], a[15047]); -- Keystone Hero: Mists of Tirna Scithe
    tmp[374] = IaR(c, cat:New((EJ_GetInstanceInfo(1185)))); -- Halls of Atonement
    AddC(tmp[369], tmp[374]);
    AddA(tmp[374], a[14567]); -- Picking Up the Pieces
    AddA(tmp[374], a[14284]); -- Breaking Bad
    AddA(tmp[374], a[14352]); -- Nobody Puts Denathrius in a Corner
    AddA(tmp[374], a[14370]); -- Halls of Atonement
    AddA(tmp[374], a[14410]); -- Heroic: Halls of Atonement
    AddA(tmp[374], a[14411]); -- Mythic: Halls of Atonement
    AddA(tmp[374], a[15048]); -- Keystone Hero: Halls of Atonement
    tmp[375] = IaR(c, cat:New((EJ_GetInstanceInfo(1186)))); -- Spires of Ascension
    AddC(tmp[369], tmp[375]);
    AddA(tmp[375], a[14331]); -- Goliath Offline
    AddA(tmp[375], a[14323]); -- ExSPEARiential
    AddA(tmp[375], a[14327]); -- I Can See My House From Here
    AddA(tmp[375], a[14326]); -- Spires of Ascension
    AddA(tmp[375], a[14324]); -- Heroic: Spires of Ascension
    AddA(tmp[375], a[14325]); -- Mythic: Spires of Ascension
    AddA(tmp[375], a[15049]); -- Keystone Hero: Spires of Ascension
    tmp[376] = IaR(c, cat:New((EJ_GetInstanceInfo(1187)))); -- Theater of Pain
    AddC(tmp[369], tmp[376]);
    AddA(tmp[376], a[14297]); -- Three Choose One
    AddA(tmp[376], a[14607]); -- Fresh Meat!
    AddA(tmp[376], a[14533]); -- Royal Rumble
    AddA(tmp[376], a[14372]); -- Theater of Pain
    AddA(tmp[376], a[14416]); -- Heroic: Theater of Pain
    AddA(tmp[376], a[14417]); -- Mythic: Theater of Pain
    AddA(tmp[376], a[15050]); -- Keystone Hero: Theater of Pain
    tmp[377] = IaR(c, cat:New((EJ_GetInstanceInfo(1188)))); -- De Other Side
    AddC(tmp[369], tmp[377]);
    AddA(tmp[377], a[14354]); -- Highly Communicable
    AddA(tmp[377], a[14374]); -- Couple's Therapy
    AddA(tmp[377], a[14606]); -- Thinking with...
    AddA(tmp[377], a[14373]); -- De Other Side
    AddA(tmp[377], a[14408]); -- Heroic: De Other Side
    AddA(tmp[377], a[14409]); -- Mythic: De Other Side
    AddA(tmp[377], a[15051]); -- Keystone Hero: De Other Side
    tmp[378] = IaR(c, cat:New((EJ_GetInstanceInfo(1189)))); -- Sanguine Depths
    AddC(tmp[369], tmp[378]);
    AddA(tmp[378], a[14286]); -- Residue Evil
    AddA(tmp[378], a[14290]); -- I Only Have Eyes For You
    AddA(tmp[378], a[14289]); -- Kaal-ed Shot
    AddA(tmp[378], a[14197]); -- Sanguine Depths
    AddA(tmp[378], a[14198]); -- Heroic: Sanguine Depths
    AddA(tmp[378], a[14199]); -- Mythic: Sanguine Depths
    AddA(tmp[378], a[15052]); -- Keystone Hero: Sanguine Depths
    tmp[823] = IaR(c, cat:New("Tazavesh, the Veiled Market")); -- Tazavesh, the Veiled Market
    AddC(tmp[369], tmp[823]);
    AddA(tmp[823], a[15109]); -- Will it Blend?
    AddA(tmp[823], a[15106]); -- Quality Control
    AddA(tmp[823], a[15179]); -- This is Fine
    AddA(tmp[823], a[15190]); -- Mischief!
    AddA(tmp[823], a[15178]); -- Fake It 'Til You Make It
    AddA(tmp[823], a[15177]); -- "Tazavesh, the Veiled Market"
    tmp[370] = IaR(c, cat:New((GetCategoryInfo(15271)))); -- Raids
    AddC(tmp[6], tmp[370]);
    AddA(tmp[370], a[14355]); -- Glory of the Nathria Raider
    AddA(tmp[370], a[15130]); -- Glory of the Dominant Raider
    tmp[379] = IaR(c, cat:New((EJ_GetInstanceInfo(1190)))); -- Castle Nathria
    AddC(tmp[370], tmp[379]);
    AddA(tmp[379], a[14293]); -- Blind as a Bat
    AddA(tmp[379], a[14523]); -- Taking Care of Business
    AddA(tmp[379], a[14376]); -- Feed the Beast
    AddA(tmp[379], a[14524]); -- I Don't Know What I Expected
    AddA(tmp[379], a[14617]); -- Private Stock
    AddA(tmp[379], a[14608]); -- Burning Bright
    AddA(tmp[379], a[14619]); -- Pour Decision Making
    AddA(tmp[379], a[14294]); -- Dirtflap's Revenge
    AddA(tmp[379], a[14525]); -- "Feed Me, Seymour!"
    AddA(tmp[379], a[14610]); -- Clear Conscience
    AddA(tmp[379], a[14715]); -- Castle Nathria
    AddA(tmp[379], a[14717]); -- Heroic: Castle Nathria
    AddA(tmp[379], a[14718]); -- Mythic: Castle Nathria
    AddA(tmp[379], a[14356]); -- Mythic: Shriekwing
    AddA(tmp[379], a[14357]); -- Mythic: Huntsman Altimor
    AddA(tmp[379], a[14358]); -- Mythic: Hungering Destroyer
    AddA(tmp[379], a[14361]); -- Mythic: Lady Inerva Darkvein
    AddA(tmp[379], a[14359]); -- Mythic: Artificer Xy'mox
    AddA(tmp[379], a[14360]); -- Mythic: Sun King's Salvation
    AddA(tmp[379], a[14362]); -- Mythic: The Council of Blood
    AddA(tmp[379], a[14363]); -- Mythic: Sludgefist
    AddA(tmp[379], a[14364]); -- Mythic: Stone Legion Generals
    AddA(tmp[379], a[14365]); -- Mythic: Sire Denathrius
    AddA(tmp[379], a[14460]); -- Ahead of the Curve: Sire Denathrius
    AddA(tmp[379], a[14461]); -- Cutting Edge: Sire Denathrius
    AddA(tmp[379], a[14614]); -- Castle Vain
    tmp[821] = IaR(c, cat:New("Sanctum of Domination")); -- Sanctum of Domination
    AddC(tmp[370], tmp[821]);
    AddA(tmp[821], a[14998]); -- "Name A Better Duo, I'll Wait"
    AddA(tmp[821], a[15065]); -- Eye Wish You Were Here
    AddA(tmp[821], a[15003]); -- To the Nines
    AddA(tmp[821], a[15058]); -- I Used to Bullseye Deeprun Rats Back Home
    AddA(tmp[821], a[15105]); -- Tormentor's Tango
    AddA(tmp[821], a[15131]); -- Whack-A-Soul
    AddA(tmp[821], a[15132]); -- Knowledge is Power
    AddA(tmp[821], a[15040]); -- Flawless Fate
    AddA(tmp[821], a[15108]); -- Together Forever
    AddA(tmp[821], a[15133]); -- This World is a Prism
    AddA(tmp[821], a[15122]); -- The Jailer's Vanguard
    AddA(tmp[821], a[15123]); -- The Dark Bastille
    AddA(tmp[821], a[15124]); -- Shackles of Fate
    AddA(tmp[821], a[15125]); -- The Reckoning
    AddA(tmp[821], a[15126]); -- Sanctum of Domination
    AddA(tmp[821], a[15127]); -- Heroic: Sanctum of Domination
    AddA(tmp[821], a[15128]); -- Mythic: Sanctum of Domination
    AddA(tmp[821], a[15112]); -- Mythic: The Tarragrue
    AddA(tmp[821], a[15113]); -- Mythic: The Eye of the Jailer
    AddA(tmp[821], a[15114]); -- Mythic: The Nine
    AddA(tmp[821], a[15115]); -- Mythic: Remnant of Ner'zhul
    AddA(tmp[821], a[15116]); -- Mythic: Soulrender Dormazain
    AddA(tmp[821], a[15117]); -- Mythic: Painsmith Raznal
    AddA(tmp[821], a[15118]); -- Mythic: Guardian of the First Ones
    AddA(tmp[821], a[15119]); -- Mythic: Fatescribe Roh-Kalo
    AddA(tmp[821], a[15120]); -- Mythic: Kel'Thuzad
    AddA(tmp[821], a[15121]); -- Mythic: Sylvanas Windrunner
    AddA(tmp[821], a[15134]); -- Ahead of the Curve: Sylvanas Windrunner
    AddA(tmp[821], a[15135]); -- Cutting Edge: Sylvanas Windrunner
    AddA(tmp[821], a[15110]); -- Dominating the Catwalk
    AddA(tmp[821], a[15191]); -- "Rae'shalare, Death's Whisper"
    tmp[380] = IaR(c, cat:New((GetCategoryInfo(15117)))); -- Pet Battles
    AddC(tmp[6], tmp[380]);
    AddA(tmp[380], a[14867]); -- Shadowlands Safari
    AddA(tmp[380], a[14625]); -- Battle in the Shadowlands
    AddA(tmp[380], a[14868]); -- Aquatic Apparitions
    AddA(tmp[380], a[14869]); -- Beast Busters
    AddA(tmp[380], a[14870]); -- Creepy Critters
    AddA(tmp[380], a[14871]); -- Deathly Dragonkin
    AddA(tmp[380], a[14872]); -- Eerie Elementals
    AddA(tmp[380], a[14873]); -- Flickering Fliers
    AddA(tmp[380], a[14874]); -- Haunted Humanoids
    AddA(tmp[380], a[14875]); -- Mummified Magics
    AddA(tmp[380], a[14876]); -- Macabre Mechanicals
    AddA(tmp[380], a[14877]); -- Unholy Undead
    AddA(tmp[380], a[14879]); -- Family Exorcist
    AddA(tmp[380], a[14881]); -- Abhorrent Adversaries of the Afterlife
    AddA(tmp[380], a[15004]); -- A Sly Fox
    tmp[424] = IaR(c, cat:New((GetCategoryInfo(15440)))); -- Torghast
    AddC(tmp[6], tmp[424]);
    AddA(tmp[424], a[14808]); -- Touring Torghast
    AddA(tmp[424], a[14809]); -- Traversing Torghast
    AddA(tmp[424], a[14810]); -- Terror of Torghast
    AddA(tmp[424], a[15091]); -- A Taste of Perfection
    AddA(tmp[424], a[15089]); -- Flawless Master
    AddA(tmp[424], a[14499]); -- Phanciful
    AddA(tmp[424], a[14500]); -- Phantastic
    AddA(tmp[424], a[14501]); -- Phanatical
    AddA(tmp[424], a[14468]); -- Twisting Corridors: Layer 1
    AddA(tmp[424], a[14469]); -- Twisting Corridors: Layer 2
    AddA(tmp[424], a[14470]); -- Twisting Corridors: Layer 3
    AddA(tmp[424], a[14471]); -- Twisting Corridors: Layer 4
    AddA(tmp[424], a[14472]); -- Twisting Corridors: Layer 5
    AddA(tmp[424], a[14568]); -- Twisting Corridors: Layer 6
    AddA(tmp[424], a[14569]); -- Twisting Corridors: Layer 7
    AddA(tmp[424], a[14570]); -- Twisting Corridors: Layer 8
    AddA(tmp[424], a[14498]); -- Gatekeepers of Torghast
    AddA(tmp[424], a[14773]); -- Explosive Extermination
    AddA(tmp[424], a[14776]); -- For the Hoarder!
    AddA(tmp[424], a[14778]); -- Extremely Ravenous
    AddA(tmp[424], a[14754]); -- The Forgotten One
    AddA(tmp[424], a[14755]); -- Legendary Accord
    AddA(tmp[424], a[14759]); -- It's Coming Back to Me...
    AddA(tmp[424], a[14760]); -- Recollection Collection
    AddA(tmp[424], a[14795]); -- Clearing the Fog
    AddA(tmp[424], a[15067]); -- Adamant Vaults
    AddA(tmp[424], a[15075]); -- Infiltrators
    AddA(tmp[424], a[15076]); -- The Box of Many Things
    AddA(tmp[424], a[15080]); -- So Blessed
    AddA(tmp[424], a[15079]); -- "Many, Many Things"
    AddA(tmp[424], a[15093]); -- Avenge Me!
    AddA(tmp[424], a[15095]); -- No Doubt
    AddA(tmp[424], a[15094]); -- Rampage
    AddA(tmp[424], a[15096]); -- Crowd Pleaser
    AddA(tmp[424], a[15092]); -- Master of Torment
    tmp[843] = IaR(c, cat:New((select(2, addon.GetAchievementInfo(14463))), true)); -- Skoldus Hall
    AddC(tmp[424], tmp[843]);
    AddA(tmp[843], a[14463]); -- Skoldus Hall
    AddA(tmp[843], a[15081]); -- Flawless: Skoldus Hall
    tmp[844] = IaR(c, cat:New((select(2, addon.GetAchievementInfo(14473))), true)); -- Fracture Chambers
    AddC(tmp[424], tmp[844]);
    AddA(tmp[844], a[14473]); -- Fracture Chambers
    AddA(tmp[844], a[15082]); -- Flawless: Fracture Chambers
    tmp[845] = IaR(c, cat:New((select(2, addon.GetAchievementInfo(14478))), true)); -- The Soulforges
    AddC(tmp[424], tmp[845]);
    AddA(tmp[845], a[14478]); -- The Soulforges
    AddA(tmp[845], a[15084]); -- Flawless: The Soulforges
    tmp[846] = IaR(c, cat:New((select(2, addon.GetAchievementInfo(14483))), true)); -- Coldheart Interstitia
    AddC(tmp[424], tmp[846]);
    AddA(tmp[846], a[14483]); -- Coldheart Interstitia
    AddA(tmp[846], a[15083]); -- Flawless: Coldheart Interstitia
    tmp[847] = IaR(c, cat:New((select(2, addon.GetAchievementInfo(14488))), true)); -- Mort'regar
    AddC(tmp[424], tmp[847]);
    AddA(tmp[847], a[14488]); -- Mort'regar
    AddA(tmp[847], a[15087]); -- Flawless: Mort'regar
    tmp[848] = IaR(c, cat:New((select(2, addon.GetAchievementInfo(14493))), true)); -- The Upper Reaches
    AddC(tmp[424], tmp[848]);
    AddA(tmp[848], a[14493]); -- The Upper Reaches
    AddA(tmp[848], a[15088]); -- Flawless: The Upper Reaches
    tmp[419] = IaR(c, cat:New((GetCategoryInfo(15441)))); -- Covenant Sanctums
    AddC(tmp[6], tmp[419]);
    AddA(tmp[419], a[14627]); -- Choosing Your Purpose
    AddA(tmp[419], a[14790]); -- Covenant Campaign
    AddA(tmp[419], a[14834]); -- Bound with Purpose
    AddA(tmp[419], a[14835]); -- A Resolute Bond
    AddA(tmp[419], a[14836]); -- Unwavering Bond
    AddA(tmp[419], a[14837]); -- Nexus of Bonds
    AddA(tmp[419], a[14628]); -- The Road to Renown
    AddA(tmp[419], a[14629]); -- Gaining Respect
    AddA(tmp[419], a[14630]); -- Becoming a Hero
    AddA(tmp[419], a[14631]); -- Champion of the Covenant
    AddA(tmp[419], a[14632]); -- Conducting Anima
    AddA(tmp[419], a[14633]); -- Master Navigator
    AddA(tmp[419], a[14636]); -- Adventurer in Chief
    AddA(tmp[419], a[14839]); -- Bound To Adventure
    AddA(tmp[419], a[14840]); -- Adventures: Learning the Ropes
    AddA(tmp[419], a[14841]); -- Adventures: Now You're Cooking
    AddA(tmp[419], a[14842]); -- Adventures: Strength and Resilience
    AddA(tmp[419], a[14843]); -- Adventures: Harmony of Purpose
    AddA(tmp[419], a[14844]); -- Adventures: Into the Breach
    AddA(tmp[419], a[14845]); -- Adventures: A Step in the Right Direction
    AddA(tmp[419], a[14846]); -- Adventures: Leaves in the Forest
    AddA(tmp[419], a[14847]); -- Adventures: Protector of the Shadowlands
    AddA(tmp[419], a[14637]); -- Your Covenant's Flavor
    AddA(tmp[419], a[14638]); -- The Anima Must Flow
    AddA(tmp[419], a[14639]); -- Dedication to the Restoration
    AddA(tmp[419], a[14777]); -- Restoration Expert
    AddA(tmp[419], a[15023]); -- We Can Rebuild
    AddA(tmp[419], a[15024]); -- Denying the Drought
    AddA(tmp[419], a[15025]); -- Sanctum Superior
    tmp[423] = IaR(c, cat:New(C_Covenants.GetCovenantData(1).name)); -- Kyrian
    AddC(tmp[419], tmp[423]);
    AddA(tmp[423], a[14851]); -- Bastion of Protection
    AddA(tmp[423], a[14852]); -- The Hoot of the Issue
    AddA(tmp[423], a[14853]); -- All The Colors of the Painbow
    AddA(tmp[423], a[14854]); -- It's Not What You Wear
    AddA(tmp[423], a[14856]); -- "Charmed, I'm Sure"
    AddA(tmp[423], a[14857]); -- Itsy Bitsy Fighters
    AddA(tmp[423], a[14858]); -- Curse of Thirst
    AddA(tmp[423], a[14859]); -- Inside the Park Home Run
    AddA(tmp[423], a[14860]); -- Bare Necessities
    AddA(tmp[423], a[14861]); -- Learning from the Masters
    AddA(tmp[423], a[14862]); -- It's How You Wear It
    AddA(tmp[423], a[14863]); -- Death Foursworn
    AddA(tmp[423], a[14864]); -- Personal Nightmare
    AddA(tmp[423], a[14865]); -- Disciple of Humility
    AddA(tmp[423], a[14866]); -- Master of the Path
    AddA(tmp[423], a[14887]); -- To the Moon
    tmp[421] = IaR(c, cat:New(C_Covenants.GetCovenantData(2).name)); -- Venthyr
    AddC(tmp[419], tmp[421]);
    AddA(tmp[421], a[14678]); -- Court Favors
    AddA(tmp[421], a[14679]); -- Party Palace
    AddA(tmp[421], a[14680]); -- Something for Everyone
    AddA(tmp[421], a[14681]); -- Dredger Academy
    AddA(tmp[421], a[14682]); -- The Party Herald
    AddA(tmp[421], a[14683]); -- Dredger Style
    AddA(tmp[421], a[14723]); -- Be Our Guest
    AddA(tmp[421], a[14724]); -- People Pleaser
    AddA(tmp[421], a[14725]); -- We Happy Few
    AddA(tmp[421], a[14726]); -- It's Certainly Never Boring
    AddA(tmp[421], a[14727]); -- Master of Ceremonies
    AddA(tmp[421], a[14749]); -- Rendle's Big Day
    tmp[422] = IaR(c, cat:New(C_Covenants.GetCovenantData(3).name)); -- Night Fae
    AddC(tmp[419], tmp[422]);
    AddA(tmp[422], a[14670]); -- That's the Spirit
    AddA(tmp[422], a[14675]); -- Spirit Talker
    AddA(tmp[422], a[14676]); -- Divine Spirit Savior
    AddA(tmp[422], a[14677]); -- Spiritual Observations
    AddA(tmp[422], a[14775]); -- Mush Appreciated
    AddA(tmp[422], a[14780]); -- Meditation Master
    AddA(tmp[422], a[14789]); -- All Spirits Great and Small
    tmp[420] = IaR(c, cat:New(C_Covenants.GetCovenantData(4).name)); -- Necrolord
    AddC(tmp[419], tmp[420]);
    AddA(tmp[420], a[14684]); -- Abominable Lives
    AddA(tmp[420], a[14748]); -- Wardrobe Makeover
    AddA(tmp[420], a[14751]); -- The Gang's All Here
    AddA(tmp[420], a[14752]); -- Things To Do When You're Dead
    AddA(tmp[420], a[14753]); -- It's a Wrap
    AddA(tmp[420], a[14764]); -- The Great Luckydo
    AddA(tmp[420], a[14833]); -- Fashion Abomination
    AddA(tmp[420], a[14763]); -- Crypt Couture

    return currentZoneCategory, selectedZoneCategory, nextPatchCategory;
end

