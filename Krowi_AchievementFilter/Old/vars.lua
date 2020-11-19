--RaidAchieveFilter Achievement IDs
--Please do not use without permission
RAFdb = {}
RAFdb.AchID, RAFdb.MapID, RAFdb.MapName = {}, {}, {}
local uFaction = "H"
if UnitFactionGroup("player") == "Alliance" then uFaction = "A" end
--Raids
RAFdb.AchID[1] = {4534,4535,4536,4537,4531,4628,4577,4538,4578,4528,4629,4582,4539,4529,4630,4579,4580,4527,4631,4601,4581,4530,4532,4636,4583}--ICC10
RAFdb.AchID[2] = {4610,4611,4612,4613,4604,4632,4615,4614,4616,4605,4633,4617,4618,4606,4634,4619,4620,4607,4635,4621,4622,4597,4608,4637,4584}--ICC25
RAFdb.AchID[3] = {1997,1858,562,1996,2182,566,2176,568,1856,2178,2180,564,2146,572,2184,574,576,578}--Naxx10
RAFdb.AchID[4] = {2140,1859,563,2139,2183,567,2177,569,1857,2179,2181,565,2147,573,2185,575,577,579}--Naxx25
RAFdb.AchID[5] = {4404,4402,4403,4396,4407,4405,4406,4397}--Onyxia10
RAFdb.AchID[6] = {2148,1869,1874,622,2149,1870,1875,623}-- Malygos
RAFdb.AchID[7] = {2047,624,1876,2049,2050,2051}--Sarth10
RAFdb.AchID[8] = {2048,1877,625,2052,2053,2054}--Sarth25
RAFdb.AchID[9] = {4817,4818,4815,4816}--Halion
RAFdb.AchID[10] = {3797,3936,3996,3798,3799,3800,3917,3918}--ToC10
RAFdb.AchID[11] = {3937,3813,3997,3815,3816,3916,3812}--Toc25
RAFdb.AchID[12] = {12315,12312,12314,12313,12316,12317,12318,12319,12320,12321,12322,12323,12324,12325,12326,12327,12328,12329,12330,12332,12333,12334,12335,12336,12337,12338,12339,12340,12341,12342,12343,12344,12345,12346,12347,12348,12349,12350,12351,12352,12360,12361,12362,12363,12364,12365,12366,12367,12368,12369,12372,12373,12384,12385,12386,12387,12388,12395,12396,12397,12398,12399,12400,12297,12302,12309,12310,12311}--Ulduar


