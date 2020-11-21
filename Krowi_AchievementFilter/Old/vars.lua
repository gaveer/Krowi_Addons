--RaidAchieveFilter Achievement IDs
--Please do not use without permission
RAFdb = {}
RAFdb.AchID, RAFdb.MapID, RAFdb.MapName = {}, {}, {}
local uFaction = "H"
if UnitFactionGroup("player") == "Alliance" then uFaction = "A" end
--Raids
RAFdb.AchID[9] = {4817,4818,4815,4816}--Halion

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