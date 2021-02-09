-- [[ Exported at 2021-02-09 15-12-13 ]] --
-- [[ This code is automatically generated as an export from a SQLite database ]] --
-- [[ and is not meant for manual edit. ]] --

-- [[ Namespaces ]] --
local _, addon = ...;
local objects = addon.Objects;
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
    tmpCategories[1] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(14864))); -- Classic
    tmpCategories[2] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272))); -- Dungeons
    tmpCategories[1]:AddCategory(tmpCategories[2]);
    tmpCategories[2]:AddAchievement(InsertAndReturn(achievements, achievement:New(1283, nil, nil, nil)));
    tmpCategories[4] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(63))); -- Deadmines
    tmpCategories[2]:AddCategory(tmpCategories[4]);
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5366, nil, nil, true)));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5367, nil, nil, true)));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5368, nil, nil, true)));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5369, nil, nil, true)));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5370, nil, nil, true)));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5371, nil, nil, true)));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(628, nil, nil, nil)));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5083, nil, nil, nil)));
    tmpCategories[5] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(226))); -- Ragefire Chasm
    tmpCategories[2]:AddCategory(tmpCategories[5]);
    tmpCategories[5]:AddAchievement(InsertAndReturn(achievements, achievement:New(629, nil, nil, nil)));
    tmpCategories[8] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(240))); -- Wailing Caverns
    tmpCategories[2]:AddCategory(tmpCategories[8]);
    tmpCategories[8]:AddAchievement(InsertAndReturn(achievements, achievement:New(630, nil, nil, nil)));
    tmpCategories[9] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(64))); -- Shadowfang Keep
    tmpCategories[2]:AddCategory(tmpCategories[9]);
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(5503, nil, nil, true)));
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(5504, nil, nil, true)));
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(5505, nil, nil, true)));
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(631, nil, nil, nil)));
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(5093, nil, nil, nil)));
    tmpCategories[10] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(227))); -- Blackfathom Deeps
    tmpCategories[2]:AddCategory(tmpCategories[10]);
    tmpCategories[10]:AddAchievement(InsertAndReturn(achievements, achievement:New(632, nil, nil, nil)));
    tmpCategories[11] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(238))); -- The Stockade
    tmpCategories[2]:AddCategory(tmpCategories[11]);
    tmpCategories[11]:AddAchievement(InsertAndReturn(achievements, achievement:New(633, nil, nil, nil)));
    tmpCategories[12] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(231))); -- Gnomeregan
    tmpCategories[2]:AddCategory(tmpCategories[12]);
    tmpCategories[12]:AddAchievement(InsertAndReturn(achievements, achievement:New(634, nil, nil, nil)));
    tmpCategories[13] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(233))); -- Razorfen Kraul
    tmpCategories[2]:AddCategory(tmpCategories[13]);
    tmpCategories[13]:AddAchievement(InsertAndReturn(achievements, achievement:New(635, nil, nil, nil)));
    tmpCategories[14] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(234))); -- Razorfen Downs
    tmpCategories[2]:AddCategory(tmpCategories[14]);
    tmpCategories[14]:AddAchievement(InsertAndReturn(achievements, achievement:New(636, nil, nil, nil)));
    tmpCategories[15] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(311))); -- Scarlet Halls
    tmpCategories[2]:AddCategory(tmpCategories[15]);
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6684, nil, nil, true)));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6427, nil, nil, true)));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(7413, nil, nil, nil)));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6760, nil, nil, nil)));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6895, false, nil, nil)));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6908, false, nil, nil)));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6909, false, nil, nil)));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6910, false, nil, nil)));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(8436, false, nil, nil)));
    tmpCategories[16] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(316))); -- Scarlet Monastery
    tmpCategories[2]:AddCategory(tmpCategories[16]);
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6946, nil, nil, true)));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6928, nil, nil, true)));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6929, nil, nil, true)));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(637, nil, nil, nil)));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6761, nil, nil, nil)));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6896, false, nil, nil)));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6911, false, nil, nil)));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6912, false, nil, nil)));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6913, false, nil, nil)));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(8437, false, nil, nil)));
    tmpCategories[17] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(239))); -- Uldaman
    tmpCategories[2]:AddCategory(tmpCategories[17]);
    tmpCategories[17]:AddAchievement(InsertAndReturn(achievements, achievement:New(638, nil, nil, nil)));
    tmpCategories[18] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(241))); -- Zul'Farrak
    tmpCategories[2]:AddCategory(tmpCategories[18]);
    tmpCategories[18]:AddAchievement(InsertAndReturn(achievements, achievement:New(639, nil, nil, nil)));
    tmpCategories[19] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(232))); -- Maraudon
    tmpCategories[2]:AddCategory(tmpCategories[19]);
    tmpCategories[19]:AddAchievement(InsertAndReturn(achievements, achievement:New(640, nil, nil, nil)));
    tmpCategories[20] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(237))); -- The Temple Of Atal'hakkar
    tmpCategories[2]:AddCategory(tmpCategories[20]);
    tmpCategories[20]:AddAchievement(InsertAndReturn(achievements, achievement:New(641, nil, nil, nil)));
    tmpCategories[21] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(228))); -- Blackrock Depths
    tmpCategories[2]:AddCategory(tmpCategories[21]);
    tmpCategories[21]:AddAchievement(InsertAndReturn(achievements, achievement:New(642, nil, nil, nil)));
    tmpCategories[22] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(229))); -- Lower Blackrock Spire
    tmpCategories[2]:AddCategory(tmpCategories[22]);
    tmpCategories[22]:AddAchievement(InsertAndReturn(achievements, achievement:New(643, nil, nil, nil)));
    tmpCategories[23] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(230))); -- Dire Maul
    tmpCategories[2]:AddCategory(tmpCategories[23]);
    tmpCategories[23]:AddAchievement(InsertAndReturn(achievements, achievement:New(644, nil, nil, nil)));
    tmpCategories[24] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(246))); -- Scholomance
    tmpCategories[2]:AddCategory(tmpCategories[24]);
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6531, nil, nil, true)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6394, nil, nil, true)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6396, nil, nil, true)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6715, nil, nil, true)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6821, nil, nil, true)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(645, nil, nil, nil)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6762, nil, nil, nil)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6897, false, nil, nil)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6914, false, nil, nil)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6915, false, nil, nil)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6916, false, nil, nil)));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(8438, false, nil, nil)));
    tmpCategories[25] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(236))); -- Stratholme
    tmpCategories[2]:AddCategory(tmpCategories[25]);
    tmpCategories[25]:AddAchievement(InsertAndReturn(achievements, achievement:New(646, nil, nil, nil)));
    tmpCategories[3] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271))); -- Raids
    tmpCategories[1]:AddCategory(tmpCategories[3]);
    tmpCategories[3]:AddAchievement(InsertAndReturn(achievements, achievement:New(1285, nil, nil, nil)));
    tmpCategories[7] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(741))); -- Molten Core
    tmpCategories[3]:AddCategory(tmpCategories[7]);
    tmpCategories[7]:AddAchievement(InsertAndReturn(achievements, achievement:New(686, nil, nil, nil)));
    tmpCategories[26] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(760) .. " (" .. GetCategoryInfo(15234) .. ")")); -- Onyxias Lair (Legacy)
    tmpCategories[3]:AddCategory(tmpCategories[26]);
    tmpCategories[26]:AddAchievement(InsertAndReturn(achievements, achievement:New(684, false, nil, nil)));
    tmpCategories[27] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(742))); -- Blackwing Lair
    tmpCategories[3]:AddCategory(tmpCategories[27]);
    tmpCategories[27]:AddAchievement(InsertAndReturn(achievements, achievement:New(685, nil, nil, nil)));
    tmpCategories[28] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(76) .. " (" .. GetCategoryInfo(15234) .. ")")); -- Zul'Gurub (Legacy)
    tmpCategories[3]:AddCategory(tmpCategories[28]);
    tmpCategories[28]:AddAchievement(InsertAndReturn(achievements, achievement:New(560, false, nil, nil)));
    tmpCategories[28]:AddAchievement(InsertAndReturn(achievements, achievement:New(688, false, nil, nil)));
    tmpCategories[28]:AddAchievement(InsertAndReturn(achievements, achievement:New(880, false, nil, nil)));
    tmpCategories[28]:AddAchievement(InsertAndReturn(achievements, achievement:New(881, false, nil, nil)));
    tmpCategories[29] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(743))); -- Ruins of Ahn'Qiraj
    tmpCategories[3]:AddCategory(tmpCategories[29]);
    tmpCategories[29]:AddAchievement(InsertAndReturn(achievements, achievement:New(689, nil, nil, nil)));
    tmpCategories[30] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(744))); -- Temple of Ahn'Qiraj
    tmpCategories[3]:AddCategory(tmpCategories[30]);
    tmpCategories[30]:AddAchievement(InsertAndReturn(achievements, achievement:New(687, nil, nil, nil)));
    tmpCategories[30]:AddAchievement(InsertAndReturn(achievements, achievement:New(424, nil, nil, nil)));
    tmpCategories[55] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(14865))); -- The Burning Crusade
    tmpCategories[56] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272))); -- Dungeons
    tmpCategories[55]:AddCategory(tmpCategories[56]);
    tmpCategories[56]:AddAchievement(InsertAndReturn(achievements, achievement:New(1284, nil, nil, nil)));
    tmpCategories[56]:AddAchievement(InsertAndReturn(achievements, achievement:New(1287, nil, nil, nil)));
    tmpCategories[57] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(248))); -- Hellfire Ramparts
    tmpCategories[56]:AddCategory(tmpCategories[57]);
    tmpCategories[57]:AddAchievement(InsertAndReturn(achievements, achievement:New(647, nil, nil, nil)));
    tmpCategories[57]:AddAchievement(InsertAndReturn(achievements, achievement:New(667, nil, nil, nil)));
    tmpCategories[58] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(256))); -- The Blood Furnace
    tmpCategories[56]:AddCategory(tmpCategories[58]);
    tmpCategories[58]:AddAchievement(InsertAndReturn(achievements, achievement:New(648, nil, nil, nil)));
    tmpCategories[58]:AddAchievement(InsertAndReturn(achievements, achievement:New(668, nil, nil, nil)));
    tmpCategories[59] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(259))); -- The Shattered Halls
    tmpCategories[56]:AddCategory(tmpCategories[59]);
    tmpCategories[59]:AddAchievement(InsertAndReturn(achievements, achievement:New(657, nil, nil, nil)));
    tmpCategories[59]:AddAchievement(InsertAndReturn(achievements, achievement:New(678, nil, nil, nil)));
    tmpCategories[60] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(260))); -- The Slave Pens
    tmpCategories[56]:AddCategory(tmpCategories[60]);
    tmpCategories[60]:AddAchievement(InsertAndReturn(achievements, achievement:New(649, nil, nil, nil)));
    tmpCategories[60]:AddAchievement(InsertAndReturn(achievements, achievement:New(669, nil, nil, nil)));
    tmpCategories[61] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(262))); -- The Underbog
    tmpCategories[56]:AddCategory(tmpCategories[61]);
    tmpCategories[61]:AddAchievement(InsertAndReturn(achievements, achievement:New(650, nil, nil, nil)));
    tmpCategories[61]:AddAchievement(InsertAndReturn(achievements, achievement:New(670, nil, nil, nil)));
    tmpCategories[62] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(261))); -- The Steamvault
    tmpCategories[56]:AddCategory(tmpCategories[62]);
    tmpCategories[62]:AddAchievement(InsertAndReturn(achievements, achievement:New(656, nil, nil, nil)));
    tmpCategories[62]:AddAchievement(InsertAndReturn(achievements, achievement:New(677, nil, nil, nil)));
    tmpCategories[63] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(250))); -- Mana Tombs
    tmpCategories[56]:AddCategory(tmpCategories[63]);
    tmpCategories[63]:AddAchievement(InsertAndReturn(achievements, achievement:New(651, nil, nil, nil)));
    tmpCategories[63]:AddAchievement(InsertAndReturn(achievements, achievement:New(671, nil, nil, nil)));
    tmpCategories[64] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(247))); -- Auchenai Crypts
    tmpCategories[56]:AddCategory(tmpCategories[64]);
    tmpCategories[64]:AddAchievement(InsertAndReturn(achievements, achievement:New(666, nil, nil, nil)));
    tmpCategories[64]:AddAchievement(InsertAndReturn(achievements, achievement:New(672, nil, nil, nil)));
    tmpCategories[65] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(252))); -- Sethekk Halls
    tmpCategories[56]:AddCategory(tmpCategories[65]);
    tmpCategories[65]:AddAchievement(InsertAndReturn(achievements, achievement:New(653, nil, nil, nil)));
    tmpCategories[65]:AddAchievement(InsertAndReturn(achievements, achievement:New(674, nil, nil, nil)));
    tmpCategories[65]:AddAchievement(InsertAndReturn(achievements, achievement:New(883, nil, nil, nil)));
    tmpCategories[66] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(253))); -- Shadow Labyrinth
    tmpCategories[56]:AddCategory(tmpCategories[66]);
    tmpCategories[66]:AddAchievement(InsertAndReturn(achievements, achievement:New(654, nil, nil, nil)));
    tmpCategories[66]:AddAchievement(InsertAndReturn(achievements, achievement:New(675, nil, nil, nil)));
    tmpCategories[67] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(251))); -- Old Hillsbrad Foothills
    tmpCategories[56]:AddCategory(tmpCategories[67]);
    tmpCategories[67]:AddAchievement(InsertAndReturn(achievements, achievement:New(652, nil, nil, nil)));
    tmpCategories[67]:AddAchievement(InsertAndReturn(achievements, achievement:New(673, nil, nil, nil)));
    tmpCategories[68] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(255))); -- The Black Morass
    tmpCategories[56]:AddCategory(tmpCategories[68]);
    tmpCategories[68]:AddAchievement(InsertAndReturn(achievements, achievement:New(655, nil, nil, nil)));
    tmpCategories[68]:AddAchievement(InsertAndReturn(achievements, achievement:New(676, nil, nil, nil)));
    tmpCategories[69] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(258))); -- The Mechanar
    tmpCategories[56]:AddCategory(tmpCategories[69]);
    tmpCategories[69]:AddAchievement(InsertAndReturn(achievements, achievement:New(658, nil, nil, nil)));
    tmpCategories[69]:AddAchievement(InsertAndReturn(achievements, achievement:New(679, nil, nil, nil)));
    tmpCategories[70] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(257))); -- The Botanica
    tmpCategories[56]:AddCategory(tmpCategories[70]);
    tmpCategories[70]:AddAchievement(InsertAndReturn(achievements, achievement:New(659, nil, nil, nil)));
    tmpCategories[70]:AddAchievement(InsertAndReturn(achievements, achievement:New(680, nil, nil, nil)));
    tmpCategories[71] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(254))); -- The Arcatraz
    tmpCategories[56]:AddCategory(tmpCategories[71]);
    tmpCategories[71]:AddAchievement(InsertAndReturn(achievements, achievement:New(660, nil, nil, nil)));
    tmpCategories[71]:AddAchievement(InsertAndReturn(achievements, achievement:New(681, nil, nil, nil)));
    tmpCategories[72] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(249))); -- Magisters Terrace
    tmpCategories[56]:AddCategory(tmpCategories[72]);
    tmpCategories[72]:AddAchievement(InsertAndReturn(achievements, achievement:New(661, nil, nil, nil)));
    tmpCategories[72]:AddAchievement(InsertAndReturn(achievements, achievement:New(682, nil, nil, nil)));
    tmpCategories[72]:AddAchievement(InsertAndReturn(achievements, achievement:New(884, nil, nil, nil)));
    tmpCategories[73] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271))); -- Raids
    tmpCategories[55]:AddCategory(tmpCategories[73]);
    tmpCategories[73]:AddAchievement(InsertAndReturn(achievements, achievement:New(1286, nil, nil, nil)));
    tmpCategories[74] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(745))); -- Karazhan
    tmpCategories[73]:AddCategory(tmpCategories[74]);
    tmpCategories[74]:AddAchievement(InsertAndReturn(achievements, achievement:New(690, nil, nil, nil)));
    tmpCategories[74]:AddAchievement(InsertAndReturn(achievements, achievement:New(882, nil, nil, nil)));
    tmpCategories[75] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(746))); -- Gruul's Lair
    tmpCategories[73]:AddCategory(tmpCategories[75]);
    tmpCategories[75]:AddAchievement(InsertAndReturn(achievements, achievement:New(692, nil, nil, nil)));
    tmpCategories[76] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(747))); -- Magtheridon's Lair
    tmpCategories[73]:AddCategory(tmpCategories[76]);
    tmpCategories[76]:AddAchievement(InsertAndReturn(achievements, achievement:New(693, nil, nil, nil)));
    tmpCategories[77] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(748))); -- Serpentshrine Cavern
    tmpCategories[73]:AddCategory(tmpCategories[77]);
    tmpCategories[77]:AddAchievement(InsertAndReturn(achievements, achievement:New(694, nil, nil, nil)));
    tmpCategories[78] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(749))); -- The Eye
    tmpCategories[73]:AddCategory(tmpCategories[78]);
    tmpCategories[78]:AddAchievement(InsertAndReturn(achievements, achievement:New(696, nil, nil, nil)));
    tmpCategories[78]:AddAchievement(InsertAndReturn(achievements, achievement:New(885, nil, nil, nil)));
    tmpCategories[79] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(750))); -- The Battle for Mount Hyjal
    tmpCategories[73]:AddCategory(tmpCategories[79]);
    tmpCategories[79]:AddAchievement(InsertAndReturn(achievements, achievement:New(695, nil, nil, nil)));
    tmpCategories[80] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(751))); -- Black Temple
    tmpCategories[73]:AddCategory(tmpCategories[80]);
    tmpCategories[80]:AddAchievement(InsertAndReturn(achievements, achievement:New(697, nil, nil, nil)));
    tmpCategories[81] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(77) .. " (" .. GetCategoryInfo(15234) .. ")")); -- Zul'Aman
    tmpCategories[73]:AddCategory(tmpCategories[81]);
    tmpCategories[81]:AddAchievement(InsertAndReturn(achievements, achievement:New(691, false, nil, nil)));
    tmpCategories[81]:AddAchievement(InsertAndReturn(achievements, achievement:New(430, false, nil, nil)));
    tmpCategories[82] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(752))); -- Sunwell Plateau
    tmpCategories[73]:AddCategory(tmpCategories[82]);
    tmpCategories[82]:AddAchievement(InsertAndReturn(achievements, achievement:New(698, nil, nil, nil)));
    tmpCategories[83] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(14866))); -- Wrath of the Lich King
    tmpCategories[84] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272))); -- Dungeons
    tmpCategories[83]:AddCategory(tmpCategories[84]);
    tmpCategories[84]:AddAchievement(InsertAndReturn(achievements, achievement:New(1288, nil, nil, nil)));
    tmpCategories[84]:AddAchievement(InsertAndReturn(achievements, achievement:New(2136, nil, nil, nil)));
    tmpCategories[86] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(285))); -- Utgarde Keep
    tmpCategories[84]:AddCategory(tmpCategories[86]);
    tmpCategories[86]:AddAchievement(InsertAndReturn(achievements, achievement:New(1919, nil, nil, true)));
    tmpCategories[86]:AddAchievement(InsertAndReturn(achievements, achievement:New(477, nil, nil, nil)));
    tmpCategories[86]:AddAchievement(InsertAndReturn(achievements, achievement:New(489, nil, nil, nil)));
    tmpCategories[87] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(281))); -- The Nexus
    tmpCategories[84]:AddCategory(tmpCategories[87]);
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(2150, nil, nil, true)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(2037, nil, nil, true)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(2036, nil, nil, true)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(478, nil, nil, nil)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(490, nil, nil, nil)));
    tmpCategories[88] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(272))); -- Azjol-Nerub
    tmpCategories[84]:AddCategory(tmpCategories[88]);
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(1296, nil, nil, true)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(1297, nil, nil, true)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(1860, nil, nil, true)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(480, nil, nil, nil)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(491, nil, nil, nil)));
    tmpCategories[89] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(271))); -- Ahn'kahet: The Old Kingdom
    tmpCategories[84]:AddCategory(tmpCategories[89]);
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(2038, nil, nil, true)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(2056, nil, nil, true)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(1862, nil, nil, true)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(481, nil, nil, nil)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(492, nil, nil, nil)));
    tmpCategories[90] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(-1))); -- Drak'Tharon Keep
    tmpCategories[84]:AddCategory(tmpCategories[90]);
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(2151, nil, nil, true)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(2057, nil, nil, true)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(2039, nil, nil, true)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(482, nil, nil, nil)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(493, nil, nil, nil)));
    tmpCategories[91] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(283))); -- The Violet Hold
    tmpCategories[84]:AddCategory(tmpCategories[91]);
    tmpCategories[85] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271))); -- Raids
    tmpCategories[83]:AddCategory(tmpCategories[85]);
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2137, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2138, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(12401, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(4602, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(4603, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2957, false, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2958, false, nil, nil)));
    tmpCategories[6] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15439))); -- Shadowlands
end