-- if uFaction == "A" then tinsert(RAFdb.AchID[23], 8679) else tinsert(RAFdb.AchID[23], 8680) end 
--Lich King Dungeons
RAFdb.AchID[32] = {2038,2056,1862,481,492} --Ahn'kahet
RAFdb.AchID[33] = {1296,1297,1860,480,491} --Azjol'nerub
RAFdb.AchID[34] = {1872,1817,479,500} --Culling of Strat
RAFdb.AchID[35] = {2151,2057,2039,482,493} --Drak'tharon
RAFdb.AchID[36] = {4522,4523,4516,4519} --Forge of Souls
RAFdb.AchID[37] = {2058,2040,1864,2152,484,495} --Gun'drak
RAFdb.AchID[38] = {1834,2042,1867,486,497} --Halls of Lightning
RAFdb.AchID[39] = {4526,4518,4521} --Halls of Reflection
RAFdb.AchID[40] = {2154,1866,2155,485,496} --Halls of Stone
RAFdb.AchID[41] = {2150,2037,2036,478,490} --Nexus
RAFdb.AchID[42] = {1868,2046,2045,2044,1871,487,498} --Oculus
RAFdb.AchID[43] = {4524,4525,4517,4520} --Pit of Saron
if uFaction == "A" then RAFdb.AchID[44] = {3802,3803,3804,4296,4298}
else RAFdb.AchID[44] = {3802,3803,3804,3778,4297} end --Trial of the Champion
RAFdb.AchID[45] = {1919,477,489} --Utgarde Keep
RAFdb.AchID[46] = {2043,1873,2156,2157,488,499} --Utgarde Pinnacle
RAFdb.AchID[47] = {2153,2041,1865,1816,483,494} --Violet Hold
-- Cataclysm Dungeons
RAFdb.AchID[48] = {5281,5282,5283,5284,4833,5060} --Blackrock Caverns
RAFdb.AchID[49] = {5366,5367,5368,5369,5370,5371,5083} -- Deadmines
RAFdb.AchID[50] = {5995,6130,6117} --End Time
RAFdb.AchID[51] = {5297,5298,4840,5062} --Grim Batol
RAFdb.AchID[52] = {5293,5294,5296,5295,4841,5065} --Halls of Origination
RAFdb.AchID[53] = {6132,6119} --Hour of Twilight
RAFdb.AchID[54] = {5291,5290,5292,4848,5066} --Lost City of Tol'vir
RAFdb.AchID[55] = {5503,5504,5505,5093}--Shadowfang Keep
RAFdb.AchID[56] = {5287,4846,5063} --Stonecore
RAFdb.AchID[57] = {5285,5286,4839,5061} --Throne of Tides
RAFdb.AchID[58] = {5289,5288,4847,5064} --Vortex Pinnacle
RAFdb.AchID[59] = {6127,6070,6118} --Well of Eternity
RAFdb.AchID[60] = {5761,5750,5858,5760,5769} --Zul'Aman
RAFdb.AchID[61] = {5743,5762,5765,5744,5759,5768} --Zul'gurub
-- MoP Dungeons
RAFdb.AchID[62] = {6479,6476,6945,10010,6759} --Gate of the Setting Sun
RAFdb.AchID[63] = {6713,6478,6736,6755,6756} --Mogu'shan Palace
RAFdb.AchID[64] = {6684,6427,6760} --Scarlet Halls
RAFdb.AchID[65] = {6929,6928,6946,6761} --Scarlet Monastery
RAFdb.AchID[66] = {6394,6396,6531,6715,6821,6762} --Scholomance
RAFdb.AchID[67] = {6471,6477,6472,6469,6470} --Shado-Pan
RAFdb.AchID[68] = {6485,6822,6688,10011,6763} --Siege of Niuzao Temple
RAFdb.AchID[69] = {6420,6400,6089,6402,6457,6456} --Stormstout Brewery
RAFdb.AchID[70] = {6475,6460,6671,6757,6758} --Temple of the Jade Serpent
-- WoD Dungeons
RAFdb.AchID[71] = {9023,9551,9552,9039,9049,10080}--Auchindoun
RAFdb.AchID[72] = {8993,9005,9008,9037,9046,10076}--Bloodmaul Slag Mines
RAFdb.AchID[73] = {9024,9007,9043,9052,10082}--Grimrail Depot
RAFdb.AchID[74] = {9083,9081,9082,9038,9047,10079}--Iron Docks
RAFdb.AchID[75] = {9018,9025,9026,9041,9054,10084}--Shadowmoon Burial Grounds
RAFdb.AchID[76] = {9033,9034,9035,9036,8843,8844,10081}--Skyreach
RAFdb.AchID[77] = {9017,9493,9223,9044,9053,10083}--The Everbloom
RAFdb.AchID[78] = {9045,9058,9056,9057,9042,9055,10085}--UBRS
-- Legion Dungeons
RAFdb.AchID[79] = {10554,10553,10798,10799,10800}--Violet Hold
RAFdb.AchID[80] = {10710,10711,10709,10804,10805,10806}--Black Rook Hold
RAFdb.AchID[81] = {11768,11769,11703,11700,11701,11702}--Cathedral
RAFdb.AchID[82] = {10610,10611,10816}--Court of Stars
RAFdb.AchID[83] = {10766,10769,10783,10784,10785}--Darkheart Thicket
RAFdb.AchID[84] = {10456,10457,10458,10780,10781,10782}--Eye of Azshara
RAFdb.AchID[85] = {10542,10544,10543,10786,10788,10789}--Halls of Valor
RAFdb.AchID[86] = {11335,11338,11432,11431,11433,11429,11430}--Karazhan
RAFdb.AchID[87] = {10411,10413,10412,10807,10808,10809}--Maw of Souls
RAFdb.AchID[88] = {10996,10875,10795,10796,10797}--Neltharion's Lair
RAFdb.AchID[89] = {12004,12005,12009,12007,12008}--Seat
RAFdb.AchID[90] = {10773,10775,10776,10803}--The Arcway
RAFdb.AchID[91] = {10707,10679,10680,10801,10802,10803}--Vault of the Wardens

