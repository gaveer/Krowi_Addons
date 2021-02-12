-- [[ Exported at 2021-02-12 15-10-46 ]] --
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
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5366, nil, nil, tmpCategories[4])));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5367, nil, nil, tmpCategories[4])));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5368, nil, nil, tmpCategories[4])));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5369, nil, nil, tmpCategories[4])));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5370, nil, nil, tmpCategories[4])));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5371, nil, nil, tmpCategories[4])));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(628, nil, nil, tmpCategories[4])));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5083, nil, nil, tmpCategories[4])));
    tmpCategories[5] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(226))); -- Ragefire Chasm
    tmpCategories[2]:AddCategory(tmpCategories[5]);
    tmpCategories[5]:AddAchievement(InsertAndReturn(achievements, achievement:New(629, nil, nil, nil)));
    tmpCategories[8] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(240))); -- Wailing Caverns
    tmpCategories[2]:AddCategory(tmpCategories[8]);
    tmpCategories[8]:AddAchievement(InsertAndReturn(achievements, achievement:New(630, nil, nil, nil)));
    tmpCategories[9] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(64))); -- Shadowfang Keep
    tmpCategories[2]:AddCategory(tmpCategories[9]);
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(5503, nil, nil, tmpCategories[9])));
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(5504, nil, nil, tmpCategories[9])));
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(5505, nil, nil, tmpCategories[9])));
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(631, nil, nil, tmpCategories[9])));
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(5093, nil, nil, tmpCategories[9])));
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
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6684, nil, nil, tmpCategories[15])));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6427, nil, nil, tmpCategories[15])));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(7413, nil, nil, tmpCategories[15])));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6760, nil, nil, tmpCategories[15])));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6895, false, nil, tmpCategories[15])));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6908, false, nil, tmpCategories[15])));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6909, false, nil, tmpCategories[15])));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6910, false, nil, tmpCategories[15])));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(8436, false, nil, tmpCategories[15])));
    tmpCategories[16] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(316))); -- Scarlet Monastery
    tmpCategories[2]:AddCategory(tmpCategories[16]);
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6946, nil, nil, tmpCategories[16])));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6928, nil, nil, tmpCategories[16])));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6929, nil, nil, tmpCategories[16])));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(637, nil, nil, tmpCategories[16])));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6761, nil, nil, tmpCategories[16])));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6896, false, nil, tmpCategories[16])));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6911, false, nil, tmpCategories[16])));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6912, false, nil, tmpCategories[16])));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6913, false, nil, tmpCategories[16])));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(8437, false, nil, tmpCategories[16])));
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
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6531, nil, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6394, nil, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6396, nil, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6715, nil, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6821, nil, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(645, nil, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6762, nil, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6897, false, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6914, false, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6915, false, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6916, false, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(8438, false, nil, tmpCategories[24])));
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
    tmpCategories[86]:AddAchievement(InsertAndReturn(achievements, achievement:New(1919, nil, nil, nil)));
    tmpCategories[86]:AddAchievement(InsertAndReturn(achievements, achievement:New(477, nil, nil, nil)));
    tmpCategories[86]:AddAchievement(InsertAndReturn(achievements, achievement:New(489, nil, nil, nil)));
    tmpCategories[87] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(281))); -- The Nexus
    tmpCategories[84]:AddCategory(tmpCategories[87]);
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(2150, nil, nil, nil)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(2037, nil, nil, nil)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(2036, nil, nil, nil)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(478, nil, nil, nil)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(490, nil, nil, nil)));
    tmpCategories[88] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(272))); -- Azjol-Nerub
    tmpCategories[84]:AddCategory(tmpCategories[88]);
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(1296, nil, nil, nil)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(1297, nil, nil, nil)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(1860, nil, nil, nil)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(480, nil, nil, nil)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(491, nil, nil, nil)));
    tmpCategories[89] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(271))); -- Ahn'kahet: The Old Kingdom
    tmpCategories[84]:AddCategory(tmpCategories[89]);
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(2038, nil, nil, nil)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(2056, nil, nil, nil)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(1862, nil, nil, nil)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(481, nil, nil, nil)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(492, nil, nil, nil)));
    tmpCategories[90] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(273))); -- Drak'Tharon Keep
    tmpCategories[84]:AddCategory(tmpCategories[90]);
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(2151, nil, nil, nil)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(2057, nil, nil, nil)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(2039, nil, nil, nil)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(482, nil, nil, nil)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(493, nil, nil, nil)));
    tmpCategories[91] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(283))); -- The Violet Hold
    tmpCategories[84]:AddCategory(tmpCategories[91]);
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(1865, nil, nil, nil)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(2041, nil, nil, nil)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(2153, nil, nil, nil)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(1816, nil, nil, nil)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(483, nil, nil, nil)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(494, nil, nil, nil)));
    tmpCategories[92] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(274))); -- Gundrak
    tmpCategories[84]:AddCategory(tmpCategories[92]);
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(2058, nil, nil, nil)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(2040, nil, nil, nil)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(1864, nil, nil, nil)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(2152, nil, nil, nil)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(484, nil, nil, nil)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(495, nil, nil, nil)));
    tmpCategories[93] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(277))); -- Halls of Stone
    tmpCategories[84]:AddCategory(tmpCategories[93]);
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(1866, nil, nil, nil)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(2154, nil, nil, nil)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(2155, nil, nil, nil)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(485, nil, nil, nil)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(496, nil, nil, nil)));
    tmpCategories[94] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(275))); -- Halls of Lightning
    tmpCategories[84]:AddCategory(tmpCategories[94]);
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(1834, nil, nil, nil)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(2042, nil, nil, nil)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(1867, nil, nil, nil)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(486, nil, nil, nil)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(497, nil, nil, nil)));
    tmpCategories[95] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(282))); -- The Oculus
    tmpCategories[84]:AddCategory(tmpCategories[95]);
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(1868, nil, nil, nil)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(2046, nil, nil, nil)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(2045, nil, nil, nil)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(2044, nil, nil, nil)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(1871, nil, nil, nil)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(487, nil, nil, nil)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(498, nil, nil, nil)));
    tmpCategories[97] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(286))); -- Utgarde Pinnacle
    tmpCategories[84]:AddCategory(tmpCategories[97]);
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(2043, nil, nil, nil)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(1873, nil, nil, nil)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(2156, nil, nil, nil)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(2157, nil, nil, nil)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(488, nil, nil, nil)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(499, nil, nil, nil)));
    tmpCategories[96] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(279))); -- The Culling of Stratholme
    tmpCategories[84]:AddCategory(tmpCategories[96]);
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(1872, nil, nil, nil)));
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(1817, nil, nil, nil)));
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(479, nil, nil, nil)));
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(500, nil, nil, nil)));
    tmpCategories[98] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(284))); -- Trial of the Champion
    tmpCategories[84]:AddCategory(tmpCategories[98]);
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(3803, nil, nil, nil)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(3802, nil, nil, nil)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(3804, nil, nil, nil)));
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
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4522, nil, nil, nil)));
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4523, nil, nil, nil)));
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4516, nil, nil, nil)));
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4519, nil, nil, nil)));
    tmpCategories[100] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(278))); -- Pit of Saron
    tmpCategories[84]:AddCategory(tmpCategories[100]);
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4524, nil, nil, nil)));
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4525, nil, nil, nil)));
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4517, nil, nil, nil)));
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4520, nil, nil, nil)));
    tmpCategories[101] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(276))); -- Halls of Reflection
    tmpCategories[84]:AddCategory(tmpCategories[101]);
    tmpCategories[101]:AddAchievement(InsertAndReturn(achievements, achievement:New(4526, nil, nil, nil)));
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
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(4016, nil, nil, nil)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(1722, nil, nil, nil)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(3136, nil, nil, nil)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(3836, nil, nil, nil)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(4585, nil, nil, nil)));
    tmpCategories[104] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- Vault of Archavon 25
    tmpCategories[102]:AddCategory(tmpCategories[104]);
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(4017, nil, nil, nil)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(1721, nil, nil, nil)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(3137, nil, nil, nil)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(3837, nil, nil, nil)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(4586, nil, nil, nil)));
    tmpCategories[105] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(754))); -- Naxxramas
    tmpCategories[85]:AddCategory(tmpCategories[105]);
    tmpCategories[106] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3))); -- Naxxramas 10
    tmpCategories[105]:AddCategory(tmpCategories[106]);
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1997, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1858, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1856, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2178, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2180, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1996, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2182, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2176, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2146, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2184, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(578, nil, nil, nil)));
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
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2140, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(1859, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(1857, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2179, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2181, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2139, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2183, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2177, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2147, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2185, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(579, nil, nil, nil)));
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
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2047, nil, nil, nil)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2049, nil, nil, nil)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2050, nil, nil, nil)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2051, nil, nil, nil)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(624, nil, nil, nil)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(1876, nil, nil, nil)));
    tmpCategories[110] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- The Obsidian Sanctum 25
    tmpCategories[108]:AddCategory(tmpCategories[110]);
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2048, nil, nil, nil)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2052, nil, nil, nil)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2053, nil, nil, nil)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2054, nil, nil, nil)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(1877, nil, nil, nil)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(625, nil, nil, nil)));
    tmpCategories[111] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(756))); -- The Eye of Eternity
    tmpCategories[85]:AddCategory(tmpCategories[111]);
    tmpCategories[112] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3))); -- The Eye of Eternity 10
    tmpCategories[111]:AddCategory(tmpCategories[112]);
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(2148, nil, nil, nil)));
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(1874, nil, nil, nil)));
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(1869, nil, nil, nil)));
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(622, nil, nil, nil)));
    tmpCategories[113] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- The Eye of Eternity 25
    tmpCategories[111]:AddCategory(tmpCategories[113]);
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(2149, nil, nil, nil)));
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(1875, nil, nil, nil)));
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(1870, nil, nil, nil)));
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(623, nil, nil, nil)));
    tmpCategories[114] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(759))); -- Ulduar
    tmpCategories[85]:AddCategory(tmpCategories[114]);
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12312, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12314, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12313, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12316, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12315, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12317, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12318, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12319, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12320, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12323, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12324, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12325, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12321, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12322, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12326, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12327, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12328, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12329, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12330, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12335, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12336, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12332, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12333, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12334, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12339, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12340, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12337, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12338, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12342, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12341, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12343, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12344, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12345, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12346, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12347, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12348, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12349, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12350, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12351, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12352, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12360, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12361, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12362, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12363, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12364, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12365, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12366, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12367, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12368, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12369, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12372, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12373, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12384, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12395, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12396, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12397, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12398, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12385, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12386, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12387, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12388, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12400, nil, nil, nil)));
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
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3797, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3936, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3996, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3798, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3799, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3800, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3917, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3918, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3808, false, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3809, false, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3810, false, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(4080, false, nil, nil)));
    tmpCategories[119] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- Trial of the Crusader 25
    tmpCategories[117]:AddCategory(tmpCategories[119]);
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3813, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3937, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3997, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3815, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3816, nil, nil, nil)));
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
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4402, nil, nil, nil)));
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4403, nil, nil, nil)));
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4404, nil, nil, nil)));
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4396, nil, nil, nil)));
    tmpCategories[122] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- Onyxia's Lair 25
    tmpCategories[120]:AddCategory(tmpCategories[122]);
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4405, nil, nil, nil)));
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4406, nil, nil, nil)));
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4407, nil, nil, nil)));
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4397, nil, nil, nil)));
    tmpCategories[123] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(758))); -- Icecrown Citadel
    tmpCategories[85]:AddCategory(tmpCategories[123]);
    tmpCategories[124] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3))); -- Icecrown Citadel 10
    tmpCategories[123]:AddCategory(tmpCategories[124]);
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4534, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4535, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4536, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4537, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4577, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4538, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4578, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4582, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4539, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4579, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4580, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4601, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4581, nil, nil, nil)));
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
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4610, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4611, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4612, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4613, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4615, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4614, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4616, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4617, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4618, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4619, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4620, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4621, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4622, nil, nil, nil)));
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
    tmpCategories[129] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15072))); -- Cataclysm
    tmpCategories[130] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272))); -- Dungeons
    tmpCategories[129]:AddCategory(tmpCategories[130]);
    tmpCategories[130]:AddAchievement(InsertAndReturn(achievements, achievement:New(4844, nil, nil, nil)));
    tmpCategories[130]:AddAchievement(InsertAndReturn(achievements, achievement:New(4845, nil, nil, nil)));
    tmpCategories[132] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(66))); -- Blackrock Caverns
    tmpCategories[130]:AddCategory(tmpCategories[132]);
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5281, nil, nil, nil)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5282, nil, nil, nil)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5283, nil, nil, nil)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5284, nil, nil, nil)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(4833, nil, nil, nil)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5060, nil, nil, nil)));
    tmpCategories[133] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(65))); -- Throne of the Tides
    tmpCategories[130]:AddCategory(tmpCategories[133]);
    tmpCategories[133]:AddAchievement(InsertAndReturn(achievements, achievement:New(5285, nil, nil, nil)));
    tmpCategories[133]:AddAchievement(InsertAndReturn(achievements, achievement:New(5286, nil, nil, nil)));
    tmpCategories[133]:AddAchievement(InsertAndReturn(achievements, achievement:New(4839, nil, nil, nil)));
    tmpCategories[133]:AddAchievement(InsertAndReturn(achievements, achievement:New(5061, nil, nil, nil)));
    tmpCategories[134] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(67))); -- The Stonecore
    tmpCategories[130]:AddCategory(tmpCategories[134]);
    tmpCategories[134]:AddAchievement(InsertAndReturn(achievements, achievement:New(5287, nil, nil, nil)));
    tmpCategories[134]:AddAchievement(InsertAndReturn(achievements, achievement:New(4846, nil, nil, nil)));
    tmpCategories[134]:AddAchievement(InsertAndReturn(achievements, achievement:New(5063, nil, nil, nil)));
    tmpCategories[135] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(68))); -- The Vortex Pinnacle
    tmpCategories[130]:AddCategory(tmpCategories[135]);
    tmpCategories[135]:AddAchievement(InsertAndReturn(achievements, achievement:New(5289, nil, nil, nil)));
    tmpCategories[135]:AddAchievement(InsertAndReturn(achievements, achievement:New(5288, nil, nil, nil)));
    tmpCategories[135]:AddAchievement(InsertAndReturn(achievements, achievement:New(4847, nil, nil, nil)));
    tmpCategories[135]:AddAchievement(InsertAndReturn(achievements, achievement:New(5064, nil, nil, nil)));
    tmpCategories[136] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(71))); -- Grim Batol
    tmpCategories[130]:AddCategory(tmpCategories[136]);
    tmpCategories[136]:AddAchievement(InsertAndReturn(achievements, achievement:New(5297, nil, nil, nil)));
    tmpCategories[136]:AddAchievement(InsertAndReturn(achievements, achievement:New(5298, nil, nil, nil)));
    tmpCategories[136]:AddAchievement(InsertAndReturn(achievements, achievement:New(4840, nil, nil, nil)));
    tmpCategories[136]:AddAchievement(InsertAndReturn(achievements, achievement:New(5062, nil, nil, nil)));
    tmpCategories[137] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(70))); -- Halls of Origination
    tmpCategories[130]:AddCategory(tmpCategories[137]);
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5293, nil, nil, nil)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5294, nil, nil, nil)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5296, nil, nil, nil)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5295, nil, nil, nil)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(4841, nil, nil, nil)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5065, nil, nil, nil)));
    tmpCategories[138] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(69))); -- Lost City of the Tol'vir
    tmpCategories[130]:AddCategory(tmpCategories[138]);
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(5291, nil, nil, nil)));
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(5290, nil, nil, nil)));
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(5292, nil, nil, nil)));
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(4848, nil, nil, nil)));
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(5066, nil, nil, nil)));
    tmpCategories[139] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(63))); -- Deadmines
    tmpCategories[130]:AddCategory(tmpCategories[139]);
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5366, nil, nil, tmpCategories[139])));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5367, nil, nil, tmpCategories[139])));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5368, nil, nil, tmpCategories[139])));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5369, nil, nil, tmpCategories[139])));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5370, nil, nil, tmpCategories[139])));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5371, nil, nil, tmpCategories[139])));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(628, nil, nil, tmpCategories[139])));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5083, nil, nil, tmpCategories[139])));
    tmpCategories[140] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(64))); -- Shadowfang Keep
    tmpCategories[130]:AddCategory(tmpCategories[140]);
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(5503, nil, nil, tmpCategories[140])));
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(5504, nil, nil, tmpCategories[140])));
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(5505, nil, nil, tmpCategories[140])));
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(631, nil, nil, tmpCategories[140])));
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(5093, nil, nil, tmpCategories[140])));
    tmpCategories[141] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(76))); -- Zul'Gurub
    tmpCategories[130]:AddCategory(tmpCategories[141]);
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5743, nil, nil, nil)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5762, nil, nil, nil)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5765, nil, nil, nil)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5759, nil, nil, nil)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5744, nil, nil, nil)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5768, nil, nil, nil)));
    tmpCategories[142] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(77))); -- Zul'Aman
    tmpCategories[130]:AddCategory(tmpCategories[142]);
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5858, nil, nil, nil)));
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5750, nil, nil, nil)));
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5761, nil, nil, nil)));
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5760, nil, nil, nil)));
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5769, nil, nil, nil)));
    tmpCategories[143] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(184))); -- End Time
    tmpCategories[130]:AddCategory(tmpCategories[143]);
    tmpCategories[143]:AddAchievement(InsertAndReturn(achievements, achievement:New(5995, nil, nil, nil)));
    tmpCategories[143]:AddAchievement(InsertAndReturn(achievements, achievement:New(6130, nil, nil, nil)));
    tmpCategories[143]:AddAchievement(InsertAndReturn(achievements, achievement:New(6117, nil, nil, nil)));
    tmpCategories[144] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(185))); -- Well of Eternity
    tmpCategories[130]:AddCategory(tmpCategories[144]);
    tmpCategories[144]:AddAchievement(InsertAndReturn(achievements, achievement:New(6127, nil, nil, nil)));
    tmpCategories[144]:AddAchievement(InsertAndReturn(achievements, achievement:New(6070, nil, nil, nil)));
    tmpCategories[144]:AddAchievement(InsertAndReturn(achievements, achievement:New(6118, nil, nil, nil)));
    tmpCategories[145] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(186))); -- Hour of Twilight
    tmpCategories[130]:AddCategory(tmpCategories[145]);
    tmpCategories[145]:AddAchievement(InsertAndReturn(achievements, achievement:New(6132, nil, nil, nil)));
    tmpCategories[145]:AddAchievement(InsertAndReturn(achievements, achievement:New(6119, nil, nil, nil)));
    tmpCategories[131] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271))); -- Raids
    tmpCategories[129]:AddCategory(tmpCategories[131]);
    tmpCategories[131]:AddAchievement(InsertAndReturn(achievements, achievement:New(4853, nil, nil, nil)));
    tmpCategories[131]:AddAchievement(InsertAndReturn(achievements, achievement:New(5828, nil, nil, nil)));
    tmpCategories[131]:AddAchievement(InsertAndReturn(achievements, achievement:New(6169, nil, nil, nil)));
    tmpCategories[146] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(75))); -- Baradin Hold
    tmpCategories[131]:AddCategory(tmpCategories[146]);
    tmpCategories[146]:AddAchievement(InsertAndReturn(achievements, achievement:New(5416, nil, nil, nil)));
    tmpCategories[146]:AddAchievement(InsertAndReturn(achievements, achievement:New(6045, nil, nil, nil)));
    tmpCategories[146]:AddAchievement(InsertAndReturn(achievements, achievement:New(6108, nil, nil, nil)));
    tmpCategories[147] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(73))); -- Blackwing Descent
    tmpCategories[131]:AddCategory(tmpCategories[147]);
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5306, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5307, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5309, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5308, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5310, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(4849, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(4842, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5094, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5107, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5115, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5109, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5108, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5116, nil, nil, nil)));
    tmpCategories[148] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(72))); -- The Bastion of Twilight
    tmpCategories[131]:AddCategory(tmpCategories[148]);
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5300, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(4852, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5311, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5312, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5118, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5117, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5119, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5120, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5121, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(4850, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5313, false, nil, nil)));
    tmpCategories[149] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(74))); -- Throne of the Four Winds
    tmpCategories[131]:AddCategory(tmpCategories[149]);
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(5304, nil, nil, nil)));
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(5305, nil, nil, nil)));
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(5122, nil, nil, nil)));
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(5123, nil, nil, nil)));
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(4851, nil, nil, nil)));
    tmpCategories[150] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(78))); -- Firelands
    tmpCategories[131]:AddCategory(tmpCategories[150]);
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5821, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5813, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5810, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5829, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5830, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5799, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5855, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5807, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5809, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5808, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5806, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5805, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5804, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5803, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5802, nil, nil, nil)));
    tmpCategories[151] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(187))); -- Dragon Soul
    tmpCategories[131]:AddCategory(tmpCategories[151]);
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6174, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6128, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6129, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6175, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6084, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6105, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6133, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6180, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6109, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6110, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6111, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6112, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6113, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6114, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6115, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6116, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6106, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6107, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6177, nil, nil, nil)));
    tmpCategories[189] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15164))); -- Mists of Pandaria
    tmpCategories[190] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272))); -- Dungeons
    tmpCategories[189]:AddCategory(tmpCategories[190]);
    tmpCategories[190]:AddAchievement(InsertAndReturn(achievements, achievement:New(6925, nil, nil, nil)));
    tmpCategories[190]:AddAchievement(InsertAndReturn(achievements, achievement:New(6927, nil, nil, nil)));
    tmpCategories[193] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(313))); -- Temple of the Jade Serpent
    tmpCategories[190]:AddCategory(tmpCategories[193]);
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6475, nil, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6460, nil, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6671, nil, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6757, nil, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6758, nil, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6884, false, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6885, false, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6886, false, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6887, false, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(8430, false, nil, nil)));
    tmpCategories[194] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(302))); -- Stormstout Brewery
    tmpCategories[190]:AddCategory(tmpCategories[194]);
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6402, nil, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6089, nil, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6400, nil, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6420, nil, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6457, nil, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6456, nil, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6888, false, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6889, false, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6890, false, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6891, false, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(8431, false, nil, nil)));
    tmpCategories[195] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(321))); -- Mogu'shan Palace
    tmpCategories[190]:AddCategory(tmpCategories[195]);
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6713, nil, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6478, nil, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6736, nil, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6755, nil, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6756, nil, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6892, false, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6899, false, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6900, false, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6901, false, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(8433, false, nil, nil)));
    tmpCategories[196] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(312))); -- Shado-Pan Monastery
    tmpCategories[190]:AddCategory(tmpCategories[196]);
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6477, nil, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6472, nil, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6471, nil, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6469, nil, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6470, nil, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6893, false, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6902, false, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6903, false, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6904, false, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(8432, false, nil, nil)));
    tmpCategories[197] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(303))); -- Gate of the Setting Sun
    tmpCategories[190]:AddCategory(tmpCategories[197]);
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6479, nil, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6476, nil, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6945, nil, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(10010, nil, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6759, nil, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6894, false, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6905, false, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6906, false, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6907, false, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(8434, false, nil, nil)));
    tmpCategories[198] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(324))); -- Siege of Niuzao Temple
    tmpCategories[190]:AddCategory(tmpCategories[198]);
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6688, nil, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6485, nil, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6822, nil, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(10011, nil, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6763, nil, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6898, false, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6917, false, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6918, false, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6919, false, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(8439, false, nil, nil)));
    tmpCategories[199] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(311))); -- Scarlet Halls
    tmpCategories[190]:AddCategory(tmpCategories[199]);
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6684, nil, nil, tmpCategories[199])));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6427, nil, nil, tmpCategories[199])));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(7413, nil, nil, tmpCategories[199])));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6760, nil, nil, tmpCategories[199])));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6895, false, nil, tmpCategories[199])));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6908, false, nil, tmpCategories[199])));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6909, false, nil, tmpCategories[199])));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6910, false, nil, tmpCategories[199])));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(8436, false, nil, tmpCategories[199])));
    tmpCategories[200] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(316))); -- Scarlet Monastery
    tmpCategories[190]:AddCategory(tmpCategories[200]);
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6946, nil, nil, tmpCategories[200])));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6928, nil, nil, tmpCategories[200])));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6929, nil, nil, tmpCategories[200])));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(637, nil, nil, tmpCategories[200])));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6761, nil, nil, tmpCategories[200])));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6896, false, nil, tmpCategories[200])));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6911, false, nil, tmpCategories[200])));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6912, false, nil, tmpCategories[200])));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6913, false, nil, tmpCategories[200])));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(8437, false, nil, tmpCategories[200])));
    tmpCategories[201] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(246))); -- Scholomance
    tmpCategories[190]:AddCategory(tmpCategories[201]);
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6531, nil, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6394, nil, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6396, nil, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6715, nil, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6821, nil, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(645, nil, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6762, nil, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6897, false, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6914, false, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6915, false, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6916, false, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(8438, false, nil, tmpCategories[201])));
    tmpCategories[191] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271))); -- Raids
    tmpCategories[189]:AddCategory(tmpCategories[191]);
    tmpCategories[191]:AddAchievement(InsertAndReturn(achievements, achievement:New(6932, nil, nil, nil)));
    tmpCategories[191]:AddAchievement(InsertAndReturn(achievements, achievement:New(8124, nil, nil, nil)));
    tmpCategories[191]:AddAchievement(InsertAndReturn(achievements, achievement:New(8454, nil, nil, nil)));
    tmpCategories[202] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(317))); -- Mogu'shan Vaults
    tmpCategories[191]:AddCategory(tmpCategories[202]);
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6823, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6674, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(7056, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(7933, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6687, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6686, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6455, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6719, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6720, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6721, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6722, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6723, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6724, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6458, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6844, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6954, false, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(7485, false, nil, nil)));
    tmpCategories[203] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(330))); -- Heart of Fear
    tmpCategories[191]:AddCategory(tmpCategories[203]);
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6937, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6936, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6553, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6683, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6518, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6922, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6725, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6726, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6727, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6728, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6729, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6730, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6718, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6845, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(8246, false, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(7486, false, nil, nil)));
    tmpCategories[204] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(320))); -- Terrace of Endless Spring
    tmpCategories[191]:AddCategory(tmpCategories[204]);
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6717, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6933, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6824, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6825, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6731, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6732, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6733, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6734, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6689, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(8248, false, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(7487, false, nil, nil)));
    tmpCategories[205] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(362))); -- Throne of Thunder
    tmpCategories[191]:AddCategory(tmpCategories[205]);
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8094, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8038, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8073, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8077, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8082, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8097, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8098, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8037, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8081, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8087, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8086, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8090, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8056, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8057, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8058, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8059, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8060, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8061, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8062, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8063, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8064, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8065, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8066, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8067, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8068, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8069, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8070, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8071, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8072, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8089, false, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8249, false, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8238, false, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8260, false, nil, nil)));
    tmpCategories[206] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(369))); -- Siege of Orgrimmar
    tmpCategories[191]:AddCategory(tmpCategories[206]);
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8536, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8528, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8532, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8521, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8530, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8520, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8453, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8448, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8538, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8529, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8527, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8543, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8531, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8537, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8463, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8465, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8466, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8467, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8468, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8469, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8470, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8471, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8472, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8478, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8479, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8480, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8481, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8482, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8458, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8459, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8461, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8462, nil, nil, nil)));
    if addon.Faction.IsAlliance then
        tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8679, nil, nil, nil)));
    end
    if addon.Faction.IsHorde then
        tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8680, nil, nil, nil)));
    end
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8398, false, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8399, false, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8400, false, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8401, false, nil, nil)));
    tmpCategories[192] = InsertAndReturn(categories, achievementCategory:New(addon.L["C_SCENARIOS"])); -- Scenarios
    tmpCategories[189]:AddCategory(tmpCategories[192]);
    tmpCategories[192]:AddAchievement(InsertAndReturn(achievements, achievement:New(7385, nil, nil, nil)));
    tmpCategories[207] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(517))); -- A Brewing Storm
    tmpCategories[192]:AddCategory(tmpCategories[207]);
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(7258, nil, nil, nil)));
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(7261, nil, nil, nil)));
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(7257, nil, nil, nil)));
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(7252, nil, nil, nil)));
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(8310, nil, nil, nil)));
    tmpCategories[208] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(511))); -- Arena of Annihilation
    tmpCategories[192]:AddCategory(tmpCategories[208]);
    tmpCategories[208]:AddAchievement(InsertAndReturn(achievements, achievement:New(7273, nil, nil, nil)));
    tmpCategories[208]:AddAchievement(InsertAndReturn(achievements, achievement:New(7272, nil, nil, nil)));
    tmpCategories[208]:AddAchievement(InsertAndReturn(achievements, achievement:New(7271, nil, nil, nil)));
    tmpCategories[209] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(539))); -- Brewmoon Festival
    tmpCategories[192]:AddCategory(tmpCategories[209]);
    tmpCategories[209]:AddAchievement(InsertAndReturn(achievements, achievement:New(6931, nil, nil, nil)));
    tmpCategories[209]:AddAchievement(InsertAndReturn(achievements, achievement:New(6930, nil, nil, nil)));
    tmpCategories[209]:AddAchievement(InsertAndReturn(achievements, achievement:New(6923, nil, nil, nil)));
    tmpCategories[210] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(504))); -- Crypt of Forgotten Kings
    tmpCategories[192]:AddCategory(tmpCategories[210]);
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(7275, nil, nil, nil)));
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(8368, nil, nil, nil)));
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(7276, nil, nil, nil)));
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(7522, nil, nil, nil)));
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(8311, nil, nil, nil)));
    tmpCategories[211] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(492))); -- Greenstone Village
    tmpCategories[192]:AddCategory(tmpCategories[211]);
    tmpCategories[211]:AddAchievement(InsertAndReturn(achievements, achievement:New(7267, nil, nil, nil)));
    tmpCategories[211]:AddAchievement(InsertAndReturn(achievements, achievement:New(7266, nil, nil, nil)));
    tmpCategories[211]:AddAchievement(InsertAndReturn(achievements, achievement:New(7265, nil, nil, nil)));
    tmpCategories[212] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(566))); -- Theramore's Fall
    tmpCategories[192]:AddCategory(tmpCategories[212]);
    if addon.Faction.IsAlliance then
        tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7526, nil, nil, nil)));
    end
    if addon.Faction.IsAlliance then
        tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7527, nil, nil, nil)));
    end
    if addon.Faction.IsAlliance then
        tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7523, nil, nil, nil)));
    end
    if addon.Faction.IsAlliance then
        tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7467, false, nil, nil)));
    end
    if addon.Faction.IsHorde then
        tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7529, nil, nil, nil)));
    end
    if addon.Faction.IsHorde then
        tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7530, nil, nil, nil)));
    end
    if addon.Faction.IsHorde then
        tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7524, nil, nil, nil)));
    end
    if addon.Faction.IsHorde then
        tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7468, false, nil, nil)));
    end
    tmpCategories[213] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(499))); -- Unga Ingoo
    tmpCategories[192]:AddCategory(tmpCategories[213]);
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7231, nil, nil, nil)));
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7232, nil, nil, nil)));
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7239, nil, nil, nil)));
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7248, nil, nil, nil)));
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7249, nil, nil, nil)));
    tmpCategories[214] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(593))); -- Assault on Zan'vess
    tmpCategories[192]:AddCategory(tmpCategories[214]);
    tmpCategories[214]:AddAchievement(InsertAndReturn(achievements, achievement:New(8017, nil, nil, nil)));
    tmpCategories[214]:AddAchievement(InsertAndReturn(achievements, achievement:New(8016, nil, nil, nil)));
    tmpCategories[215] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(616))); -- Dagger in the Dark
    tmpCategories[192]:AddCategory(tmpCategories[215]);
    tmpCategories[215]:AddAchievement(InsertAndReturn(achievements, achievement:New(7984, nil, nil, nil)));
    tmpCategories[215]:AddAchievement(InsertAndReturn(achievements, achievement:New(7987, nil, nil, nil)));
    tmpCategories[215]:AddAchievement(InsertAndReturn(achievements, achievement:New(7986, nil, nil, nil)));
    tmpCategories[215]:AddAchievement(InsertAndReturn(achievements, achievement:New(8009, nil, nil, nil)));
    tmpCategories[216] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(590))); -- Lion's Landing
    tmpCategories[192]:AddCategory(tmpCategories[216]);
    if addon.Faction.IsAlliance then
        tmpCategories[216]:AddAchievement(InsertAndReturn(achievements, achievement:New(8011, nil, nil, nil)));
    end
    if addon.Faction.IsAlliance then
        tmpCategories[216]:AddAchievement(InsertAndReturn(achievements, achievement:New(8012, nil, nil, nil)));
    end
    if addon.Faction.IsAlliance then
        tmpCategories[216]:AddAchievement(InsertAndReturn(achievements, achievement:New(8010, nil, nil, nil)));
    end
    tmpCategories[218] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(595))); -- Domination Point
    tmpCategories[192]:AddCategory(tmpCategories[218]);
    if addon.Faction.IsHorde then
        tmpCategories[218]:AddAchievement(InsertAndReturn(achievements, achievement:New(8014, nil, nil, nil)));
    end
    if addon.Faction.IsHorde then
        tmpCategories[218]:AddAchievement(InsertAndReturn(achievements, achievement:New(8015, nil, nil, nil)));
    end
    if addon.Faction.IsHorde then
        tmpCategories[218]:AddAchievement(InsertAndReturn(achievements, achievement:New(8013, nil, nil, nil)));
    end
    tmpCategories[219] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(655))); -- Battle on the High Seas
    tmpCategories[192]:AddCategory(tmpCategories[219]);
    tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8347, nil, nil, nil)));
    if addon.Faction.IsAlliance then
        tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8314, nil, nil, nil)));
    end
    if addon.Faction.IsAlliance then
        tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8364, nil, nil, nil)));
    end
    if addon.Faction.IsHorde then
        tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8315, nil, nil, nil)));
    end
    if addon.Faction.IsHorde then
        tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8366, nil, nil, nil)));
    end
    tmpCategories[220] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(646))); -- Blood in the Snow
    tmpCategories[192]:AddCategory(tmpCategories[220]);
    tmpCategories[220]:AddAchievement(InsertAndReturn(achievements, achievement:New(8329, nil, nil, nil)));
    tmpCategories[220]:AddAchievement(InsertAndReturn(achievements, achievement:New(8330, nil, nil, nil)));
    tmpCategories[220]:AddAchievement(InsertAndReturn(achievements, achievement:New(8316, nil, nil, nil)));
    tmpCategories[220]:AddAchievement(InsertAndReturn(achievements, achievement:New(8312, nil, nil, nil)));
    tmpCategories[221] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(647))); -- Dark Heart of Pandaria
    tmpCategories[192]:AddCategory(tmpCategories[221]);
    tmpCategories[221]:AddAchievement(InsertAndReturn(achievements, achievement:New(8319, nil, nil, nil)));
    tmpCategories[221]:AddAchievement(InsertAndReturn(achievements, achievement:New(8317, nil, nil, nil)));
    tmpCategories[221]:AddAchievement(InsertAndReturn(achievements, achievement:New(8318, nil, nil, nil)));
    tmpCategories[222] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(649))); -- The Secrets of Ragefire
    tmpCategories[192]:AddCategory(tmpCategories[222]);
    tmpCategories[222]:AddAchievement(InsertAndReturn(achievements, achievement:New(8295, nil, nil, nil)));
    tmpCategories[222]:AddAchievement(InsertAndReturn(achievements, achievement:New(8294, nil, nil, nil)));
    tmpCategories[222]:AddAchievement(InsertAndReturn(achievements, achievement:New(8327, nil, nil, nil)));
    tmpCategories[223] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15233))); -- Warlords of Dreanor
    tmpCategories[224] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272))); -- Dungeons
    tmpCategories[223]:AddCategory(tmpCategories[224]);
    tmpCategories[224]:AddAchievement(InsertAndReturn(achievements, achievement:New(9391, nil, nil, nil)));
    tmpCategories[224]:AddAchievement(InsertAndReturn(achievements, achievement:New(9396, nil, nil, nil)));
    tmpCategories[226] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(385))); -- Bloodmaul Slag Mines
    tmpCategories[224]:AddCategory(tmpCategories[226]);
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9005, nil, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8993, nil, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9008, nil, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9037, nil, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9046, nil, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(10076, nil, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8875, false, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8876, false, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8877, false, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8878, false, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9620, false, nil, nil)));
    tmpCategories[227] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(558))); -- Iron Docks
    tmpCategories[224]:AddCategory(tmpCategories[227]);
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9081, nil, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9083, nil, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9082, nil, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9038, nil, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9047, nil, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(10079, nil, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(8997, false, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(8998, false, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(8999, false, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9000, false, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9621, false, nil, nil)));
    tmpCategories[228] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(547))); -- Auchindoun
    tmpCategories[224]:AddCategory(tmpCategories[228]);
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9023, nil, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9551, nil, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9552, nil, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9039, nil, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9049, nil, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(10080, nil, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(8879, false, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(8880, false, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(8881, false, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(8882, false, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9622, false, nil, nil)));
    tmpCategories[229] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(476))); -- Skyreach
    tmpCategories[224]:AddCategory(tmpCategories[229]);
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9033, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9035, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9034, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9036, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8843, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8844, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(10081, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8871, false, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8872, false, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8873, false, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8874, false, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9623, false, nil, nil)));
    tmpCategories[230] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(536))); -- Grimrail Depot
    tmpCategories[224]:AddCategory(tmpCategories[230]);
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9024, nil, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9007, nil, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9043, nil, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9052, nil, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(10082, nil, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(8887, false, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(8888, false, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(8889, false, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(8890, false, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9625, false, nil, nil)));
    tmpCategories[231] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(556))); -- The Everbloom
    tmpCategories[224]:AddCategory(tmpCategories[231]);
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9017, nil, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9493, nil, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9223, nil, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9044, nil, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9053, nil, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(10083, nil, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9001, false, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9002, false, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9003, false, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9004, false, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9624, false, nil, nil)));
    tmpCategories[232] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(537))); -- Shadowmoon Burial Grounds
    tmpCategories[224]:AddCategory(tmpCategories[232]);
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9018, nil, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9025, nil, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9026, nil, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9041, nil, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9054, nil, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(10084, nil, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(8883, false, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(8884, false, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(8885, false, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(8886, false, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9626, false, nil, nil)));
    tmpCategories[233] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(559))); -- Upper Blackrock Spire
    tmpCategories[224]:AddCategory(tmpCategories[233]);
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9045, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9058, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9056, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9057, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9042, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9055, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(10085, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(8891, false, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(8892, false, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(8893, false, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(8894, false, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9627, false, nil, nil)));
    tmpCategories[225] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271))); -- Raids
    tmpCategories[223]:AddCategory(tmpCategories[225]);
    tmpCategories[225]:AddAchievement(InsertAndReturn(achievements, achievement:New(8985, nil, nil, nil)));
    tmpCategories[225]:AddAchievement(InsertAndReturn(achievements, achievement:New(10149, nil, nil, nil)));
    tmpCategories[234] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(477))); -- Highmaul
    tmpCategories[225]:AddCategory(tmpCategories[234]);
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8948, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8947, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8974, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8975, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8958, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8976, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8977, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8949, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8960, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8961, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8962, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8963, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8964, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8965, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8986, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8987, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8988, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(9441, false, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(9442, false, nil, nil)));
    tmpCategories[235] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(457))); -- Blackrock Foundry
    tmpCategories[225]:AddCategory(tmpCategories[235]);
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8979, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8978, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8930, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8980, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8929, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8983, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8981, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8982, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8984, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8952, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8967, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8966, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8970, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8968, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8932, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8971, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8956, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8969, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8972, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8973, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8989, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8990, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8991, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8992, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(9444, false, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(9443, false, nil, nil)));
    tmpCategories[236] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(669))); -- Hellfire Citadel
    tmpCategories[225]:AddCategory(tmpCategories[236]);
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10026, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10057, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10013, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10054, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9972, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9979, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9988, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10086, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9989, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10012, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10087, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10030, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10073, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10027, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10032, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10033, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10034, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10035, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10253, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10037, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10040, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10041, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10038, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10039, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10042, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10043, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10023, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10024, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10025, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10020, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10019, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9680, false, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10044, false, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10045, false, nil, nil)));
    tmpCategories[6] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15439))); -- Shadowlands
end

