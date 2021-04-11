-- [[ Exported at 2021-04-11 14-47-49 ]] --
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
    tmpCategories[433] = InsertAndReturn(categories, achievementCategory:New(addon.L["Current Zone"], nil, nil)); -- Current Zone
    tmpCategories[433].AlwaysVisible = true;
    tmpCategories[433].HasFlexibleData = true;
    local currentZoneCategory = tmpCategories[433];
    tmpCategories[1] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(14864), nil, nil)); -- Classic
    tmpCategories[2] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272), nil, nil)); -- Dungeons
    tmpCategories[1]:AddCategory(tmpCategories[2]);
    tmpCategories[2]:AddAchievement(InsertAndReturn(achievements, achievement:New(1283, tmpCategories[2], nil, nil, nil, nil)));
    tmpCategories[4] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(63), {291, 292}, nil)); -- Deadmines
    tmpCategories[2]:AddCategory(tmpCategories[4]);
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5366, tmpCategories[4], nil, nil, nil, nil)));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5367, tmpCategories[4], nil, nil, nil, nil)));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5368, tmpCategories[4], nil, nil, nil, nil)));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5369, tmpCategories[4], nil, nil, nil, nil)));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5370, tmpCategories[4], nil, nil, nil, nil)));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5371, tmpCategories[4], nil, nil, nil, nil)));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(628, tmpCategories[4], nil, nil, nil, nil)));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5083, tmpCategories[4], nil, nil, nil, nil)));
    tmpCategories[5] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(226), nil, nil)); -- Ragefire Chasm
    tmpCategories[2]:AddCategory(tmpCategories[5]);
    tmpCategories[5]:AddAchievement(InsertAndReturn(achievements, achievement:New(629, tmpCategories[5], nil, nil, nil, nil)));
    tmpCategories[8] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(240), nil, nil)); -- Wailing Caverns
    tmpCategories[2]:AddCategory(tmpCategories[8]);
    tmpCategories[8]:AddAchievement(InsertAndReturn(achievements, achievement:New(630, tmpCategories[8], nil, nil, nil, nil)));
    tmpCategories[9] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(64), {310, 311, 312, 313, 314, 315, 316}, nil)); -- Shadowfang Keep
    tmpCategories[2]:AddCategory(tmpCategories[9]);
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(5503, tmpCategories[9], nil, nil, nil, nil)));
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(5504, tmpCategories[9], nil, nil, nil, nil)));
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(5505, tmpCategories[9], nil, nil, nil, nil)));
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(631, tmpCategories[9], nil, nil, nil, nil)));
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(5093, tmpCategories[9], nil, nil, nil, nil)));
    tmpCategories[10] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(227), nil, nil)); -- Blackfathom Deeps
    tmpCategories[2]:AddCategory(tmpCategories[10]);
    tmpCategories[10]:AddAchievement(InsertAndReturn(achievements, achievement:New(632, tmpCategories[10], nil, nil, nil, nil)));
    tmpCategories[11] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(238), nil, nil)); -- The Stockade
    tmpCategories[2]:AddCategory(tmpCategories[11]);
    tmpCategories[11]:AddAchievement(InsertAndReturn(achievements, achievement:New(633, tmpCategories[11], nil, nil, nil, nil)));
    tmpCategories[12] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(231), nil, nil)); -- Gnomeregan
    tmpCategories[2]:AddCategory(tmpCategories[12]);
    tmpCategories[12]:AddAchievement(InsertAndReturn(achievements, achievement:New(634, tmpCategories[12], nil, nil, nil, nil)));
    tmpCategories[13] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(233), nil, nil)); -- Razorfen Kraul
    tmpCategories[2]:AddCategory(tmpCategories[13]);
    tmpCategories[13]:AddAchievement(InsertAndReturn(achievements, achievement:New(635, tmpCategories[13], nil, nil, nil, nil)));
    tmpCategories[14] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(234), nil, nil)); -- Razorfen Downs
    tmpCategories[2]:AddCategory(tmpCategories[14]);
    tmpCategories[14]:AddAchievement(InsertAndReturn(achievements, achievement:New(636, tmpCategories[14], nil, nil, nil, nil)));
    tmpCategories[15] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(311), {431, 432}, nil)); -- Scarlet Halls
    tmpCategories[2]:AddCategory(tmpCategories[15]);
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6684, tmpCategories[15], nil, nil, nil, nil)));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6427, tmpCategories[15], nil, nil, nil, nil)));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(7413, tmpCategories[15], nil, nil, nil, nil)));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6760, tmpCategories[15], nil, nil, nil, nil)));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6895, tmpCategories[15], nil, nil, false, nil)));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6908, tmpCategories[15], nil, nil, false, nil)));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6909, tmpCategories[15], nil, nil, false, nil)));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6910, tmpCategories[15], nil, nil, false, nil)));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(8436, tmpCategories[15], nil, nil, false, nil)));
    tmpCategories[16] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(316), {435, 436}, nil)); -- Scarlet Monastery
    tmpCategories[2]:AddCategory(tmpCategories[16]);
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6946, tmpCategories[16], nil, nil, nil, nil)));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6928, tmpCategories[16], nil, nil, nil, nil)));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6929, tmpCategories[16], nil, nil, nil, nil)));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(637, tmpCategories[16], nil, nil, nil, nil)));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6761, tmpCategories[16], nil, nil, nil, nil)));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6896, tmpCategories[16], nil, nil, false, nil)));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6911, tmpCategories[16], nil, nil, false, nil)));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6912, tmpCategories[16], nil, nil, false, nil)));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6913, tmpCategories[16], nil, nil, false, nil)));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(8437, tmpCategories[16], nil, nil, false, nil)));
    tmpCategories[17] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(239), nil, nil)); -- Uldaman
    tmpCategories[2]:AddCategory(tmpCategories[17]);
    tmpCategories[17]:AddAchievement(InsertAndReturn(achievements, achievement:New(638, tmpCategories[17], nil, nil, nil, nil)));
    tmpCategories[18] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(241), nil, nil)); -- Zul'Farrak
    tmpCategories[2]:AddCategory(tmpCategories[18]);
    tmpCategories[18]:AddAchievement(InsertAndReturn(achievements, achievement:New(639, tmpCategories[18], nil, nil, nil, nil)));
    tmpCategories[19] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(232), nil, nil)); -- Maraudon
    tmpCategories[2]:AddCategory(tmpCategories[19]);
    tmpCategories[19]:AddAchievement(InsertAndReturn(achievements, achievement:New(640, tmpCategories[19], nil, nil, nil, nil)));
    tmpCategories[20] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(237), nil, nil)); -- The Temple Of Atal'hakkar
    tmpCategories[2]:AddCategory(tmpCategories[20]);
    tmpCategories[20]:AddAchievement(InsertAndReturn(achievements, achievement:New(641, tmpCategories[20], nil, nil, nil, nil)));
    tmpCategories[21] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(228), nil, nil)); -- Blackrock Depths
    tmpCategories[2]:AddCategory(tmpCategories[21]);
    tmpCategories[21]:AddAchievement(InsertAndReturn(achievements, achievement:New(642, tmpCategories[21], nil, nil, nil, nil)));
    tmpCategories[22] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(229), nil, nil)); -- Lower Blackrock Spire
    tmpCategories[2]:AddCategory(tmpCategories[22]);
    tmpCategories[22]:AddAchievement(InsertAndReturn(achievements, achievement:New(643, tmpCategories[22], nil, nil, nil, nil)));
    tmpCategories[23] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(230), nil, nil)); -- Dire Maul
    tmpCategories[2]:AddCategory(tmpCategories[23]);
    tmpCategories[23]:AddAchievement(InsertAndReturn(achievements, achievement:New(644, tmpCategories[23], nil, nil, nil, nil)));
    tmpCategories[24] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(246), {476, 477, 478, 479}, nil)); -- Scholomance
    tmpCategories[2]:AddCategory(tmpCategories[24]);
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6531, tmpCategories[24], nil, nil, nil, nil)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6394, tmpCategories[24], nil, nil, nil, nil)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6396, tmpCategories[24], nil, nil, nil, nil)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6715, tmpCategories[24], nil, nil, nil, nil)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6821, tmpCategories[24], nil, nil, nil, nil)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(645, tmpCategories[24], nil, nil, nil, nil)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6762, tmpCategories[24], nil, nil, nil, nil)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6897, tmpCategories[24], nil, nil, false, nil)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6914, tmpCategories[24], nil, nil, false, nil)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6915, tmpCategories[24], nil, nil, false, nil)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6916, tmpCategories[24], nil, nil, false, nil)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(8438, tmpCategories[24], nil, nil, false, nil)));
    tmpCategories[25] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(236), nil, nil)); -- Stratholme
    tmpCategories[2]:AddCategory(tmpCategories[25]);
    tmpCategories[25]:AddAchievement(InsertAndReturn(achievements, achievement:New(646, tmpCategories[25], nil, nil, nil, nil)));
    tmpCategories[25]:AddAchievement(InsertAndReturn(achievements, achievement:New(729, tmpCategories[25], nil, nil, nil, nil)));
    tmpCategories[3] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271), nil, nil)); -- Raids
    tmpCategories[1]:AddCategory(tmpCategories[3]);
    tmpCategories[3]:AddAchievement(InsertAndReturn(achievements, achievement:New(1285, tmpCategories[3], nil, nil, nil, nil)));
    tmpCategories[7] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(741), nil, nil)); -- Molten Core
    tmpCategories[3]:AddCategory(tmpCategories[7]);
    tmpCategories[7]:AddAchievement(InsertAndReturn(achievements, achievement:New(686, tmpCategories[7], nil, nil, nil, nil)));
    tmpCategories[26] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(760) .. " (" .. GetCategoryInfo(15234) .. ")", nil, nil)); -- Onyxia's Lair (Legacy)
    tmpCategories[3]:AddCategory(tmpCategories[26]);
    tmpCategories[26]:AddAchievement(InsertAndReturn(achievements, achievement:New(684, tmpCategories[26], nil, nil, false, nil)));
    tmpCategories[27] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(742), nil, nil)); -- Blackwing Lair
    tmpCategories[3]:AddCategory(tmpCategories[27]);
    tmpCategories[27]:AddAchievement(InsertAndReturn(achievements, achievement:New(685, tmpCategories[27], nil, nil, nil, nil)));
    tmpCategories[28] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(76) .. " (" .. GetCategoryInfo(15234) .. ")", nil, nil)); -- Zul'Gurub (Legacy)
    tmpCategories[3]:AddCategory(tmpCategories[28]);
    tmpCategories[28]:AddAchievement(InsertAndReturn(achievements, achievement:New(560, tmpCategories[28], nil, nil, false, nil)));
    tmpCategories[28]:AddAchievement(InsertAndReturn(achievements, achievement:New(688, tmpCategories[28], nil, nil, false, nil)));
    tmpCategories[28]:AddAchievement(InsertAndReturn(achievements, achievement:New(880, tmpCategories[28], nil, nil, false, nil)));
    tmpCategories[28]:AddAchievement(InsertAndReturn(achievements, achievement:New(881, tmpCategories[28], nil, nil, false, nil)));
    tmpCategories[29] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(743), nil, nil)); -- Ruins of Ahn'Qiraj
    tmpCategories[3]:AddCategory(tmpCategories[29]);
    tmpCategories[29]:AddAchievement(InsertAndReturn(achievements, achievement:New(689, tmpCategories[29], nil, nil, nil, nil)));
    tmpCategories[30] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(744), nil, nil)); -- Temple of Ahn'Qiraj
    tmpCategories[3]:AddCategory(tmpCategories[30]);
    tmpCategories[30]:AddAchievement(InsertAndReturn(achievements, achievement:New(687, tmpCategories[30], nil, nil, nil, nil)));
    tmpCategories[30]:AddAchievement(InsertAndReturn(achievements, achievement:New(424, tmpCategories[30], nil, nil, nil, nil)));
    tmpCategories[55] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(14865), nil, nil)); -- The Burning Crusade
    tmpCategories[56] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272), nil, nil)); -- Dungeons
    tmpCategories[55]:AddCategory(tmpCategories[56]);
    tmpCategories[56]:AddAchievement(InsertAndReturn(achievements, achievement:New(1284, tmpCategories[56], nil, nil, nil, nil)));
    tmpCategories[56]:AddAchievement(InsertAndReturn(achievements, achievement:New(1287, tmpCategories[56], nil, nil, nil, nil)));
    tmpCategories[57] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(248), {347}, nil)); -- Hellfire Ramparts
    tmpCategories[56]:AddCategory(tmpCategories[57]);
    tmpCategories[57]:AddAchievement(InsertAndReturn(achievements, achievement:New(647, tmpCategories[57], nil, nil, nil, nil)));
    tmpCategories[57]:AddAchievement(InsertAndReturn(achievements, achievement:New(667, tmpCategories[57], nil, nil, nil, nil)));
    tmpCategories[58] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(256), {261}, nil)); -- The Blood Furnace
    tmpCategories[56]:AddCategory(tmpCategories[58]);
    tmpCategories[58]:AddAchievement(InsertAndReturn(achievements, achievement:New(648, tmpCategories[58], nil, nil, nil, nil)));
    tmpCategories[58]:AddAchievement(InsertAndReturn(achievements, achievement:New(668, tmpCategories[58], nil, nil, nil, nil)));
    tmpCategories[59] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(259), {246}, nil)); -- The Shattered Halls
    tmpCategories[56]:AddCategory(tmpCategories[59]);
    tmpCategories[59]:AddAchievement(InsertAndReturn(achievements, achievement:New(657, tmpCategories[59], nil, nil, nil, nil)));
    tmpCategories[59]:AddAchievement(InsertAndReturn(achievements, achievement:New(678, tmpCategories[59], nil, nil, nil, nil)));
    tmpCategories[60] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(260), {265}, nil)); -- The Slave Pens
    tmpCategories[56]:AddCategory(tmpCategories[60]);
    tmpCategories[60]:AddAchievement(InsertAndReturn(achievements, achievement:New(649, tmpCategories[60], nil, nil, nil, nil)));
    tmpCategories[60]:AddAchievement(InsertAndReturn(achievements, achievement:New(669, tmpCategories[60], nil, nil, nil, nil)));
    tmpCategories[61] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(262), {262}, nil)); -- The Underbog
    tmpCategories[56]:AddCategory(tmpCategories[61]);
    tmpCategories[61]:AddAchievement(InsertAndReturn(achievements, achievement:New(650, tmpCategories[61], nil, nil, nil, nil)));
    tmpCategories[61]:AddAchievement(InsertAndReturn(achievements, achievement:New(670, tmpCategories[61], nil, nil, nil, nil)));
    tmpCategories[62] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(261), {263, 264}, nil)); -- The Steamvault
    tmpCategories[56]:AddCategory(tmpCategories[62]);
    tmpCategories[62]:AddAchievement(InsertAndReturn(achievements, achievement:New(656, tmpCategories[62], nil, nil, nil, nil)));
    tmpCategories[62]:AddAchievement(InsertAndReturn(achievements, achievement:New(677, tmpCategories[62], nil, nil, nil, nil)));
    tmpCategories[63] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(250), {272}, nil)); -- Mana-Tombs
    tmpCategories[56]:AddCategory(tmpCategories[63]);
    tmpCategories[63]:AddAchievement(InsertAndReturn(achievements, achievement:New(651, tmpCategories[63], nil, nil, nil, nil)));
    tmpCategories[63]:AddAchievement(InsertAndReturn(achievements, achievement:New(671, tmpCategories[63], nil, nil, nil, nil)));
    tmpCategories[64] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(247), {256, 257}, nil)); -- Auchenai Crypts
    tmpCategories[56]:AddCategory(tmpCategories[64]);
    tmpCategories[64]:AddAchievement(InsertAndReturn(achievements, achievement:New(666, tmpCategories[64], nil, nil, nil, nil)));
    tmpCategories[64]:AddAchievement(InsertAndReturn(achievements, achievement:New(672, tmpCategories[64], nil, nil, nil, nil)));
    tmpCategories[65] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(252), {258, 259}, nil)); -- Sethekk Halls
    tmpCategories[56]:AddCategory(tmpCategories[65]);
    tmpCategories[65]:AddAchievement(InsertAndReturn(achievements, achievement:New(653, tmpCategories[65], nil, nil, nil, nil)));
    tmpCategories[65]:AddAchievement(InsertAndReturn(achievements, achievement:New(674, tmpCategories[65], nil, nil, nil, nil)));
    tmpCategories[65]:AddAchievement(InsertAndReturn(achievements, achievement:New(883, tmpCategories[65], nil, nil, nil, nil)));
    tmpCategories[66] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(253), {260}, nil)); -- Shadow Labyrinth
    tmpCategories[56]:AddCategory(tmpCategories[66]);
    tmpCategories[66]:AddAchievement(InsertAndReturn(achievements, achievement:New(654, tmpCategories[66], nil, nil, nil, nil)));
    tmpCategories[66]:AddAchievement(InsertAndReturn(achievements, achievement:New(675, tmpCategories[66], nil, nil, nil, nil)));
    tmpCategories[67] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(251), {274}, nil)); -- Old Hillsbrad Foothills
    tmpCategories[56]:AddCategory(tmpCategories[67]);
    tmpCategories[67]:AddAchievement(InsertAndReturn(achievements, achievement:New(652, tmpCategories[67], nil, nil, nil, nil)));
    tmpCategories[67]:AddAchievement(InsertAndReturn(achievements, achievement:New(673, tmpCategories[67], nil, nil, nil, nil)));
    tmpCategories[68] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(255), {273}, nil)); -- The Black Morass
    tmpCategories[56]:AddCategory(tmpCategories[68]);
    tmpCategories[68]:AddAchievement(InsertAndReturn(achievements, achievement:New(655, tmpCategories[68], nil, nil, nil, nil)));
    tmpCategories[68]:AddAchievement(InsertAndReturn(achievements, achievement:New(676, tmpCategories[68], nil, nil, nil, nil)));
    tmpCategories[69] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(258), {267, 268}, nil)); -- The Mechanar
    tmpCategories[56]:AddCategory(tmpCategories[69]);
    tmpCategories[69]:AddAchievement(InsertAndReturn(achievements, achievement:New(658, tmpCategories[69], nil, nil, nil, nil)));
    tmpCategories[69]:AddAchievement(InsertAndReturn(achievements, achievement:New(679, tmpCategories[69], nil, nil, nil, nil)));
    tmpCategories[70] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(257), {266}, nil)); -- The Botanica
    tmpCategories[56]:AddCategory(tmpCategories[70]);
    tmpCategories[70]:AddAchievement(InsertAndReturn(achievements, achievement:New(659, tmpCategories[70], nil, nil, nil, nil)));
    tmpCategories[70]:AddAchievement(InsertAndReturn(achievements, achievement:New(680, tmpCategories[70], nil, nil, nil, nil)));
    tmpCategories[71] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(254), {269, 270, 271}, nil)); -- The Arcatraz
    tmpCategories[56]:AddCategory(tmpCategories[71]);
    tmpCategories[71]:AddAchievement(InsertAndReturn(achievements, achievement:New(660, tmpCategories[71], nil, nil, nil, nil)));
    tmpCategories[71]:AddAchievement(InsertAndReturn(achievements, achievement:New(681, tmpCategories[71], nil, nil, nil, nil)));
    tmpCategories[72] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(249), {348, 349}, nil)); -- Magisters Terrace
    tmpCategories[56]:AddCategory(tmpCategories[72]);
    tmpCategories[72]:AddAchievement(InsertAndReturn(achievements, achievement:New(661, tmpCategories[72], nil, nil, nil, nil)));
    tmpCategories[72]:AddAchievement(InsertAndReturn(achievements, achievement:New(682, tmpCategories[72], nil, nil, nil, nil)));
    tmpCategories[72]:AddAchievement(InsertAndReturn(achievements, achievement:New(884, tmpCategories[72], nil, nil, nil, nil)));
    tmpCategories[73] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271), nil, nil)); -- Raids
    tmpCategories[55]:AddCategory(tmpCategories[73]);
    tmpCategories[73]:AddAchievement(InsertAndReturn(achievements, achievement:New(1286, tmpCategories[73], nil, nil, nil, nil)));
    tmpCategories[74] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(745), {350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366}, nil)); -- Karazhan
    tmpCategories[73]:AddCategory(tmpCategories[74]);
    tmpCategories[74]:AddAchievement(InsertAndReturn(achievements, achievement:New(690, tmpCategories[74], nil, nil, nil, nil)));
    tmpCategories[74]:AddAchievement(InsertAndReturn(achievements, achievement:New(882, tmpCategories[74], nil, nil, nil, nil)));
    tmpCategories[75] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(746), {330}, nil)); -- Gruul's Lair
    tmpCategories[73]:AddCategory(tmpCategories[75]);
    tmpCategories[75]:AddAchievement(InsertAndReturn(achievements, achievement:New(692, tmpCategories[75], nil, nil, nil, nil)));
    tmpCategories[76] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(747), {331}, nil)); -- Magtheridon's Lair
    tmpCategories[73]:AddCategory(tmpCategories[76]);
    tmpCategories[76]:AddAchievement(InsertAndReturn(achievements, achievement:New(693, tmpCategories[76], nil, nil, nil, nil)));
    tmpCategories[77] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(748), {332}, nil)); -- Serpentshrine Cavern
    tmpCategories[73]:AddCategory(tmpCategories[77]);
    tmpCategories[77]:AddAchievement(InsertAndReturn(achievements, achievement:New(694, tmpCategories[77], nil, nil, nil, nil)));
    tmpCategories[78] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(749), {334}, nil)); -- The Eye
    tmpCategories[73]:AddCategory(tmpCategories[78]);
    tmpCategories[78]:AddAchievement(InsertAndReturn(achievements, achievement:New(696, tmpCategories[78], nil, nil, nil, nil)));
    tmpCategories[78]:AddAchievement(InsertAndReturn(achievements, achievement:New(885, tmpCategories[78], nil, nil, nil, nil)));
    tmpCategories[79] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(750), {329}, nil)); -- The Battle for Mount Hyjal
    tmpCategories[73]:AddCategory(tmpCategories[79]);
    tmpCategories[79]:AddAchievement(InsertAndReturn(achievements, achievement:New(695, tmpCategories[79], nil, nil, nil, nil)));
    tmpCategories[80] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(751), {339, 340, 341, 342, 343, 344, 345, 346}, nil)); -- Black Temple
    tmpCategories[73]:AddCategory(tmpCategories[80]);
    tmpCategories[80]:AddAchievement(InsertAndReturn(achievements, achievement:New(697, tmpCategories[80], nil, nil, nil, nil)));
    tmpCategories[81] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(77) .. " (" .. GetCategoryInfo(15234) .. ")", {333}, nil)); -- Zul'Aman
    tmpCategories[73]:AddCategory(tmpCategories[81]);
    tmpCategories[81]:AddAchievement(InsertAndReturn(achievements, achievement:New(691, tmpCategories[81], nil, nil, false, nil)));
    tmpCategories[81]:AddAchievement(InsertAndReturn(achievements, achievement:New(430, tmpCategories[81], nil, nil, false, nil)));
    tmpCategories[82] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(752), {335, 336}, nil)); -- Sunwell Plateau
    tmpCategories[73]:AddCategory(tmpCategories[82]);
    tmpCategories[82]:AddAchievement(InsertAndReturn(achievements, achievement:New(698, tmpCategories[82], nil, nil, nil, nil)));
    tmpCategories[83] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(14866), nil, nil)); -- Wrath of the Lich King
    tmpCategories[84] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272), nil, nil)); -- Dungeons
    tmpCategories[83]:AddCategory(tmpCategories[84]);
    tmpCategories[84]:AddAchievement(InsertAndReturn(achievements, achievement:New(1288, tmpCategories[84], nil, nil, nil, nil)));
    tmpCategories[84]:AddAchievement(InsertAndReturn(achievements, achievement:New(2136, tmpCategories[84], nil, nil, nil, nil)));
    tmpCategories[86] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(285), {133, 134, 135}, nil)); -- Utgarde Keep
    tmpCategories[84]:AddCategory(tmpCategories[86]);
    tmpCategories[86]:AddAchievement(InsertAndReturn(achievements, achievement:New(1919, tmpCategories[86], nil, nil, nil, nil)));
    tmpCategories[86]:AddAchievement(InsertAndReturn(achievements, achievement:New(477, tmpCategories[86], nil, nil, nil, nil)));
    tmpCategories[86]:AddAchievement(InsertAndReturn(achievements, achievement:New(489, tmpCategories[86], nil, nil, nil, nil)));
    tmpCategories[87] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(281), {129}, nil)); -- The Nexus
    tmpCategories[84]:AddCategory(tmpCategories[87]);
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(2150, tmpCategories[87], nil, nil, nil, nil)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(2037, tmpCategories[87], nil, nil, nil, nil)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(2036, tmpCategories[87], nil, nil, nil, nil)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(478, tmpCategories[87], nil, nil, nil, nil)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(490, tmpCategories[87], nil, nil, nil, nil)));
    tmpCategories[88] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(272), {157, 158, 159}, nil)); -- Azjol-Nerub
    tmpCategories[84]:AddCategory(tmpCategories[88]);
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(1296, tmpCategories[88], nil, nil, nil, nil)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(1297, tmpCategories[88], nil, nil, nil, nil)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(1860, tmpCategories[88], nil, nil, nil, nil)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(480, tmpCategories[88], nil, nil, nil, nil)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(491, tmpCategories[88], nil, nil, nil, nil)));
    tmpCategories[89] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(271), {132}, nil)); -- Ahn'kahet: The Old Kingdom
    tmpCategories[84]:AddCategory(tmpCategories[89]);
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(2038, tmpCategories[89], nil, nil, nil, nil)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(2056, tmpCategories[89], nil, nil, nil, nil)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(1862, tmpCategories[89], nil, nil, nil, nil)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(481, tmpCategories[89], nil, nil, nil, nil)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(492, tmpCategories[89], nil, nil, nil, nil)));
    tmpCategories[90] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(273), {160, 161}, nil)); -- Drak'Tharon Keep
    tmpCategories[84]:AddCategory(tmpCategories[90]);
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(2151, tmpCategories[90], nil, nil, nil, nil)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(2057, tmpCategories[90], nil, nil, nil, nil)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(2039, tmpCategories[90], nil, nil, nil, nil)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(482, tmpCategories[90], nil, nil, nil, nil)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(493, tmpCategories[90], nil, nil, nil, nil)));
    tmpCategories[91] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(283), {168}, nil)); -- The Violet Hold
    tmpCategories[84]:AddCategory(tmpCategories[91]);
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(1865, tmpCategories[91], nil, nil, nil, nil)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(2041, tmpCategories[91], nil, nil, nil, nil)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(2153, tmpCategories[91], nil, nil, nil, nil)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(1816, tmpCategories[91], nil, nil, nil, nil)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(483, tmpCategories[91], nil, nil, nil, nil)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(494, tmpCategories[91], nil, nil, nil, nil)));
    tmpCategories[92] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(274), {154}, nil)); -- Gundrak
    tmpCategories[84]:AddCategory(tmpCategories[92]);
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(2058, tmpCategories[92], nil, nil, nil, nil)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(2040, tmpCategories[92], nil, nil, nil, nil)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(1864, tmpCategories[92], nil, nil, nil, nil)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(2152, tmpCategories[92], nil, nil, nil, nil)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(484, tmpCategories[92], nil, nil, nil, nil)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(495, tmpCategories[92], nil, nil, nil, nil)));
    tmpCategories[93] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(277), {140}, nil)); -- Halls of Stone
    tmpCategories[84]:AddCategory(tmpCategories[93]);
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(1866, tmpCategories[93], nil, nil, nil, nil)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(2154, tmpCategories[93], nil, nil, nil, nil)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(2155, tmpCategories[93], nil, nil, nil, nil)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(485, tmpCategories[93], nil, nil, nil, nil)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(496, tmpCategories[93], nil, nil, nil, nil)));
    tmpCategories[94] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(275), {138, 139}, nil)); -- Halls of Lightning
    tmpCategories[84]:AddCategory(tmpCategories[94]);
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(1834, tmpCategories[94], nil, nil, nil, nil)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(2042, tmpCategories[94], nil, nil, nil, nil)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(1867, tmpCategories[94], nil, nil, nil, nil)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(486, tmpCategories[94], nil, nil, nil, nil)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(497, tmpCategories[94], nil, nil, nil, nil)));
    tmpCategories[95] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(282), {143, 144, 145, 146}, nil)); -- The Oculus
    tmpCategories[84]:AddCategory(tmpCategories[95]);
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(1868, tmpCategories[95], nil, nil, nil, nil)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(2046, tmpCategories[95], nil, nil, nil, nil)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(2045, tmpCategories[95], nil, nil, nil, nil)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(2044, tmpCategories[95], nil, nil, nil, nil)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(1871, tmpCategories[95], nil, nil, nil, nil)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(487, tmpCategories[95], nil, nil, nil, nil)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(498, tmpCategories[95], nil, nil, nil, nil)));
    tmpCategories[97] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(286), {136, 137}, nil)); -- Utgarde Pinnacle
    tmpCategories[84]:AddCategory(tmpCategories[97]);
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(2043, tmpCategories[97], nil, nil, nil, nil)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(1873, tmpCategories[97], nil, nil, nil, nil)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(2156, tmpCategories[97], nil, nil, nil, nil)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(2157, tmpCategories[97], nil, nil, nil, nil)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(488, tmpCategories[97], nil, nil, nil, nil)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(499, tmpCategories[97], nil, nil, nil, nil)));
    tmpCategories[96] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(279), {130, 131}, nil)); -- The Culling of Stratholme
    tmpCategories[84]:AddCategory(tmpCategories[96]);
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(1872, tmpCategories[96], nil, nil, nil, nil)));
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(1817, tmpCategories[96], nil, nil, nil, nil)));
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(479, tmpCategories[96], nil, nil, nil, nil)));
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(500, tmpCategories[96], nil, nil, nil, nil)));
    tmpCategories[98] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(284), {171}, nil)); -- Trial of the Champion
    tmpCategories[84]:AddCategory(tmpCategories[98]);
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(3803, tmpCategories[98], nil, nil, nil, nil)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(3802, tmpCategories[98], nil, nil, nil, nil)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(3804, tmpCategories[98], nil, nil, nil, nil)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(4296, tmpCategories[98], faction.Alliance, nil, nil, nil)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(4298, tmpCategories[98], faction.Alliance, nil, nil, nil)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(3778, tmpCategories[98], faction.Horde, nil, nil, nil)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(4297, tmpCategories[98], faction.Horde, nil, nil, nil)));
    tmpCategories[99] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(280), {183}, nil)); -- The Forge of Souls
    tmpCategories[84]:AddCategory(tmpCategories[99]);
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4522, tmpCategories[99], nil, nil, nil, nil)));
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4523, tmpCategories[99], nil, nil, nil, nil)));
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4516, tmpCategories[99], nil, nil, nil, nil)));
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4519, tmpCategories[99], nil, nil, nil, nil)));
    tmpCategories[100] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(278), {184}, nil)); -- Pit of Saron
    tmpCategories[84]:AddCategory(tmpCategories[100]);
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4524, tmpCategories[100], nil, nil, nil, nil)));
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4525, tmpCategories[100], nil, nil, nil, nil)));
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4517, tmpCategories[100], nil, nil, nil, nil)));
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4520, tmpCategories[100], nil, nil, nil, nil)));
    tmpCategories[101] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(276), {185}, nil)); -- Halls of Reflection
    tmpCategories[84]:AddCategory(tmpCategories[101]);
    tmpCategories[101]:AddAchievement(InsertAndReturn(achievements, achievement:New(4526, tmpCategories[101], nil, nil, nil, nil)));
    tmpCategories[101]:AddAchievement(InsertAndReturn(achievements, achievement:New(4518, tmpCategories[101], nil, nil, nil, nil)));
    tmpCategories[101]:AddAchievement(InsertAndReturn(achievements, achievement:New(4521, tmpCategories[101], nil, nil, nil, nil)));
    tmpCategories[85] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271), nil, nil)); -- Raids
    tmpCategories[83]:AddCategory(tmpCategories[85]);
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2137, tmpCategories[85], nil, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2138, tmpCategories[85], nil, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(12401, tmpCategories[85], nil, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(4602, tmpCategories[85], nil, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(4603, tmpCategories[85], nil, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2957, tmpCategories[85], nil, nil, false, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2958, tmpCategories[85], nil, nil, false, nil)));
    tmpCategories[102] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(753), {156}, nil)); -- Vault of Archavon
    tmpCategories[85]:AddCategory(tmpCategories[102]);
    tmpCategories[103] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3), nil, nil)); -- Vault of Archavon 10
    tmpCategories[102]:AddCategory(tmpCategories[103]);
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(4016, tmpCategories[103], nil, nil, nil, nil)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(1722, tmpCategories[103], nil, nil, nil, nil)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(3136, tmpCategories[103], nil, nil, nil, nil)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(3836, tmpCategories[103], nil, nil, nil, nil)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(4585, tmpCategories[103], nil, nil, nil, nil)));
    tmpCategories[104] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4), nil, nil)); -- Vault of Archavon 25
    tmpCategories[102]:AddCategory(tmpCategories[104]);
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(4017, tmpCategories[104], nil, nil, nil, nil)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(1721, tmpCategories[104], nil, nil, nil, nil)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(3137, tmpCategories[104], nil, nil, nil, nil)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(3837, tmpCategories[104], nil, nil, nil, nil)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(4586, tmpCategories[104], nil, nil, nil, nil)));
    tmpCategories[105] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(754), {162, 163, 164, 165, 166, 167}, nil)); -- Naxxramas
    tmpCategories[85]:AddCategory(tmpCategories[105]);
    tmpCategories[106] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3), nil, nil)); -- Naxxramas 10
    tmpCategories[105]:AddCategory(tmpCategories[106]);
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1997, tmpCategories[106], nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1858, tmpCategories[106], nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1856, tmpCategories[106], nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2178, tmpCategories[106], nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2180, tmpCategories[106], nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1996, tmpCategories[106], nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2182, tmpCategories[106], nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2176, tmpCategories[106], nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2146, tmpCategories[106], nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2184, tmpCategories[106], nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(578, tmpCategories[106], nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(562, tmpCategories[106], nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(564, tmpCategories[106], nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(566, tmpCategories[106], nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(568, tmpCategories[106], nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(572, tmpCategories[106], nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(574, tmpCategories[106], nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(576, tmpCategories[106], nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2187, tmpCategories[106], nil, nil, false, nil)));
    tmpCategories[107] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4), nil, nil)); -- Naxxramas 25
    tmpCategories[105]:AddCategory(tmpCategories[107]);
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2140, tmpCategories[107], nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(1859, tmpCategories[107], nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(1857, tmpCategories[107], nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2179, tmpCategories[107], nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2181, tmpCategories[107], nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2139, tmpCategories[107], nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2183, tmpCategories[107], nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2177, tmpCategories[107], nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2147, tmpCategories[107], nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2185, tmpCategories[107], nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(579, tmpCategories[107], nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(563, tmpCategories[107], nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(565, tmpCategories[107], nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(567, tmpCategories[107], nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(569, tmpCategories[107], nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(573, tmpCategories[107], nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(575, tmpCategories[107], nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(577, tmpCategories[107], nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2186, tmpCategories[107], nil, nil, false, nil)));
    tmpCategories[108] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(755), {155}, nil)); -- The Obsidian Sanctum
    tmpCategories[85]:AddCategory(tmpCategories[108]);
    tmpCategories[109] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3), nil, nil)); -- The Obsidian Sanctum 10
    tmpCategories[108]:AddCategory(tmpCategories[109]);
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2047, tmpCategories[109], nil, nil, nil, nil)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2049, tmpCategories[109], nil, nil, nil, nil)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2050, tmpCategories[109], nil, nil, nil, nil)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2051, tmpCategories[109], nil, nil, nil, nil)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(624, tmpCategories[109], nil, nil, nil, nil)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(1876, tmpCategories[109], nil, nil, nil, nil)));
    tmpCategories[110] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4), nil, nil)); -- The Obsidian Sanctum 25
    tmpCategories[108]:AddCategory(tmpCategories[110]);
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2048, tmpCategories[110], nil, nil, nil, nil)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2052, tmpCategories[110], nil, nil, nil, nil)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2053, tmpCategories[110], nil, nil, nil, nil)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2054, tmpCategories[110], nil, nil, nil, nil)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(1877, tmpCategories[110], nil, nil, nil, nil)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(625, tmpCategories[110], nil, nil, nil, nil)));
    tmpCategories[111] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(756), {141}, nil)); -- The Eye of Eternity
    tmpCategories[85]:AddCategory(tmpCategories[111]);
    tmpCategories[112] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3), nil, nil)); -- The Eye of Eternity 10
    tmpCategories[111]:AddCategory(tmpCategories[112]);
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(2148, tmpCategories[112], nil, nil, nil, nil)));
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(1874, tmpCategories[112], nil, nil, nil, nil)));
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(1869, tmpCategories[112], nil, nil, nil, nil)));
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(622, tmpCategories[112], nil, nil, nil, nil)));
    tmpCategories[113] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4), nil, nil)); -- The Eye of Eternity 25
    tmpCategories[111]:AddCategory(tmpCategories[113]);
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(2149, tmpCategories[113], nil, nil, nil, nil)));
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(1875, tmpCategories[113], nil, nil, nil, nil)));
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(1870, tmpCategories[113], nil, nil, nil, nil)));
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(623, tmpCategories[113], nil, nil, nil, nil)));
    tmpCategories[114] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(759), {147, 148, 149, 150, 151, 152}, nil)); -- Ulduar
    tmpCategories[85]:AddCategory(tmpCategories[114]);
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12312, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12314, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12313, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12316, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12315, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12317, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12318, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12319, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12320, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12323, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12324, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12325, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12321, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12322, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12326, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12327, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12328, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12329, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12330, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12335, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12336, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12332, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12333, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12334, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12339, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12340, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12337, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12338, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12342, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12341, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12343, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12344, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12345, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12346, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12347, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12348, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12349, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12350, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12351, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12352, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12360, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12361, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12362, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12363, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12364, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12365, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12366, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12367, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12368, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12369, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12372, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12373, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12384, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12395, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12396, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12397, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12398, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12385, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12386, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12387, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12388, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12400, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12297, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12302, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12309, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12310, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12311, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12399, tmpCategories[114], nil, nil, nil, nil)));
    tmpCategories[115] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3) .. " (" .. GetCategoryInfo(15234) .. ")", nil, nil)); -- Ulduar 10
    tmpCategories[114]:AddCategory(tmpCategories[115]);
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3097, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2907, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2905, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2911, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2909, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2913, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2914, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2915, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3056, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2925, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2927, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2930, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2919, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2923, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2931, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2933, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2934, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2937, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3058, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2945, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2947, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2939, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2940, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2941, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2955, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2959, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2951, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2953, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3076, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3006, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2961, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2963, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2967, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2969, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3182, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2971, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2973, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2975, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2977, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3176, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2979, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2980, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2985, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2982, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3177, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3178, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3179, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2989, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3138, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3180, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2996, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3181, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3009, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3008, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3012, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3014, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3015, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3157, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3141, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3158, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3159, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3003, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2886, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2888, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2890, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2892, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2894, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3036, tmpCategories[115], nil, nil, false, nil)));
    tmpCategories[116] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4) .. " (" .. GetCategoryInfo(15234) .. ")", nil, nil)); -- Ulduar 25
    tmpCategories[114]:AddCategory(tmpCategories[116]);
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3098, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2908, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2906, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2912, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2910, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2918, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2916, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2917, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3057, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2926, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2928, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2929, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2921, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2924, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2932, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2935, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2936, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2938, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3059, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2946, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2948, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2942, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2943, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2944, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2956, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2960, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2952, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2954, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3077, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3007, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2962, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2965, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2968, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2970, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3184, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2972, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2974, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2976, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2978, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3183, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3118, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2981, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2984, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2983, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3185, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3186, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3187, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3237, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2995, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3189, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2997, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3188, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3011, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3010, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3013, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3017, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3016, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3161, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3162, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3163, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3164, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3002, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2887, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2889, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2891, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2893, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2895, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3037, tmpCategories[116], nil, nil, false, nil)));
    tmpCategories[117] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(757), {172, 173}, nil)); -- Trial of the Crusader
    tmpCategories[85]:AddCategory(tmpCategories[117]);
    tmpCategories[118] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3), nil, nil)); -- Trial of the Crusader 10
    tmpCategories[117]:AddCategory(tmpCategories[118]);
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3797, tmpCategories[118], nil, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3936, tmpCategories[118], nil, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3996, tmpCategories[118], nil, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3798, tmpCategories[118], nil, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3799, tmpCategories[118], nil, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3800, tmpCategories[118], nil, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3917, tmpCategories[118], nil, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3918, tmpCategories[118], nil, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3808, tmpCategories[118], nil, nil, false, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3809, tmpCategories[118], nil, nil, false, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3810, tmpCategories[118], nil, nil, false, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(4080, tmpCategories[118], nil, nil, false, nil)));
    tmpCategories[119] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4), nil, nil)); -- Trial of the Crusader 25
    tmpCategories[117]:AddCategory(tmpCategories[119]);
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3813, tmpCategories[119], nil, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3937, tmpCategories[119], nil, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3997, tmpCategories[119], nil, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3815, tmpCategories[119], nil, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3816, tmpCategories[119], nil, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3916, tmpCategories[119], nil, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3812, tmpCategories[119], nil, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3817, tmpCategories[119], nil, nil, false, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3818, tmpCategories[119], nil, nil, false, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3819, tmpCategories[119], nil, nil, false, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(4156, tmpCategories[119], faction.Alliance, nil, false, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(4079, tmpCategories[119], faction.Horde, nil, false, nil)));
    tmpCategories[120] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(760), {248}, nil)); -- Onyxia's Lair
    tmpCategories[85]:AddCategory(tmpCategories[120]);
    tmpCategories[121] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3), nil, nil)); -- Onyxia's Lair 10
    tmpCategories[120]:AddCategory(tmpCategories[121]);
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4402, tmpCategories[121], nil, nil, nil, nil)));
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4403, tmpCategories[121], nil, nil, nil, nil)));
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4404, tmpCategories[121], nil, nil, nil, nil)));
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4396, tmpCategories[121], nil, nil, nil, nil)));
    tmpCategories[122] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4), nil, nil)); -- Onyxia's Lair 25
    tmpCategories[120]:AddCategory(tmpCategories[122]);
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4405, tmpCategories[122], nil, nil, nil, nil)));
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4406, tmpCategories[122], nil, nil, nil, nil)));
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4407, tmpCategories[122], nil, nil, nil, nil)));
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4397, tmpCategories[122], nil, nil, nil, nil)));
    tmpCategories[123] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(758), {186, 187, 188, 189, 190, 191, 192, 193}, nil)); -- Icecrown Citadel
    tmpCategories[85]:AddCategory(tmpCategories[123]);
    tmpCategories[124] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3), nil, nil)); -- Icecrown Citadel 10
    tmpCategories[123]:AddCategory(tmpCategories[124]);
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4534, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4535, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4536, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4537, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4577, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4538, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4578, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4582, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4539, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4579, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4580, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4601, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4581, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4531, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4528, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4529, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4527, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4530, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4532, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4628, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4629, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4630, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4631, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4583, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4636, tmpCategories[124], nil, nil, nil, nil)));
    tmpCategories[125] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4), nil, nil)); -- Icecrown Citadel 25
    tmpCategories[123]:AddCategory(tmpCategories[125]);
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4610, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4611, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4612, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4613, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4615, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4614, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4616, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4617, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4618, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4619, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4620, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4621, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4622, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4604, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4605, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4606, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4607, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4597, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4608, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4632, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4633, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4634, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4635, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4584, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4637, tmpCategories[125], nil, nil, nil, nil)));
    tmpCategories[126] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(761), {200}, nil)); -- The Ruby Sanctum
    tmpCategories[85]:AddCategory(tmpCategories[126]);
    tmpCategories[127] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3), nil, nil)); -- The Ruby Sanctum 10
    tmpCategories[126]:AddCategory(tmpCategories[127]);
    tmpCategories[127]:AddAchievement(InsertAndReturn(achievements, achievement:New(4817, tmpCategories[127], nil, nil, nil, nil)));
    tmpCategories[127]:AddAchievement(InsertAndReturn(achievements, achievement:New(4818, tmpCategories[127], nil, nil, nil, nil)));
    tmpCategories[128] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4), nil, nil)); -- The Ruby Sanctum 25
    tmpCategories[126]:AddCategory(tmpCategories[128]);
    tmpCategories[128]:AddAchievement(InsertAndReturn(achievements, achievement:New(4815, tmpCategories[128], nil, nil, nil, nil)));
    tmpCategories[128]:AddAchievement(InsertAndReturn(achievements, achievement:New(4816, tmpCategories[128], nil, nil, nil, nil)));
    tmpCategories[129] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15072), nil, nil)); -- Cataclysm
    tmpCategories[550] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"], nil, nil)); -- Zones
    tmpCategories[129]:AddCategory(tmpCategories[550]);
    tmpCategories[550]:AddAchievement(InsertAndReturn(achievements, achievement:New(4875, tmpCategories[550], nil, nil, nil, nil)));
    tmpCategories[550]:AddAchievement(InsertAndReturn(achievements, achievement:New(4827, tmpCategories[550], nil, nil, nil, nil)));
    tmpCategories[550]:AddAchievement(InsertAndReturn(achievements, achievement:New(5518, tmpCategories[550], nil, nil, nil, nil)));
    tmpCategories[550]:AddAchievement(InsertAndReturn(achievements, achievement:New(5548, tmpCategories[550], nil, nil, nil, nil)));
    tmpCategories[550]:AddAchievement(InsertAndReturn(achievements, achievement:New(5754, tmpCategories[550], nil, nil, nil, nil)));
    tmpCategories[550]:AddAchievement(InsertAndReturn(achievements, achievement:New(5753, tmpCategories[550], nil, nil, nil, nil)));
    tmpCategories[550]:AddAchievement(InsertAndReturn(achievements, achievement:New(4881, tmpCategories[550], nil, nil, nil, nil)));
    tmpCategories[551] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(203).name, {201, 203, 204, 205}, nil)); -- Vashj'ir
    tmpCategories[550]:AddCategory(tmpCategories[551]);
    tmpCategories[557] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[551]:AddCategory(tmpCategories[557]);
    tmpCategories[557]:AddAchievement(InsertAndReturn(achievements, achievement:New(4869, tmpCategories[557], faction.Alliance, nil, nil, nil)));
    tmpCategories[557]:AddAchievement(InsertAndReturn(achievements, achievement:New(4982, tmpCategories[557], faction.Horde, nil, nil, nil)));
    tmpCategories[557]:AddAchievement(InsertAndReturn(achievements, achievement:New(5452, tmpCategories[557], nil, nil, nil, nil)));
    tmpCategories[557]:AddAchievement(InsertAndReturn(achievements, achievement:New(5318, tmpCategories[557], faction.Alliance, nil, nil, nil)));
    tmpCategories[557]:AddAchievement(InsertAndReturn(achievements, achievement:New(5319, tmpCategories[557], faction.Horde, nil, nil, nil)));
    tmpCategories[564] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[551]:AddCategory(tmpCategories[564]);
    tmpCategories[564]:AddAchievement(InsertAndReturn(achievements, achievement:New(4825, tmpCategories[564], nil, nil, nil, nil)));
    tmpCategories[564]:AddAchievement(InsertAndReturn(achievements, achievement:New(4975, tmpCategories[564], nil, nil, nil, nil)));
    tmpCategories[552] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(198).name, {198}, nil)); -- Mount Hyjal
    tmpCategories[550]:AddCategory(tmpCategories[552]);
    tmpCategories[558] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[552]:AddCategory(tmpCategories[558]);
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(4870, tmpCategories[558], nil, nil, nil, nil)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(4959, tmpCategories[558], nil, nil, nil, nil)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5860, tmpCategories[558], nil, nil, nil, nil)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5483, tmpCategories[558], nil, nil, nil, nil)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5859, tmpCategories[558], nil, nil, nil, nil)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5866, tmpCategories[558], nil, nil, nil, nil)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5861, tmpCategories[558], nil, nil, nil, nil)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5870, tmpCategories[558], nil, nil, nil, nil)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5862, tmpCategories[558], nil, nil, nil, nil)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5868, tmpCategories[558], nil, nil, nil, nil)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5864, tmpCategories[558], nil, nil, nil, nil)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5865, tmpCategories[558], nil, nil, nil, nil)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5869, tmpCategories[558], nil, nil, nil, nil)));
    tmpCategories[558]:AddAchievement(InsertAndReturn(achievements, achievement:New(5879, tmpCategories[558], nil, nil, nil, nil)));
    tmpCategories[565] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[552]:AddCategory(tmpCategories[565]);
    tmpCategories[565]:AddAchievement(InsertAndReturn(achievements, achievement:New(4863, tmpCategories[565], nil, nil, nil, nil)));
    tmpCategories[571] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[552]:AddCategory(tmpCategories[571]);
    tmpCategories[571]:AddAchievement(InsertAndReturn(achievements, achievement:New(4882, tmpCategories[571], nil, nil, nil, nil)));
    tmpCategories[553] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(207).name, {207, 208, 209, 729}, nil)); -- Deepholm
    tmpCategories[550]:AddCategory(tmpCategories[553]);
    tmpCategories[559] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[553]:AddCategory(tmpCategories[559]);
    tmpCategories[559]:AddAchievement(InsertAndReturn(achievements, achievement:New(4871, tmpCategories[559], nil, nil, nil, nil)));
    tmpCategories[559]:AddAchievement(InsertAndReturn(achievements, achievement:New(5445, tmpCategories[559], nil, nil, nil, nil)));
    tmpCategories[559]:AddAchievement(InsertAndReturn(achievements, achievement:New(5446, tmpCategories[559], nil, nil, nil, nil)));
    tmpCategories[559]:AddAchievement(InsertAndReturn(achievements, achievement:New(5449, tmpCategories[559], nil, nil, nil, nil)));
    tmpCategories[559]:AddAchievement(InsertAndReturn(achievements, achievement:New(5450, tmpCategories[559], nil, nil, nil, nil)));
    tmpCategories[559]:AddAchievement(InsertAndReturn(achievements, achievement:New(5447, tmpCategories[559], nil, nil, nil, nil)));
    tmpCategories[566] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[553]:AddCategory(tmpCategories[566]);
    tmpCategories[566]:AddAchievement(InsertAndReturn(achievements, achievement:New(4864, tmpCategories[566], nil, nil, nil, nil)));
    tmpCategories[572] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[553]:AddCategory(tmpCategories[572]);
    tmpCategories[572]:AddAchievement(InsertAndReturn(achievements, achievement:New(4883, tmpCategories[572], nil, nil, nil, nil)));
    tmpCategories[554] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(249).name, {249}, nil)); -- Uldum
    tmpCategories[550]:AddCategory(tmpCategories[554]);
    tmpCategories[554]:AddAchievement(InsertAndReturn(achievements, achievement:New(5767, tmpCategories[554], nil, nil, nil, nil)));
    tmpCategories[560] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[554]:AddCategory(tmpCategories[560]);
    tmpCategories[560]:AddAchievement(InsertAndReturn(achievements, achievement:New(4872, tmpCategories[560], nil, nil, nil, nil)));
    tmpCategories[560]:AddAchievement(InsertAndReturn(achievements, achievement:New(4961, tmpCategories[560], nil, nil, nil, nil)));
    tmpCategories[560]:AddAchievement(InsertAndReturn(achievements, achievement:New(5317, tmpCategories[560], nil, nil, nil, nil)));
    tmpCategories[567] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[554]:AddCategory(tmpCategories[567]);
    tmpCategories[567]:AddAchievement(InsertAndReturn(achievements, achievement:New(4865, tmpCategories[567], nil, nil, nil, nil)));
    tmpCategories[574] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[554]:AddCategory(tmpCategories[574]);
    tmpCategories[574]:AddAchievement(InsertAndReturn(achievements, achievement:New(4884, tmpCategories[574], nil, nil, nil, nil)));
    tmpCategories[555] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(241).name, {241}, nil)); -- Twilight Highlands
    tmpCategories[550]:AddCategory(tmpCategories[555]);
    tmpCategories[561] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[555]:AddCategory(tmpCategories[561]);
    tmpCategories[561]:AddAchievement(InsertAndReturn(achievements, achievement:New(4873, tmpCategories[561], faction.Alliance, nil, nil, nil)));
    tmpCategories[561]:AddAchievement(InsertAndReturn(achievements, achievement:New(5501, tmpCategories[561], faction.Horde, nil, nil, nil)));
    tmpCategories[561]:AddAchievement(InsertAndReturn(achievements, achievement:New(4960, tmpCategories[561], nil, nil, nil, nil)));
    tmpCategories[561]:AddAchievement(InsertAndReturn(achievements, achievement:New(5481, tmpCategories[561], faction.Alliance, nil, nil, nil)));
    tmpCategories[561]:AddAchievement(InsertAndReturn(achievements, achievement:New(5482, tmpCategories[561], faction.Horde, nil, nil, nil)));
    tmpCategories[561]:AddAchievement(InsertAndReturn(achievements, achievement:New(5320, tmpCategories[561], faction.Alliance, nil, nil, nil)));
    tmpCategories[561]:AddAchievement(InsertAndReturn(achievements, achievement:New(5321, tmpCategories[561], faction.Horde, nil, nil, nil)));
    tmpCategories[561]:AddAchievement(InsertAndReturn(achievements, achievement:New(5451, tmpCategories[561], nil, nil, nil, nil)));
    tmpCategories[568] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[555]:AddCategory(tmpCategories[568]);
    tmpCategories[568]:AddAchievement(InsertAndReturn(achievements, achievement:New(4866, tmpCategories[568], nil, nil, nil, nil)));
    tmpCategories[573] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[555]:AddCategory(tmpCategories[573]);
    tmpCategories[573]:AddAchievement(InsertAndReturn(achievements, achievement:New(4885, tmpCategories[573], faction.Alliance, nil, nil, nil)));
    tmpCategories[573]:AddAchievement(InsertAndReturn(achievements, achievement:New(4886, tmpCategories[573], faction.Horde, nil, nil, nil)));
    tmpCategories[556] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(338).name, {338}, nil)); -- Molten Front
    tmpCategories[550]:AddCategory(tmpCategories[556]);
    tmpCategories[556]:AddAchievement(InsertAndReturn(achievements, achievement:New(5859, tmpCategories[556], nil, nil, nil, nil)));
    tmpCategories[556]:AddAchievement(InsertAndReturn(achievements, achievement:New(5866, tmpCategories[556], nil, nil, nil, nil)));
    tmpCategories[556]:AddAchievement(InsertAndReturn(achievements, achievement:New(5867, tmpCategories[556], nil, nil, nil, nil)));
    tmpCategories[556]:AddAchievement(InsertAndReturn(achievements, achievement:New(5871, tmpCategories[556], nil, nil, nil, nil)));
    tmpCategories[556]:AddAchievement(InsertAndReturn(achievements, achievement:New(5872, tmpCategories[556], nil, nil, nil, nil)));
    tmpCategories[556]:AddAchievement(InsertAndReturn(achievements, achievement:New(5874, tmpCategories[556], nil, nil, nil, nil)));
    tmpCategories[556]:AddAchievement(InsertAndReturn(achievements, achievement:New(5873, tmpCategories[556], nil, nil, nil, nil)));
    tmpCategories[556]:AddAchievement(InsertAndReturn(achievements, achievement:New(5879, tmpCategories[556], nil, nil, nil, nil)));
    tmpCategories[130] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272), nil, nil)); -- Dungeons
    tmpCategories[129]:AddCategory(tmpCategories[130]);
    tmpCategories[130]:AddAchievement(InsertAndReturn(achievements, achievement:New(4844, tmpCategories[130], nil, nil, nil, nil)));
    tmpCategories[130]:AddAchievement(InsertAndReturn(achievements, achievement:New(4845, tmpCategories[130], nil, nil, nil, nil)));
    tmpCategories[132] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(66), {283, 284}, nil)); -- Blackrock Caverns
    tmpCategories[130]:AddCategory(tmpCategories[132]);
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5281, tmpCategories[132], nil, nil, nil, nil)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5282, tmpCategories[132], nil, nil, nil, nil)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5283, tmpCategories[132], nil, nil, nil, nil)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5284, tmpCategories[132], nil, nil, nil, nil)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(4833, tmpCategories[132], nil, nil, nil, nil)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5060, tmpCategories[132], nil, nil, nil, nil)));
    tmpCategories[133] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(65), {322, 323}, nil)); -- Throne of the Tides
    tmpCategories[130]:AddCategory(tmpCategories[133]);
    tmpCategories[133]:AddAchievement(InsertAndReturn(achievements, achievement:New(5285, tmpCategories[133], nil, nil, nil, nil)));
    tmpCategories[133]:AddAchievement(InsertAndReturn(achievements, achievement:New(5286, tmpCategories[133], nil, nil, nil, nil)));
    tmpCategories[133]:AddAchievement(InsertAndReturn(achievements, achievement:New(4839, tmpCategories[133], nil, nil, nil, nil)));
    tmpCategories[133]:AddAchievement(InsertAndReturn(achievements, achievement:New(5061, tmpCategories[133], nil, nil, nil, nil)));
    tmpCategories[134] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(67), {324}, nil)); -- The Stonecore
    tmpCategories[130]:AddCategory(tmpCategories[134]);
    tmpCategories[134]:AddAchievement(InsertAndReturn(achievements, achievement:New(5287, tmpCategories[134], nil, nil, nil, nil)));
    tmpCategories[134]:AddAchievement(InsertAndReturn(achievements, achievement:New(4846, tmpCategories[134], nil, nil, nil, nil)));
    tmpCategories[134]:AddAchievement(InsertAndReturn(achievements, achievement:New(5063, tmpCategories[134], nil, nil, nil, nil)));
    tmpCategories[135] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(68), {325}, nil)); -- The Vortex Pinnacle
    tmpCategories[130]:AddCategory(tmpCategories[135]);
    tmpCategories[135]:AddAchievement(InsertAndReturn(achievements, achievement:New(5289, tmpCategories[135], nil, nil, nil, nil)));
    tmpCategories[135]:AddAchievement(InsertAndReturn(achievements, achievement:New(5288, tmpCategories[135], nil, nil, nil, nil)));
    tmpCategories[135]:AddAchievement(InsertAndReturn(achievements, achievement:New(4847, tmpCategories[135], nil, nil, nil, nil)));
    tmpCategories[135]:AddAchievement(InsertAndReturn(achievements, achievement:New(5064, tmpCategories[135], nil, nil, nil, nil)));
    tmpCategories[136] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(71), {293}, nil)); -- Grim Batol
    tmpCategories[130]:AddCategory(tmpCategories[136]);
    tmpCategories[136]:AddAchievement(InsertAndReturn(achievements, achievement:New(5297, tmpCategories[136], nil, nil, nil, nil)));
    tmpCategories[136]:AddAchievement(InsertAndReturn(achievements, achievement:New(5298, tmpCategories[136], nil, nil, nil, nil)));
    tmpCategories[136]:AddAchievement(InsertAndReturn(achievements, achievement:New(4840, tmpCategories[136], nil, nil, nil, nil)));
    tmpCategories[136]:AddAchievement(InsertAndReturn(achievements, achievement:New(5062, tmpCategories[136], nil, nil, nil, nil)));
    tmpCategories[137] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(70), {297, 298, 299}, nil)); -- Halls of Origination
    tmpCategories[130]:AddCategory(tmpCategories[137]);
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5293, tmpCategories[137], nil, nil, nil, nil)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5294, tmpCategories[137], nil, nil, nil, nil)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5296, tmpCategories[137], nil, nil, nil, nil)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5295, tmpCategories[137], nil, nil, nil, nil)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(4841, tmpCategories[137], nil, nil, nil, nil)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5065, tmpCategories[137], nil, nil, nil, nil)));
    tmpCategories[138] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(69), {277}, nil)); -- Lost City of the Tol'vir
    tmpCategories[130]:AddCategory(tmpCategories[138]);
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(5291, tmpCategories[138], nil, nil, nil, nil)));
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(5290, tmpCategories[138], nil, nil, nil, nil)));
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(5292, tmpCategories[138], nil, nil, nil, nil)));
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(4848, tmpCategories[138], nil, nil, nil, nil)));
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(5066, tmpCategories[138], nil, nil, nil, nil)));
    tmpCategories[139] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(63), {291, 292}, nil)); -- Deadmines
    tmpCategories[130]:AddCategory(tmpCategories[139]);
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5366, tmpCategories[139], nil, nil, nil, nil)));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5367, tmpCategories[139], nil, nil, nil, nil)));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5368, tmpCategories[139], nil, nil, nil, nil)));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5369, tmpCategories[139], nil, nil, nil, nil)));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5370, tmpCategories[139], nil, nil, nil, nil)));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5371, tmpCategories[139], nil, nil, nil, nil)));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(628, tmpCategories[139], nil, nil, nil, nil)));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5083, tmpCategories[139], nil, nil, nil, nil)));
    tmpCategories[140] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(64), {310, 311, 312, 313, 314, 315, 316}, nil)); -- Shadowfang Keep
    tmpCategories[130]:AddCategory(tmpCategories[140]);
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(5503, tmpCategories[140], nil, nil, nil, nil)));
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(5504, tmpCategories[140], nil, nil, nil, nil)));
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(5505, tmpCategories[140], nil, nil, nil, nil)));
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(631, tmpCategories[140], nil, nil, nil, nil)));
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(5093, tmpCategories[140], nil, nil, nil, nil)));
    tmpCategories[141] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(76), {337}, nil)); -- Zul'Gurub
    tmpCategories[130]:AddCategory(tmpCategories[141]);
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5743, tmpCategories[141], nil, nil, nil, nil)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5762, tmpCategories[141], nil, nil, nil, nil)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5765, tmpCategories[141], nil, nil, nil, nil)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5759, tmpCategories[141], nil, nil, nil, nil)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5744, tmpCategories[141], nil, nil, nil, nil)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5768, tmpCategories[141], nil, nil, nil, nil)));
    tmpCategories[142] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(77), {333}, nil)); -- Zul'Aman
    tmpCategories[130]:AddCategory(tmpCategories[142]);
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5858, tmpCategories[142], nil, nil, nil, nil)));
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5750, tmpCategories[142], nil, nil, nil, nil)));
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5761, tmpCategories[142], nil, nil, nil, nil)));
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5760, tmpCategories[142], nil, nil, nil, nil)));
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5769, tmpCategories[142], nil, nil, nil, nil)));
    tmpCategories[143] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(184), {401, 402, 403, 404, 405, 406}, nil)); -- End Time
    tmpCategories[130]:AddCategory(tmpCategories[143]);
    tmpCategories[143]:AddAchievement(InsertAndReturn(achievements, achievement:New(5995, tmpCategories[143], nil, nil, nil, nil)));
    tmpCategories[143]:AddAchievement(InsertAndReturn(achievements, achievement:New(6130, tmpCategories[143], nil, nil, nil, nil)));
    tmpCategories[143]:AddAchievement(InsertAndReturn(achievements, achievement:New(6117, tmpCategories[143], nil, nil, nil, nil)));
    tmpCategories[144] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(185), {398}, nil)); -- Well of Eternity
    tmpCategories[130]:AddCategory(tmpCategories[144]);
    tmpCategories[144]:AddAchievement(InsertAndReturn(achievements, achievement:New(6127, tmpCategories[144], nil, nil, nil, nil)));
    tmpCategories[144]:AddAchievement(InsertAndReturn(achievements, achievement:New(6070, tmpCategories[144], nil, nil, nil, nil)));
    tmpCategories[144]:AddAchievement(InsertAndReturn(achievements, achievement:New(6118, tmpCategories[144], nil, nil, nil, nil)));
    tmpCategories[145] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(186), {399, 400}, nil)); -- Hour of Twilight
    tmpCategories[130]:AddCategory(tmpCategories[145]);
    tmpCategories[145]:AddAchievement(InsertAndReturn(achievements, achievement:New(6132, tmpCategories[145], nil, nil, nil, nil)));
    tmpCategories[145]:AddAchievement(InsertAndReturn(achievements, achievement:New(6119, tmpCategories[145], nil, nil, nil, nil)));
    tmpCategories[131] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271), nil, nil)); -- Raids
    tmpCategories[129]:AddCategory(tmpCategories[131]);
    tmpCategories[131]:AddAchievement(InsertAndReturn(achievements, achievement:New(4853, tmpCategories[131], nil, nil, nil, nil)));
    tmpCategories[131]:AddAchievement(InsertAndReturn(achievements, achievement:New(5828, tmpCategories[131], nil, nil, nil, nil)));
    tmpCategories[131]:AddAchievement(InsertAndReturn(achievements, achievement:New(6169, tmpCategories[131], nil, nil, nil, nil)));
    tmpCategories[146] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(75), {282}, nil)); -- Baradin Hold
    tmpCategories[131]:AddCategory(tmpCategories[146]);
    tmpCategories[146]:AddAchievement(InsertAndReturn(achievements, achievement:New(5416, tmpCategories[146], nil, nil, nil, nil)));
    tmpCategories[146]:AddAchievement(InsertAndReturn(achievements, achievement:New(6045, tmpCategories[146], nil, nil, nil, nil)));
    tmpCategories[146]:AddAchievement(InsertAndReturn(achievements, achievement:New(6108, tmpCategories[146], nil, nil, nil, nil)));
    tmpCategories[147] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(73), {285, 286}, nil)); -- Blackwing Descent
    tmpCategories[131]:AddCategory(tmpCategories[147]);
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5306, tmpCategories[147], nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5307, tmpCategories[147], nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5309, tmpCategories[147], nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5308, tmpCategories[147], nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5310, tmpCategories[147], nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(4849, tmpCategories[147], nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(4842, tmpCategories[147], nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5094, tmpCategories[147], nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5107, tmpCategories[147], nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5115, tmpCategories[147], nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5109, tmpCategories[147], nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5108, tmpCategories[147], nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5116, tmpCategories[147], nil, nil, nil, nil)));
    tmpCategories[148] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(72), {294, 295, 296}, nil)); -- The Bastion of Twilight
    tmpCategories[131]:AddCategory(tmpCategories[148]);
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5300, tmpCategories[148], nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(4852, tmpCategories[148], nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5311, tmpCategories[148], nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5312, tmpCategories[148], nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5118, tmpCategories[148], nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5117, tmpCategories[148], nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5119, tmpCategories[148], nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5120, tmpCategories[148], nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5121, tmpCategories[148], nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(4850, tmpCategories[148], nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5313, tmpCategories[148], nil, nil, false, nil)));
    tmpCategories[149] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(74), {328}, nil)); -- Throne of the Four Winds
    tmpCategories[131]:AddCategory(tmpCategories[149]);
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(5304, tmpCategories[149], nil, nil, nil, nil)));
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(5305, tmpCategories[149], nil, nil, nil, nil)));
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(5122, tmpCategories[149], nil, nil, nil, nil)));
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(5123, tmpCategories[149], nil, nil, nil, nil)));
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(4851, tmpCategories[149], nil, nil, nil, nil)));
    tmpCategories[150] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(78), {367, 368, 369}, nil)); -- Firelands
    tmpCategories[131]:AddCategory(tmpCategories[150]);
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5821, tmpCategories[150], nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5813, tmpCategories[150], nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5810, tmpCategories[150], nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5829, tmpCategories[150], nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5830, tmpCategories[150], nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5799, tmpCategories[150], nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5855, tmpCategories[150], nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5807, tmpCategories[150], nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5809, tmpCategories[150], nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5808, tmpCategories[150], nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5806, tmpCategories[150], nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5805, tmpCategories[150], nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5804, tmpCategories[150], nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5803, tmpCategories[150], nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5802, tmpCategories[150], nil, nil, nil, nil)));
    tmpCategories[576] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[150]:AddCategory(tmpCategories[576]);
    tmpCategories[576]:AddAchievement(InsertAndReturn(achievements, achievement:New(5827, tmpCategories[576], nil, nil, nil, nil)));
    tmpCategories[151] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(187), {409, 410, 411, 412, 413, 414, 415}, nil)); -- Dragon Soul
    tmpCategories[131]:AddCategory(tmpCategories[151]);
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6174, tmpCategories[151], nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6128, tmpCategories[151], nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6129, tmpCategories[151], nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6175, tmpCategories[151], nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6084, tmpCategories[151], nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6105, tmpCategories[151], nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6133, tmpCategories[151], nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6180, tmpCategories[151], nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6109, tmpCategories[151], nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6110, tmpCategories[151], nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6111, tmpCategories[151], nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6112, tmpCategories[151], nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6113, tmpCategories[151], nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6114, tmpCategories[151], nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6115, tmpCategories[151], nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6116, tmpCategories[151], nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6106, tmpCategories[151], nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6107, tmpCategories[151], nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6177, tmpCategories[151], nil, nil, nil, nil)));
    tmpCategories[547] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15075), {244, 245}, nil)); -- Tol Barad
    tmpCategories[129]:AddCategory(tmpCategories[547]);
    tmpCategories[547]:AddAchievement(InsertAndReturn(achievements, achievement:New(5489, tmpCategories[547], faction.Alliance, nil, nil, nil)));
    tmpCategories[547]:AddAchievement(InsertAndReturn(achievements, achievement:New(5490, tmpCategories[547], faction.Horde, nil, nil, nil)));
    tmpCategories[563] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[547]:AddCategory(tmpCategories[563]);
    tmpCategories[563]:AddAchievement(InsertAndReturn(achievements, achievement:New(4874, tmpCategories[563], nil, nil, nil, nil)));
    tmpCategories[563]:AddAchievement(InsertAndReturn(achievements, achievement:New(5718, tmpCategories[563], faction.Alliance, nil, nil, nil)));
    tmpCategories[563]:AddAchievement(InsertAndReturn(achievements, achievement:New(5719, tmpCategories[563], faction.Horde, nil, nil, nil)));
    tmpCategories[569] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270), nil, nil)); -- PvP
    tmpCategories[547]:AddCategory(tmpCategories[569]);
    tmpCategories[569]:AddAchievement(InsertAndReturn(achievements, achievement:New(5412, tmpCategories[569], nil, nil, nil, nil)));
    tmpCategories[569]:AddAchievement(InsertAndReturn(achievements, achievement:New(5418, tmpCategories[569], faction.Horde, nil, nil, nil)));
    tmpCategories[569]:AddAchievement(InsertAndReturn(achievements, achievement:New(5417, tmpCategories[569], faction.Alliance, nil, nil, nil)));
    tmpCategories[569]:AddAchievement(InsertAndReturn(achievements, achievement:New(5415, tmpCategories[569], nil, nil, nil, nil)));
    tmpCategories[569]:AddAchievement(InsertAndReturn(achievements, achievement:New(5488, tmpCategories[569], nil, nil, nil, nil)));
    tmpCategories[569]:AddAchievement(InsertAndReturn(achievements, achievement:New(5487, tmpCategories[569], nil, nil, nil, nil)));
    tmpCategories[569]:AddAchievement(InsertAndReturn(achievements, achievement:New(5486, tmpCategories[569], nil, nil, nil, nil)));
    tmpCategories[575] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[547]:AddCategory(tmpCategories[575]);
    tmpCategories[575]:AddAchievement(InsertAndReturn(achievements, achievement:New(5375, tmpCategories[575], faction.Alliance, nil, nil, nil)));
    tmpCategories[575]:AddAchievement(InsertAndReturn(achievements, achievement:New(5376, tmpCategories[575], faction.Horde, nil, nil, nil)));
    tmpCategories[189] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15164), nil, nil)); -- Mists of Pandaria
    tmpCategories[491] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"], nil, nil)); -- Zones
    tmpCategories[189]:AddCategory(tmpCategories[491]);
    tmpCategories[526] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(424).name, nil, nil)); -- Pandaria
    tmpCategories[491]:AddCategory(tmpCategories[526]);
    tmpCategories[527] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[526]:AddCategory(tmpCategories[527]);
    tmpCategories[527]:AddAchievement(InsertAndReturn(achievements, achievement:New(6541, tmpCategories[527], nil, nil, nil, nil)));
    tmpCategories[527]:AddAchievement(InsertAndReturn(achievements, achievement:New(7285, tmpCategories[527], nil, nil, nil, nil)));
    tmpCategories[527]:AddAchievement(InsertAndReturn(achievements, achievement:New(7928, tmpCategories[527], faction.Alliance, nil, nil, nil)));
    tmpCategories[527]:AddAchievement(InsertAndReturn(achievements, achievement:New(7929, tmpCategories[527], faction.Horde, nil, nil, nil)));
    tmpCategories[528] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[526]:AddCategory(tmpCategories[528]);
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(6716, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(6754, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(6846, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(6850, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(6847, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(6855, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(6856, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(6858, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7230, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7281, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7994, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7995, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7996, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7997, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7282, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7283, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7284, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7437, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7438, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7439, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(8078, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(6350, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7329, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[528]:AddAchievement(InsertAndReturn(achievements, achievement:New(7330, tmpCategories[528], nil, nil, nil, nil)));
    tmpCategories[529] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[526]:AddCategory(tmpCategories[529]);
    tmpCategories[529]:AddAchievement(InsertAndReturn(achievements, achievement:New(7479, tmpCategories[529], nil, nil, nil, nil)));
    tmpCategories[529]:AddAchievement(InsertAndReturn(achievements, achievement:New(6543, tmpCategories[529], nil, nil, nil, nil)));
    tmpCategories[529]:AddAchievement(InsertAndReturn(achievements, achievement:New(6547, tmpCategories[529], nil, nil, nil, nil)));
    tmpCategories[529]:AddAchievement(InsertAndReturn(achievements, achievement:New(6548, tmpCategories[529], nil, nil, nil, nil)));
    tmpCategories[529]:AddAchievement(InsertAndReturn(achievements, achievement:New(6827, tmpCategories[529], faction.Horde, nil, nil, nil)));
    tmpCategories[529]:AddAchievement(InsertAndReturn(achievements, achievement:New(6828, tmpCategories[529], faction.Alliance, nil, nil, nil)));
    tmpCategories[492] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(371).name, {371, 372, 373, 374, 375}, nil)); -- The Jade Forest
    tmpCategories[491]:AddCategory(tmpCategories[492]);
    tmpCategories[519] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[492]:AddCategory(tmpCategories[519]);
    tmpCategories[519]:AddAchievement(InsertAndReturn(achievements, achievement:New(6300, tmpCategories[519], faction.Alliance, nil, nil, nil)));
    tmpCategories[519]:AddAchievement(InsertAndReturn(achievements, achievement:New(6534, tmpCategories[519], faction.Horde, nil, nil, nil)));
    tmpCategories[519]:AddAchievement(InsertAndReturn(achievements, achievement:New(7289, tmpCategories[519], nil, nil, nil, nil)));
    tmpCategories[519]:AddAchievement(InsertAndReturn(achievements, achievement:New(7290, tmpCategories[519], nil, nil, nil, nil)));
    tmpCategories[519]:AddAchievement(InsertAndReturn(achievements, achievement:New(7291, tmpCategories[519], nil, nil, nil, nil)));
    tmpCategories[545] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[492]:AddCategory(tmpCategories[545]);
    tmpCategories[545]:AddAchievement(InsertAndReturn(achievements, achievement:New(6351, tmpCategories[545], nil, nil, nil, nil)));
    tmpCategories[545]:AddAchievement(InsertAndReturn(achievements, achievement:New(7381, tmpCategories[545], nil, nil, nil, nil)));
    tmpCategories[546] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[492]:AddCategory(tmpCategories[546]);
    tmpCategories[546]:AddAchievement(InsertAndReturn(achievements, achievement:New(6550, tmpCategories[546], nil, nil, nil, nil)));
    tmpCategories[493] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(376).name, {376, 377}, nil)); -- Valley of the Four Winds
    tmpCategories[491]:AddCategory(tmpCategories[493]);
    tmpCategories[493]:AddAchievement(InsertAndReturn(achievements, achievement:New(6517, tmpCategories[493], nil, nil, nil, nil)));
    tmpCategories[516] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[493]:AddCategory(tmpCategories[516]);
    tmpCategories[516]:AddAchievement(InsertAndReturn(achievements, achievement:New(6301, tmpCategories[516], nil, nil, nil, nil)));
    tmpCategories[516]:AddAchievement(InsertAndReturn(achievements, achievement:New(7292, tmpCategories[516], nil, nil, nil, nil)));
    tmpCategories[516]:AddAchievement(InsertAndReturn(achievements, achievement:New(7293, tmpCategories[516], nil, nil, nil, nil)));
    tmpCategories[516]:AddAchievement(InsertAndReturn(achievements, achievement:New(7294, tmpCategories[516], nil, nil, nil, nil)));
    tmpCategories[516]:AddAchievement(InsertAndReturn(achievements, achievement:New(7295, tmpCategories[516], nil, nil, nil, nil)));
    tmpCategories[516]:AddAchievement(InsertAndReturn(achievements, achievement:New(7296, tmpCategories[516], nil, nil, nil, nil)));
    tmpCategories[516]:AddAchievement(InsertAndReturn(achievements, achievement:New(7502, tmpCategories[516], nil, nil, nil, nil)));
    tmpCategories[544] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[493]:AddCategory(tmpCategories[544]);
    tmpCategories[544]:AddAchievement(InsertAndReturn(achievements, achievement:New(6969, tmpCategories[544], nil, nil, nil, nil)));
    tmpCategories[518] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[493]:AddCategory(tmpCategories[518]);
    tmpCategories[518]:AddAchievement(InsertAndReturn(achievements, achievement:New(6544, tmpCategories[518], nil, nil, nil, nil)));
    tmpCategories[518]:AddAchievement(InsertAndReturn(achievements, achievement:New(6551, tmpCategories[518], nil, nil, nil, nil)));
    tmpCategories[518]:AddAchievement(InsertAndReturn(achievements, achievement:New(6552, tmpCategories[518], nil, nil, nil, nil)));
    tmpCategories[494] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(418).name, {418, 419, 420, 421}, nil)); -- Krasarang Wilds
    tmpCategories[491]:AddCategory(tmpCategories[494]);
    tmpCategories[513] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[494]:AddCategory(tmpCategories[513]);
    tmpCategories[513]:AddAchievement(InsertAndReturn(achievements, achievement:New(6535, tmpCategories[513], faction.Alliance, nil, nil, nil)));
    tmpCategories[513]:AddAchievement(InsertAndReturn(achievements, achievement:New(6536, tmpCategories[513], faction.Horde, nil, nil, nil)));
    tmpCategories[513]:AddAchievement(InsertAndReturn(achievements, achievement:New(7287, tmpCategories[513], nil, nil, nil, nil)));
    tmpCategories[514] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[494]:AddCategory(tmpCategories[514]);
    tmpCategories[514]:AddAchievement(InsertAndReturn(achievements, achievement:New(6975, tmpCategories[514], nil, nil, nil, nil)));
    tmpCategories[514]:AddAchievement(InsertAndReturn(achievements, achievement:New(7518, tmpCategories[514], nil, nil, nil, nil)));
    tmpCategories[514]:AddAchievement(InsertAndReturn(achievements, achievement:New(7932, tmpCategories[514], nil, nil, nil, nil)));
    tmpCategories[543] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[494]:AddCategory(tmpCategories[543]);
    tmpCategories[543]:AddAchievement(InsertAndReturn(achievements, achievement:New(8205, tmpCategories[543], faction.Alliance, nil, nil, nil)));
    tmpCategories[543]:AddAchievement(InsertAndReturn(achievements, achievement:New(8206, tmpCategories[543], faction.Horde, nil, nil, nil)));
    tmpCategories[495] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(379).name, {379, 380, 381, 382, 383, 384, 385, 386, 387, 434}, nil)); -- Kun-Lai Summit
    tmpCategories[491]:AddCategory(tmpCategories[495]);
    tmpCategories[495]:AddAchievement(InsertAndReturn(achievements, achievement:New(6480, tmpCategories[495], nil, nil, nil, nil)));
    tmpCategories[510] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[495]:AddCategory(tmpCategories[510]);
    tmpCategories[510]:AddAchievement(InsertAndReturn(achievements, achievement:New(6537, tmpCategories[510], faction.Alliance, nil, nil, nil)));
    tmpCategories[510]:AddAchievement(InsertAndReturn(achievements, achievement:New(6538, tmpCategories[510], faction.Horde, nil, nil, nil)));
    tmpCategories[510]:AddAchievement(InsertAndReturn(achievements, achievement:New(7286, tmpCategories[510], nil, nil, nil, nil)));
    tmpCategories[542] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[495]:AddCategory(tmpCategories[542]);
    tmpCategories[542]:AddAchievement(InsertAndReturn(achievements, achievement:New(6976, tmpCategories[542], nil, nil, nil, nil)));
    tmpCategories[496] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(388).name, {388, 389}, nil)); -- Townlong Steppes
    tmpCategories[491]:AddCategory(tmpCategories[496]);
    tmpCategories[507] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[496]:AddCategory(tmpCategories[507]);
    tmpCategories[507]:AddAchievement(InsertAndReturn(achievements, achievement:New(6539, tmpCategories[507], nil, nil, nil, nil)));
    tmpCategories[507]:AddAchievement(InsertAndReturn(achievements, achievement:New(7288, tmpCategories[507], nil, nil, nil, nil)));
    tmpCategories[507]:AddAchievement(InsertAndReturn(achievements, achievement:New(7297, tmpCategories[507], nil, nil, nil, nil)));
    tmpCategories[507]:AddAchievement(InsertAndReturn(achievements, achievement:New(7298, tmpCategories[507], nil, nil, nil, nil)));
    tmpCategories[507]:AddAchievement(InsertAndReturn(achievements, achievement:New(7299, tmpCategories[507], nil, nil, nil, nil)));
    tmpCategories[507]:AddAchievement(InsertAndReturn(achievements, achievement:New(7307, tmpCategories[507], nil, nil, nil, nil)));
    tmpCategories[507]:AddAchievement(InsertAndReturn(achievements, achievement:New(7308, tmpCategories[507], nil, nil, nil, nil)));
    tmpCategories[507]:AddAchievement(InsertAndReturn(achievements, achievement:New(7309, tmpCategories[507], nil, nil, nil, nil)));
    tmpCategories[507]:AddAchievement(InsertAndReturn(achievements, achievement:New(7310, tmpCategories[507], nil, nil, nil, nil)));
    tmpCategories[540] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[496]:AddCategory(tmpCategories[540]);
    tmpCategories[540]:AddAchievement(InsertAndReturn(achievements, achievement:New(6977, tmpCategories[540], nil, nil, nil, nil)));
    tmpCategories[541] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[496]:AddCategory(tmpCategories[541]);
    tmpCategories[541]:AddAchievement(InsertAndReturn(achievements, achievement:New(6366, tmpCategories[541], nil, nil, nil, nil)));
    tmpCategories[497] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(422).name, {422}, nil)); -- Dread Wastes
    tmpCategories[491]:AddCategory(tmpCategories[497]);
    tmpCategories[504] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[497]:AddCategory(tmpCategories[504]);
    tmpCategories[504]:AddAchievement(InsertAndReturn(achievements, achievement:New(6540, tmpCategories[504], nil, nil, nil, nil)));
    tmpCategories[504]:AddAchievement(InsertAndReturn(achievements, achievement:New(7312, tmpCategories[504], nil, nil, nil, nil)));
    tmpCategories[504]:AddAchievement(InsertAndReturn(achievements, achievement:New(7313, tmpCategories[504], nil, nil, nil, nil)));
    tmpCategories[504]:AddAchievement(InsertAndReturn(achievements, achievement:New(7314, tmpCategories[504], nil, nil, nil, nil)));
    tmpCategories[504]:AddAchievement(InsertAndReturn(achievements, achievement:New(7316, tmpCategories[504], nil, nil, nil, nil)));
    tmpCategories[538] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[497]:AddCategory(tmpCategories[538]);
    tmpCategories[538]:AddAchievement(InsertAndReturn(achievements, achievement:New(6978, tmpCategories[538], nil, nil, nil, nil)));
    tmpCategories[538]:AddAchievement(InsertAndReturn(achievements, achievement:New(6857, tmpCategories[538], nil, nil, nil, nil)));
    tmpCategories[539] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[497]:AddCategory(tmpCategories[539]);
    tmpCategories[539]:AddAchievement(InsertAndReturn(achievements, achievement:New(6545, tmpCategories[539], nil, nil, nil, nil)));
    tmpCategories[539]:AddAchievement(InsertAndReturn(achievements, achievement:New(8023, tmpCategories[539], nil, nil, nil, nil)));
    tmpCategories[498] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(390).name, {390, 391, 392, 393, 394, 395, 396}, nil)); -- Vale of Eternal Blossoms
    tmpCategories[491]:AddCategory(tmpCategories[498]);
    tmpCategories[501] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[498]:AddCategory(tmpCategories[501]);
    tmpCategories[501]:AddAchievement(InsertAndReturn(achievements, achievement:New(7317, tmpCategories[501], nil, nil, nil, nil)));
    tmpCategories[501]:AddAchievement(InsertAndReturn(achievements, achievement:New(7318, tmpCategories[501], nil, nil, nil, nil)));
    tmpCategories[501]:AddAchievement(InsertAndReturn(achievements, achievement:New(7319, tmpCategories[501], nil, nil, nil, nil)));
    tmpCategories[501]:AddAchievement(InsertAndReturn(achievements, achievement:New(7320, tmpCategories[501], nil, nil, nil, nil)));
    tmpCategories[501]:AddAchievement(InsertAndReturn(achievements, achievement:New(7321, tmpCategories[501], nil, nil, nil, nil)));
    tmpCategories[501]:AddAchievement(InsertAndReturn(achievements, achievement:New(7322, tmpCategories[501], nil, nil, nil, nil)));
    tmpCategories[501]:AddAchievement(InsertAndReturn(achievements, achievement:New(7323, tmpCategories[501], nil, nil, nil, nil)));
    tmpCategories[501]:AddAchievement(InsertAndReturn(achievements, achievement:New(7324, tmpCategories[501], nil, nil, nil, nil)));
    tmpCategories[536] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[498]:AddCategory(tmpCategories[536]);
    tmpCategories[536]:AddAchievement(InsertAndReturn(achievements, achievement:New(6979, tmpCategories[536], nil, nil, nil, nil)));
    tmpCategories[537] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[498]:AddCategory(tmpCategories[537]);
    tmpCategories[537]:AddAchievement(InsertAndReturn(achievements, achievement:New(6546, tmpCategories[537], nil, nil, nil, nil)));
    tmpCategories[534] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(507).name, {507}, nil)); -- Isle of Giants
    tmpCategories[491]:AddCategory(tmpCategories[534]);
    tmpCategories[534]:AddAchievement(InsertAndReturn(achievements, achievement:New(8123, tmpCategories[534], nil, nil, nil, nil)));
    tmpCategories[534]:AddAchievement(InsertAndReturn(achievements, achievement:New(8092, tmpCategories[534], nil, nil, nil, nil)));
    tmpCategories[522] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(504).name, {504, 505, 506}, nil)); -- Isle of Thunder
    tmpCategories[491]:AddCategory(tmpCategories[522]);
    tmpCategories[522]:AddAchievement(InsertAndReturn(achievements, achievement:New(8028, tmpCategories[522], nil, nil, nil, nil)));
    tmpCategories[523] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[522]:AddCategory(tmpCategories[523]);
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8099, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8100, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8101, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8104, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8105, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8107, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8108, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8109, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8110, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8111, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8112, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8114, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8115, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8116, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8117, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8118, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8119, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8120, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8212, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8121, tmpCategories[523], nil, nil, nil, nil)));
    tmpCategories[523]:AddAchievement(InsertAndReturn(achievements, achievement:New(8106, tmpCategories[523], nil, nil, false, nil)));
    tmpCategories[524] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[522]:AddCategory(tmpCategories[524]);
    tmpCategories[524]:AddAchievement(InsertAndReturn(achievements, achievement:New(8049, tmpCategories[524], nil, nil, nil, nil)));
    tmpCategories[524]:AddAchievement(InsertAndReturn(achievements, achievement:New(8050, tmpCategories[524], nil, nil, nil, nil)));
    tmpCategories[524]:AddAchievement(InsertAndReturn(achievements, achievement:New(8051, tmpCategories[524], nil, nil, nil, nil)));
    tmpCategories[525] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[522]:AddCategory(tmpCategories[525]);
    tmpCategories[525]:AddAchievement(InsertAndReturn(achievements, achievement:New(8208, tmpCategories[525], faction.Alliance, nil, nil, nil)));
    tmpCategories[525]:AddAchievement(InsertAndReturn(achievements, achievement:New(8209, tmpCategories[525], faction.Horde, nil, nil, nil)));
    tmpCategories[525]:AddAchievement(InsertAndReturn(achievements, achievement:New(8210, tmpCategories[525], nil, nil, nil, nil)));
    tmpCategories[530] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(554).name, nil, nil)); -- Timeless Isle
    tmpCategories[491]:AddCategory(tmpCategories[530]);
    tmpCategories[531] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[530]:AddCategory(tmpCategories[531]);
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8712, tmpCategories[531], nil, nil, nil, nil)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8714, tmpCategories[531], nil, nil, nil, nil)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8722, tmpCategories[531], nil, nil, nil, nil)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8724, tmpCategories[531], nil, nil, nil, nil)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8723, tmpCategories[531], nil, nil, nil, nil)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8784, tmpCategories[531], nil, nil, nil, nil)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8725, tmpCategories[531], nil, nil, nil, nil)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8726, tmpCategories[531], nil, nil, nil, nil)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8727, tmpCategories[531], nil, nil, nil, nil)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8729, tmpCategories[531], nil, nil, nil, nil)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8730, tmpCategories[531], nil, nil, nil, nil)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8743, tmpCategories[531], nil, nil, nil, nil)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8716, tmpCategories[531], nil, nil, nil, nil)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8717, tmpCategories[531], nil, nil, nil, nil)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8718, tmpCategories[531], nil, nil, nil, nil)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8719, tmpCategories[531], nil, nil, nil, nil)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8720, tmpCategories[531], nil, nil, nil, nil)));
    tmpCategories[531]:AddAchievement(InsertAndReturn(achievements, achievement:New(8721, tmpCategories[531], nil, nil, nil, nil)));
    tmpCategories[535] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[530]:AddCategory(tmpCategories[535]);
    tmpCategories[535]:AddAchievement(InsertAndReturn(achievements, achievement:New(8715, tmpCategories[535], nil, nil, nil, nil)));
    tmpCategories[190] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272), nil, nil)); -- Dungeons
    tmpCategories[189]:AddCategory(tmpCategories[190]);
    tmpCategories[190]:AddAchievement(InsertAndReturn(achievements, achievement:New(6925, tmpCategories[190], nil, nil, nil, nil)));
    tmpCategories[190]:AddAchievement(InsertAndReturn(achievements, achievement:New(6927, tmpCategories[190], nil, nil, nil, nil)));
    tmpCategories[193] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(313), {429, 430}, nil)); -- Temple of the Jade Serpent
    tmpCategories[190]:AddCategory(tmpCategories[193]);
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6475, tmpCategories[193], nil, nil, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6460, tmpCategories[193], nil, nil, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6671, tmpCategories[193], nil, nil, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6757, tmpCategories[193], nil, nil, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6758, tmpCategories[193], nil, nil, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6884, tmpCategories[193], nil, nil, false, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6885, tmpCategories[193], nil, nil, false, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6886, tmpCategories[193], nil, nil, false, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6887, tmpCategories[193], nil, nil, false, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(8430, tmpCategories[193], nil, nil, false, nil)));
    tmpCategories[194] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(302), {439, 440, 441, 442}, nil)); -- Stormstout Brewery
    tmpCategories[190]:AddCategory(tmpCategories[194]);
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6402, tmpCategories[194], nil, nil, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6089, tmpCategories[194], nil, nil, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6400, tmpCategories[194], nil, nil, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6420, tmpCategories[194], nil, nil, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6457, tmpCategories[194], nil, nil, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6456, tmpCategories[194], nil, nil, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6888, tmpCategories[194], nil, nil, false, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6889, tmpCategories[194], nil, nil, false, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6890, tmpCategories[194], nil, nil, false, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6891, tmpCategories[194], nil, nil, false, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(8431, tmpCategories[194], nil, nil, false, nil)));
    tmpCategories[195] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(321), {453, 454, 455}, nil)); -- Mogu'shan Palace
    tmpCategories[190]:AddCategory(tmpCategories[195]);
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6713, tmpCategories[195], nil, nil, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6478, tmpCategories[195], nil, nil, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6736, tmpCategories[195], nil, nil, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6755, tmpCategories[195], nil, nil, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6756, tmpCategories[195], nil, nil, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6892, tmpCategories[195], nil, nil, false, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6899, tmpCategories[195], nil, nil, false, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6900, tmpCategories[195], nil, nil, false, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6901, tmpCategories[195], nil, nil, false, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(8433, tmpCategories[195], nil, nil, false, nil)));
    tmpCategories[196] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(312), {443, 444, 445, 446}, nil)); -- Shado-Pan Monastery
    tmpCategories[190]:AddCategory(tmpCategories[196]);
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6477, tmpCategories[196], nil, nil, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6472, tmpCategories[196], nil, nil, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6471, tmpCategories[196], nil, nil, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6469, tmpCategories[196], nil, nil, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6470, tmpCategories[196], nil, nil, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6893, tmpCategories[196], nil, nil, false, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6902, tmpCategories[196], nil, nil, false, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6903, tmpCategories[196], nil, nil, false, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6904, tmpCategories[196], nil, nil, false, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(8432, tmpCategories[196], nil, nil, false, nil)));
    tmpCategories[197] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(303), {437, 438}, nil)); -- Gate of the Setting Sun
    tmpCategories[190]:AddCategory(tmpCategories[197]);
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6479, tmpCategories[197], nil, nil, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6476, tmpCategories[197], nil, nil, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6945, tmpCategories[197], nil, nil, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(10010, tmpCategories[197], nil, nil, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6759, tmpCategories[197], nil, nil, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6894, tmpCategories[197], nil, nil, false, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6905, tmpCategories[197], nil, nil, false, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6906, tmpCategories[197], nil, nil, false, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6907, tmpCategories[197], nil, nil, false, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(8434, tmpCategories[197], nil, nil, false, nil)));
    tmpCategories[198] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(324), {457, 458, 459}, nil)); -- Siege of Niuzao Temple
    tmpCategories[190]:AddCategory(tmpCategories[198]);
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6688, tmpCategories[198], nil, nil, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6485, tmpCategories[198], nil, nil, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6822, tmpCategories[198], nil, nil, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(10011, tmpCategories[198], nil, nil, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6763, tmpCategories[198], nil, nil, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6898, tmpCategories[198], nil, nil, false, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6917, tmpCategories[198], nil, nil, false, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6918, tmpCategories[198], nil, nil, false, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6919, tmpCategories[198], nil, nil, false, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(8439, tmpCategories[198], nil, nil, false, nil)));
    tmpCategories[199] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(311), {431, 432}, nil)); -- Scarlet Halls
    tmpCategories[190]:AddCategory(tmpCategories[199]);
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6684, tmpCategories[199], nil, nil, nil, nil)));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6427, tmpCategories[199], nil, nil, nil, nil)));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(7413, tmpCategories[199], nil, nil, nil, nil)));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6760, tmpCategories[199], nil, nil, nil, nil)));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6895, tmpCategories[199], nil, nil, false, nil)));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6908, tmpCategories[199], nil, nil, false, nil)));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6909, tmpCategories[199], nil, nil, false, nil)));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6910, tmpCategories[199], nil, nil, false, nil)));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(8436, tmpCategories[199], nil, nil, false, nil)));
    tmpCategories[200] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(316), {435, 436}, nil)); -- Scarlet Monastery
    tmpCategories[190]:AddCategory(tmpCategories[200]);
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6946, tmpCategories[200], nil, nil, nil, nil)));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6928, tmpCategories[200], nil, nil, nil, nil)));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6929, tmpCategories[200], nil, nil, nil, nil)));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(637, tmpCategories[200], nil, nil, nil, nil)));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6761, tmpCategories[200], nil, nil, nil, nil)));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6896, tmpCategories[200], nil, nil, false, nil)));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6911, tmpCategories[200], nil, nil, false, nil)));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6912, tmpCategories[200], nil, nil, false, nil)));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6913, tmpCategories[200], nil, nil, false, nil)));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(8437, tmpCategories[200], nil, nil, false, nil)));
    tmpCategories[201] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(246), {476, 477, 478, 479}, nil)); -- Scholomance
    tmpCategories[190]:AddCategory(tmpCategories[201]);
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6531, tmpCategories[201], nil, nil, nil, nil)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6394, tmpCategories[201], nil, nil, nil, nil)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6396, tmpCategories[201], nil, nil, nil, nil)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6715, tmpCategories[201], nil, nil, nil, nil)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6821, tmpCategories[201], nil, nil, nil, nil)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(645, tmpCategories[201], nil, nil, nil, nil)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6762, tmpCategories[201], nil, nil, nil, nil)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6897, tmpCategories[201], nil, nil, false, nil)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6914, tmpCategories[201], nil, nil, false, nil)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6915, tmpCategories[201], nil, nil, false, nil)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6916, tmpCategories[201], nil, nil, false, nil)));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(8438, tmpCategories[201], nil, nil, false, nil)));
    tmpCategories[191] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271), nil, nil)); -- Raids
    tmpCategories[189]:AddCategory(tmpCategories[191]);
    tmpCategories[191]:AddAchievement(InsertAndReturn(achievements, achievement:New(6932, tmpCategories[191], nil, nil, nil, nil)));
    tmpCategories[191]:AddAchievement(InsertAndReturn(achievements, achievement:New(8124, tmpCategories[191], nil, nil, nil, nil)));
    tmpCategories[191]:AddAchievement(InsertAndReturn(achievements, achievement:New(8454, tmpCategories[191], nil, nil, nil, nil)));
    tmpCategories[202] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(317), {471, 472, 473}, nil)); -- Mogu'shan Vaults
    tmpCategories[191]:AddCategory(tmpCategories[202]);
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6823, tmpCategories[202], nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6674, tmpCategories[202], nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(7056, tmpCategories[202], nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(7933, tmpCategories[202], nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6687, tmpCategories[202], nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6686, tmpCategories[202], nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6455, tmpCategories[202], nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6719, tmpCategories[202], nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6720, tmpCategories[202], nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6721, tmpCategories[202], nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6722, tmpCategories[202], nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6723, tmpCategories[202], nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6724, tmpCategories[202], nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6458, tmpCategories[202], nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6844, tmpCategories[202], nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6954, tmpCategories[202], nil, nil, false, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(7485, tmpCategories[202], nil, nil, false, nil)));
    tmpCategories[203] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(330), {474, 475}, nil)); -- Heart of Fear
    tmpCategories[191]:AddCategory(tmpCategories[203]);
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6937, tmpCategories[203], nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6936, tmpCategories[203], nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6553, tmpCategories[203], nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6683, tmpCategories[203], nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6518, tmpCategories[203], nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6922, tmpCategories[203], nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6725, tmpCategories[203], nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6726, tmpCategories[203], nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6727, tmpCategories[203], nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6728, tmpCategories[203], nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6729, tmpCategories[203], nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6730, tmpCategories[203], nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6718, tmpCategories[203], nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6845, tmpCategories[203], nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(8246, tmpCategories[203], nil, nil, false, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(7486, tmpCategories[203], nil, nil, false, nil)));
    tmpCategories[204] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(320), {456}, nil)); -- Terrace of Endless Spring
    tmpCategories[191]:AddCategory(tmpCategories[204]);
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6717, tmpCategories[204], nil, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6933, tmpCategories[204], nil, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6824, tmpCategories[204], nil, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6825, tmpCategories[204], nil, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6731, tmpCategories[204], nil, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6732, tmpCategories[204], nil, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6733, tmpCategories[204], nil, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6734, tmpCategories[204], nil, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6689, tmpCategories[204], nil, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(8248, tmpCategories[204], nil, nil, false, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(7487, tmpCategories[204], nil, nil, false, nil)));
    tmpCategories[205] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(362), {508, 509, 510, 511, 512, 513, 514, 515}, nil)); -- Throne of Thunder
    tmpCategories[191]:AddCategory(tmpCategories[205]);
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8094, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8038, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8073, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8077, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8082, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8097, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8098, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8037, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8081, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8087, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8086, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8090, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8056, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8057, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8058, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8059, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8060, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8061, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8062, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8063, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8064, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8065, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8066, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8067, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8068, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8069, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8070, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8071, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8072, tmpCategories[205], nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8089, tmpCategories[205], nil, nil, false, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8249, tmpCategories[205], nil, nil, false, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8238, tmpCategories[205], nil, nil, false, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8260, tmpCategories[205], nil, nil, false, nil)));
    tmpCategories[206] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(369), {556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570}, nil)); -- Siege of Orgrimmar
    tmpCategories[191]:AddCategory(tmpCategories[206]);
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8536, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8528, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8532, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8521, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8530, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8520, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8453, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8448, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8538, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8529, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8527, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8543, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8531, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8537, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8463, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8465, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8466, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8467, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8468, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8469, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8470, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8471, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8472, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8478, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8479, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8480, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8481, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8482, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8458, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8459, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8461, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8462, tmpCategories[206], nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8679, tmpCategories[206], faction.Alliance, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8680, tmpCategories[206], faction.Horde, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8398, tmpCategories[206], nil, nil, false, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8399, tmpCategories[206], nil, nil, false, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8400, tmpCategories[206], nil, nil, false, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8401, tmpCategories[206], nil, nil, false, nil)));
    tmpCategories[549] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15117), nil, nil)); -- Pet Battles
    tmpCategories[189]:AddCategory(tmpCategories[549]);
    tmpCategories[549]:AddAchievement(InsertAndReturn(achievements, achievement:New(6616, tmpCategories[549], nil, nil, nil, nil)));
    tmpCategories[549]:AddAchievement(InsertAndReturn(achievements, achievement:New(6589, tmpCategories[549], nil, nil, nil, nil)));
    tmpCategories[549]:AddAchievement(InsertAndReturn(achievements, achievement:New(8519, tmpCategories[549], nil, nil, nil, nil)));
    tmpCategories[549]:AddAchievement(InsertAndReturn(achievements, achievement:New(13469, tmpCategories[549], nil, nil, nil, nil)));
    tmpCategories[549]:AddAchievement(InsertAndReturn(achievements, achievement:New(6606, tmpCategories[549], nil, nil, nil, nil)));
    tmpCategories[549]:AddAchievement(InsertAndReturn(achievements, achievement:New(8410, tmpCategories[549], nil, nil, nil, nil)));
    tmpCategories[549]:AddAchievement(InsertAndReturn(achievements, achievement:New(8518, tmpCategories[549], nil, nil, nil, nil)));
    tmpCategories[192] = InsertAndReturn(categories, achievementCategory:New(addon.L["Scenarios"], nil, nil)); -- Scenarios
    tmpCategories[189]:AddCategory(tmpCategories[192]);
    tmpCategories[192]:AddAchievement(InsertAndReturn(achievements, achievement:New(6943, tmpCategories[192], nil, nil, nil, nil)));
    tmpCategories[192]:AddAchievement(InsertAndReturn(achievements, achievement:New(7385, tmpCategories[192], nil, nil, nil, nil)));
    tmpCategories[192]:AddAchievement(InsertAndReturn(achievements, achievement:New(6874, tmpCategories[192], faction.Alliance, nil, nil, nil)));
    tmpCategories[192]:AddAchievement(InsertAndReturn(achievements, achievement:New(7509, tmpCategories[192], faction.Horde, nil, nil, nil)));
    tmpCategories[207] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(517), {447}, nil)); -- A Brewing Storm
    tmpCategories[192]:AddCategory(tmpCategories[207]);
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(7252, tmpCategories[207], nil, nil, nil, nil)));
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(8310, tmpCategories[207], nil, nil, nil, nil)));
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(7257, tmpCategories[207], nil, nil, nil, nil)));
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(7261, tmpCategories[207], nil, nil, nil, nil)));
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(7258, tmpCategories[207], nil, nil, nil, nil)));
    tmpCategories[499] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(589), {487}, nil)); -- A Little Patience
    tmpCategories[192]:AddCategory(tmpCategories[499]);
    tmpCategories[499]:AddAchievement(InsertAndReturn(achievements, achievement:New(7988, tmpCategories[499], nil, nil, nil, nil)));
    tmpCategories[499]:AddAchievement(InsertAndReturn(achievements, achievement:New(7989, tmpCategories[499], nil, nil, nil, nil)));
    tmpCategories[499]:AddAchievement(InsertAndReturn(achievements, achievement:New(7990, tmpCategories[499], nil, nil, nil, nil)));
    tmpCategories[499]:AddAchievement(InsertAndReturn(achievements, achievement:New(7992, tmpCategories[499], nil, nil, nil, nil)));
    tmpCategories[499]:AddAchievement(InsertAndReturn(achievements, achievement:New(7993, tmpCategories[499], nil, nil, nil, nil)));
    tmpCategories[499]:AddAchievement(InsertAndReturn(achievements, achievement:New(7991, tmpCategories[499], nil, nil, nil, nil)));
    tmpCategories[208] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(511), {480}, nil)); -- Arena of Annihilation
    tmpCategories[192]:AddCategory(tmpCategories[208]);
    tmpCategories[208]:AddAchievement(InsertAndReturn(achievements, achievement:New(7271, tmpCategories[208], nil, nil, nil, nil)));
    tmpCategories[208]:AddAchievement(InsertAndReturn(achievements, achievement:New(7273, tmpCategories[208], nil, nil, nil, nil)));
    tmpCategories[208]:AddAchievement(InsertAndReturn(achievements, achievement:New(7272, tmpCategories[208], nil, nil, nil, nil)));
    tmpCategories[214] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(593), {451}, nil)); -- Assault on Zan'vess
    tmpCategories[192]:AddCategory(tmpCategories[214]);
    tmpCategories[214]:AddAchievement(InsertAndReturn(achievements, achievement:New(8016, tmpCategories[214], nil, nil, nil, nil)));
    tmpCategories[214]:AddAchievement(InsertAndReturn(achievements, achievement:New(8017, tmpCategories[214], nil, nil, nil, nil)));
    tmpCategories[220] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(646), nil, nil)); -- Blood in the Snow
    tmpCategories[192]:AddCategory(tmpCategories[220]);
    tmpCategories[220]:AddAchievement(InsertAndReturn(achievements, achievement:New(8316, tmpCategories[220], nil, nil, nil, nil)));
    tmpCategories[220]:AddAchievement(InsertAndReturn(achievements, achievement:New(8312, tmpCategories[220], nil, nil, nil, nil)));
    tmpCategories[220]:AddAchievement(InsertAndReturn(achievements, achievement:New(8329, tmpCategories[220], nil, nil, nil, nil)));
    tmpCategories[220]:AddAchievement(InsertAndReturn(achievements, achievement:New(8330, tmpCategories[220], nil, nil, nil, nil)));
    tmpCategories[209] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(539), {452}, nil)); -- Brewmoon Festival
    tmpCategories[192]:AddCategory(tmpCategories[209]);
    tmpCategories[209]:AddAchievement(InsertAndReturn(achievements, achievement:New(6923, tmpCategories[209], nil, nil, nil, nil)));
    tmpCategories[209]:AddAchievement(InsertAndReturn(achievements, achievement:New(6931, tmpCategories[209], nil, nil, nil, nil)));
    tmpCategories[209]:AddAchievement(InsertAndReturn(achievements, achievement:New(6930, tmpCategories[209], nil, nil, nil, nil)));
    tmpCategories[210] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(504), {481, 482}, nil)); -- Crypt of Forgotten Kings
    tmpCategories[192]:AddCategory(tmpCategories[210]);
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(7522, tmpCategories[210], nil, nil, nil, nil)));
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(8311, tmpCategories[210], nil, nil, nil, nil)));
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(7276, tmpCategories[210], nil, nil, nil, nil)));
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(7275, tmpCategories[210], nil, nil, nil, nil)));
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(8368, tmpCategories[210], nil, nil, nil, nil)));
    tmpCategories[215] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(616), {488, 489}, nil)); -- Dagger in the Dark
    tmpCategories[192]:AddCategory(tmpCategories[215]);
    tmpCategories[215]:AddAchievement(InsertAndReturn(achievements, achievement:New(8009, tmpCategories[215], nil, nil, nil, nil)));
    tmpCategories[215]:AddAchievement(InsertAndReturn(achievements, achievement:New(7987, tmpCategories[215], nil, nil, nil, nil)));
    tmpCategories[215]:AddAchievement(InsertAndReturn(achievements, achievement:New(7984, tmpCategories[215], nil, nil, nil, nil)));
    tmpCategories[215]:AddAchievement(InsertAndReturn(achievements, achievement:New(7986, tmpCategories[215], nil, nil, nil, nil)));
    tmpCategories[221] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(647), {520, 521}, nil)); -- Dark Heart of Pandaria
    tmpCategories[192]:AddCategory(tmpCategories[221]);
    tmpCategories[221]:AddAchievement(InsertAndReturn(achievements, achievement:New(8317, tmpCategories[221], nil, nil, nil, nil)));
    tmpCategories[221]:AddAchievement(InsertAndReturn(achievements, achievement:New(8318, tmpCategories[221], nil, nil, nil, nil)));
    tmpCategories[221]:AddAchievement(InsertAndReturn(achievements, achievement:New(8319, tmpCategories[221], nil, nil, nil, nil)));
    tmpCategories[218] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(595), {498}, nil)); -- Domination Point
    tmpCategories[192]:AddCategory(tmpCategories[218]);
    tmpCategories[218]:AddAchievement(InsertAndReturn(achievements, achievement:New(8013, tmpCategories[218], faction.Horde, nil, nil, nil)));
    tmpCategories[218]:AddAchievement(InsertAndReturn(achievements, achievement:New(8014, tmpCategories[218], faction.Horde, nil, nil, nil)));
    tmpCategories[218]:AddAchievement(InsertAndReturn(achievements, achievement:New(8015, tmpCategories[218], faction.Horde, nil, nil, nil)));
    tmpCategories[211] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(492), {448}, nil)); -- Greenstone Village
    tmpCategories[192]:AddCategory(tmpCategories[211]);
    tmpCategories[211]:AddAchievement(InsertAndReturn(achievements, achievement:New(7265, tmpCategories[211], nil, nil, nil, nil)));
    tmpCategories[211]:AddAchievement(InsertAndReturn(achievements, achievement:New(7267, tmpCategories[211], nil, nil, nil, nil)));
    tmpCategories[211]:AddAchievement(InsertAndReturn(achievements, achievement:New(7266, tmpCategories[211], nil, nil, nil, nil)));
    tmpCategories[216] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(590), {486}, nil)); -- Lion's Landing
    tmpCategories[192]:AddCategory(tmpCategories[216]);
    tmpCategories[216]:AddAchievement(InsertAndReturn(achievements, achievement:New(8010, tmpCategories[216], faction.Alliance, nil, nil, nil)));
    tmpCategories[216]:AddAchievement(InsertAndReturn(achievements, achievement:New(8011, tmpCategories[216], faction.Alliance, nil, nil, nil)));
    tmpCategories[216]:AddAchievement(InsertAndReturn(achievements, achievement:New(8012, tmpCategories[216], faction.Alliance, nil, nil, nil)));
    tmpCategories[500] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(417).name .. " (" .. GetCategoryInfo(15234) .. ")", {417}, nil)); -- Temple of Kotmogu
    tmpCategories[192]:AddCategory(tmpCategories[500]);
    tmpCategories[500]:AddAchievement(InsertAndReturn(achievements, achievement:New(7268, tmpCategories[500], nil, nil, false, false)));
    tmpCategories[500]:AddAchievement(InsertAndReturn(achievements, achievement:New(7270, tmpCategories[500], nil, nil, false, false)));
    tmpCategories[500]:AddAchievement(InsertAndReturn(achievements, achievement:New(7269, tmpCategories[500], nil, nil, false, false)));
    tmpCategories[222] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(649), {522}, nil)); -- The Secrets of Ragefire
    tmpCategories[192]:AddCategory(tmpCategories[222]);
    tmpCategories[222]:AddAchievement(InsertAndReturn(achievements, achievement:New(8294, tmpCategories[222], nil, nil, nil, nil)));
    tmpCategories[222]:AddAchievement(InsertAndReturn(achievements, achievement:New(8327, tmpCategories[222], nil, nil, nil, nil)));
    tmpCategories[222]:AddAchievement(InsertAndReturn(achievements, achievement:New(8295, tmpCategories[222], nil, nil, nil, nil)));
    tmpCategories[212] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(566), {416, 483}, nil)); -- Theramore's Fall
    tmpCategories[192]:AddCategory(tmpCategories[212]);
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7523, tmpCategories[212], faction.Alliance, nil, nil, nil)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7524, tmpCategories[212], faction.Horde, nil, nil, nil)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7526, tmpCategories[212], faction.Alliance, nil, nil, nil)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7529, tmpCategories[212], faction.Horde, nil, nil, nil)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7527, tmpCategories[212], faction.Alliance, nil, nil, nil)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7530, tmpCategories[212], faction.Horde, nil, nil, nil)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7467, tmpCategories[212], faction.Alliance, nil, false, nil)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7468, tmpCategories[212], faction.Horde, nil, false, nil)));
    tmpCategories[213] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(499), {450}, nil)); -- Unga Ingoo
    tmpCategories[192]:AddCategory(tmpCategories[213]);
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7249, tmpCategories[213], nil, nil, nil, nil)));
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7232, tmpCategories[213], nil, nil, nil, nil)));
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7239, tmpCategories[213], nil, nil, nil, nil)));
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7248, tmpCategories[213], nil, nil, nil, nil)));
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7231, tmpCategories[213], nil, nil, nil, nil)));
    tmpCategories[219] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(655), {524}, nil)); -- Battle on the High Seas
    tmpCategories[192]:AddCategory(tmpCategories[219]);
    tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8314, tmpCategories[219], faction.Alliance, nil, nil, nil)));
    tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8364, tmpCategories[219], faction.Alliance, nil, nil, nil)));
    tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8315, tmpCategories[219], faction.Horde, nil, nil, nil)));
    tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8366, tmpCategories[219], faction.Horde, nil, nil, nil)));
    tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8347, tmpCategories[219], nil, nil, nil, nil)));
    tmpCategories[490] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15222), {480}, nil)); -- Proving Grounds
    tmpCategories[189]:AddCategory(tmpCategories[490]);
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9572, tmpCategories[490], nil, nil, nil, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9573, tmpCategories[490], nil, nil, nil, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9574, tmpCategories[490], nil, nil, nil, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9575, tmpCategories[490], nil, nil, nil, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9576, tmpCategories[490], nil, nil, nil, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9577, tmpCategories[490], nil, nil, nil, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9578, tmpCategories[490], nil, nil, nil, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9579, tmpCategories[490], nil, nil, nil, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9580, tmpCategories[490], nil, nil, nil, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9581, tmpCategories[490], nil, nil, nil, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9582, tmpCategories[490], nil, nil, nil, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9583, tmpCategories[490], nil, nil, nil, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9584, tmpCategories[490], nil, nil, nil, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9585, tmpCategories[490], nil, nil, nil, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9586, tmpCategories[490], nil, nil, nil, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9587, tmpCategories[490], nil, nil, nil, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9588, tmpCategories[490], nil, nil, nil, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9589, tmpCategories[490], nil, nil, nil, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(9590, tmpCategories[490], nil, nil, nil, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8486, tmpCategories[490], nil, nil, false, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8491, tmpCategories[490], nil, nil, false, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8496, tmpCategories[490], nil, nil, false, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8501, tmpCategories[490], nil, nil, false, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8504, tmpCategories[490], nil, nil, false, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8507, tmpCategories[490], nil, nil, false, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8487, tmpCategories[490], nil, nil, false, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8492, tmpCategories[490], nil, nil, false, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8497, tmpCategories[490], nil, nil, false, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8502, tmpCategories[490], nil, nil, false, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8505, tmpCategories[490], nil, nil, false, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8508, tmpCategories[490], nil, nil, false, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8488, tmpCategories[490], nil, nil, false, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8493, tmpCategories[490], nil, nil, false, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8498, tmpCategories[490], nil, nil, false, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8503, tmpCategories[490], nil, nil, false, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8506, tmpCategories[490], nil, nil, false, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8509, tmpCategories[490], nil, nil, false, nil)));
    tmpCategories[490]:AddAchievement(InsertAndReturn(achievements, achievement:New(8697, tmpCategories[490], nil, nil, false, nil)));
    tmpCategories[223] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15233), nil, nil)); -- Warlords of Dreanor
    tmpCategories[449] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"], nil, nil)); -- Zones
    tmpCategories[223]:AddCategory(tmpCategories[449]);
    tmpCategories[486] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(572).name, nil, nil)); -- Draenor
    tmpCategories[449]:AddCategory(tmpCategories[486]);
    tmpCategories[487] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[486]:AddCategory(tmpCategories[487]);
    tmpCategories[487]:AddAchievement(InsertAndReturn(achievements, achievement:New(8921, tmpCategories[487], faction.Alliance, nil, nil, nil)));
    tmpCategories[487]:AddAchievement(InsertAndReturn(achievements, achievement:New(8922, tmpCategories[487], faction.Horde, nil, nil, nil)));
    tmpCategories[487]:AddAchievement(InsertAndReturn(achievements, achievement:New(9491, tmpCategories[487], faction.Alliance, nil, nil, nil)));
    tmpCategories[487]:AddAchievement(InsertAndReturn(achievements, achievement:New(9492, tmpCategories[487], faction.Horde, nil, nil, nil)));
    tmpCategories[487]:AddAchievement(InsertAndReturn(achievements, achievement:New(9564, tmpCategories[487], faction.Alliance, nil, nil, nil)));
    tmpCategories[487]:AddAchievement(InsertAndReturn(achievements, achievement:New(9562, tmpCategories[487], faction.Horde, nil, nil, nil)));
    tmpCategories[487]:AddAchievement(InsertAndReturn(achievements, achievement:New(9833, tmpCategories[487], faction.Alliance, nil, nil, nil)));
    tmpCategories[487]:AddAchievement(InsertAndReturn(achievements, achievement:New(9923, tmpCategories[487], faction.Horde, nil, nil, nil)));
    tmpCategories[488] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[486]:AddCategory(tmpCategories[488]);
    tmpCategories[488]:AddAchievement(InsertAndReturn(achievements, achievement:New(10018, tmpCategories[488], nil, nil, nil, nil)));
    tmpCategories[488]:AddAchievement(InsertAndReturn(achievements, achievement:New(9726, tmpCategories[488], nil, nil, nil, nil)));
    tmpCategories[488]:AddAchievement(InsertAndReturn(achievements, achievement:New(9727, tmpCategories[488], nil, nil, nil, nil)));
    tmpCategories[488]:AddAchievement(InsertAndReturn(achievements, achievement:New(10348, tmpCategories[488], nil, nil, nil, nil)));
    tmpCategories[488]:AddAchievement(InsertAndReturn(achievements, achievement:New(9728, tmpCategories[488], nil, nil, nil, nil)));
    tmpCategories[488]:AddAchievement(InsertAndReturn(achievements, achievement:New(9502, tmpCategories[488], nil, nil, nil, nil)));
    tmpCategories[488]:AddAchievement(InsertAndReturn(achievements, achievement:New(14728, tmpCategories[488], nil, nil, nil, nil)));
    tmpCategories[489] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[486]:AddCategory(tmpCategories[489]);
    tmpCategories[489]:AddAchievement(InsertAndReturn(achievements, achievement:New(9477, tmpCategories[489], faction.Horde, nil, nil, nil)));
    tmpCategories[489]:AddAchievement(InsertAndReturn(achievements, achievement:New(9478, tmpCategories[489], faction.Alliance, nil, nil, nil)));
    tmpCategories[450] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(539).name, {539, 540, 541}, nil)); -- Shadowmoon Valley
    tmpCategories[449]:AddCategory(tmpCategories[450]);
    tmpCategories[457] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[450]:AddCategory(tmpCategories[457]);
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(8845, tmpCategories[457], faction.Alliance, nil, nil, nil)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9602, tmpCategories[457], faction.Alliance, nil, nil, nil)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9528, tmpCategories[457], faction.Alliance, nil, nil, nil)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9433, tmpCategories[457], nil, nil, nil, nil)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9434, tmpCategories[457], nil, nil, nil, nil)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9432, tmpCategories[457], nil, nil, nil, nil)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9436, tmpCategories[457], nil, nil, nil, nil)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9435, tmpCategories[457], nil, nil, nil, nil)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9437, tmpCategories[457], nil, nil, nil, nil)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9483, tmpCategories[457], nil, nil, nil, nil)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9479, tmpCategories[457], nil, nil, nil, nil)));
    tmpCategories[457]:AddAchievement(InsertAndReturn(achievements, achievement:New(9481, tmpCategories[457], nil, nil, nil, nil)));
    tmpCategories[458] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[450]:AddCategory(tmpCategories[458]);
    tmpCategories[458]:AddAchievement(InsertAndReturn(achievements, achievement:New(8938, tmpCategories[458], nil, nil, nil, nil)));
    tmpCategories[460] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[450]:AddCategory(tmpCategories[460]);
    tmpCategories[460]:AddAchievement(InsertAndReturn(achievements, achievement:New(9470, tmpCategories[460], faction.Alliance, nil, nil, nil)));
    tmpCategories[451] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(525).name, {525, 526, 527, 528, 529, 530, 531, 532, 533}, nil)); -- Frostfire Ridge
    tmpCategories[449]:AddCategory(tmpCategories[451]);
    tmpCategories[461] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[451]:AddCategory(tmpCategories[461]);
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(8671, tmpCategories[461], faction.Horde, nil, nil, nil)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9606, tmpCategories[461], faction.Horde, nil, nil, nil)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9529, tmpCategories[461], faction.Horde, nil, nil, nil)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9533, tmpCategories[461], nil, nil, nil, nil)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9530, tmpCategories[461], faction.Alliance, nil, nil, nil)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9531, tmpCategories[461], faction.Horde, nil, nil, nil)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9534, tmpCategories[461], nil, nil, nil, nil)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9537, tmpCategories[461], nil, nil, nil, nil)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9536, tmpCategories[461], nil, nil, nil, nil)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9535, tmpCategories[461], nil, nil, nil, nil)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9710, tmpCategories[461], nil, nil, nil, nil)));
    tmpCategories[461]:AddAchievement(InsertAndReturn(achievements, achievement:New(9711, tmpCategories[461], nil, nil, nil, nil)));
    tmpCategories[462] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[451]:AddCategory(tmpCategories[462]);
    tmpCategories[462]:AddAchievement(InsertAndReturn(achievements, achievement:New(8937, tmpCategories[462], nil, nil, nil, nil)));
    tmpCategories[464] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[451]:AddCategory(tmpCategories[464]);
    tmpCategories[464]:AddAchievement(InsertAndReturn(achievements, achievement:New(9471, tmpCategories[464], faction.Horde, nil, nil, nil)));
    tmpCategories[452] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(543).name, {543, 544, 545, 546, 547, 548, 549}, nil)); -- Gorgrond
    tmpCategories[449]:AddCategory(tmpCategories[452]);
    tmpCategories[465] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[452]:AddCategory(tmpCategories[465]);
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(8923, tmpCategories[465], faction.Alliance, nil, nil, nil)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(8924, tmpCategories[465], faction.Horde, nil, nil, nil)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(9607, tmpCategories[465], nil, nil, nil, nil)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(9655, tmpCategories[465], nil, nil, nil, nil)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(9656, tmpCategories[465], nil, nil, nil, nil)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(9659, tmpCategories[465], nil, nil, nil, nil)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(9678, tmpCategories[465], nil, nil, nil, nil)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(9667, tmpCategories[465], nil, nil, nil, nil)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(9654, tmpCategories[465], nil, nil, nil, nil)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(9658, tmpCategories[465], nil, nil, nil, nil)));
    tmpCategories[465]:AddAchievement(InsertAndReturn(achievements, achievement:New(9663, tmpCategories[465], nil, nil, nil, nil)));
    tmpCategories[466] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[452]:AddCategory(tmpCategories[466]);
    tmpCategories[466]:AddAchievement(InsertAndReturn(achievements, achievement:New(8939, tmpCategories[466], nil, nil, nil, nil)));
    tmpCategories[466]:AddAchievement(InsertAndReturn(achievements, achievement:New(9400, tmpCategories[466], nil, nil, nil, nil)));
    tmpCategories[466]:AddAchievement(InsertAndReturn(achievements, achievement:New(9401, tmpCategories[466], nil, nil, nil, nil)));
    tmpCategories[466]:AddAchievement(InsertAndReturn(achievements, achievement:New(9402, tmpCategories[466], nil, nil, nil, nil)));
    tmpCategories[468] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[452]:AddCategory(tmpCategories[468]);
    tmpCategories[468]:AddAchievement(InsertAndReturn(achievements, achievement:New(9475, tmpCategories[468], faction.Horde, nil, nil, nil)));
    tmpCategories[453] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(535).name, {535, 536, 537, 538}, nil)); -- Talador
    tmpCategories[449]:AddCategory(tmpCategories[453]);
    tmpCategories[469] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[453]:AddCategory(tmpCategories[469]);
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(8920, tmpCategories[469], faction.Alliance, nil, nil, nil)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(8919, tmpCategories[469], faction.Horde, nil, nil, nil)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(9674, tmpCategories[469], nil, nil, nil, nil)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(9633, tmpCategories[469], nil, nil, nil, nil)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(9638, tmpCategories[469], nil, nil, nil, nil)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(9635, tmpCategories[469], nil, nil, nil, nil)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(9634, tmpCategories[469], nil, nil, nil, nil)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(9636, tmpCategories[469], nil, nil, nil, nil)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(9632, tmpCategories[469], nil, nil, nil, nil)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(9637, tmpCategories[469], nil, nil, nil, nil)));
    tmpCategories[469]:AddAchievement(InsertAndReturn(achievements, achievement:New(9486, tmpCategories[469], nil, nil, nil, nil)));
    tmpCategories[470] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[453]:AddCategory(tmpCategories[470]);
    tmpCategories[470]:AddAchievement(InsertAndReturn(achievements, achievement:New(8940, tmpCategories[470], nil, nil, nil, nil)));
    tmpCategories[472] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[453]:AddCategory(tmpCategories[472]);
    tmpCategories[472]:AddAchievement(InsertAndReturn(achievements, achievement:New(9476, tmpCategories[472], faction.Alliance, nil, nil, nil)));
    tmpCategories[454] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(542).name, {542}, nil)); -- Spires of Arak
    tmpCategories[449]:AddCategory(tmpCategories[454]);
    tmpCategories[473] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[454]:AddCategory(tmpCategories[473]);
    tmpCategories[473]:AddAchievement(InsertAndReturn(achievements, achievement:New(8925, tmpCategories[473], faction.Alliance, nil, nil, nil)));
    tmpCategories[473]:AddAchievement(InsertAndReturn(achievements, achievement:New(8926, tmpCategories[473], faction.Horde, nil, nil, nil)));
    tmpCategories[473]:AddAchievement(InsertAndReturn(achievements, achievement:New(9605, tmpCategories[473], nil, nil, nil, nil)));
    tmpCategories[473]:AddAchievement(InsertAndReturn(achievements, achievement:New(9612, tmpCategories[473], nil, nil, nil, nil)));
    tmpCategories[473]:AddAchievement(InsertAndReturn(achievements, achievement:New(9613, tmpCategories[473], nil, nil, nil, nil)));
    tmpCategories[473]:AddAchievement(InsertAndReturn(achievements, achievement:New(9601, tmpCategories[473], nil, nil, nil, nil)));
    tmpCategories[473]:AddAchievement(InsertAndReturn(achievements, achievement:New(9600, tmpCategories[473], nil, nil, nil, nil)));
    tmpCategories[474] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[454]:AddCategory(tmpCategories[474]);
    tmpCategories[474]:AddAchievement(InsertAndReturn(achievements, achievement:New(8941, tmpCategories[474], nil, nil, nil, nil)));
    tmpCategories[476] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[454]:AddCategory(tmpCategories[476]);
    tmpCategories[476]:AddAchievement(InsertAndReturn(achievements, achievement:New(9469, tmpCategories[476], nil, nil, nil, nil)));
    tmpCategories[476]:AddAchievement(InsertAndReturn(achievements, achievement:New(9072, tmpCategories[476], nil, nil, nil, nil)));
    tmpCategories[455] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(550).name, {550, 551, 552, 553}, nil)); -- Nagrand
    tmpCategories[449]:AddCategory(tmpCategories[455]);
    tmpCategories[477] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[455]:AddCategory(tmpCategories[477]);
    tmpCategories[477]:AddAchievement(InsertAndReturn(achievements, achievement:New(8927, tmpCategories[477], faction.Alliance, nil, nil, nil)));
    tmpCategories[477]:AddAchievement(InsertAndReturn(achievements, achievement:New(8928, tmpCategories[477], faction.Horde, nil, nil, nil)));
    tmpCategories[477]:AddAchievement(InsertAndReturn(achievements, achievement:New(9615, tmpCategories[477], nil, nil, nil, nil)));
    tmpCategories[477]:AddAchievement(InsertAndReturn(achievements, achievement:New(9610, tmpCategories[477], nil, nil, nil, nil)));
    tmpCategories[477]:AddAchievement(InsertAndReturn(achievements, achievement:New(9571, tmpCategories[477], nil, nil, nil, nil)));
    tmpCategories[477]:AddAchievement(InsertAndReturn(achievements, achievement:New(9548, tmpCategories[477], nil, nil, nil, nil)));
    tmpCategories[477]:AddAchievement(InsertAndReturn(achievements, achievement:New(9541, tmpCategories[477], nil, nil, nil, nil)));
    tmpCategories[477]:AddAchievement(InsertAndReturn(achievements, achievement:New(9617, tmpCategories[477], nil, nil, nil, nil)));
    tmpCategories[478] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[455]:AddCategory(tmpCategories[478]);
    tmpCategories[478]:AddAchievement(InsertAndReturn(achievements, achievement:New(8942, tmpCategories[478], nil, nil, nil, nil)));
    tmpCategories[480] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[455]:AddCategory(tmpCategories[480]);
    tmpCategories[480]:AddAchievement(InsertAndReturn(achievements, achievement:New(9472, tmpCategories[480], nil, nil, nil, nil)));
    tmpCategories[456] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(534).name, {534}, nil)); -- Tanaan Jungle
    tmpCategories[449]:AddCategory(tmpCategories[456]);
    tmpCategories[481] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[456]:AddCategory(tmpCategories[481]);
    tmpCategories[481]:AddAchievement(InsertAndReturn(achievements, achievement:New(10067, tmpCategories[481], faction.Alliance, nil, nil, nil)));
    tmpCategories[481]:AddAchievement(InsertAndReturn(achievements, achievement:New(10074, tmpCategories[481], faction.Horde, nil, nil, nil)));
    tmpCategories[481]:AddAchievement(InsertAndReturn(achievements, achievement:New(10068, tmpCategories[481], faction.Alliance, nil, nil, nil)));
    tmpCategories[481]:AddAchievement(InsertAndReturn(achievements, achievement:New(10075, tmpCategories[481], faction.Horde, nil, nil, nil)));
    tmpCategories[481]:AddAchievement(InsertAndReturn(achievements, achievement:New(10072, tmpCategories[481], faction.Alliance, nil, nil, nil)));
    tmpCategories[481]:AddAchievement(InsertAndReturn(achievements, achievement:New(10265, tmpCategories[481], faction.Horde, nil, nil, nil)));
    tmpCategories[482] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[456]:AddCategory(tmpCategories[482]);
    tmpCategories[482]:AddAchievement(InsertAndReturn(achievements, achievement:New(10261, tmpCategories[482], nil, nil, nil, nil)));
    tmpCategories[482]:AddAchievement(InsertAndReturn(achievements, achievement:New(10262, tmpCategories[482], nil, nil, nil, nil)));
    tmpCategories[482]:AddAchievement(InsertAndReturn(achievements, achievement:New(10260, tmpCategories[482], nil, nil, nil, nil)));
    tmpCategories[482]:AddAchievement(InsertAndReturn(achievements, achievement:New(10069, tmpCategories[482], nil, nil, nil, nil)));
    tmpCategories[482]:AddAchievement(InsertAndReturn(achievements, achievement:New(10061, tmpCategories[482], nil, nil, nil, nil)));
    tmpCategories[482]:AddAchievement(InsertAndReturn(achievements, achievement:New(10259, tmpCategories[482], nil, nil, nil, nil)));
    tmpCategories[482]:AddAchievement(InsertAndReturn(achievements, achievement:New(10070, tmpCategories[482], nil, nil, nil, nil)));
    tmpCategories[482]:AddAchievement(InsertAndReturn(achievements, achievement:New(10334, tmpCategories[482], nil, nil, nil, nil)));
    tmpCategories[484] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[456]:AddCategory(tmpCategories[484]);
    tmpCategories[484]:AddAchievement(InsertAndReturn(achievements, achievement:New(10349, tmpCategories[484], faction.Horde, nil, nil, nil)));
    tmpCategories[484]:AddAchievement(InsertAndReturn(achievements, achievement:New(10350, tmpCategories[484], faction.Alliance, nil, nil, nil)));
    tmpCategories[224] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272), nil, nil)); -- Dungeons
    tmpCategories[223]:AddCategory(tmpCategories[224]);
    tmpCategories[224]:AddAchievement(InsertAndReturn(achievements, achievement:New(9391, tmpCategories[224], nil, nil, nil, nil)));
    tmpCategories[224]:AddAchievement(InsertAndReturn(achievements, achievement:New(9396, tmpCategories[224], nil, nil, nil, nil)));
    tmpCategories[226] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(385), {573}, nil)); -- Bloodmaul Slag Mines
    tmpCategories[224]:AddCategory(tmpCategories[226]);
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9005, tmpCategories[226], nil, nil, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8993, tmpCategories[226], nil, nil, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9008, tmpCategories[226], nil, nil, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9037, tmpCategories[226], nil, nil, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9046, tmpCategories[226], nil, nil, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(10076, tmpCategories[226], nil, nil, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8875, tmpCategories[226], nil, nil, false, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8876, tmpCategories[226], nil, nil, false, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8877, tmpCategories[226], nil, nil, false, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8878, tmpCategories[226], nil, nil, false, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9620, tmpCategories[226], nil, nil, false, nil)));
    tmpCategories[227] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(558), {595}, nil)); -- Iron Docks
    tmpCategories[224]:AddCategory(tmpCategories[227]);
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9081, tmpCategories[227], nil, nil, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9083, tmpCategories[227], nil, nil, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9082, tmpCategories[227], nil, nil, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9038, tmpCategories[227], nil, nil, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9047, tmpCategories[227], nil, nil, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(10079, tmpCategories[227], nil, nil, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(8997, tmpCategories[227], nil, nil, false, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(8998, tmpCategories[227], nil, nil, false, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(8999, tmpCategories[227], nil, nil, false, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9000, tmpCategories[227], nil, nil, false, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9621, tmpCategories[227], nil, nil, false, nil)));
    tmpCategories[228] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(547), {593}, nil)); -- Auchindoun
    tmpCategories[224]:AddCategory(tmpCategories[228]);
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9023, tmpCategories[228], nil, nil, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9551, tmpCategories[228], nil, nil, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9552, tmpCategories[228], nil, nil, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9039, tmpCategories[228], nil, nil, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9049, tmpCategories[228], nil, nil, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(10080, tmpCategories[228], nil, nil, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(8879, tmpCategories[228], nil, nil, false, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(8880, tmpCategories[228], nil, nil, false, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(8881, tmpCategories[228], nil, nil, false, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(8882, tmpCategories[228], nil, nil, false, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9622, tmpCategories[228], nil, nil, false, nil)));
    tmpCategories[229] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(476), {601, 602}, nil)); -- Skyreach
    tmpCategories[224]:AddCategory(tmpCategories[229]);
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9033, tmpCategories[229], nil, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9035, tmpCategories[229], nil, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9034, tmpCategories[229], nil, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9036, tmpCategories[229], nil, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8843, tmpCategories[229], nil, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8844, tmpCategories[229], nil, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(10081, tmpCategories[229], nil, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8871, tmpCategories[229], nil, nil, false, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8872, tmpCategories[229], nil, nil, false, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8873, tmpCategories[229], nil, nil, false, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8874, tmpCategories[229], nil, nil, false, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9623, tmpCategories[229], nil, nil, false, nil)));
    tmpCategories[230] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(536), {606, 607, 608, 609}, nil)); -- Grimrail Depot
    tmpCategories[224]:AddCategory(tmpCategories[230]);
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9024, tmpCategories[230], nil, nil, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9007, tmpCategories[230], nil, nil, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9043, tmpCategories[230], nil, nil, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9052, tmpCategories[230], nil, nil, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(10082, tmpCategories[230], nil, nil, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(8887, tmpCategories[230], nil, nil, false, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(8888, tmpCategories[230], nil, nil, false, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(8889, tmpCategories[230], nil, nil, false, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(8890, tmpCategories[230], nil, nil, false, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9625, tmpCategories[230], nil, nil, false, nil)));
    tmpCategories[231] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(556), {620, 621}, nil)); -- The Everbloom
    tmpCategories[224]:AddCategory(tmpCategories[231]);
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9017, tmpCategories[231], nil, nil, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9493, tmpCategories[231], nil, nil, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9223, tmpCategories[231], nil, nil, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9044, tmpCategories[231], nil, nil, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9053, tmpCategories[231], nil, nil, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(10083, tmpCategories[231], nil, nil, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9001, tmpCategories[231], nil, nil, false, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9002, tmpCategories[231], nil, nil, false, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9003, tmpCategories[231], nil, nil, false, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9004, tmpCategories[231], nil, nil, false, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9624, tmpCategories[231], nil, nil, false, nil)));
    tmpCategories[232] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(537), {574, 575, 576}, nil)); -- Shadowmoon Burial Grounds
    tmpCategories[224]:AddCategory(tmpCategories[232]);
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9018, tmpCategories[232], nil, nil, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9025, tmpCategories[232], nil, nil, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9026, tmpCategories[232], nil, nil, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9041, tmpCategories[232], nil, nil, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9054, tmpCategories[232], nil, nil, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(10084, tmpCategories[232], nil, nil, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(8883, tmpCategories[232], nil, nil, false, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(8884, tmpCategories[232], nil, nil, false, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(8885, tmpCategories[232], nil, nil, false, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(8886, tmpCategories[232], nil, nil, false, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9626, tmpCategories[232], nil, nil, false, nil)));
    tmpCategories[233] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(559), {616, 617, 618}, nil)); -- Upper Blackrock Spire
    tmpCategories[224]:AddCategory(tmpCategories[233]);
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9045, tmpCategories[233], nil, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9058, tmpCategories[233], nil, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9056, tmpCategories[233], nil, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9057, tmpCategories[233], nil, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9042, tmpCategories[233], nil, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9055, tmpCategories[233], nil, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(10085, tmpCategories[233], nil, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(8891, tmpCategories[233], nil, nil, false, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(8892, tmpCategories[233], nil, nil, false, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(8893, tmpCategories[233], nil, nil, false, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(8894, tmpCategories[233], nil, nil, false, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9627, tmpCategories[233], nil, nil, false, nil)));
    tmpCategories[225] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271), nil, nil)); -- Raids
    tmpCategories[223]:AddCategory(tmpCategories[225]);
    tmpCategories[225]:AddAchievement(InsertAndReturn(achievements, achievement:New(8985, tmpCategories[225], nil, nil, nil, nil)));
    tmpCategories[225]:AddAchievement(InsertAndReturn(achievements, achievement:New(10149, tmpCategories[225], nil, nil, nil, nil)));
    tmpCategories[234] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(477), {610, 611, 612, 613, 614, 615}, nil)); -- Highmaul
    tmpCategories[225]:AddCategory(tmpCategories[234]);
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8948, tmpCategories[234], nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8947, tmpCategories[234], nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8974, tmpCategories[234], nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8975, tmpCategories[234], nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8958, tmpCategories[234], nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8976, tmpCategories[234], nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8977, tmpCategories[234], nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8949, tmpCategories[234], nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8960, tmpCategories[234], nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8961, tmpCategories[234], nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8962, tmpCategories[234], nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8963, tmpCategories[234], nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8964, tmpCategories[234], nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8965, tmpCategories[234], nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8986, tmpCategories[234], nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8987, tmpCategories[234], nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8988, tmpCategories[234], nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(9441, tmpCategories[234], nil, nil, false, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(9442, tmpCategories[234], nil, nil, false, nil)));
    tmpCategories[235] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(457), {596, 597, 598, 599, 600}, nil)); -- Blackrock Foundry
    tmpCategories[225]:AddCategory(tmpCategories[235]);
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8979, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8978, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8930, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8980, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8929, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8983, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8981, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8982, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8984, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8952, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8967, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8966, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8970, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8968, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8932, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8971, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8956, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8969, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8972, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8973, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8989, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8990, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8991, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8992, tmpCategories[235], nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(9444, tmpCategories[235], nil, nil, false, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(9443, tmpCategories[235], nil, nil, false, nil)));
    tmpCategories[236] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(669), {661, 662, 663, 664, 665, 666, 667, 668, 669, 670}, nil)); -- Hellfire Citadel
    tmpCategories[225]:AddCategory(tmpCategories[236]);
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10026, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10057, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10013, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10054, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9972, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9979, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9988, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10086, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9989, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10012, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10087, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10030, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10073, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10027, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10032, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10033, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10034, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10035, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10253, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10037, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10040, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10041, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10038, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10039, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10042, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10043, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10023, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10024, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10025, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10020, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10019, tmpCategories[236], nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9680, tmpCategories[236], nil, nil, false, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10044, tmpCategories[236], nil, nil, false, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10045, tmpCategories[236], nil, nil, false, nil)));
    tmpCategories[548] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15117), nil, nil)); -- Pet Battles
    tmpCategories[223]:AddCategory(tmpCategories[548]);
    tmpCategories[548]:AddAchievement(InsertAndReturn(achievements, achievement:New(9685, tmpCategories[548], nil, nil, nil, nil)));
    tmpCategories[548]:AddAchievement(InsertAndReturn(achievements, achievement:New(9069, tmpCategories[548], nil, nil, nil, nil)));
    tmpCategories[548]:AddAchievement(InsertAndReturn(achievements, achievement:New(9463, tmpCategories[548], nil, nil, nil, nil)));
    tmpCategories[548]:AddAchievement(InsertAndReturn(achievements, achievement:New(9724, tmpCategories[548], nil, nil, nil, nil)));
    tmpCategories[548]:AddAchievement(InsertAndReturn(achievements, achievement:New(10052, tmpCategories[548], nil, nil, nil, nil)));
    tmpCategories[432] = InsertAndReturn(categories, achievementCategory:New(addon.L["Garrison"], {579, 580, 581, 582, 585, 586, 587, 590}, nil)); -- Garrison
    tmpCategories[223]:AddCategory(tmpCategories[432]);
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9100, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9101, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9545, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9546, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9210, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9132, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(8933, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9901, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9928, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9828, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9912, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10015, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9897, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9914, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10016, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9125, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9126, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9128, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9095, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9096, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9097, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9094, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9487, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9076, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9077, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9080, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9078, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9429, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9099, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9098, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9405, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9406, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9407, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9450, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9565, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9451, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9452, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9468, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9495, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9497, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9498, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9499, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9538, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9526, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9539, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9705, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9540, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9706, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9527, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9703, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9516, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9517, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9518, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9519, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9520, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9521, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9522, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9509, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9510, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9511, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9512, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9513, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9514, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9515, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9639, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9508, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9738, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9107, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9108, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9109, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9494, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9110, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9111, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9129, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9130, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9131, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9211, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9212, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9213, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9243, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9152, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9167, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9543, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9244, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9205, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9206, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9203, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9204, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9207, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9208, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9162, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9164, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9165, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9826, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9209, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9827, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9181, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9858, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9133, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9134, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9138, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9139, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9140, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9141, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9142, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9143, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9145, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9524, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9146, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9523, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9147, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9150, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9900, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9246, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9248, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9630, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9255, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9631, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9264, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9265, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10177, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10169, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10168, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10170, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10172, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10173, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10255, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10275, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10276, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10174, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10156, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10154, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10159, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10160, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10161, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10155, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10162, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10163, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10017, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10036, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10164, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10165, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10166, tmpCategories[432], nil, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10256, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10167, tmpCategories[432], faction.Alliance, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10258, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10307, tmpCategories[432], faction.Horde, nil, nil, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9640, tmpCategories[432], nil, nil, false, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9641, tmpCategories[432], nil, nil, false, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(9642, tmpCategories[432], nil, nil, false, nil)));
    tmpCategories[432]:AddAchievement(InsertAndReturn(achievements, achievement:New(10021, tmpCategories[432], nil, nil, false, nil)));
    tmpCategories[485] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[432]:AddCategory(tmpCategories[485]);
    tmpCategories[485]:AddAchievement(InsertAndReturn(achievements, achievement:New(9825, tmpCategories[485], faction.Alliance, nil, nil, nil)));
    tmpCategories[485]:AddAchievement(InsertAndReturn(achievements, achievement:New(9836, tmpCategories[485], faction.Horde, nil, nil, nil)));
    tmpCategories[237] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15258), nil, nil)); -- Legion
    tmpCategories[381] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"], nil, nil)); -- Zones
    tmpCategories[237]:AddCategory(tmpCategories[381]);
    tmpCategories[396] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(619).name, nil, nil)); -- Broken Isles
    tmpCategories[381]:AddCategory(tmpCategories[396]);
    tmpCategories[397] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[396]:AddCategory(tmpCategories[397]);
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11157, tmpCategories[397], nil, nil, nil, nil)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(10877, tmpCategories[397], nil, nil, nil, nil)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11189, tmpCategories[397], nil, nil, nil, nil)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11427, tmpCategories[397], nil, nil, nil, nil)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11186, tmpCategories[397], nil, nil, nil, nil)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11240, tmpCategories[397], nil, nil, nil, nil)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11544, tmpCategories[397], nil, nil, nil, nil)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11846, tmpCategories[397], nil, nil, nil, nil)));
    tmpCategories[398] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[396]:AddCategory(tmpCategories[398]);
    tmpCategories[398]:AddAchievement(InsertAndReturn(achievements, achievement:New(11190, tmpCategories[398], nil, nil, nil, nil)));
    tmpCategories[398]:AddAchievement(InsertAndReturn(achievements, achievement:New(11446, tmpCategories[398], nil, nil, nil, nil)));
    tmpCategories[398]:AddAchievement(InsertAndReturn(achievements, achievement:New(14729, tmpCategories[398], nil, nil, nil, nil)));
    tmpCategories[413] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270), nil, nil)); -- PvP
    tmpCategories[396]:AddCategory(tmpCategories[413]);
    tmpCategories[413]:AddAchievement(InsertAndReturn(achievements, achievement:New(11474, tmpCategories[413], nil, nil, nil, nil)));
    tmpCategories[414] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[396]:AddCategory(tmpCategories[414]);
    tmpCategories[414]:AddAchievement(InsertAndReturn(achievements, achievement:New(10672, tmpCategories[414], nil, nil, nil, nil)));
    tmpCategories[414]:AddAchievement(InsertAndReturn(achievements, achievement:New(11159, tmpCategories[414], nil, nil, nil, nil)));
    tmpCategories[414]:AddAchievement(InsertAndReturn(achievements, achievement:New(11652, tmpCategories[414], nil, nil, nil, nil)));
    tmpCategories[414]:AddAchievement(InsertAndReturn(achievements, achievement:New(11653, tmpCategories[414], nil, nil, nil, nil)));
    tmpCategories[414]:AddAchievement(InsertAndReturn(achievements, achievement:New(11941, tmpCategories[414], nil, nil, nil, nil)));
    tmpCategories[382] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(626).name, {627, 628, 629}, nil)); -- Dalaran
    tmpCategories[381]:AddCategory(tmpCategories[382]);
    tmpCategories[383] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[382]:AddCategory(tmpCategories[383]);
    tmpCategories[383]:AddAchievement(InsertAndReturn(achievements, achievement:New(12416, tmpCategories[383], nil, nil, nil, nil)));
    tmpCategories[383]:AddAchievement(InsertAndReturn(achievements, achievement:New(12431, tmpCategories[383], nil, nil, nil, nil)));
    tmpCategories[383]:AddAchievement(InsertAndReturn(achievements, achievement:New(12439, tmpCategories[383], nil, nil, nil, nil)));
    tmpCategories[405] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[382]:AddCategory(tmpCategories[405]);
    tmpCategories[405]:AddAchievement(InsertAndReturn(achievements, achievement:New(11066, tmpCategories[405], nil, nil, nil, nil)));
    tmpCategories[384] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(630).name, {630, 631, 632, 633}, nil)); -- Azsuna
    tmpCategories[381]:AddCategory(tmpCategories[384]);
    tmpCategories[385] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[384]:AddCategory(tmpCategories[385]);
    tmpCategories[385]:AddAchievement(InsertAndReturn(achievements, achievement:New(10763, tmpCategories[385], nil, nil, nil, nil)));
    tmpCategories[399] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[384]:AddCategory(tmpCategories[399]);
    tmpCategories[399]:AddAchievement(InsertAndReturn(achievements, achievement:New(10665, tmpCategories[399], nil, nil, nil, nil)));
    tmpCategories[399]:AddAchievement(InsertAndReturn(achievements, achievement:New(11175, tmpCategories[399], nil, nil, nil, nil)));
    tmpCategories[399]:AddAchievement(InsertAndReturn(achievements, achievement:New(11256, tmpCategories[399], nil, nil, nil, nil)));
    tmpCategories[399]:AddAchievement(InsertAndReturn(achievements, achievement:New(11261, tmpCategories[399], nil, nil, nil, nil)));
    tmpCategories[412] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270), nil, nil)); -- PvP
    tmpCategories[384]:AddCategory(tmpCategories[412]);
    tmpCategories[412]:AddAchievement(InsertAndReturn(achievements, achievement:New(11475, tmpCategories[412], nil, nil, nil, nil)));
    tmpCategories[387] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(641).name, {641, 642, 643, 644}, nil)); -- Val'sharah
    tmpCategories[381]:AddCategory(tmpCategories[387]);
    tmpCategories[391] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[387]:AddCategory(tmpCategories[391]);
    tmpCategories[391]:AddAchievement(InsertAndReturn(achievements, achievement:New(10698, tmpCategories[391], nil, nil, nil, nil)));
    tmpCategories[400] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[387]:AddCategory(tmpCategories[400]);
    tmpCategories[400]:AddAchievement(InsertAndReturn(achievements, achievement:New(10666, tmpCategories[400], nil, nil, nil, nil)));
    tmpCategories[400]:AddAchievement(InsertAndReturn(achievements, achievement:New(11258, tmpCategories[400], nil, nil, nil, nil)));
    tmpCategories[400]:AddAchievement(InsertAndReturn(achievements, achievement:New(11262, tmpCategories[400], nil, nil, nil, nil)));
    tmpCategories[411] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270), nil, nil)); -- PvP
    tmpCategories[387]:AddCategory(tmpCategories[411]);
    tmpCategories[411]:AddAchievement(InsertAndReturn(achievements, achievement:New(11477, tmpCategories[411], nil, nil, nil, nil)));
    tmpCategories[388] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(650).name, {650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 750}, nil)); -- Highmountain
    tmpCategories[381]:AddCategory(tmpCategories[388]);
    tmpCategories[392] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[388]:AddCategory(tmpCategories[392]);
    tmpCategories[392]:AddAchievement(InsertAndReturn(achievements, achievement:New(10059, tmpCategories[392], nil, nil, nil, nil)));
    tmpCategories[392]:AddAchievement(InsertAndReturn(achievements, achievement:New(10774, tmpCategories[392], nil, nil, nil, nil)));
    tmpCategories[392]:AddAchievement(InsertAndReturn(achievements, achievement:New(10626, tmpCategories[392], nil, nil, nil, nil)));
    tmpCategories[392]:AddAchievement(InsertAndReturn(achievements, achievement:New(10398, tmpCategories[392], nil, nil, nil, nil)));
    tmpCategories[401] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[388]:AddCategory(tmpCategories[401]);
    tmpCategories[401]:AddAchievement(InsertAndReturn(achievements, achievement:New(10667, tmpCategories[401], nil, nil, nil, nil)));
    tmpCategories[401]:AddAchievement(InsertAndReturn(achievements, achievement:New(11257, tmpCategories[401], nil, nil, nil, nil)));
    tmpCategories[401]:AddAchievement(InsertAndReturn(achievements, achievement:New(11264, tmpCategories[401], nil, nil, nil, nil)));
    tmpCategories[410] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270), nil, nil)); -- PvP
    tmpCategories[388]:AddCategory(tmpCategories[410]);
    tmpCategories[410]:AddAchievement(InsertAndReturn(achievements, achievement:New(11478, tmpCategories[410], nil, nil, nil, nil)));
    tmpCategories[416] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[388]:AddCategory(tmpCategories[416]);
    tmpCategories[416]:AddAchievement(InsertAndReturn(achievements, achievement:New(12292, tmpCategories[416], nil, nil, nil, nil)));
    tmpCategories[386] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(634).name, {634, 635, 636, 637, 638, 639, 640, 649}, nil)); -- Stormheim
    tmpCategories[381]:AddCategory(tmpCategories[386]);
    tmpCategories[390] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[386]:AddCategory(tmpCategories[390]);
    tmpCategories[390]:AddAchievement(InsertAndReturn(achievements, achievement:New(10790, tmpCategories[390], nil, nil, nil, nil)));
    tmpCategories[390]:AddAchievement(InsertAndReturn(achievements, achievement:New(10793, tmpCategories[390], nil, nil, nil, nil)));
    tmpCategories[390]:AddAchievement(InsertAndReturn(achievements, achievement:New(11232, tmpCategories[390], nil, nil, nil, nil)));
    tmpCategories[402] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[386]:AddCategory(tmpCategories[402]);
    tmpCategories[402]:AddAchievement(InsertAndReturn(achievements, achievement:New(10668, tmpCategories[402], nil, nil, nil, nil)));
    tmpCategories[402]:AddAchievement(InsertAndReturn(achievements, achievement:New(10627, tmpCategories[402], nil, nil, nil, nil)));
    tmpCategories[402]:AddAchievement(InsertAndReturn(achievements, achievement:New(11259, tmpCategories[402], nil, nil, nil, nil)));
    tmpCategories[402]:AddAchievement(InsertAndReturn(achievements, achievement:New(11263, tmpCategories[402], nil, nil, nil, nil)));
    tmpCategories[402]:AddAchievement(InsertAndReturn(achievements, achievement:New(11178, tmpCategories[402], nil, nil, nil, nil)));
    tmpCategories[409] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270), nil, nil)); -- PvP
    tmpCategories[386]:AddCategory(tmpCategories[409]);
    tmpCategories[409]:AddAchievement(InsertAndReturn(achievements, achievement:New(11476, tmpCategories[409], nil, nil, nil, nil)));
    tmpCategories[389] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(680).name, {680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691}, nil)); -- Suramar
    tmpCategories[381]:AddCategory(tmpCategories[389]);
    tmpCategories[393] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[389]:AddCategory(tmpCategories[393]);
    tmpCategories[393]:AddAchievement(InsertAndReturn(achievements, achievement:New(10617, tmpCategories[393], nil, nil, nil, nil)));
    tmpCategories[393]:AddAchievement(InsertAndReturn(achievements, achievement:New(11124, tmpCategories[393], nil, nil, nil, nil)));
    tmpCategories[393]:AddAchievement(InsertAndReturn(achievements, achievement:New(10756, tmpCategories[393], nil, nil, nil, nil)));
    tmpCategories[393]:AddAchievement(InsertAndReturn(achievements, achievement:New(11125, tmpCategories[393], nil, nil, nil, nil)));
    tmpCategories[393]:AddAchievement(InsertAndReturn(achievements, achievement:New(11133, tmpCategories[393], nil, nil, nil, nil)));
    tmpCategories[393]:AddAchievement(InsertAndReturn(achievements, achievement:New(11340, tmpCategories[393], nil, nil, nil, nil)));
    tmpCategories[403] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[389]:AddCategory(tmpCategories[403]);
    tmpCategories[403]:AddAchievement(InsertAndReturn(achievements, achievement:New(10669, tmpCategories[403], nil, nil, nil, nil)));
    tmpCategories[403]:AddAchievement(InsertAndReturn(achievements, achievement:New(11260, tmpCategories[403], nil, nil, nil, nil)));
    tmpCategories[403]:AddAchievement(InsertAndReturn(achievements, achievement:New(11265, tmpCategories[403], nil, nil, nil, nil)));
    tmpCategories[415] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[389]:AddCategory(tmpCategories[415]);
    tmpCategories[415]:AddAchievement(InsertAndReturn(achievements, achievement:New(10778, tmpCategories[415], nil, nil, nil, nil)));
    tmpCategories[394] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(646).name, {646}, nil)); -- Broken Shore
    tmpCategories[381]:AddCategory(tmpCategories[394]);
    tmpCategories[395] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[394]:AddCategory(tmpCategories[395]);
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11607, tmpCategories[395], nil, nil, nil, nil)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11546, tmpCategories[395], nil, nil, nil, nil)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11681, tmpCategories[395], nil, nil, nil, nil)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11731, tmpCategories[395], nil, nil, nil, nil)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11732, tmpCategories[395], nil, nil, nil, nil)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11735, tmpCategories[395], nil, nil, nil, nil)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11736, tmpCategories[395], nil, nil, nil, nil)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11737, tmpCategories[395], nil, nil, nil, nil)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11738, tmpCategories[395], nil, nil, nil, nil)));
    tmpCategories[404] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[394]:AddCategory(tmpCategories[404]);
    tmpCategories[404]:AddAchievement(InsertAndReturn(achievements, achievement:New(11543, tmpCategories[404], nil, nil, nil, nil)));
    tmpCategories[404]:AddAchievement(InsertAndReturn(achievements, achievement:New(11802, tmpCategories[404], nil, nil, nil, nil)));
    tmpCategories[404]:AddAchievement(InsertAndReturn(achievements, achievement:New(11841, tmpCategories[404], nil, nil, nil, nil)));
    tmpCategories[417] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[394]:AddCategory(tmpCategories[417]);
    tmpCategories[417]:AddAchievement(InsertAndReturn(achievements, achievement:New(11545, tmpCategories[417], nil, nil, nil, nil)));
    tmpCategories[417]:AddAchievement(InsertAndReturn(achievements, achievement:New(11796, tmpCategories[417], nil, nil, nil, nil)));
    tmpCategories[406] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(905).name, {830, 831, 832, 833, 882, 883, 884, 885, 886, 887, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932}, nil)); -- Argus
    tmpCategories[381]:AddCategory(tmpCategories[406]);
    tmpCategories[407] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[406]:AddCategory(tmpCategories[407]);
    tmpCategories[407]:AddAchievement(InsertAndReturn(achievements, achievement:New(12066, tmpCategories[407], nil, nil, nil, nil)));
    tmpCategories[407]:AddAchievement(InsertAndReturn(achievements, achievement:New(12073, tmpCategories[407], nil, nil, nil, nil)));
    tmpCategories[408] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[406]:AddCategory(tmpCategories[408]);
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12074, tmpCategories[408], nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12084, tmpCategories[408], nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12028, tmpCategories[408], nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12026, tmpCategories[408], nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12069, tmpCategories[408], nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12077, tmpCategories[408], nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12078, tmpCategories[408], nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12083, tmpCategories[408], nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12101, tmpCategories[408], nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12102, tmpCategories[408], nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12103, tmpCategories[408], nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12104, tmpCategories[408], nil, nil, nil, nil)));
    tmpCategories[418] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[406]:AddCategory(tmpCategories[418]);
    tmpCategories[418]:AddAchievement(InsertAndReturn(achievements, achievement:New(12076, tmpCategories[418], nil, nil, nil, nil)));
    tmpCategories[418]:AddAchievement(InsertAndReturn(achievements, achievement:New(12081, tmpCategories[418], nil, nil, nil, nil)));
    tmpCategories[238] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272), nil, nil)); -- Dungeons
    tmpCategories[237]:AddCategory(tmpCategories[238]);
    tmpCategories[238]:AddAchievement(InsertAndReturn(achievements, achievement:New(11164, tmpCategories[238], nil, nil, nil, nil)));
    tmpCategories[238]:AddAchievement(InsertAndReturn(achievements, achievement:New(11163, tmpCategories[238], nil, nil, nil, nil)));
    tmpCategories[240] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(716), {713}, nil)); -- Eye of Azshara
    tmpCategories[238]:AddCategory(tmpCategories[240]);
    tmpCategories[240]:AddAchievement(InsertAndReturn(achievements, achievement:New(10456, tmpCategories[240], nil, nil, nil, nil)));
    tmpCategories[240]:AddAchievement(InsertAndReturn(achievements, achievement:New(10457, tmpCategories[240], nil, nil, nil, nil)));
    tmpCategories[240]:AddAchievement(InsertAndReturn(achievements, achievement:New(10458, tmpCategories[240], nil, nil, nil, nil)));
    tmpCategories[240]:AddAchievement(InsertAndReturn(achievements, achievement:New(10780, tmpCategories[240], nil, nil, nil, nil)));
    tmpCategories[240]:AddAchievement(InsertAndReturn(achievements, achievement:New(10781, tmpCategories[240], nil, nil, nil, nil)));
    tmpCategories[240]:AddAchievement(InsertAndReturn(achievements, achievement:New(10782, tmpCategories[240], nil, nil, nil, nil)));
    tmpCategories[241] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(762), {733}, nil)); -- Darkheart Thicket
    tmpCategories[238]:AddCategory(tmpCategories[241]);
    tmpCategories[241]:AddAchievement(InsertAndReturn(achievements, achievement:New(10766, tmpCategories[241], nil, nil, nil, nil)));
    tmpCategories[241]:AddAchievement(InsertAndReturn(achievements, achievement:New(10769, tmpCategories[241], nil, nil, nil, nil)));
    tmpCategories[241]:AddAchievement(InsertAndReturn(achievements, achievement:New(10783, tmpCategories[241], nil, nil, nil, nil)));
    tmpCategories[241]:AddAchievement(InsertAndReturn(achievements, achievement:New(10784, tmpCategories[241], nil, nil, nil, nil)));
    tmpCategories[241]:AddAchievement(InsertAndReturn(achievements, achievement:New(10785, tmpCategories[241], nil, nil, nil, nil)));
    tmpCategories[242] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(721), {703, 704, 705}, nil)); -- Halls of Valor
    tmpCategories[238]:AddCategory(tmpCategories[242]);
    tmpCategories[242]:AddAchievement(InsertAndReturn(achievements, achievement:New(10544, tmpCategories[242], nil, nil, nil, nil)));
    tmpCategories[242]:AddAchievement(InsertAndReturn(achievements, achievement:New(10542, tmpCategories[242], nil, nil, nil, nil)));
    tmpCategories[242]:AddAchievement(InsertAndReturn(achievements, achievement:New(10543, tmpCategories[242], nil, nil, nil, nil)));
    tmpCategories[242]:AddAchievement(InsertAndReturn(achievements, achievement:New(10786, tmpCategories[242], nil, nil, nil, nil)));
    tmpCategories[242]:AddAchievement(InsertAndReturn(achievements, achievement:New(10788, tmpCategories[242], nil, nil, nil, nil)));
    tmpCategories[242]:AddAchievement(InsertAndReturn(achievements, achievement:New(10789, tmpCategories[242], nil, nil, nil, nil)));
    tmpCategories[243] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(767), {731}, nil)); -- Neltharions Lair
    tmpCategories[238]:AddCategory(tmpCategories[243]);
    tmpCategories[243]:AddAchievement(InsertAndReturn(achievements, achievement:New(10996, tmpCategories[243], nil, nil, nil, nil)));
    tmpCategories[243]:AddAchievement(InsertAndReturn(achievements, achievement:New(10875, tmpCategories[243], nil, nil, nil, nil)));
    tmpCategories[243]:AddAchievement(InsertAndReturn(achievements, achievement:New(10795, tmpCategories[243], nil, nil, nil, nil)));
    tmpCategories[243]:AddAchievement(InsertAndReturn(achievements, achievement:New(10796, tmpCategories[243], nil, nil, nil, nil)));
    tmpCategories[243]:AddAchievement(InsertAndReturn(achievements, achievement:New(10797, tmpCategories[243], nil, nil, nil, nil)));
    tmpCategories[244] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(777), {732}, nil)); -- Assault on Violet Hold
    tmpCategories[238]:AddCategory(tmpCategories[244]);
    tmpCategories[244]:AddAchievement(InsertAndReturn(achievements, achievement:New(10554, tmpCategories[244], nil, nil, nil, nil)));
    tmpCategories[244]:AddAchievement(InsertAndReturn(achievements, achievement:New(10553, tmpCategories[244], nil, nil, nil, nil)));
    tmpCategories[244]:AddAchievement(InsertAndReturn(achievements, achievement:New(10798, tmpCategories[244], nil, nil, nil, nil)));
    tmpCategories[244]:AddAchievement(InsertAndReturn(achievements, achievement:New(10799, tmpCategories[244], nil, nil, nil, nil)));
    tmpCategories[244]:AddAchievement(InsertAndReturn(achievements, achievement:New(10800, tmpCategories[244], nil, nil, nil, nil)));
    tmpCategories[245] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(707), {710, 711, 712}, nil)); -- Vault of the Wardens
    tmpCategories[238]:AddCategory(tmpCategories[245]);
    tmpCategories[245]:AddAchievement(InsertAndReturn(achievements, achievement:New(10679, tmpCategories[245], nil, nil, nil, nil)));
    tmpCategories[245]:AddAchievement(InsertAndReturn(achievements, achievement:New(10680, tmpCategories[245], nil, nil, nil, nil)));
    tmpCategories[245]:AddAchievement(InsertAndReturn(achievements, achievement:New(10707, tmpCategories[245], nil, nil, nil, nil)));
    tmpCategories[245]:AddAchievement(InsertAndReturn(achievements, achievement:New(10801, tmpCategories[245], nil, nil, nil, nil)));
    tmpCategories[245]:AddAchievement(InsertAndReturn(achievements, achievement:New(10802, tmpCategories[245], nil, nil, nil, nil)));
    tmpCategories[245]:AddAchievement(InsertAndReturn(achievements, achievement:New(10803, tmpCategories[245], nil, nil, nil, nil)));
    tmpCategories[246] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(740), {751, 752, 753, 754, 755, 756}, nil)); -- Black Rook Hold
    tmpCategories[238]:AddCategory(tmpCategories[246]);
    tmpCategories[246]:AddAchievement(InsertAndReturn(achievements, achievement:New(10710, tmpCategories[246], nil, nil, nil, nil)));
    tmpCategories[246]:AddAchievement(InsertAndReturn(achievements, achievement:New(10709, tmpCategories[246], nil, nil, nil, nil)));
    tmpCategories[246]:AddAchievement(InsertAndReturn(achievements, achievement:New(10711, tmpCategories[246], nil, nil, nil, nil)));
    tmpCategories[246]:AddAchievement(InsertAndReturn(achievements, achievement:New(10804, tmpCategories[246], nil, nil, nil, nil)));
    tmpCategories[246]:AddAchievement(InsertAndReturn(achievements, achievement:New(10805, tmpCategories[246], nil, nil, nil, nil)));
    tmpCategories[246]:AddAchievement(InsertAndReturn(achievements, achievement:New(10806, tmpCategories[246], nil, nil, nil, nil)));
    tmpCategories[247] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(727), {706, 707, 708}, nil)); -- Maw of Souls
    tmpCategories[238]:AddCategory(tmpCategories[247]);
    tmpCategories[247]:AddAchievement(InsertAndReturn(achievements, achievement:New(10413, tmpCategories[247], nil, nil, nil, nil)));
    tmpCategories[247]:AddAchievement(InsertAndReturn(achievements, achievement:New(10411, tmpCategories[247], nil, nil, nil, nil)));
    tmpCategories[247]:AddAchievement(InsertAndReturn(achievements, achievement:New(10412, tmpCategories[247], nil, nil, nil, nil)));
    tmpCategories[247]:AddAchievement(InsertAndReturn(achievements, achievement:New(10807, tmpCategories[247], nil, nil, nil, nil)));
    tmpCategories[247]:AddAchievement(InsertAndReturn(achievements, achievement:New(10808, tmpCategories[247], nil, nil, nil, nil)));
    tmpCategories[247]:AddAchievement(InsertAndReturn(achievements, achievement:New(10809, tmpCategories[247], nil, nil, nil, nil)));
    tmpCategories[248] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(726), {749}, nil)); -- The Arcway
    tmpCategories[238]:AddCategory(tmpCategories[248]);
    tmpCategories[248]:AddAchievement(InsertAndReturn(achievements, achievement:New(10773, tmpCategories[248], nil, nil, nil, nil)));
    tmpCategories[248]:AddAchievement(InsertAndReturn(achievements, achievement:New(10775, tmpCategories[248], nil, nil, nil, nil)));
    tmpCategories[248]:AddAchievement(InsertAndReturn(achievements, achievement:New(10776, tmpCategories[248], nil, nil, nil, nil)));
    tmpCategories[248]:AddAchievement(InsertAndReturn(achievements, achievement:New(10813, tmpCategories[248], nil, nil, nil, nil)));
    tmpCategories[249] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(800), {761, 762, 763}, nil)); -- Court of Stars
    tmpCategories[238]:AddCategory(tmpCategories[249]);
    tmpCategories[249]:AddAchievement(InsertAndReturn(achievements, achievement:New(10610, tmpCategories[249], nil, nil, nil, nil)));
    tmpCategories[249]:AddAchievement(InsertAndReturn(achievements, achievement:New(10611, tmpCategories[249], nil, nil, nil, nil)));
    tmpCategories[249]:AddAchievement(InsertAndReturn(achievements, achievement:New(10816, tmpCategories[249], nil, nil, nil, nil)));
    tmpCategories[250] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(860), {809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822}, nil)); -- Return to Karazhan
    tmpCategories[238]:AddCategory(tmpCategories[250]);
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11430, tmpCategories[250], nil, nil, nil, nil)));
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11335, tmpCategories[250], nil, nil, nil, nil)));
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11338, tmpCategories[250], nil, nil, nil, nil)));
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11432, tmpCategories[250], nil, nil, nil, nil)));
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11433, tmpCategories[250], nil, nil, nil, nil)));
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11929, tmpCategories[250], nil, nil, nil, nil)));
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11429, tmpCategories[250], nil, nil, nil, nil)));
    tmpCategories[251] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(900), {845, 846, 847, 848, 849}, nil)); -- Cathedral of Eternal Night
    tmpCategories[238]:AddCategory(tmpCategories[251]);
    tmpCategories[251]:AddAchievement(InsertAndReturn(achievements, achievement:New(11768, tmpCategories[251], nil, nil, nil, nil)));
    tmpCategories[251]:AddAchievement(InsertAndReturn(achievements, achievement:New(11769, tmpCategories[251], nil, nil, nil, nil)));
    tmpCategories[251]:AddAchievement(InsertAndReturn(achievements, achievement:New(11703, tmpCategories[251], nil, nil, nil, nil)));
    tmpCategories[251]:AddAchievement(InsertAndReturn(achievements, achievement:New(11700, tmpCategories[251], nil, nil, nil, nil)));
    tmpCategories[251]:AddAchievement(InsertAndReturn(achievements, achievement:New(11701, tmpCategories[251], nil, nil, nil, nil)));
    tmpCategories[251]:AddAchievement(InsertAndReturn(achievements, achievement:New(11702, tmpCategories[251], nil, nil, nil, nil)));
    tmpCategories[252] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(945), {903}, nil)); -- Seat of the Triumvirate
    tmpCategories[238]:AddCategory(tmpCategories[252]);
    tmpCategories[252]:AddAchievement(InsertAndReturn(achievements, achievement:New(12004, tmpCategories[252], nil, nil, nil, nil)));
    tmpCategories[252]:AddAchievement(InsertAndReturn(achievements, achievement:New(12005, tmpCategories[252], nil, nil, nil, nil)));
    tmpCategories[252]:AddAchievement(InsertAndReturn(achievements, achievement:New(12009, tmpCategories[252], nil, nil, nil, nil)));
    tmpCategories[252]:AddAchievement(InsertAndReturn(achievements, achievement:New(12007, tmpCategories[252], nil, nil, nil, nil)));
    tmpCategories[252]:AddAchievement(InsertAndReturn(achievements, achievement:New(12008, tmpCategories[252], nil, nil, nil, nil)));
    tmpCategories[239] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271), nil, nil)); -- Raids
    tmpCategories[237]:AddCategory(tmpCategories[239]);
    tmpCategories[239]:AddAchievement(InsertAndReturn(achievements, achievement:New(11180, tmpCategories[239], nil, nil, nil, nil)));
    tmpCategories[239]:AddAchievement(InsertAndReturn(achievements, achievement:New(11763, tmpCategories[239], nil, nil, nil, nil)));
    tmpCategories[239]:AddAchievement(InsertAndReturn(achievements, achievement:New(11987, tmpCategories[239], nil, nil, nil, nil)));
    tmpCategories[253] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(768), {777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789}, nil)); -- The Emerald Nightmare
    tmpCategories[239]:AddCategory(tmpCategories[253]);
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10555, tmpCategories[253], nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10830, tmpCategories[253], nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10771, tmpCategories[253], nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10753, tmpCategories[253], nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10663, tmpCategories[253], nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10772, tmpCategories[253], nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10755, tmpCategories[253], nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10821, tmpCategories[253], nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10823, tmpCategories[253], nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10822, tmpCategories[253], nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10824, tmpCategories[253], nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10825, tmpCategories[253], nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10826, tmpCategories[253], nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10827, tmpCategories[253], nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10818, tmpCategories[253], nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10819, tmpCategories[253], nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10820, tmpCategories[253], nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(11194, tmpCategories[253], nil, nil, false, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(11191, tmpCategories[253], nil, nil, false, nil)));
    tmpCategories[254] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(786), {764, 765, 766, 767, 768, 769, 770, 771, 772}, nil)); -- The Nighthold
    tmpCategories[239]:AddCategory(tmpCategories[254]);
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10678, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10697, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10742, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10817, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10851, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10754, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10575, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10704, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10699, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10696, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10840, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10842, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10843, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10844, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10845, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10846, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10848, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10847, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10849, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10850, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10829, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10837, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10838, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10839, tmpCategories[254], nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(11195, tmpCategories[254], nil, nil, false, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(11192, tmpCategories[254], nil, nil, false, nil)));
    tmpCategories[255] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(861), {806, 807, 808}, nil)); -- Trial of Valor
    tmpCategories[239]:AddCategory(tmpCategories[255]);
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11337, tmpCategories[255], nil, nil, nil, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11386, tmpCategories[255], nil, nil, nil, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11377, tmpCategories[255], nil, nil, nil, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11396, tmpCategories[255], nil, nil, nil, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11397, tmpCategories[255], nil, nil, nil, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11398, tmpCategories[255], nil, nil, nil, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11394, tmpCategories[255], nil, nil, nil, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11426, tmpCategories[255], nil, nil, nil, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11387, tmpCategories[255], nil, nil, false, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11581, tmpCategories[255], nil, nil, false, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11580, tmpCategories[255], nil, nil, false, nil)));
    tmpCategories[256] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(875), {850, 851, 852, 853, 854, 855, 856}, nil)); -- Tomb of Sargeras
    tmpCategories[239]:AddCategory(tmpCategories[256]);
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11724, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11699, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11676, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11696, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11773, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11674, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11675, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11683, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11770, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11767, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11775, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11776, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11774, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11777, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11778, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11779, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11780, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11781, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11787, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11788, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11789, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11790, tmpCategories[256], nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11874, tmpCategories[256], nil, nil, false, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11875, tmpCategories[256], nil, nil, false, nil)));
    tmpCategories[257] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(946), {909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920}, nil)); -- Antorus, the Burning Throne
    tmpCategories[239]:AddCategory(tmpCategories[257]);
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11930, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12065, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12129, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11928, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12067, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11949, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12030, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11948, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12046, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11915, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12257, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11992, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11993, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11994, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11995, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11996, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11997, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11998, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11999, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12000, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12001, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12002, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11988, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11990, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11989, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11991, tmpCategories[257], nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12110, tmpCategories[257], nil, nil, false, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12111, tmpCategories[257], nil, nil, false, nil)));
    tmpCategories[430] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15117), nil, nil)); -- Pet Battles
    tmpCategories[237]:AddCategory(tmpCategories[430]);
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(11233, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(10876, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9686, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9687, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9688, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9689, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9690, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9691, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9692, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9693, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9694, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9695, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(9696, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12088, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12089, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12091, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12092, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12093, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12094, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12095, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12096, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12097, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12098, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12099, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[430]:AddAchievement(InsertAndReturn(achievements, achievement:New(12100, tmpCategories[430], nil, nil, nil, nil)));
    tmpCategories[429] = InsertAndReturn(categories, achievementCategory:New(addon.L["Class Hall"], {24, 626, 647, 648, 695, 702, 709, 717, 718, 719, 720, 721, 725, 726, 734, 735, 739, 747, 1468}, nil)); -- Class Hall
    tmpCategories[237]:AddCategory(tmpCategories[429]);
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10994, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11135, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11136, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10706, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11212, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11213, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11214, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11215, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11216, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11217, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11219, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11220, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11221, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11222, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11223, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11298, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10746, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10459, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10743, tmpCategories[429], faction.Alliance, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10745, tmpCategories[429], faction.Horde, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10460, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10461, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10747, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10748, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11173, tmpCategories[429], faction.Horde, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10749, tmpCategories[429], faction.Alliance, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10750, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11171, tmpCategories[429], nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11611, tmpCategories[429], nil, nil, false, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11612, tmpCategories[429], nil, nil, false, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11144, tmpCategories[429], nil, nil, false, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11772, tmpCategories[429], nil, nil, false, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11609, tmpCategories[429], nil, nil, false, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11610, tmpCategories[429], nil, nil, false, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10852, tmpCategories[429], nil, nil, false, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10853, tmpCategories[429], nil, nil, false, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(12071, tmpCategories[429], nil, nil, false, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(12072, tmpCategories[429], nil, nil, false, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11218, tmpCategories[429], nil, nil, false, nil)));
    tmpCategories[258] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15305), nil, nil)); -- Battle for Azeroth
    tmpCategories[259] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"], nil, nil)); -- Zones
    tmpCategories[258]:AddCategory(tmpCategories[259]);
    tmpCategories[271] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(876).name .. " & " .. C_Map.GetMapInfo(875).name, nil, nil)); -- Kul Tiras & Zandalar
    tmpCategories[259]:AddCategory(tmpCategories[271]);
    tmpCategories[272] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[271]:AddCategory(tmpCategories[272]);
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12582, tmpCategories[272], faction.Alliance, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12997, tmpCategories[272], faction.Alliance, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12593, tmpCategories[272], faction.Alliance, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12891, tmpCategories[272], faction.Alliance, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12555, tmpCategories[272], faction.Horde, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12479, tmpCategories[272], faction.Horde, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13294, tmpCategories[272], faction.Horde, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13512, tmpCategories[272], nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13384, tmpCategories[272], faction.Alliance, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12510, tmpCategories[272], faction.Alliance, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13467, tmpCategories[272], faction.Alliance, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13925, tmpCategories[272], faction.Alliance, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12509, tmpCategories[272], faction.Horde, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13466, tmpCategories[272], faction.Horde, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13924, tmpCategories[272], faction.Horde, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13517, tmpCategories[272], nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13283, tmpCategories[272], faction.Alliance, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13251, tmpCategories[272], faction.Alliance, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13284, tmpCategories[272], faction.Horde, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13144, tmpCategories[272], nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13263, tmpCategories[272], faction.Horde, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(14157, tmpCategories[272], nil, nil, nil, nil)));
    tmpCategories[273] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[271]:AddCategory(tmpCategories[273]);
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(12989, tmpCategories[273], nil, nil, nil, nil)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(13250, tmpCategories[273], nil, nil, nil, nil)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(13061, tmpCategories[273], nil, nil, nil, nil)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(12482, tmpCategories[273], nil, nil, nil, nil)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(13036, tmpCategories[273], nil, nil, nil, nil)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(13029, tmpCategories[273], nil, nil, nil, nil)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(13027, tmpCategories[273], nil, nil, nil, nil)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(14730, tmpCategories[273], nil, nil, nil, nil)));
    tmpCategories[274] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270), nil, nil)); -- PvP
    tmpCategories[271]:AddCategory(tmpCategories[274]);
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13429, tmpCategories[274], nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13317, tmpCategories[274], nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12572, tmpCategories[274], nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12571, tmpCategories[274], nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12573, tmpCategories[274], nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12605, tmpCategories[274], faction.Alliance, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12604, tmpCategories[274], faction.Horde, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12856, tmpCategories[274], nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12857, tmpCategories[274], nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12858, tmpCategories[274], nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12860, tmpCategories[274], nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12863, tmpCategories[274], nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12859, tmpCategories[274], nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12861, tmpCategories[274], nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12862, tmpCategories[274], nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13387, tmpCategories[274], faction.Alliance, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13388, tmpCategories[274], faction.Horde, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13402, tmpCategories[274], faction.Alliance, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13403, tmpCategories[274], faction.Horde, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13623, tmpCategories[274], nil, nil, nil, nil)));
    tmpCategories[275] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[271]:AddCategory(tmpCategories[275]);
    tmpCategories[275]:AddAchievement(InsertAndReturn(achievements, achievement:New(12947, tmpCategories[275], nil, nil, nil, nil)));
    tmpCategories[275]:AddAchievement(InsertAndReturn(achievements, achievement:New(12955, tmpCategories[275], nil, nil, nil, nil)));
    tmpCategories[275]:AddAchievement(InsertAndReturn(achievements, achievement:New(12956, tmpCategories[275], nil, nil, nil, nil)));
    tmpCategories[276] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(895).name, {895, 1161, 1169, 1171, 1172, 1184, 1185}, nil)); -- Tiragarde Sound
    tmpCategories[259]:AddCategory(tmpCategories[276]);
    tmpCategories[281] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[276]:AddCategory(tmpCategories[281]);
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(12473, tmpCategories[281], faction.Alliance, nil, nil, nil)));
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(13060, tmpCategories[281], faction.Alliance, nil, nil, nil)));
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(13059, tmpCategories[281], faction.Alliance, nil, nil, nil)));
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(13050, tmpCategories[281], nil, nil, nil, nil)));
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(13049, tmpCategories[281], faction.Alliance, nil, nil, nil)));
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(12087, tmpCategories[281], faction.Alliance, nil, nil, nil)));
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(13285, tmpCategories[281], faction.Alliance, nil, nil, nil)));
    tmpCategories[278] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[276]:AddCategory(tmpCategories[278]);
    tmpCategories[278]:AddAchievement(InsertAndReturn(achievements, achievement:New(12556, tmpCategories[278], nil, nil, nil, nil)));
    tmpCategories[278]:AddAchievement(InsertAndReturn(achievements, achievement:New(12939, tmpCategories[278], nil, nil, nil, nil)));
    tmpCategories[278]:AddAchievement(InsertAndReturn(achievements, achievement:New(12852, tmpCategories[278], nil, nil, nil, nil)));
    tmpCategories[278]:AddAchievement(InsertAndReturn(achievements, achievement:New(13057, tmpCategories[278], nil, nil, nil, nil)));
    tmpCategories[278]:AddAchievement(InsertAndReturn(achievements, achievement:New(13058, tmpCategories[278], nil, nil, nil, nil)));
    tmpCategories[279] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270), nil, nil)); -- PvP
    tmpCategories[276]:AddCategory(tmpCategories[279]);
    tmpCategories[279]:AddAchievement(InsertAndReturn(achievements, achievement:New(12577, tmpCategories[279], nil, nil, nil, nil)));
    tmpCategories[280] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[276]:AddCategory(tmpCategories[280]);
    tmpCategories[280]:AddAchievement(InsertAndReturn(achievements, achievement:New(12951, tmpCategories[280], faction.Alliance, nil, nil, nil)));
    tmpCategories[280]:AddAchievement(InsertAndReturn(achievements, achievement:New(12954, tmpCategories[280], faction.Alliance, nil, nil, nil)));
    tmpCategories[282] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(896).name, {896, 1045}, nil)); -- Drustvar
    tmpCategories[259]:AddCategory(tmpCategories[282]);
    tmpCategories[283] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[282]:AddCategory(tmpCategories[283]);
    tmpCategories[283]:AddAchievement(InsertAndReturn(achievements, achievement:New(12497, tmpCategories[283], faction.Alliance, nil, nil, nil)));
    tmpCategories[283]:AddAchievement(InsertAndReturn(achievements, achievement:New(13435, tmpCategories[283], faction.Horde, nil, nil, nil)));
    tmpCategories[284] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[282]:AddCategory(tmpCategories[284]);
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(12557, tmpCategories[284], nil, nil, nil, nil)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(12941, tmpCategories[284], nil, nil, nil, nil)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(12995, tmpCategories[284], nil, nil, nil, nil)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(13087, tmpCategories[284], nil, nil, nil, nil)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(13083, tmpCategories[284], nil, nil, nil, nil)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(13082, tmpCategories[284], faction.Alliance, nil, nil, nil)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(13064, tmpCategories[284], nil, nil, nil, nil)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(13094, tmpCategories[284], nil, nil, nil, nil)));
    tmpCategories[285] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270), nil, nil)); -- PvP
    tmpCategories[282]:AddCategory(tmpCategories[285]);
    tmpCategories[285]:AddAchievement(InsertAndReturn(achievements, achievement:New(12579, tmpCategories[285], nil, nil, nil, nil)));
    tmpCategories[286] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[282]:AddCategory(tmpCategories[286]);
    tmpCategories[286]:AddAchievement(InsertAndReturn(achievements, achievement:New(12952, tmpCategories[286], faction.Alliance, nil, nil, nil)));
    tmpCategories[287] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(942).name, {942, 1179, 1180, 1182, 1183}, nil)); -- Stormsong Valley
    tmpCategories[259]:AddCategory(tmpCategories[287]);
    tmpCategories[288] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[287]:AddCategory(tmpCategories[288]);
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(12496, tmpCategories[288], faction.Alliance, nil, nil, nil)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13054, tmpCategories[288], nil, nil, nil, nil)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13053, tmpCategories[288], faction.Alliance, nil, nil, nil)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13047, tmpCategories[288], nil, nil, nil, nil)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13046, tmpCategories[288], nil, nil, nil, nil)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13045, tmpCategories[288], nil, nil, nil, nil)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13042, tmpCategories[288], nil, nil, nil, nil)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13062, tmpCategories[288], faction.Alliance, nil, nil, nil)));
    tmpCategories[289] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[287]:AddCategory(tmpCategories[289]);
    tmpCategories[289]:AddAchievement(InsertAndReturn(achievements, achievement:New(12558, tmpCategories[289], nil, nil, nil, nil)));
    tmpCategories[289]:AddAchievement(InsertAndReturn(achievements, achievement:New(12940, tmpCategories[289], nil, nil, nil, nil)));
    tmpCategories[289]:AddAchievement(InsertAndReturn(achievements, achievement:New(12853, tmpCategories[289], nil, nil, nil, nil)));
    tmpCategories[289]:AddAchievement(InsertAndReturn(achievements, achievement:New(13051, tmpCategories[289], nil, nil, nil, nil)));
    tmpCategories[290] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270), nil, nil)); -- PvP
    tmpCategories[287]:AddCategory(tmpCategories[290]);
    tmpCategories[290]:AddAchievement(InsertAndReturn(achievements, achievement:New(12578, tmpCategories[290], nil, nil, nil, nil)));
    tmpCategories[291] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[287]:AddCategory(tmpCategories[291]);
    tmpCategories[291]:AddAchievement(InsertAndReturn(achievements, achievement:New(12953, tmpCategories[291], faction.Alliance, nil, nil, nil)));
    tmpCategories[292] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(862).name, {862, 1165, 1173, 1174, 1176, 1177}, nil)); -- Zuldazar
    tmpCategories[259]:AddCategory(tmpCategories[292]);
    tmpCategories[293] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[292]:AddCategory(tmpCategories[293]);
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13440, tmpCategories[293], faction.Alliance, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(11861, tmpCategories[293], faction.Horde, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(12480, tmpCategories[293], faction.Horde, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(12481, tmpCategories[293], faction.Horde, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13441, tmpCategories[293], faction.Horde, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13039, tmpCategories[293], faction.Horde, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13048, tmpCategories[293], nil, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13038, tmpCategories[293], faction.Horde, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13037, tmpCategories[293], faction.Horde, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(12719, tmpCategories[293], faction.Horde, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13020, tmpCategories[293], faction.Horde, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(12614, tmpCategories[293], faction.Horde, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13030, tmpCategories[293], faction.Horde, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13573, tmpCategories[293], faction.Horde, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13542, tmpCategories[293], faction.Horde, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13035, tmpCategories[293], nil, nil, nil, nil)));
    tmpCategories[294] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[292]:AddCategory(tmpCategories[294]);
    tmpCategories[294]:AddAchievement(InsertAndReturn(achievements, achievement:New(12559, tmpCategories[294], nil, nil, nil, nil)));
    tmpCategories[294]:AddAchievement(InsertAndReturn(achievements, achievement:New(12944, tmpCategories[294], nil, nil, nil, nil)));
    tmpCategories[294]:AddAchievement(InsertAndReturn(achievements, achievement:New(12851, tmpCategories[294], nil, nil, nil, nil)));
    tmpCategories[295] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270), nil, nil)); -- PvP
    tmpCategories[292]:AddCategory(tmpCategories[295]);
    tmpCategories[295]:AddAchievement(InsertAndReturn(achievements, achievement:New(12575, tmpCategories[295], nil, nil, nil, nil)));
    tmpCategories[295]:AddAchievement(InsertAndReturn(achievements, achievement:New(13439, tmpCategories[295], faction.Alliance, nil, nil, nil)));
    tmpCategories[295]:AddAchievement(InsertAndReturn(achievements, achievement:New(13438, tmpCategories[295], faction.Horde, nil, nil, nil)));
    tmpCategories[296] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[292]:AddCategory(tmpCategories[296]);
    tmpCategories[296]:AddAchievement(InsertAndReturn(achievements, achievement:New(12950, tmpCategories[296], faction.Horde, nil, nil, nil)));
    tmpCategories[296]:AddAchievement(InsertAndReturn(achievements, achievement:New(12957, tmpCategories[296], faction.Horde, nil, nil, nil)));
    tmpCategories[297] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(863).name, {863}, nil)); -- Nazmir
    tmpCategories[259]:AddCategory(tmpCategories[297]);
    tmpCategories[298] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[297]:AddCategory(tmpCategories[298]);
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13426, tmpCategories[298], faction.Alliance, nil, nil, nil)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13026, tmpCategories[298], faction.Alliance, nil, nil, nil)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(11868, tmpCategories[298], faction.Horde, nil, nil, nil)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13048, tmpCategories[298], nil, nil, nil, nil)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13025, tmpCategories[298], faction.Horde, nil, nil, nil)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13023, tmpCategories[298], nil, nil, nil, nil)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13022, tmpCategories[298], faction.Horde, nil, nil, nil)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13021, tmpCategories[298], faction.Horde, nil, nil, nil)));
    tmpCategories[299] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[297]:AddCategory(tmpCategories[299]);
    tmpCategories[299]:AddAchievement(InsertAndReturn(achievements, achievement:New(12561, tmpCategories[299], nil, nil, nil, nil)));
    tmpCategories[299]:AddAchievement(InsertAndReturn(achievements, achievement:New(12942, tmpCategories[299], nil, nil, nil, nil)));
    tmpCategories[299]:AddAchievement(InsertAndReturn(achievements, achievement:New(12771, tmpCategories[299], nil, nil, nil, nil)));
    tmpCategories[299]:AddAchievement(InsertAndReturn(achievements, achievement:New(12588, tmpCategories[299], nil, nil, nil, nil)));
    tmpCategories[299]:AddAchievement(InsertAndReturn(achievements, achievement:New(13024, tmpCategories[299], nil, nil, nil, nil)));
    tmpCategories[299]:AddAchievement(InsertAndReturn(achievements, achievement:New(13028, tmpCategories[299], nil, nil, nil, nil)));
    tmpCategories[300] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270), nil, nil)); -- PvP
    tmpCategories[297]:AddCategory(tmpCategories[300]);
    tmpCategories[300]:AddAchievement(InsertAndReturn(achievements, achievement:New(12574, tmpCategories[300], nil, nil, nil, nil)));
    tmpCategories[301] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[297]:AddCategory(tmpCategories[301]);
    tmpCategories[301]:AddAchievement(InsertAndReturn(achievements, achievement:New(12948, tmpCategories[301], faction.Horde, nil, nil, nil)));
    tmpCategories[302] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(864).name, {864}, nil)); -- Vol'dun
    tmpCategories[259]:AddCategory(tmpCategories[302]);
    tmpCategories[303] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[302]:AddCategory(tmpCategories[303]);
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(12478, tmpCategories[303], faction.Horde, nil, nil, nil)));
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(13437, tmpCategories[303], faction.Horde, nil, nil, nil)));
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(13009, tmpCategories[303], faction.Horde, nil, nil, nil)));
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(13011, tmpCategories[303], nil, nil, nil, nil)));
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(13014, tmpCategories[303], faction.Horde, nil, nil, nil)));
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(13041, tmpCategories[303], faction.Horde, nil, nil, nil)));
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(13017, tmpCategories[303], faction.Horde, nil, nil, nil)));
    tmpCategories[304] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[302]:AddCategory(tmpCategories[304]);
    tmpCategories[304]:AddAchievement(InsertAndReturn(achievements, achievement:New(12560, tmpCategories[304], nil, nil, nil, nil)));
    tmpCategories[304]:AddAchievement(InsertAndReturn(achievements, achievement:New(12943, tmpCategories[304], nil, nil, nil, nil)));
    tmpCategories[304]:AddAchievement(InsertAndReturn(achievements, achievement:New(12849, tmpCategories[304], nil, nil, nil, nil)));
    tmpCategories[304]:AddAchievement(InsertAndReturn(achievements, achievement:New(13016, tmpCategories[304], nil, nil, nil, nil)));
    tmpCategories[304]:AddAchievement(InsertAndReturn(achievements, achievement:New(13018, tmpCategories[304], nil, nil, nil, nil)));
    tmpCategories[305] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270), nil, nil)); -- PvP
    tmpCategories[302]:AddCategory(tmpCategories[305]);
    tmpCategories[305]:AddAchievement(InsertAndReturn(achievements, achievement:New(12576, tmpCategories[305], nil, nil, nil, nil)));
    tmpCategories[306] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[302]:AddCategory(tmpCategories[306]);
    tmpCategories[306]:AddAchievement(InsertAndReturn(achievements, achievement:New(12949, tmpCategories[306], faction.Horde, nil, nil, nil)));
    tmpCategories[307] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1462).name, {1462}, nil)); -- Mechagon Island
    tmpCategories[259]:AddCategory(tmpCategories[307]);
    tmpCategories[308] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[307]:AddCategory(tmpCategories[308]);
    tmpCategories[308]:AddAchievement(InsertAndReturn(achievements, achievement:New(13553, tmpCategories[308], faction.Alliance, nil, nil, nil)));
    tmpCategories[308]:AddAchievement(InsertAndReturn(achievements, achievement:New(13700, tmpCategories[308], faction.Horde, nil, nil, nil)));
    tmpCategories[308]:AddAchievement(InsertAndReturn(achievements, achievement:New(13790, tmpCategories[308], nil, nil, nil, nil)));
    tmpCategories[308]:AddAchievement(InsertAndReturn(achievements, achievement:New(13791, tmpCategories[308], nil, nil, nil, nil)));
    tmpCategories[309] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[307]:AddCategory(tmpCategories[309]);
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13776, tmpCategories[309], nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13470, tmpCategories[309], nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13472, tmpCategories[309], nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13482, tmpCategories[309], nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13473, tmpCategories[309], nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13474, tmpCategories[309], nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13696, tmpCategories[309], nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13686, tmpCategories[309], nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13475, tmpCategories[309], nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13477, tmpCategories[309], nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13476, tmpCategories[309], nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13555, tmpCategories[309], nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13478, tmpCategories[309], nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13479, tmpCategories[309], nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13556, tmpCategories[309], nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13541, tmpCategories[309], nil, nil, nil, nil)));
    tmpCategories[310] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270), nil, nil)); -- PvP
    tmpCategories[307]:AddCategory(tmpCategories[310]);
    tmpCategories[310]:AddAchievement(InsertAndReturn(achievements, achievement:New(13570, tmpCategories[310], nil, nil, nil, nil)));
    tmpCategories[311] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[307]:AddCategory(tmpCategories[311]);
    tmpCategories[311]:AddAchievement(InsertAndReturn(achievements, achievement:New(13557, tmpCategories[311], nil, nil, nil, nil)));
    tmpCategories[312] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1355).name, {1355, 1528}, nil)); -- Nazjatar
    tmpCategories[259]:AddCategory(tmpCategories[312]);
    tmpCategories[313] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[312]:AddCategory(tmpCategories[313]);
    tmpCategories[313]:AddAchievement(InsertAndReturn(achievements, achievement:New(13710, tmpCategories[313], faction.Alliance, nil, nil, nil)));
    tmpCategories[313]:AddAchievement(InsertAndReturn(achievements, achievement:New(13709, tmpCategories[313], faction.Horde, nil, nil, nil)));
    tmpCategories[314] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[312]:AddCategory(tmpCategories[314]);
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13712, tmpCategories[314], nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13635, tmpCategories[314], nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13690, tmpCategories[314], nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13691, tmpCategories[314], nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13692, tmpCategories[314], nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13743, tmpCategories[314], faction.Alliance, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13753, tmpCategories[314], faction.Alliance, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13758, tmpCategories[314], faction.Alliance, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13744, tmpCategories[314], faction.Alliance, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13754, tmpCategories[314], faction.Alliance, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13759, tmpCategories[314], faction.Alliance, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13745, tmpCategories[314], faction.Alliance, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13755, tmpCategories[314], faction.Alliance, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13760, tmpCategories[314], faction.Alliance, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13704, tmpCategories[314], faction.Alliance, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13762, tmpCategories[314], faction.Alliance, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13746, tmpCategories[314], faction.Horde, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13749, tmpCategories[314], faction.Horde, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13750, tmpCategories[314], faction.Horde, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13747, tmpCategories[314], faction.Horde, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13751, tmpCategories[314], faction.Horde, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13756, tmpCategories[314], faction.Horde, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13748, tmpCategories[314], faction.Horde, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13752, tmpCategories[314], faction.Horde, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13757, tmpCategories[314], faction.Horde, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13645, tmpCategories[314], faction.Horde, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13761, tmpCategories[314], faction.Horde, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13711, tmpCategories[314], nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13765, tmpCategories[314], nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13549, tmpCategories[314], nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13722, tmpCategories[314], nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13699, tmpCategories[314], nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13713, tmpCategories[314], nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13707, tmpCategories[314], nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13763, tmpCategories[314], nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13764, tmpCategories[314], nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13836, tmpCategories[314], nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13638, tmpCategories[314], nil, nil, nil, nil)));
    tmpCategories[315] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270), nil, nil)); -- PvP
    tmpCategories[312]:AddCategory(tmpCategories[315]);
    tmpCategories[315]:AddAchievement(InsertAndReturn(achievements, achievement:New(13569, tmpCategories[315], nil, nil, nil, nil)));
    tmpCategories[315]:AddAchievement(InsertAndReturn(achievements, achievement:New(13568, tmpCategories[315], nil, nil, nil, nil)));
    tmpCategories[315]:AddAchievement(InsertAndReturn(achievements, achievement:New(13720, tmpCategories[315], nil, nil, nil, nil)));
    tmpCategories[316] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[312]:AddCategory(tmpCategories[316]);
    tmpCategories[316]:AddAchievement(InsertAndReturn(achievements, achievement:New(13558, tmpCategories[316], faction.Alliance, nil, nil, nil)));
    tmpCategories[316]:AddAchievement(InsertAndReturn(achievements, achievement:New(13559, tmpCategories[316], faction.Horde, nil, nil, nil)));
    tmpCategories[317] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1530).name, {391, 392, 393, 394, 395, 396, 1530}, nil)); -- Vale of Eternal Blossoms
    tmpCategories[259]:AddCategory(tmpCategories[317]);
    tmpCategories[318] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[317]:AddCategory(tmpCategories[318]);
    tmpCategories[318]:AddAchievement(InsertAndReturn(achievements, achievement:New(14154, tmpCategories[318], nil, nil, nil, nil)));
    tmpCategories[318]:AddAchievement(InsertAndReturn(achievements, achievement:New(14161, tmpCategories[318], nil, nil, nil, nil)));
    tmpCategories[447] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[317]:AddCategory(tmpCategories[447]);
    tmpCategories[447]:AddAchievement(InsertAndReturn(achievements, achievement:New(14160, tmpCategories[447], nil, nil, nil, nil)));
    tmpCategories[447]:AddAchievement(InsertAndReturn(achievements, achievement:New(14159, tmpCategories[447], nil, nil, nil, nil)));
    tmpCategories[447]:AddAchievement(InsertAndReturn(achievements, achievement:New(14158, tmpCategories[447], nil, nil, nil, nil)));
    tmpCategories[321] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[317]:AddCategory(tmpCategories[321]);
    tmpCategories[321]:AddAchievement(InsertAndReturn(achievements, achievement:New(14156, tmpCategories[321], nil, nil, nil, nil)));
    tmpCategories[322] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1527).name, {1527}, nil)); -- Uldum
    tmpCategories[259]:AddCategory(tmpCategories[322]);
    tmpCategories[323] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[322]:AddCategory(tmpCategories[323]);
    tmpCategories[323]:AddAchievement(InsertAndReturn(achievements, achievement:New(14153, tmpCategories[323], nil, nil, nil, nil)));
    tmpCategories[323]:AddAchievement(InsertAndReturn(achievements, achievement:New(14161, tmpCategories[323], nil, nil, nil, nil)));
    tmpCategories[448] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[322]:AddCategory(tmpCategories[448]);
    tmpCategories[448]:AddAchievement(InsertAndReturn(achievements, achievement:New(14160, tmpCategories[448], nil, nil, nil, nil)));
    tmpCategories[448]:AddAchievement(InsertAndReturn(achievements, achievement:New(14159, tmpCategories[448], nil, nil, nil, nil)));
    tmpCategories[448]:AddAchievement(InsertAndReturn(achievements, achievement:New(14158, tmpCategories[448], nil, nil, nil, nil)));
    tmpCategories[324] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[322]:AddCategory(tmpCategories[324]);
    tmpCategories[324]:AddAchievement(InsertAndReturn(achievements, achievement:New(14155, tmpCategories[324], nil, nil, nil, nil)));
    tmpCategories[325] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272), nil, nil)); -- Dungeons
    tmpCategories[258]:AddCategory(tmpCategories[325]);
    tmpCategories[325]:AddAchievement(InsertAndReturn(achievements, achievement:New(12807, tmpCategories[325], nil, nil, nil, nil)));
    tmpCategories[325]:AddAchievement(InsertAndReturn(achievements, achievement:New(12812, tmpCategories[325], nil, nil, nil, nil)));
    tmpCategories[325]:AddAchievement(InsertAndReturn(achievements, achievement:New(13075, tmpCategories[325], nil, nil, nil, nil)));
    tmpCategories[327] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1001), {936}, nil)); -- Freelhold
    tmpCategories[325]:AddCategory(tmpCategories[327]);
    tmpCategories[327]:AddAchievement(InsertAndReturn(achievements, achievement:New(12550, tmpCategories[327], nil, nil, nil, nil)));
    tmpCategories[327]:AddAchievement(InsertAndReturn(achievements, achievement:New(12548, tmpCategories[327], nil, nil, nil, nil)));
    tmpCategories[327]:AddAchievement(InsertAndReturn(achievements, achievement:New(12998, tmpCategories[327], nil, nil, nil, nil)));
    tmpCategories[327]:AddAchievement(InsertAndReturn(achievements, achievement:New(12831, tmpCategories[327], nil, nil, nil, nil)));
    tmpCategories[327]:AddAchievement(InsertAndReturn(achievements, achievement:New(12832, tmpCategories[327], nil, nil, nil, nil)));
    tmpCategories[327]:AddAchievement(InsertAndReturn(achievements, achievement:New(12833, tmpCategories[327], nil, nil, nil, nil)));
    tmpCategories[328] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1021), {1015, 1016, 1017, 1018, 1029}, nil)); -- Waycrest Manor
    tmpCategories[325]:AddCategory(tmpCategories[328]);
    tmpCategories[328]:AddAchievement(InsertAndReturn(achievements, achievement:New(12495, tmpCategories[328], nil, nil, nil, nil)));
    tmpCategories[328]:AddAchievement(InsertAndReturn(achievements, achievement:New(12490, tmpCategories[328], nil, nil, nil, nil)));
    tmpCategories[328]:AddAchievement(InsertAndReturn(achievements, achievement:New(12489, tmpCategories[328], nil, nil, nil, nil)));
    tmpCategories[328]:AddAchievement(InsertAndReturn(achievements, achievement:New(12483, tmpCategories[328], nil, nil, nil, nil)));
    tmpCategories[328]:AddAchievement(InsertAndReturn(achievements, achievement:New(12484, tmpCategories[328], nil, nil, nil, nil)));
    tmpCategories[328]:AddAchievement(InsertAndReturn(achievements, achievement:New(12488, tmpCategories[328], nil, nil, nil, nil)));
    tmpCategories[329] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1036), {1039, 1040}, nil)); -- Shrine of the Storm
    tmpCategories[325]:AddCategory(tmpCategories[329]);
    tmpCategories[329]:AddAchievement(InsertAndReturn(achievements, achievement:New(12600, tmpCategories[329], nil, nil, nil, nil)));
    tmpCategories[329]:AddAchievement(InsertAndReturn(achievements, achievement:New(12601, tmpCategories[329], nil, nil, nil, nil)));
    tmpCategories[329]:AddAchievement(InsertAndReturn(achievements, achievement:New(12602, tmpCategories[329], nil, nil, nil, nil)));
    tmpCategories[329]:AddAchievement(InsertAndReturn(achievements, achievement:New(12835, tmpCategories[329], nil, nil, nil, nil)));
    tmpCategories[329]:AddAchievement(InsertAndReturn(achievements, achievement:New(12837, tmpCategories[329], nil, nil, nil, nil)));
    tmpCategories[329]:AddAchievement(InsertAndReturn(achievements, achievement:New(12838, tmpCategories[329], nil, nil, nil, nil)));
    tmpCategories[330] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(968), {934, 935}, nil)); -- Atal'Dazar
    tmpCategories[325]:AddCategory(tmpCategories[330]);
    tmpCategories[330]:AddAchievement(InsertAndReturn(achievements, achievement:New(12270, tmpCategories[330], nil, nil, nil, nil)));
    tmpCategories[330]:AddAchievement(InsertAndReturn(achievements, achievement:New(12272, tmpCategories[330], nil, nil, nil, nil)));
    tmpCategories[330]:AddAchievement(InsertAndReturn(achievements, achievement:New(12273, tmpCategories[330], nil, nil, nil, nil)));
    tmpCategories[330]:AddAchievement(InsertAndReturn(achievements, achievement:New(12824, tmpCategories[330], nil, nil, nil, nil)));
    tmpCategories[330]:AddAchievement(InsertAndReturn(achievements, achievement:New(12825, tmpCategories[330], nil, nil, nil, nil)));
    tmpCategories[330]:AddAchievement(InsertAndReturn(achievements, achievement:New(12826, tmpCategories[330], nil, nil, nil, nil)));
    tmpCategories[331] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1022), {1041, 1042}, nil)); -- The Underrot
    tmpCategories[325]:AddCategory(tmpCategories[331]);
    tmpCategories[331]:AddAchievement(InsertAndReturn(achievements, achievement:New(12498, tmpCategories[331], nil, nil, nil, nil)));
    tmpCategories[331]:AddAchievement(InsertAndReturn(achievements, achievement:New(12549, tmpCategories[331], nil, nil, nil, nil)));
    tmpCategories[331]:AddAchievement(InsertAndReturn(achievements, achievement:New(12499, tmpCategories[331], nil, nil, nil, nil)));
    tmpCategories[331]:AddAchievement(InsertAndReturn(achievements, achievement:New(12500, tmpCategories[331], nil, nil, nil, nil)));
    tmpCategories[331]:AddAchievement(InsertAndReturn(achievements, achievement:New(12501, tmpCategories[331], nil, nil, nil, nil)));
    tmpCategories[331]:AddAchievement(InsertAndReturn(achievements, achievement:New(12502, tmpCategories[331], nil, nil, nil, nil)));
    tmpCategories[332] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1030), {1038, 1043}, nil)); -- Temple of Sethraliss
    tmpCategories[325]:AddCategory(tmpCategories[332]);
    tmpCategories[332]:AddAchievement(InsertAndReturn(achievements, achievement:New(12507, tmpCategories[332], nil, nil, nil, nil)));
    tmpCategories[332]:AddAchievement(InsertAndReturn(achievements, achievement:New(12503, tmpCategories[332], nil, nil, nil, nil)));
    tmpCategories[332]:AddAchievement(InsertAndReturn(achievements, achievement:New(12508, tmpCategories[332], nil, nil, nil, nil)));
    tmpCategories[332]:AddAchievement(InsertAndReturn(achievements, achievement:New(12504, tmpCategories[332], nil, nil, nil, nil)));
    tmpCategories[332]:AddAchievement(InsertAndReturn(achievements, achievement:New(12505, tmpCategories[332], nil, nil, nil, nil)));
    tmpCategories[332]:AddAchievement(InsertAndReturn(achievements, achievement:New(12506, tmpCategories[332], nil, nil, nil, nil)));
    tmpCategories[333] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1002), {974, 975, 976, 977, 978, 979, 980}, nil)); -- Tol Dagor
    tmpCategories[325]:AddCategory(tmpCategories[333]);
    tmpCategories[333]:AddAchievement(InsertAndReturn(achievements, achievement:New(12457, tmpCategories[333], nil, nil, nil, nil)));
    tmpCategories[333]:AddAchievement(InsertAndReturn(achievements, achievement:New(12462, tmpCategories[333], nil, nil, nil, nil)));
    tmpCategories[333]:AddAchievement(InsertAndReturn(achievements, achievement:New(12840, tmpCategories[333], nil, nil, nil, nil)));
    tmpCategories[333]:AddAchievement(InsertAndReturn(achievements, achievement:New(12841, tmpCategories[333], nil, nil, nil, nil)));
    tmpCategories[333]:AddAchievement(InsertAndReturn(achievements, achievement:New(12842, tmpCategories[333], nil, nil, nil, nil)));
    tmpCategories[334] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1012), {1010}, nil)); -- The MOTHERLODE!!
    tmpCategories[325]:AddCategory(tmpCategories[334]);
    tmpCategories[334]:AddAchievement(InsertAndReturn(achievements, achievement:New(12855, tmpCategories[334], nil, nil, nil, nil)));
    tmpCategories[334]:AddAchievement(InsertAndReturn(achievements, achievement:New(12854, tmpCategories[334], nil, nil, nil, nil)));
    tmpCategories[334]:AddAchievement(InsertAndReturn(achievements, achievement:New(12844, tmpCategories[334], nil, nil, nil, nil)));
    tmpCategories[334]:AddAchievement(InsertAndReturn(achievements, achievement:New(12845, tmpCategories[334], nil, nil, nil, nil)));
    tmpCategories[334]:AddAchievement(InsertAndReturn(achievements, achievement:New(12846, tmpCategories[334], nil, nil, nil, nil)));
    tmpCategories[335] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1023), {1162}, nil)); -- Siege of Boralus
    tmpCategories[325]:AddCategory(tmpCategories[335]);
    tmpCategories[335]:AddAchievement(InsertAndReturn(achievements, achievement:New(12727, tmpCategories[335], nil, nil, nil, nil)));
    tmpCategories[335]:AddAchievement(InsertAndReturn(achievements, achievement:New(12726, tmpCategories[335], nil, nil, nil, nil)));
    tmpCategories[335]:AddAchievement(InsertAndReturn(achievements, achievement:New(12489, tmpCategories[335], nil, nil, nil, nil)));
    tmpCategories[335]:AddAchievement(InsertAndReturn(achievements, achievement:New(12847, tmpCategories[335], nil, nil, nil, nil)));
    tmpCategories[336] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1041), {1004}, nil)); -- Kings' Rest
    tmpCategories[325]:AddCategory(tmpCategories[336]);
    tmpCategories[336]:AddAchievement(InsertAndReturn(achievements, achievement:New(12722, tmpCategories[336], nil, nil, nil, nil)));
    tmpCategories[336]:AddAchievement(InsertAndReturn(achievements, achievement:New(12721, tmpCategories[336], nil, nil, nil, nil)));
    tmpCategories[336]:AddAchievement(InsertAndReturn(achievements, achievement:New(12723, tmpCategories[336], nil, nil, nil, nil)));
    tmpCategories[336]:AddAchievement(InsertAndReturn(achievements, achievement:New(12848, tmpCategories[336], nil, nil, nil, nil)));
    tmpCategories[337] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1178), {1490, 1491, 1493, 1494, 1497}, nil)); -- Operation: Mechagon
    tmpCategories[325]:AddCategory(tmpCategories[337]);
    tmpCategories[337]:AddAchievement(InsertAndReturn(achievements, achievement:New(13706, tmpCategories[337], nil, nil, nil, nil)));
    tmpCategories[337]:AddAchievement(InsertAndReturn(achievements, achievement:New(13698, tmpCategories[337], nil, nil, nil, nil)));
    tmpCategories[337]:AddAchievement(InsertAndReturn(achievements, achievement:New(13723, tmpCategories[337], nil, nil, nil, nil)));
    tmpCategories[337]:AddAchievement(InsertAndReturn(achievements, achievement:New(13545, tmpCategories[337], nil, nil, nil, nil)));
    tmpCategories[337]:AddAchievement(InsertAndReturn(achievements, achievement:New(13624, tmpCategories[337], nil, nil, nil, nil)));
    tmpCategories[337]:AddAchievement(InsertAndReturn(achievements, achievement:New(13789, tmpCategories[337], nil, nil, nil, nil)));
    tmpCategories[326] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271), nil, nil)); -- Raids
    tmpCategories[258]:AddCategory(tmpCategories[326]);
    tmpCategories[326]:AddAchievement(InsertAndReturn(achievements, achievement:New(12806, tmpCategories[326], nil, nil, nil, nil)));
    tmpCategories[326]:AddAchievement(InsertAndReturn(achievements, achievement:New(13315, tmpCategories[326], nil, nil, nil, nil)));
    tmpCategories[326]:AddAchievement(InsertAndReturn(achievements, achievement:New(13687, tmpCategories[326], nil, nil, nil, nil)));
    tmpCategories[326]:AddAchievement(InsertAndReturn(achievements, achievement:New(14146, tmpCategories[326], nil, nil, nil, nil)));
    tmpCategories[338] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1031), {1148, 1149, 1150, 1151, 1152, 1153, 1154, 1155}, nil)); -- Uldir
    tmpCategories[326]:AddCategory(tmpCategories[338]);
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12937, tmpCategories[338], nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12938, tmpCategories[338], nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12828, tmpCategories[338], nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12823, tmpCategories[338], nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12772, tmpCategories[338], nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12830, tmpCategories[338], nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12836, tmpCategories[338], nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12551, tmpCategories[338], nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12521, tmpCategories[338], nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12522, tmpCategories[338], nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12523, tmpCategories[338], nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12524, tmpCategories[338], nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12526, tmpCategories[338], nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12527, tmpCategories[338], nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12530, tmpCategories[338], nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12529, tmpCategories[338], nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12531, tmpCategories[338], nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12532, tmpCategories[338], nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12533, tmpCategories[338], nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12536, tmpCategories[338], nil, nil, false, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12535, tmpCategories[338], nil, nil, false, nil)));
    tmpCategories[339] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1176), {1352, 1353, 1354, 1356, 1357, 1358, 1364, 1367}, nil)); -- Battle of Dazar'alor
    tmpCategories[326]:AddCategory(tmpCategories[339]);
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13316, tmpCategories[339], nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13431, tmpCategories[339], nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13383, tmpCategories[339], nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13345, tmpCategories[339], nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13325, tmpCategories[339], nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13425, tmpCategories[339], nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13401, tmpCategories[339], nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13430, tmpCategories[339], nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13410, tmpCategories[339], nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13286, tmpCategories[339], faction.Alliance, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13289, tmpCategories[339], faction.Horde, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13287, tmpCategories[339], faction.Alliance, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13290, tmpCategories[339], faction.Horde, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13288, tmpCategories[339], faction.Alliance, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13291, tmpCategories[339], faction.Horde, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13292, tmpCategories[339], nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13298, tmpCategories[339], faction.Alliance, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13293, tmpCategories[339], nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13295, tmpCategories[339], faction.Horde, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13299, tmpCategories[339], nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13300, tmpCategories[339], nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13311, tmpCategories[339], nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13312, tmpCategories[339], nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13313, tmpCategories[339], nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13314, tmpCategories[339], nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13322, tmpCategories[339], nil, nil, false, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13323, tmpCategories[339], nil, nil, false, nil)));
    tmpCategories[340] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1177), {1345, 1346}, nil)); -- Crucible of Storms
    tmpCategories[326]:AddCategory(tmpCategories[340]);
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13501, tmpCategories[340], nil, nil, nil, nil)));
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13506, tmpCategories[340], nil, nil, nil, nil)));
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13414, tmpCategories[340], nil, nil, nil, nil)));
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13416, tmpCategories[340], nil, nil, nil, nil)));
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13417, tmpCategories[340], nil, nil, nil, nil)));
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13418, tmpCategories[340], nil, nil, false, nil)));
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13419, tmpCategories[340], nil, nil, false, nil)));
    tmpCategories[341] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1179), {1512, 1513, 1514, 1516, 1517, 1518, 1519, 1520}, nil)); -- The Eternal Palace
    tmpCategories[326]:AddCategory(tmpCategories[341]);
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13684, tmpCategories[341], nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13628, tmpCategories[341], nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13767, tmpCategories[341], nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13629, tmpCategories[341], nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13724, tmpCategories[341], nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13633, tmpCategories[341], nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13716, tmpCategories[341], nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13768, tmpCategories[341], nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13718, tmpCategories[341], nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13719, tmpCategories[341], nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13725, tmpCategories[341], nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13726, tmpCategories[341], nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13728, tmpCategories[341], nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13727, tmpCategories[341], nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13729, tmpCategories[341], nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13730, tmpCategories[341], nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13731, tmpCategories[341], nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13732, tmpCategories[341], nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13733, tmpCategories[341], nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13784, tmpCategories[341], nil, nil, false, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13785, tmpCategories[341], nil, nil, false, nil)));
    tmpCategories[342] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1180), {1580, 1581, 1582, 1590, 1591, 1592, 1593, 1594, 1595, 1596, 1597}, nil)); -- Ny'alotha, the Waking City
    tmpCategories[326]:AddCategory(tmpCategories[342]);
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14019, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14008, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14037, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14024, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14139, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14023, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(13999, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(13990, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14026, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14038, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14147, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14148, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14193, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14194, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14195, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14196, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14041, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14043, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14044, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14045, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14050, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14046, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14051, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14048, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14049, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14052, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14054, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14055, tmpCategories[342], nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14068, tmpCategories[342], nil, nil, false, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14069, tmpCategories[342], nil, nil, false, nil)));
    tmpCategories[343] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15117), nil, nil)); -- Pet Battles
    tmpCategories[258]:AddCategory(tmpCategories[343]);
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(12930, tmpCategories[343], nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13693, tmpCategories[343], nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13694, tmpCategories[343], nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13715, tmpCategories[343], nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(12936, tmpCategories[343], nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13280, tmpCategories[343], nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13270, tmpCategories[343], nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13271, tmpCategories[343], nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13272, tmpCategories[343], nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13273, tmpCategories[343], nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13274, tmpCategories[343], nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13281, tmpCategories[343], nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13275, tmpCategories[343], nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13277, tmpCategories[343], nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13278, tmpCategories[343], nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13279, tmpCategories[343], nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13625, tmpCategories[343], nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13626, tmpCategories[343], nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13695, tmpCategories[343], nil, nil, nil, nil)));
    tmpCategories[425] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15307), nil, nil)); -- Island Expeditions
    tmpCategories[258]:AddCategory(tmpCategories[425]);
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13142, tmpCategories[425], nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13122, tmpCategories[425], nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13141, tmpCategories[425], nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(12596, tmpCategories[425], nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(12594, tmpCategories[425], nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(12595, tmpCategories[425], nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(12597, tmpCategories[425], nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13120, tmpCategories[425], nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13121, tmpCategories[425], nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13129, tmpCategories[425], nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13123, tmpCategories[425], nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13124, tmpCategories[425], nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13125, tmpCategories[425], nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13126, tmpCategories[425], nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13127, tmpCategories[425], nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13128, tmpCategories[425], nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13132, tmpCategories[425], nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13133, tmpCategories[425], faction.Alliance, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13135, tmpCategories[425], faction.Horde, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13134, tmpCategories[425], nil, nil, nil, nil)));
    tmpCategories[436] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(1687), {981}, nil)); -- Un'gol Ruins
    tmpCategories[425]:AddCategory(tmpCategories[436]);
    tmpCategories[436]:AddAchievement(InsertAndReturn(achievements, achievement:New(12590, tmpCategories[436], nil, nil, nil, nil)));
    tmpCategories[436]:AddAchievement(InsertAndReturn(achievements, achievement:New(12589, tmpCategories[436], nil, nil, nil, nil)));
    tmpCategories[436]:AddAchievement(InsertAndReturn(achievements, achievement:New(12591, tmpCategories[436], nil, nil, nil, nil)));
    tmpCategories[436]:AddAchievement(InsertAndReturn(achievements, achievement:New(12592, tmpCategories[436], nil, nil, nil, nil)));
    tmpCategories[437] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(1734), {1036}, nil)); -- The Dread Chain
    tmpCategories[425]:AddCategory(tmpCategories[437]);
    tmpCategories[437]:AddAchievement(InsertAndReturn(achievements, achievement:New(13095, tmpCategories[437], nil, nil, nil, nil)));
    tmpCategories[437]:AddAchievement(InsertAndReturn(achievements, achievement:New(13096, tmpCategories[437], nil, nil, nil, nil)));
    tmpCategories[437]:AddAchievement(InsertAndReturn(achievements, achievement:New(13097, tmpCategories[437], nil, nil, nil, nil)));
    tmpCategories[437]:AddAchievement(InsertAndReturn(achievements, achievement:New(13098, tmpCategories[437], nil, nil, nil, nil)));
    tmpCategories[438] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(1723), {1033}, nil)); -- The Rotting Mire
    tmpCategories[425]:AddCategory(tmpCategories[438]);
    tmpCategories[438]:AddAchievement(InsertAndReturn(achievements, achievement:New(13103, tmpCategories[438], nil, nil, nil, nil)));
    tmpCategories[438]:AddAchievement(InsertAndReturn(achievements, achievement:New(13104, tmpCategories[438], nil, nil, nil, nil)));
    tmpCategories[438]:AddAchievement(InsertAndReturn(achievements, achievement:New(13105, tmpCategories[438], nil, nil, nil, nil)));
    tmpCategories[438]:AddAchievement(InsertAndReturn(achievements, achievement:New(13106, tmpCategories[438], nil, nil, nil, nil)));
    tmpCategories[439] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(1750), {1035}, nil)); -- The Molten Cay
    tmpCategories[425]:AddCategory(tmpCategories[439]);
    tmpCategories[439]:AddAchievement(InsertAndReturn(achievements, achievement:New(13099, tmpCategories[439], nil, nil, nil, nil)));
    tmpCategories[439]:AddAchievement(InsertAndReturn(achievements, achievement:New(13100, tmpCategories[439], nil, nil, nil, nil)));
    tmpCategories[439]:AddAchievement(InsertAndReturn(achievements, achievement:New(13101, tmpCategories[439], nil, nil, nil, nil)));
    tmpCategories[439]:AddAchievement(InsertAndReturn(achievements, achievement:New(13102, tmpCategories[439], nil, nil, nil, nil)));
    tmpCategories[440] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(1724), {1034}, nil)); -- Verdant Wilds
    tmpCategories[425]:AddCategory(tmpCategories[440]);
    tmpCategories[440]:AddAchievement(InsertAndReturn(achievements, achievement:New(13111, tmpCategories[440], nil, nil, nil, nil)));
    tmpCategories[440]:AddAchievement(InsertAndReturn(achievements, achievement:New(13112, tmpCategories[440], nil, nil, nil, nil)));
    tmpCategories[440]:AddAchievement(InsertAndReturn(achievements, achievement:New(13113, tmpCategories[440], nil, nil, nil, nil)));
    tmpCategories[440]:AddAchievement(InsertAndReturn(achievements, achievement:New(13114, tmpCategories[440], nil, nil, nil, nil)));
    tmpCategories[441] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(1725), {1032}, nil)); -- Skittering Hollow
    tmpCategories[425]:AddCategory(tmpCategories[441]);
    tmpCategories[441]:AddAchievement(InsertAndReturn(achievements, achievement:New(13107, tmpCategories[441], nil, nil, nil, nil)));
    tmpCategories[441]:AddAchievement(InsertAndReturn(achievements, achievement:New(13108, tmpCategories[441], nil, nil, nil, nil)));
    tmpCategories[441]:AddAchievement(InsertAndReturn(achievements, achievement:New(13109, tmpCategories[441], nil, nil, nil, nil)));
    tmpCategories[441]:AddAchievement(InsertAndReturn(achievements, achievement:New(13110, tmpCategories[441], nil, nil, nil, nil)));
    tmpCategories[442] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(1735), {1037}, nil)); -- The Whispering Reef
    tmpCategories[425]:AddCategory(tmpCategories[442]);
    tmpCategories[442]:AddAchievement(InsertAndReturn(achievements, achievement:New(13119, tmpCategories[442], nil, nil, nil, nil)));
    tmpCategories[442]:AddAchievement(InsertAndReturn(achievements, achievement:New(13118, tmpCategories[442], nil, nil, nil, nil)));
    tmpCategories[442]:AddAchievement(InsertAndReturn(achievements, achievement:New(13116, tmpCategories[442], nil, nil, nil, nil)));
    tmpCategories[442]:AddAchievement(InsertAndReturn(achievements, achievement:New(13115, tmpCategories[442], nil, nil, nil, nil)));
    tmpCategories[443] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(1932), {1337}, nil)); -- Jorundall
    tmpCategories[425]:AddCategory(tmpCategories[443]);
    tmpCategories[443]:AddAchievement(InsertAndReturn(achievements, achievement:New(13389, tmpCategories[443], nil, nil, nil, nil)));
    tmpCategories[443]:AddAchievement(InsertAndReturn(achievements, achievement:New(13394, tmpCategories[443], nil, nil, nil, nil)));
    tmpCategories[443]:AddAchievement(InsertAndReturn(achievements, achievement:New(13395, tmpCategories[443], nil, nil, nil, nil)));
    tmpCategories[443]:AddAchievement(InsertAndReturn(achievements, achievement:New(13399, tmpCategories[443], nil, nil, nil, nil)));
    tmpCategories[444] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(1928), {1336}, nil)); -- Havenswood
    tmpCategories[425]:AddCategory(tmpCategories[444]);
    tmpCategories[444]:AddAchievement(InsertAndReturn(achievements, achievement:New(13396, tmpCategories[444], nil, nil, nil, nil)));
    tmpCategories[444]:AddAchievement(InsertAndReturn(achievements, achievement:New(13397, tmpCategories[444], nil, nil, nil, nil)));
    tmpCategories[444]:AddAchievement(InsertAndReturn(achievements, achievement:New(13398, tmpCategories[444], nil, nil, nil, nil)));
    tmpCategories[444]:AddAchievement(InsertAndReturn(achievements, achievement:New(13400, tmpCategories[444], nil, nil, nil, nil)));
    tmpCategories[445] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(1984), {1501}, nil)); -- Crestfall
    tmpCategories[425]:AddCategory(tmpCategories[445]);
    tmpCategories[445]:AddAchievement(InsertAndReturn(achievements, achievement:New(13577, tmpCategories[445], nil, nil, nil, nil)));
    tmpCategories[445]:AddAchievement(InsertAndReturn(achievements, achievement:New(13578, tmpCategories[445], nil, nil, nil, nil)));
    tmpCategories[445]:AddAchievement(InsertAndReturn(achievements, achievement:New(13579, tmpCategories[445], nil, nil, nil, nil)));
    tmpCategories[445]:AddAchievement(InsertAndReturn(achievements, achievement:New(13580, tmpCategories[445], nil, nil, nil, nil)));
    tmpCategories[446] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(1983), {1502}, nil)); -- Snowblossom Village
    tmpCategories[425]:AddCategory(tmpCategories[446]);
    tmpCategories[446]:AddAchievement(InsertAndReturn(achievements, achievement:New(13581, tmpCategories[446], nil, nil, nil, nil)));
    tmpCategories[446]:AddAchievement(InsertAndReturn(achievements, achievement:New(13582, tmpCategories[446], nil, nil, nil, nil)));
    tmpCategories[446]:AddAchievement(InsertAndReturn(achievements, achievement:New(13583, tmpCategories[446], nil, nil, nil, nil)));
    tmpCategories[446]:AddAchievement(InsertAndReturn(achievements, achievement:New(13584, tmpCategories[446], nil, nil, nil, nil)));
    tmpCategories[426] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15308), {1161, 1165}, nil)); -- War Effort
    tmpCategories[258]:AddCategory(tmpCategories[426]);
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12867, tmpCategories[426], faction.Horde, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12896, tmpCategories[426], faction.Alliance, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12869, tmpCategories[426], faction.Horde, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12898, tmpCategories[426], faction.Alliance, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12870, tmpCategories[426], faction.Horde, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12899, tmpCategories[426], faction.Alliance, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12872, tmpCategories[426], nil, nil, nil, nil)));
    tmpCategories[434] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(1615), {943, 1044}, nil)); -- Battle for Stromgarde
    tmpCategories[426]:AddCategory(tmpCategories[434]);
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12873, tmpCategories[434], faction.Horde, nil, nil, nil)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(13735, tmpCategories[434], faction.Horde, nil, nil, nil)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12881, tmpCategories[434], faction.Alliance, nil, nil, nil)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(13737, tmpCategories[434], faction.Alliance, nil, nil, nil)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12877, tmpCategories[434], faction.Horde, nil, nil, nil)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12876, tmpCategories[434], faction.Horde, nil, nil, nil)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12888, tmpCategories[434], faction.Alliance, nil, nil, nil)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12889, tmpCategories[434], faction.Alliance, nil, nil, nil)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12878, tmpCategories[434], faction.Horde, nil, nil, nil)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12884, tmpCategories[434], faction.Alliance, nil, nil, nil)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12879, tmpCategories[434], faction.Horde, nil, nil, nil)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(13738, tmpCategories[434], faction.Horde, nil, nil, nil)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12886, tmpCategories[434], faction.Alliance, nil, nil, nil)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(13739, tmpCategories[434], faction.Alliance, nil, nil, nil)));
    tmpCategories[434]:AddAchievement(InsertAndReturn(achievements, achievement:New(12874, tmpCategories[434], nil, nil, nil, nil)));
    tmpCategories[435] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(1901), {1203, 1332, 1333, 1338}, nil)); -- The Battle for Darkshore
    tmpCategories[426]:AddCategory(tmpCategories[435]);
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13296, tmpCategories[435], faction.Horde, nil, nil, nil)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(14149, tmpCategories[435], faction.Horde, nil, nil, nil)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13297, tmpCategories[435], faction.Alliance, nil, nil, nil)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(14150, tmpCategories[435], faction.Alliance, nil, nil, nil)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13301, tmpCategories[435], faction.Horde, nil, nil, nil)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13306, tmpCategories[435], faction.Horde, nil, nil, nil)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13302, tmpCategories[435], faction.Alliance, nil, nil, nil)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13305, tmpCategories[435], faction.Alliance, nil, nil, nil)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13307, tmpCategories[435], faction.Horde, nil, nil, nil)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13308, tmpCategories[435], faction.Alliance, nil, nil, nil)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13309, tmpCategories[435], faction.Horde, nil, nil, nil)));
    tmpCategories[435]:AddAchievement(InsertAndReturn(achievements, achievement:New(13310, tmpCategories[435], faction.Alliance, nil, nil, nil)));
    tmpCategories[427] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15417), {1021, 1473, 1604}, nil)); -- Heart of Azeroth
    tmpCategories[258]:AddCategory(tmpCategories[427]);
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(12918, tmpCategories[427], nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13998, tmpCategories[427], nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13572, tmpCategories[427], nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13769, tmpCategories[427], nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13770, tmpCategories[427], nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13771, tmpCategories[427], nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13772, tmpCategories[427], nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13773, tmpCategories[427], nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13775, tmpCategories[427], nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13777, tmpCategories[427], nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13779, tmpCategories[427], nil, nil, false, nil)));
    tmpCategories[428] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15426), {1021, 1469, 1470, 1473, 1604}, nil)); -- Visions of N'Zoth	
    tmpCategories[258]:AddCategory(tmpCategories[428]);
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14143, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(13994, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14060, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14061, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14062, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14064, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14066, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14063, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14065, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14067, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14162, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14165, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14166, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14167, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14168, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14169, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14170, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14171, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14172, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14173, tmpCategories[428], nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14140, tmpCategories[428], nil, nil, false, nil)));
    tmpCategories[6] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15439), nil, nil)); -- Shadowlands
    tmpCategories[344] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"], nil, nil)); -- Zones
    tmpCategories[6]:AddCategory(tmpCategories[344]);
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14280, tmpCategories[344], nil, nil, nil, nil)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14790, tmpCategories[344], nil, nil, nil, nil)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14758, tmpCategories[344], nil, nil, nil, nil)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14825, tmpCategories[344], nil, nil, nil, nil)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14731, tmpCategories[344], nil, nil, nil, nil)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14515, tmpCategories[344], nil, nil, nil, nil)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14516, tmpCategories[344], nil, nil, nil, nil)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14519, tmpCategories[344], nil, nil, nil, nil)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14315, tmpCategories[344], nil, nil, nil, nil)));
    tmpCategories[345] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1533).name, {1533, 1690, 1713, 1714}, nil)); -- Bastion
    tmpCategories[344]:AddCategory(tmpCategories[345]);
    tmpCategories[346] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[345]:AddCategory(tmpCategories[346]);
    tmpCategories[346]:AddAchievement(InsertAndReturn(achievements, achievement:New(14281, tmpCategories[346], nil, nil, nil, nil)));
    tmpCategories[346]:AddAchievement(InsertAndReturn(achievements, achievement:New(14801, tmpCategories[346], nil, nil, nil, nil)));
    tmpCategories[346]:AddAchievement(InsertAndReturn(achievements, achievement:New(14737, tmpCategories[346], nil, nil, nil, nil)));
    tmpCategories[346]:AddAchievement(InsertAndReturn(achievements, achievement:New(14735, tmpCategories[346], nil, nil, nil, nil)));
    tmpCategories[346]:AddAchievement(InsertAndReturn(achievements, achievement:New(14741, tmpCategories[346], nil, nil, nil, nil)));
    tmpCategories[346]:AddAchievement(InsertAndReturn(achievements, achievement:New(14762, tmpCategories[346], nil, nil, nil, nil)));
    tmpCategories[347] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[345]:AddCategory(tmpCategories[347]);
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14303, tmpCategories[347], nil, nil, nil, nil)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14307, tmpCategories[347], nil, nil, nil, nil)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14311, tmpCategories[347], nil, nil, nil, nil)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14339, tmpCategories[347], nil, nil, nil, nil)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14734, tmpCategories[347], nil, nil, nil, nil)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14767, tmpCategories[347], nil, nil, nil, nil)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14768, tmpCategories[347], nil, nil, nil, nil)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14733, tmpCategories[347], nil, nil, nil, nil)));
    tmpCategories[348] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270), nil, nil)); -- PvP
    tmpCategories[345]:AddCategory(tmpCategories[348]);
    tmpCategories[348]:AddAchievement(InsertAndReturn(achievements, achievement:New(14514, tmpCategories[348], nil, nil, nil, nil)));
    tmpCategories[349] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[345]:AddCategory(tmpCategories[349]);
    tmpCategories[349]:AddAchievement(InsertAndReturn(achievements, achievement:New(14335, tmpCategories[349], nil, nil, nil, nil)));
    tmpCategories[350] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1536).name, {1536, 1649, 1650, 1651, 1652}, nil)); -- Maldraxxus
    tmpCategories[344]:AddCategory(tmpCategories[350]);
    tmpCategories[351] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[350]:AddCategory(tmpCategories[351]);
    tmpCategories[351]:AddAchievement(InsertAndReturn(achievements, achievement:New(14206, tmpCategories[351], nil, nil, nil, nil)));
    tmpCategories[351]:AddAchievement(InsertAndReturn(achievements, achievement:New(14799, tmpCategories[351], nil, nil, nil, nil)));
    tmpCategories[352] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[350]:AddCategory(tmpCategories[352]);
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14305, tmpCategories[352], nil, nil, nil, nil)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14308, tmpCategories[352], nil, nil, nil, nil)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14312, tmpCategories[352], nil, nil, nil, nil)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14626, tmpCategories[352], nil, nil, nil, nil)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14802, tmpCategories[352], nil, nil, nil, nil)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14721, tmpCategories[352], nil, nil, nil, nil)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14634, tmpCategories[352], nil, nil, nil, nil)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14763, tmpCategories[352], nil, nil, nil, nil)));
    tmpCategories[353] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270), nil, nil)); -- PvP
    tmpCategories[350]:AddCategory(tmpCategories[353]);
    tmpCategories[353]:AddAchievement(InsertAndReturn(achievements, achievement:New(14513, tmpCategories[353], nil, nil, nil, nil)));
    tmpCategories[354] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[350]:AddCategory(tmpCategories[354]);
    tmpCategories[354]:AddAchievement(InsertAndReturn(achievements, achievement:New(14336, tmpCategories[354], nil, nil, nil, nil)));
    tmpCategories[355] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1565).name, {1565, 1816, 1818, 1819, 1824, 1825, 1826, 1827, 1829}, nil)); -- Ardenweald
    tmpCategories[344]:AddCategory(tmpCategories[355]);
    tmpCategories[356] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[355]:AddCategory(tmpCategories[356]);
    tmpCategories[356]:AddAchievement(InsertAndReturn(achievements, achievement:New(14164, tmpCategories[356], nil, nil, nil, nil)));
    tmpCategories[356]:AddAchievement(InsertAndReturn(achievements, achievement:New(14800, tmpCategories[356], nil, nil, nil, nil)));
    tmpCategories[356]:AddAchievement(InsertAndReturn(achievements, achievement:New(14671, tmpCategories[356], nil, nil, nil, nil)));
    tmpCategories[356]:AddAchievement(InsertAndReturn(achievements, achievement:New(14672, tmpCategories[356], nil, nil, nil, nil)));
    tmpCategories[357] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[355]:AddCategory(tmpCategories[357]);
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14304, tmpCategories[357], nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14309, tmpCategories[357], nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14313, tmpCategories[357], nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14353, tmpCategories[357], nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14791, tmpCategories[357], nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14774, tmpCategories[357], nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14788, tmpCategories[357], nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14779, tmpCategories[357], nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14504, tmpCategories[357], nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14505, tmpCategories[357], nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14506, tmpCategories[357], nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14507, tmpCategories[357], nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14508, tmpCategories[357], nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14509, tmpCategories[357], nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14510, tmpCategories[357], nil, nil, nil, nil)));
    tmpCategories[358] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270), nil, nil)); -- PvP
    tmpCategories[355]:AddCategory(tmpCategories[358]);
    tmpCategories[358]:AddAchievement(InsertAndReturn(achievements, achievement:New(14511, tmpCategories[358], nil, nil, nil, nil)));
    tmpCategories[359] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[355]:AddCategory(tmpCategories[359]);
    tmpCategories[359]:AddAchievement(InsertAndReturn(achievements, achievement:New(14337, tmpCategories[359], nil, nil, nil, nil)));
    tmpCategories[360] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1525).name, {1525}, nil)); -- Revendreth
    tmpCategories[344]:AddCategory(tmpCategories[360]);
    tmpCategories[361] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[360]:AddCategory(tmpCategories[361]);
    tmpCategories[361]:AddAchievement(InsertAndReturn(achievements, achievement:New(13878, tmpCategories[361], nil, nil, nil, nil)));
    tmpCategories[361]:AddAchievement(InsertAndReturn(achievements, achievement:New(14798, tmpCategories[361], nil, nil, nil, nil)));
    tmpCategories[361]:AddAchievement(InsertAndReturn(achievements, achievement:New(14233, tmpCategories[361], nil, nil, nil, nil)));
    tmpCategories[361]:AddAchievement(InsertAndReturn(achievements, achievement:New(14765, tmpCategories[361], nil, nil, nil, nil)));
    tmpCategories[361]:AddAchievement(InsertAndReturn(achievements, achievement:New(14766, tmpCategories[361], nil, nil, nil, nil)));
    tmpCategories[361]:AddAchievement(InsertAndReturn(achievements, achievement:New(14772, tmpCategories[361], nil, nil, nil, nil)));
    tmpCategories[362] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[360]:AddCategory(tmpCategories[362]);
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14306, tmpCategories[362], nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14310, tmpCategories[362], nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14314, tmpCategories[362], nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14277, tmpCategories[362], nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14274, tmpCategories[362], nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14272, tmpCategories[362], nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14276, tmpCategories[362], nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14769, tmpCategories[362], nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14771, tmpCategories[362], nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14770, tmpCategories[362], nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14273, tmpCategories[362], nil, nil, nil, nil)));
    tmpCategories[363] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270), nil, nil)); -- PvP
    tmpCategories[360]:AddCategory(tmpCategories[363]);
    tmpCategories[363]:AddAchievement(InsertAndReturn(achievements, achievement:New(14512, tmpCategories[363], nil, nil, nil, nil)));
    tmpCategories[364] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[360]:AddCategory(tmpCategories[364]);
    tmpCategories[364]:AddAchievement(InsertAndReturn(achievements, achievement:New(14338, tmpCategories[364], nil, nil, nil, nil)));
    tmpCategories[365] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1543).name, {1543}, nil)); -- The Maw
    tmpCategories[344]:AddCategory(tmpCategories[365]);
    tmpCategories[366] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447), nil, nil)); -- Quests
    tmpCategories[365]:AddCategory(tmpCategories[366]);
    tmpCategories[366]:AddAchievement(InsertAndReturn(achievements, achievement:New(14334, tmpCategories[366], nil, nil, nil, nil)));
    tmpCategories[367] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97), nil, nil)); -- Exploration
    tmpCategories[365]:AddCategory(tmpCategories[367]);
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14663, tmpCategories[367], nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14658, tmpCategories[367], nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14659, tmpCategories[367], nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14660, tmpCategories[367], nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14738, tmpCategories[367], nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14742, tmpCategories[367], nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14743, tmpCategories[367], nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14744, tmpCategories[367], nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14745, tmpCategories[367], nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14746, tmpCategories[367], nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14747, tmpCategories[367], nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14761, tmpCategories[367], nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14894, tmpCategories[367], nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14895, tmpCategories[367], nil, nil, nil, nil)));
    tmpCategories[368] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273), nil, nil)); -- Reputation
    tmpCategories[365]:AddCategory(tmpCategories[368]);
    tmpCategories[368]:AddAchievement(InsertAndReturn(achievements, achievement:New(14656, tmpCategories[368], nil, nil, nil, nil)));
    tmpCategories[369] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272), nil, nil)); -- Dungeons
    tmpCategories[6]:AddCategory(tmpCategories[369]);
    tmpCategories[369]:AddAchievement(InsertAndReturn(achievements, achievement:New(14418, tmpCategories[369], nil, nil, nil, nil)));
    tmpCategories[369]:AddAchievement(InsertAndReturn(achievements, achievement:New(14322, tmpCategories[369], nil, nil, nil, nil)));
    tmpCategories[371] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1182), {1666, 1667, 1668}, nil)); -- The Necrotic Wake
    tmpCategories[369]:AddCategory(tmpCategories[371]);
    tmpCategories[371]:AddAchievement(InsertAndReturn(achievements, achievement:New(14295, tmpCategories[371], nil, nil, nil, nil)));
    tmpCategories[371]:AddAchievement(InsertAndReturn(achievements, achievement:New(14320, tmpCategories[371], nil, nil, nil, nil)));
    tmpCategories[371]:AddAchievement(InsertAndReturn(achievements, achievement:New(14285, tmpCategories[371], nil, nil, nil, nil)));
    tmpCategories[371]:AddAchievement(InsertAndReturn(achievements, achievement:New(14366, tmpCategories[371], nil, nil, nil, nil)));
    tmpCategories[371]:AddAchievement(InsertAndReturn(achievements, achievement:New(14367, tmpCategories[371], nil, nil, nil, nil)));
    tmpCategories[371]:AddAchievement(InsertAndReturn(achievements, achievement:New(14368, tmpCategories[371], nil, nil, nil, nil)));
    tmpCategories[372] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1183), {1674, 1697}, nil)); -- Plaguefall
    tmpCategories[369]:AddCategory(tmpCategories[372]);
    tmpCategories[372]:AddAchievement(InsertAndReturn(achievements, achievement:New(14292, tmpCategories[372], nil, nil, nil, nil)));
    tmpCategories[372]:AddAchievement(InsertAndReturn(achievements, achievement:New(14347, tmpCategories[372], nil, nil, nil, nil)));
    tmpCategories[372]:AddAchievement(InsertAndReturn(achievements, achievement:New(14296, tmpCategories[372], nil, nil, nil, nil)));
    tmpCategories[372]:AddAchievement(InsertAndReturn(achievements, achievement:New(14369, tmpCategories[372], nil, nil, nil, nil)));
    tmpCategories[372]:AddAchievement(InsertAndReturn(achievements, achievement:New(14414, tmpCategories[372], nil, nil, nil, nil)));
    tmpCategories[372]:AddAchievement(InsertAndReturn(achievements, achievement:New(14415, tmpCategories[372], nil, nil, nil, nil)));
    tmpCategories[373] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1184), {1669}, nil)); -- Mists of Tirna Scithe
    tmpCategories[369]:AddCategory(tmpCategories[373]);
    tmpCategories[373]:AddAchievement(InsertAndReturn(achievements, achievement:New(14503, tmpCategories[373], nil, nil, nil, nil)));
    tmpCategories[373]:AddAchievement(InsertAndReturn(achievements, achievement:New(14291, tmpCategories[373], nil, nil, nil, nil)));
    tmpCategories[373]:AddAchievement(InsertAndReturn(achievements, achievement:New(14375, tmpCategories[373], nil, nil, nil, nil)));
    tmpCategories[373]:AddAchievement(InsertAndReturn(achievements, achievement:New(14371, tmpCategories[373], nil, nil, nil, nil)));
    tmpCategories[373]:AddAchievement(InsertAndReturn(achievements, achievement:New(14412, tmpCategories[373], nil, nil, nil, nil)));
    tmpCategories[373]:AddAchievement(InsertAndReturn(achievements, achievement:New(14413, tmpCategories[373], nil, nil, nil, nil)));
    tmpCategories[374] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1185), {1663, 1664, 1665}, nil)); -- Halls of Atonement
    tmpCategories[369]:AddCategory(tmpCategories[374]);
    tmpCategories[374]:AddAchievement(InsertAndReturn(achievements, achievement:New(14567, tmpCategories[374], nil, nil, nil, nil)));
    tmpCategories[374]:AddAchievement(InsertAndReturn(achievements, achievement:New(14284, tmpCategories[374], nil, nil, nil, nil)));
    tmpCategories[374]:AddAchievement(InsertAndReturn(achievements, achievement:New(14352, tmpCategories[374], nil, nil, nil, nil)));
    tmpCategories[374]:AddAchievement(InsertAndReturn(achievements, achievement:New(14370, tmpCategories[374], nil, nil, nil, nil)));
    tmpCategories[374]:AddAchievement(InsertAndReturn(achievements, achievement:New(14410, tmpCategories[374], nil, nil, nil, nil)));
    tmpCategories[374]:AddAchievement(InsertAndReturn(achievements, achievement:New(14411, tmpCategories[374], nil, nil, nil, nil)));
    tmpCategories[375] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1186), {1692, 1693, 1694, 1695}, nil)); -- Spires of Ascension
    tmpCategories[369]:AddCategory(tmpCategories[375]);
    tmpCategories[375]:AddAchievement(InsertAndReturn(achievements, achievement:New(14331, tmpCategories[375], nil, nil, nil, nil)));
    tmpCategories[375]:AddAchievement(InsertAndReturn(achievements, achievement:New(14323, tmpCategories[375], nil, nil, nil, nil)));
    tmpCategories[375]:AddAchievement(InsertAndReturn(achievements, achievement:New(14327, tmpCategories[375], nil, nil, nil, nil)));
    tmpCategories[375]:AddAchievement(InsertAndReturn(achievements, achievement:New(14326, tmpCategories[375], nil, nil, nil, nil)));
    tmpCategories[375]:AddAchievement(InsertAndReturn(achievements, achievement:New(14324, tmpCategories[375], nil, nil, nil, nil)));
    tmpCategories[375]:AddAchievement(InsertAndReturn(achievements, achievement:New(14325, tmpCategories[375], nil, nil, nil, nil)));
    tmpCategories[376] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1187), {1683, 1684, 1685, 1686, 1687}, nil)); -- Theater of Pain
    tmpCategories[369]:AddCategory(tmpCategories[376]);
    tmpCategories[376]:AddAchievement(InsertAndReturn(achievements, achievement:New(14297, tmpCategories[376], nil, nil, nil, nil)));
    tmpCategories[376]:AddAchievement(InsertAndReturn(achievements, achievement:New(14607, tmpCategories[376], nil, nil, nil, nil)));
    tmpCategories[376]:AddAchievement(InsertAndReturn(achievements, achievement:New(14533, tmpCategories[376], nil, nil, nil, nil)));
    tmpCategories[376]:AddAchievement(InsertAndReturn(achievements, achievement:New(14372, tmpCategories[376], nil, nil, nil, nil)));
    tmpCategories[376]:AddAchievement(InsertAndReturn(achievements, achievement:New(14416, tmpCategories[376], nil, nil, nil, nil)));
    tmpCategories[376]:AddAchievement(InsertAndReturn(achievements, achievement:New(14417, tmpCategories[376], nil, nil, nil, nil)));
    tmpCategories[377] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1188), {1677, 1678, 1679, 1680}, nil)); -- De Other Side
    tmpCategories[369]:AddCategory(tmpCategories[377]);
    tmpCategories[377]:AddAchievement(InsertAndReturn(achievements, achievement:New(14354, tmpCategories[377], nil, nil, nil, nil)));
    tmpCategories[377]:AddAchievement(InsertAndReturn(achievements, achievement:New(14374, tmpCategories[377], nil, nil, nil, nil)));
    tmpCategories[377]:AddAchievement(InsertAndReturn(achievements, achievement:New(14606, tmpCategories[377], nil, nil, nil, nil)));
    tmpCategories[377]:AddAchievement(InsertAndReturn(achievements, achievement:New(14373, tmpCategories[377], nil, nil, nil, nil)));
    tmpCategories[377]:AddAchievement(InsertAndReturn(achievements, achievement:New(14408, tmpCategories[377], nil, nil, nil, nil)));
    tmpCategories[377]:AddAchievement(InsertAndReturn(achievements, achievement:New(14409, tmpCategories[377], nil, nil, nil, nil)));
    tmpCategories[378] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1189), {1675, 1676}, nil)); -- Sanguine Depths
    tmpCategories[369]:AddCategory(tmpCategories[378]);
    tmpCategories[378]:AddAchievement(InsertAndReturn(achievements, achievement:New(14286, tmpCategories[378], nil, nil, nil, nil)));
    tmpCategories[378]:AddAchievement(InsertAndReturn(achievements, achievement:New(14290, tmpCategories[378], nil, nil, nil, nil)));
    tmpCategories[378]:AddAchievement(InsertAndReturn(achievements, achievement:New(14289, tmpCategories[378], nil, nil, nil, nil)));
    tmpCategories[378]:AddAchievement(InsertAndReturn(achievements, achievement:New(14197, tmpCategories[378], nil, nil, nil, nil)));
    tmpCategories[378]:AddAchievement(InsertAndReturn(achievements, achievement:New(14198, tmpCategories[378], nil, nil, nil, nil)));
    tmpCategories[378]:AddAchievement(InsertAndReturn(achievements, achievement:New(14199, tmpCategories[378], nil, nil, nil, nil)));
    tmpCategories[370] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271), nil, nil)); -- Raids
    tmpCategories[6]:AddCategory(tmpCategories[370]);
    tmpCategories[370]:AddAchievement(InsertAndReturn(achievements, achievement:New(14355, tmpCategories[370], nil, nil, nil, nil)));
    tmpCategories[379] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1190), {1735, 1744, 1745, 1746, 1747, 1748, 1750}, nil)); -- Castle Nathria
    tmpCategories[370]:AddCategory(tmpCategories[379]);
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14293, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14523, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14376, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14524, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14617, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14608, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14619, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14294, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14525, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14610, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14715, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14717, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14718, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14356, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14357, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14358, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14361, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14359, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14360, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14362, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14363, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14364, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14365, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14460, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14461, tmpCategories[379], nil, nil, nil, nil)));
    tmpCategories[380] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15117), nil, nil)); -- Pet Battles
    tmpCategories[6]:AddCategory(tmpCategories[380]);
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14867, tmpCategories[380], nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14625, tmpCategories[380], nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14868, tmpCategories[380], nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14869, tmpCategories[380], nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14870, tmpCategories[380], nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14871, tmpCategories[380], nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14872, tmpCategories[380], nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14873, tmpCategories[380], nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14874, tmpCategories[380], nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14875, tmpCategories[380], nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14876, tmpCategories[380], nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14877, tmpCategories[380], nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14879, tmpCategories[380], nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14881, tmpCategories[380], nil, nil, nil, nil)));
    tmpCategories[424] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15440), {1618, 1619, 1620, 1621, 1623, 1624, 1627, 1628, 1629, 1630, 1631, 1632, 1635, 1636, 1641, 1645, 1656, 1705, 1712, 1716, 1720, 1721, 1736, 1749, 1751, 1752, 1753, 1754, 1756, 1757, 1758, 1759, 1760, 1761, 1762, 1763, 1764, 1765, 1766, 1767, 1768, 1769, 1770, 1771, 1772, 1773, 1774, 1776, 1777, 1778, 1779, 1780, 1781, 1782, 1783, 1784, 1785, 1786, 1787, 1788, 1789, 1791, 1792, 1793, 1794, 1795, 1796, 1797, 1798, 1799, 1800, 1801, 1802, 1803, 1804, 1805, 1806, 1807, 1808, 1809, 1810, 1811, 1812, 1833, 1834, 1835, 1836, 1837, 1838, 1839, 1840, 1841, 1842, 1843, 1844, 1845, 1846, 1847, 1848, 1849, 1850, 1851, 1852, 1853, 1854, 1855, 1856, 1857, 1858, 1859, 1860, 1861, 1862, 1863, 1864, 1865, 1867, 1868, 1869, 1870, 1871, 1872, 1873, 1874, 1875, 1876, 1877, 1878, 1879, 1880, 1881, 1882, 1883, 1884, 1885, 1886, 1887, 1888, 1889, 1890, 1891, 1892, 1893, 1894, 1895, 1896, 1897, 1898, 1899, 1900, 1901, 1902, 1903, 1904, 1905, 1907, 1908, 1909, 1910, 1911, 1912, 1913, 1914, 1920, 1921}, nil)); -- Torghast
    tmpCategories[6]:AddCategory(tmpCategories[424]);
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14463, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14473, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14478, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14483, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14488, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14493, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14808, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14809, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14810, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14499, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14500, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14501, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14468, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14469, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14470, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14471, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14472, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14568, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14569, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14570, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14571, tmpCategories[424], nil, nil, false, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14498, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14773, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14776, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14778, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14754, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14755, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14759, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14760, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14795, tmpCategories[424], nil, nil, nil, nil)));
    tmpCategories[419] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15441), {1644, 1698, 1699, 1700, 1701, 1702, 1703, 1707, 1708}, nil)); -- Covenant Sanctums
    tmpCategories[6]:AddCategory(tmpCategories[419]);
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14627, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14834, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14835, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14836, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14837, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14628, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14629, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14630, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14631, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14632, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14633, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14636, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14839, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14840, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14841, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14842, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14843, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14844, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14845, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14846, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14847, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14637, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14638, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14639, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14777, tmpCategories[419], nil, nil, nil, nil)));
    tmpCategories[423] = InsertAndReturn(categories, achievementCategory:New(C_Covenants.GetCovenantData(1).name, {1707, 1708}, true)); -- Kyrian
    tmpCategories[419]:AddCategory(tmpCategories[423]);
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14851, tmpCategories[423], nil, covenant.Kyrian, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14852, tmpCategories[423], nil, covenant.Kyrian, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14853, tmpCategories[423], nil, covenant.Kyrian, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14854, tmpCategories[423], nil, covenant.Kyrian, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14856, tmpCategories[423], nil, covenant.Kyrian, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14857, tmpCategories[423], nil, covenant.Kyrian, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14858, tmpCategories[423], nil, covenant.Kyrian, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14859, tmpCategories[423], nil, covenant.Kyrian, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14860, tmpCategories[423], nil, covenant.Kyrian, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14861, tmpCategories[423], nil, covenant.Kyrian, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14862, tmpCategories[423], nil, covenant.Kyrian, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14863, tmpCategories[423], nil, covenant.Kyrian, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14864, tmpCategories[423], nil, covenant.Kyrian, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14865, tmpCategories[423], nil, covenant.Kyrian, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14866, tmpCategories[423], nil, covenant.Kyrian, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14887, tmpCategories[423], nil, covenant.Kyrian, nil, nil)));
    tmpCategories[421] = InsertAndReturn(categories, achievementCategory:New(C_Covenants.GetCovenantData(2).name, {1644, 1699, 1700}, true)); -- Venthyr
    tmpCategories[419]:AddCategory(tmpCategories[421]);
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14678, tmpCategories[421], nil, covenant.Venthyr, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14679, tmpCategories[421], nil, covenant.Venthyr, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14680, tmpCategories[421], nil, covenant.Venthyr, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14681, tmpCategories[421], nil, covenant.Venthyr, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14682, tmpCategories[421], nil, covenant.Venthyr, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14683, tmpCategories[421], nil, covenant.Venthyr, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14723, tmpCategories[421], nil, covenant.Venthyr, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14724, tmpCategories[421], nil, covenant.Venthyr, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14725, tmpCategories[421], nil, covenant.Venthyr, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14726, tmpCategories[421], nil, covenant.Venthyr, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14727, tmpCategories[421], nil, covenant.Venthyr, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14749, tmpCategories[421], nil, covenant.Venthyr, nil, nil)));
    tmpCategories[422] = InsertAndReturn(categories, achievementCategory:New(C_Covenants.GetCovenantData(3).name, {1662, 1701, 1702, 1703}, true)); -- Night Fae
    tmpCategories[419]:AddCategory(tmpCategories[422]);
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14670, tmpCategories[422], nil, covenant.NightFae, nil, nil)));
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14675, tmpCategories[422], nil, covenant.NightFae, nil, nil)));
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14676, tmpCategories[422], nil, covenant.NightFae, nil, nil)));
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14677, tmpCategories[422], nil, covenant.NightFae, nil, nil)));
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14775, tmpCategories[422], nil, covenant.NightFae, nil, nil)));
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14780, tmpCategories[422], nil, covenant.NightFae, nil, nil)));
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14789, tmpCategories[422], nil, covenant.NightFae, nil, nil)));
    tmpCategories[420] = InsertAndReturn(categories, achievementCategory:New(C_Covenants.GetCovenantData(4).name, {1698}, true)); -- Necrolord
    tmpCategories[419]:AddCategory(tmpCategories[420]);
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14684, tmpCategories[420], nil, covenant.Necrolord, nil, nil)));
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14748, tmpCategories[420], nil, covenant.Necrolord, nil, nil)));
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14751, tmpCategories[420], nil, covenant.Necrolord, nil, nil)));
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14752, tmpCategories[420], nil, covenant.Necrolord, nil, nil)));
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14753, tmpCategories[420], nil, covenant.Necrolord, nil, nil)));
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14764, tmpCategories[420], nil, covenant.Necrolord, nil, nil)));
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14833, tmpCategories[420], nil, covenant.Necrolord, nil, nil)));

    return currentZoneCategory;
end