RAFdb.MapID = {
--Raids
186,186,162,162,248,141,155,155,200,172,172,147,--LK
285,294,328,367,409,--Cata
474,471,456,508,556,--MoP
596,661,610,--WoD
909,777,764,850,806,--Legion
1,--BfA
--Dungeons
132,157,130,160,183,153,138,185,140,129,142,184,171,133,136,168,--LK
283,291,401,293,297,399,277,311,324,322,325,398,333,337,--Cata
437,453,431,435,476,443,457,439,429,--MoP
593,573,606,595,574,601,620,616,--WoD
732,751,845,760,733,713,703,809,706,731,903,749,710,--Legion
934,936,1,1039,1,1038,1010,1041,980,1015}--BfA
--Scenarios
if uFaction == "A" then 
	RAFdb.AchID[102] = {7261,7258,7257,7252,8310}--Brewing
	RAFdb.AchID[103] = {7989,7990,7991,7992,7993,7988}--Patience
	RAFdb.AchID[104] = {7273,7272,7271}--Arena
	RAFdb.AchID[105] = {8016,8017}--Assault
	RAFdb.AchID[106] = {8347,8314,8364}--Battle
	RAFdb.AchID[107] = {8329,8330,8316,8312}--Blood
	RAFdb.AchID[108] = {6931,6930,6923}--Brewmoon
	RAFdb.AchID[109] = {7275,7276,8368,7522,8311}--Crypt
	RAFdb.AchID[110] = {7987,7984,7986,8009}--Dagger
	RAFdb.AchID[111] = {8319,8317,8318}--DarkHeart
	RAFdb.AchID[112] = {7267,7266,7265}--Greenstone
	RAFdb.AchID[113] = {8012,8011,8010}--Lion's
	RAFdb.AchID[114] = {8295,8294,8327}--Ragefire
	RAFdb.AchID[115] = {7526,7527,7523}--Theramore
	RAFdb.AchID[116] = {7231,7232,7239,7249,7248}--Unga
	local MapIDs = {447,487,480,451,524,523,452,481,488,520,448,911,522,483,450}
	for i = 1, #MapIDs do tinsert(RAFdb.MapID, MapIDs[i]) end
	for i = 1, 115 do RAFdb.MapName[i] = C_Map.GetMapInfo(RAFdb.MapID[i]).name; end
	RAFdb.MapName[104] = "Arena of Annihilation"-- (Proving Grounds)
	RAFdb.MapName[107] = "Blood in the Snow"-- (Dun Morogh)
	RAFdb.MapName[111] = "Dark Heart of Pandaria"-- (Vale of Eternal Blossoms)
	RAFdb.MapName[112] = "Greenstone Village"-- (Jade Forest)
	RAFdb.MapName[113] = "Lion's Landing"-- (Krasarang Wilds)
	RAFdb.MapName[115] = "Theramore's Fall"-- (Dustwallow Marsh)
else
	RAFdb.AchID[102] = {7261,7258,7257,7252,8310}--Brewing
	RAFdb.AchID[103] = {7989,7990,7991,7992,7993,7988}--Patience
	RAFdb.AchID[104] = {7273,7272,7271}--Arena
	RAFdb.AchID[105] = {8016,8017}--Assault
	RAFdb.AchID[106] = {8347,8315,8366}--Battle
	RAFdb.AchID[107] = {8329,8330,8316,8312}--Blood
	RAFdb.AchID[108] = {6931,6930,6923}--Brewmoon
	RAFdb.AchID[109] = {7275,7276,8368,7522,8311}--Crypt
	RAFdb.AchID[110] = {7987,7984,7986,8009}--Dagger
	RAFdb.AchID[111] = {8319,8317,8318}--DarkHeart
	RAFdb.AchID[112] = {8015,8014,8013}--Domination
	RAFdb.AchID[113] = {7267,7266,7265}--Greenstone
	RAFdb.AchID[114] = {8295,8294,8327}--Ragefire
	RAFdb.AchID[115] = {7529,7530,7524}--Theramore
	RAFdb.AchID[116] = {7231,7232,7239,7249,7248}--Unga
	local MapIDs = {447,487,480,481,524,523,452,481,488,520,498,448,522,416,450}
	for i = 1, #MapIDs do tinsert(RAFdb.MapID, MapIDs[i]) end
	for i = 1, 115 do RAFdb.MapName[i] = C_Map.GetMapInfo(RAFdb.MapID[i]).name end
	RAFdb.MapName[104] = "Arena of Annihilation"--(Proving Grounds)
	RAFdb.MapName[107] = "Blood in the Snow"--(Dun Morogh)
	RAFdb.MapName[111] = "Dark Heart of Pandaria"--(Vale of Eternal Blossoms)
	RAFdb.MapName[112] = "Domination Point"--(Krasarang Wilds)
	RAFdb.MapName[113] = "Greenstone Village"--(Jade Forest)
	RAFdb.MapName[115] = "Theramore's Fall"--(Dustwallow Marsh)
end
RAFdb.MapName[79] = "Assault on Violet Hold"
RAFdb.MapName[87] = "Maw of Souls"
RAFdb.MapName[94] = "King's Rest"
RAFdb.MapName[96] = "Siege of Boralus"
RAFdb.MapName[31] = "Uldir"
RAFdb.MapName[1] = RAFdb.MapName[1].." [10]"
RAFdb.MapName[2] = RAFdb.MapName[2].." [25]"--ICC
RAFdb.MapName[3] = RAFdb.MapName[3].." [10]"
RAFdb.MapName[4] = RAFdb.MapName[4].." [25]"--Naxx
RAFdb.MapName[5] = RAFdb.MapName[5].." [10/25]"--Onyxia
RAFdb.MapName[6] = RAFdb.MapName[6].." [10/25]"--Malygos
RAFdb.MapName[7] = RAFdb.MapName[7].." [10]"
RAFdb.MapName[8] = RAFdb.MapName[8].." [25]"--Sarth
RAFdb.MapName[9] = RAFdb.MapName[9].." [10/25]"--Halion
RAFdb.MapName[10] = RAFdb.MapName[10].." [10]"
RAFdb.MapName[11] = RAFdb.MapName[11].." [25]"--ToC