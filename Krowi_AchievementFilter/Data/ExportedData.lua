-- [[ Exported at 2021-02-10 10-09-36 ]] --
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
    tmpCategories[90] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(273))); -- Drak'Tharon Keep
    tmpCategories[84]:AddCategory(tmpCategories[90]);
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(2151, nil, nil, true)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(2057, nil, nil, true)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(2039, nil, nil, true)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(482, nil, nil, nil)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(493, nil, nil, nil)));
    tmpCategories[91] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(283))); -- The Violet Hold
    tmpCategories[84]:AddCategory(tmpCategories[91]);
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(1865, nil, nil, true)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(2041, nil, nil, true)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(2153, nil, nil, true)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(1816, nil, nil, true)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(483, nil, nil, nil)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(494, nil, nil, nil)));
    tmpCategories[92] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(274))); -- Gundrak
    tmpCategories[84]:AddCategory(tmpCategories[92]);
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(2058, nil, nil, true)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(2040, nil, nil, true)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(1864, nil, nil, true)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(2152, nil, nil, true)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(484, nil, nil, nil)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(495, nil, nil, nil)));
    tmpCategories[93] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(277))); -- Halls of Stone
    tmpCategories[84]:AddCategory(tmpCategories[93]);
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(1866, nil, nil, true)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(2154, nil, nil, true)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(2155, nil, nil, true)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(485, nil, nil, nil)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(496, nil, nil, nil)));
    tmpCategories[94] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(275))); -- Halls of Lightning
    tmpCategories[84]:AddCategory(tmpCategories[94]);
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(1834, nil, nil, true)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(2042, nil, nil, true)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(1867, nil, nil, true)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(486, nil, nil, nil)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(497, nil, nil, nil)));
    tmpCategories[95] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(282))); -- The Oculus
    tmpCategories[84]:AddCategory(tmpCategories[95]);
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(1868, nil, nil, true)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(2046, nil, nil, true)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(2045, nil, nil, true)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(2044, nil, nil, true)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(1871, nil, nil, true)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(487, nil, nil, nil)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(498, nil, nil, nil)));
    tmpCategories[97] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(286))); -- Utgarde Pinnacle
    tmpCategories[84]:AddCategory(tmpCategories[97]);
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(2043, nil, nil, true)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(1873, nil, nil, true)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(2156, nil, nil, true)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(2157, nil, nil, true)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(488, nil, nil, nil)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(499, nil, nil, nil)));
    tmpCategories[96] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(279))); -- The Culling of Stratholme
    tmpCategories[84]:AddCategory(tmpCategories[96]);
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(1872, nil, nil, true)));
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(1817, nil, nil, true)));
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(479, nil, nil, nil)));
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(500, nil, nil, nil)));
    tmpCategories[98] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(284))); -- Trial of the Champion
    tmpCategories[84]:AddCategory(tmpCategories[98]);
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(3803, nil, nil, true)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(3802, nil, nil, true)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(3804, nil, nil, true)));
    if addon.Faction.IsAlliance then
        tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(4296, nil, nil, nil)));
    end
    if addon.Faction.IsAlliance then
        tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(4298, nil, nil, nil)));
    end
    if addon.Faction.IsHorde then
        tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(3778, nil, nil, nil)));
    end
    if addon.Faction.IsHorde then
        tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(4297, nil, nil, nil)));
    end
    tmpCategories[99] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(280))); -- The Forge of Souls
    tmpCategories[84]:AddCategory(tmpCategories[99]);
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4522, nil, nil, true)));
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4523, nil, nil, true)));
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4516, nil, nil, nil)));
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4519, nil, nil, nil)));
    tmpCategories[100] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(278))); -- Pit of Saron
    tmpCategories[84]:AddCategory(tmpCategories[100]);
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4524, nil, nil, true)));
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4525, nil, nil, true)));
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4517, nil, nil, nil)));
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4520, nil, nil, nil)));
    tmpCategories[101] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(276))); -- Halls of Reflection
    tmpCategories[84]:AddCategory(tmpCategories[101]);
    tmpCategories[101]:AddAchievement(InsertAndReturn(achievements, achievement:New(4526, nil, nil, true)));
    tmpCategories[101]:AddAchievement(InsertAndReturn(achievements, achievement:New(4518, nil, nil, nil)));
    tmpCategories[101]:AddAchievement(InsertAndReturn(achievements, achievement:New(4521, nil, nil, nil)));
    tmpCategories[85] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271))); -- Raids
    tmpCategories[83]:AddCategory(tmpCategories[85]);
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2137, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2138, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(12401, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(4602, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(4603, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2957, false, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2958, false, nil, nil)));
    tmpCategories[102] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(753))); -- Vault of Archavon
    tmpCategories[85]:AddCategory(tmpCategories[102]);
    tmpCategories[103] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3))); -- Vault of Archavon 10
    tmpCategories[102]:AddCategory(tmpCategories[103]);
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(4016, nil, nil, true)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(1722, nil, nil, nil)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(3136, nil, nil, nil)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(3836, nil, nil, nil)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(4585, nil, nil, nil)));
    tmpCategories[104] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- Vault of Archavon 25
    tmpCategories[102]:AddCategory(tmpCategories[104]);
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(4017, nil, nil, true)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(1721, nil, nil, nil)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(3137, nil, nil, nil)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(3837, nil, nil, nil)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(4586, nil, nil, nil)));
    tmpCategories[105] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(754))); -- Naxxramas
    tmpCategories[85]:AddCategory(tmpCategories[105]);
    tmpCategories[106] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3))); -- Naxxramas 10
    tmpCategories[105]:AddCategory(tmpCategories[106]);
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1997, nil, nil, true)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1858, nil, nil, true)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1856, nil, nil, true)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2178, nil, nil, true)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2180, nil, nil, true)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1996, nil, nil, true)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2182, nil, nil, true)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2176, nil, nil, true)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2146, nil, nil, true)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2184, nil, nil, true)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(578, nil, nil, true)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(562, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(564, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(566, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(568, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(572, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(574, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(576, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2187, false, nil, nil)));
    tmpCategories[107] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- Naxxramas 25
    tmpCategories[105]:AddCategory(tmpCategories[107]);
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2140, nil, nil, true)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(1859, nil, nil, true)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(1857, nil, nil, true)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2179, nil, nil, true)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2181, nil, nil, true)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2139, nil, nil, true)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2183, nil, nil, true)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2177, nil, nil, true)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2147, nil, nil, true)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2185, nil, nil, true)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(579, nil, nil, true)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(563, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(565, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(567, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(569, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(573, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(575, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(577, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2186, false, nil, nil)));
    tmpCategories[108] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(755))); -- The Obsidian Sanctum
    tmpCategories[85]:AddCategory(tmpCategories[108]);
    tmpCategories[109] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3))); -- The Obsidian Sanctum 10
    tmpCategories[108]:AddCategory(tmpCategories[109]);
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2047, nil, nil, true)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2049, nil, nil, true)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2050, nil, nil, true)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2051, nil, nil, true)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(624, nil, nil, true)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(1876, nil, nil, nil)));
    tmpCategories[110] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- The Obsidian Sanctum 25
    tmpCategories[108]:AddCategory(tmpCategories[110]);
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2048, nil, nil, true)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2052, nil, nil, true)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2053, nil, nil, true)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2054, nil, nil, true)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(1877, nil, nil, true)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(625, nil, nil, nil)));
    tmpCategories[111] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(756))); -- The Eye of Eternity
    tmpCategories[85]:AddCategory(tmpCategories[111]);
    tmpCategories[112] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3))); -- The Eye of Eternity 10
    tmpCategories[111]:AddCategory(tmpCategories[112]);
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(2148, nil, nil, true)));
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(1874, nil, nil, true)));
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(1869, nil, nil, true)));
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(622, nil, nil, nil)));
    tmpCategories[113] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- The Eye of Eternity 25
    tmpCategories[111]:AddCategory(tmpCategories[113]);
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(2149, nil, nil, true)));
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(1875, nil, nil, true)));
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(1870, nil, nil, true)));
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(623, nil, nil, nil)));
    tmpCategories[114] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(759))); -- Ulduar
    tmpCategories[85]:AddCategory(tmpCategories[114]);
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12312, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12314, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12313, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12316, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12315, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12317, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12318, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12319, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12320, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12323, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12324, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12325, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12321, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12322, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12326, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12327, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12328, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12329, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12330, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12335, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12336, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12332, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12333, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12334, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12339, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12340, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12337, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12338, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12342, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12341, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12343, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12344, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12345, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12346, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12347, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12348, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12349, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12350, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12351, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12352, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12360, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12361, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12362, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12363, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12364, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12365, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12366, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12367, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12368, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12369, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12372, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12373, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12384, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12395, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12396, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12397, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12398, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12385, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12386, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12387, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12388, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12400, nil, nil, true)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12297, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12302, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12309, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12310, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12311, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12399, nil, nil, nil)));
    tmpCategories[115] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3) .. " (" .. GetCategoryInfo(15234) .. ")")); -- Ulduar 10
    tmpCategories[114]:AddCategory(tmpCategories[115]);
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3097, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2907, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2905, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2911, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2909, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2913, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2914, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2915, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3056, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2925, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2927, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2930, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2919, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2923, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2931, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2933, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2934, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2937, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3058, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2945, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2947, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2939, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2940, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2941, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2955, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2959, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2951, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2953, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3076, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3006, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2961, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2963, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2967, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2969, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3182, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2971, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2973, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2975, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2977, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3176, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2979, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2980, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2985, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2982, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3177, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3178, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3179, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2989, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3138, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3180, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2996, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3181, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3009, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3008, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3012, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3014, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3015, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3157, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3141, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3158, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3159, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3003, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2886, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2888, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2890, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2892, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2894, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3036, false, nil, nil)));
    tmpCategories[116] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4) .. " (" .. GetCategoryInfo(15234) .. ")")); -- Ulduar 25
    tmpCategories[114]:AddCategory(tmpCategories[116]);
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3098, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2908, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2906, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2912, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2910, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2918, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2916, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2917, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3057, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2926, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2928, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2929, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2921, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2924, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2932, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2935, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2936, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2938, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3059, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2946, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2948, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2942, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2943, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2944, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2956, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2960, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2952, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2954, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3077, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3007, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2962, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2965, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2968, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2970, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3184, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2972, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2974, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2976, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2978, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3183, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3118, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2981, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2984, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2983, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3185, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3186, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3187, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3237, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2995, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3189, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2997, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3188, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3011, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3010, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3013, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3017, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3016, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3161, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3162, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3163, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3164, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3002, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2887, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2889, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2891, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2893, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2895, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3037, false, nil, nil)));
    tmpCategories[117] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(757))); -- Trial of the Crusader
    tmpCategories[85]:AddCategory(tmpCategories[117]);
    tmpCategories[118] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3))); -- Trial of the Crusader 10
    tmpCategories[117]:AddCategory(tmpCategories[118]);
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3797, nil, nil, true)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3936, nil, nil, true)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3996, nil, nil, true)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3798, nil, nil, true)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3799, nil, nil, true)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3800, nil, nil, true)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3917, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3918, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3808, false, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3809, false, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3810, false, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(4080, false, nil, nil)));
    tmpCategories[119] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- Trial of the Crusader 25
    tmpCategories[117]:AddCategory(tmpCategories[119]);
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3813, nil, nil, true)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3937, nil, nil, true)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3997, nil, nil, true)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3815, nil, nil, true)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3816, nil, nil, true)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3916, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3812, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3817, false, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3818, false, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3819, false, nil, nil)));
    if addon.Faction.IsAlliance then
        tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(4156, false, nil, nil)));
    end
    if addon.Faction.IsHorde then
        tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(4079, false, nil, nil)));
    end
    tmpCategories[120] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(760))); -- Onyxia's Lair
    tmpCategories[85]:AddCategory(tmpCategories[120]);
    tmpCategories[121] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3))); -- Onyxia's Lair 10
    tmpCategories[120]:AddCategory(tmpCategories[121]);
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4402, nil, nil, true)));
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4403, nil, nil, true)));
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4404, nil, nil, true)));
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4396, nil, nil, nil)));
    tmpCategories[122] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- Onyxia's Lair 25
    tmpCategories[120]:AddCategory(tmpCategories[122]);
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4405, nil, nil, true)));
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4406, nil, nil, true)));
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4407, nil, nil, true)));
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4397, nil, nil, nil)));
    tmpCategories[123] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(758))); -- Icecrown Citadel
    tmpCategories[85]:AddCategory(tmpCategories[123]);
    tmpCategories[124] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3))); -- Icecrown Citadel 10
    tmpCategories[123]:AddCategory(tmpCategories[124]);
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4534, nil, nil, true)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4535, nil, nil, true)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4536, nil, nil, true)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4537, nil, nil, true)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4577, nil, nil, true)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4538, nil, nil, true)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4578, nil, nil, true)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4582, nil, nil, true)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4539, nil, nil, true)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4579, nil, nil, true)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4580, nil, nil, true)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4601, nil, nil, true)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4581, nil, nil, true)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4531, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4528, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4529, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4527, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4530, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4532, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4628, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4629, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4630, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4631, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4583, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4636, nil, nil, nil)));
    tmpCategories[125] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- Icecrown Citadel 25
    tmpCategories[123]:AddCategory(tmpCategories[125]);
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4610, nil, nil, true)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4611, nil, nil, true)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4612, nil, nil, true)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4613, nil, nil, true)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4615, nil, nil, true)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4614, nil, nil, true)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4616, nil, nil, true)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4617, nil, nil, true)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4618, nil, nil, true)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4619, nil, nil, true)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4620, nil, nil, true)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4621, nil, nil, true)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4622, nil, nil, true)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4604, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4605, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4606, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4607, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4597, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4608, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4632, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4633, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4634, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4635, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4584, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4637, nil, nil, nil)));
    tmpCategories[126] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(761))); -- The Ruby Sanctum
    tmpCategories[85]:AddCategory(tmpCategories[126]);
    tmpCategories[127] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3))); -- The Ruby Sanctum 10
    tmpCategories[126]:AddCategory(tmpCategories[127]);
    tmpCategories[127]:AddAchievement(InsertAndReturn(achievements, achievement:New(4817, nil, nil, nil)));
    tmpCategories[127]:AddAchievement(InsertAndReturn(achievements, achievement:New(4818, nil, nil, nil)));
    tmpCategories[128] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- The Ruby Sanctum 25
    tmpCategories[126]:AddCategory(tmpCategories[128]);
    tmpCategories[128]:AddAchievement(InsertAndReturn(achievements, achievement:New(4815, nil, nil, nil)));
    tmpCategories[128]:AddAchievement(InsertAndReturn(achievements, achievement:New(4816, nil, nil, nil)));
    tmpCategories[6] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15439))); -- Shadowlands
end

