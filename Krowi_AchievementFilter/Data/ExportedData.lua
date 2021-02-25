-- [[ Exported at 2021-02-25 16-49-33 ]] --
-- [[ This code is automatically generated as an export from a SQLite database ]] --
-- [[ and is not meant for manual edit. ]] --

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
    tmpCategories[1] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(14864))); -- Classic
    tmpCategories[2] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272))); -- Dungeons
    tmpCategories[1]:AddCategory(tmpCategories[2]);
    tmpCategories[2]:AddAchievement(InsertAndReturn(achievements, achievement:New(1283, nil, nil, nil, nil, nil)));
    tmpCategories[4] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(63))); -- Deadmines
    tmpCategories[2]:AddCategory(tmpCategories[4]);
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5366, nil, nil, nil, nil, tmpCategories[4])));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5367, nil, nil, nil, nil, tmpCategories[4])));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5368, nil, nil, nil, nil, tmpCategories[4])));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5369, nil, nil, nil, nil, tmpCategories[4])));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5370, nil, nil, nil, nil, tmpCategories[4])));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5371, nil, nil, nil, nil, tmpCategories[4])));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(628, nil, nil, nil, nil, tmpCategories[4])));
    tmpCategories[4]:AddAchievement(InsertAndReturn(achievements, achievement:New(5083, nil, nil, nil, nil, tmpCategories[4])));
    tmpCategories[5] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(226))); -- Ragefire Chasm
    tmpCategories[2]:AddCategory(tmpCategories[5]);
    tmpCategories[5]:AddAchievement(InsertAndReturn(achievements, achievement:New(629, nil, nil, nil, nil, nil)));
    tmpCategories[8] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(240))); -- Wailing Caverns
    tmpCategories[2]:AddCategory(tmpCategories[8]);
    tmpCategories[8]:AddAchievement(InsertAndReturn(achievements, achievement:New(630, nil, nil, nil, nil, nil)));
    tmpCategories[9] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(64))); -- Shadowfang Keep
    tmpCategories[2]:AddCategory(tmpCategories[9]);
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(5503, nil, nil, nil, nil, tmpCategories[9])));
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(5504, nil, nil, nil, nil, tmpCategories[9])));
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(5505, nil, nil, nil, nil, tmpCategories[9])));
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(631, nil, nil, nil, nil, tmpCategories[9])));
    tmpCategories[9]:AddAchievement(InsertAndReturn(achievements, achievement:New(5093, nil, nil, nil, nil, tmpCategories[9])));
    tmpCategories[10] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(227))); -- Blackfathom Deeps
    tmpCategories[2]:AddCategory(tmpCategories[10]);
    tmpCategories[10]:AddAchievement(InsertAndReturn(achievements, achievement:New(632, nil, nil, nil, nil, nil)));
    tmpCategories[11] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(238))); -- The Stockade
    tmpCategories[2]:AddCategory(tmpCategories[11]);
    tmpCategories[11]:AddAchievement(InsertAndReturn(achievements, achievement:New(633, nil, nil, nil, nil, nil)));
    tmpCategories[12] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(231))); -- Gnomeregan
    tmpCategories[2]:AddCategory(tmpCategories[12]);
    tmpCategories[12]:AddAchievement(InsertAndReturn(achievements, achievement:New(634, nil, nil, nil, nil, nil)));
    tmpCategories[13] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(233))); -- Razorfen Kraul
    tmpCategories[2]:AddCategory(tmpCategories[13]);
    tmpCategories[13]:AddAchievement(InsertAndReturn(achievements, achievement:New(635, nil, nil, nil, nil, nil)));
    tmpCategories[14] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(234))); -- Razorfen Downs
    tmpCategories[2]:AddCategory(tmpCategories[14]);
    tmpCategories[14]:AddAchievement(InsertAndReturn(achievements, achievement:New(636, nil, nil, nil, nil, nil)));
    tmpCategories[15] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(311))); -- Scarlet Halls
    tmpCategories[2]:AddCategory(tmpCategories[15]);
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6684, nil, nil, nil, nil, tmpCategories[15])));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6427, nil, nil, nil, nil, tmpCategories[15])));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(7413, nil, nil, nil, nil, tmpCategories[15])));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6760, nil, nil, nil, nil, tmpCategories[15])));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6895, nil, nil, false, nil, tmpCategories[15])));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6908, nil, nil, false, nil, tmpCategories[15])));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6909, nil, nil, false, nil, tmpCategories[15])));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(6910, nil, nil, false, nil, tmpCategories[15])));
    tmpCategories[15]:AddAchievement(InsertAndReturn(achievements, achievement:New(8436, nil, nil, false, nil, tmpCategories[15])));
    tmpCategories[16] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(316))); -- Scarlet Monastery
    tmpCategories[2]:AddCategory(tmpCategories[16]);
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6946, nil, nil, nil, nil, tmpCategories[16])));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6928, nil, nil, nil, nil, tmpCategories[16])));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6929, nil, nil, nil, nil, tmpCategories[16])));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(637, nil, nil, nil, nil, tmpCategories[16])));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6761, nil, nil, nil, nil, tmpCategories[16])));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6896, nil, nil, false, nil, tmpCategories[16])));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6911, nil, nil, false, nil, tmpCategories[16])));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6912, nil, nil, false, nil, tmpCategories[16])));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(6913, nil, nil, false, nil, tmpCategories[16])));
    tmpCategories[16]:AddAchievement(InsertAndReturn(achievements, achievement:New(8437, nil, nil, false, nil, tmpCategories[16])));
    tmpCategories[17] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(239))); -- Uldaman
    tmpCategories[2]:AddCategory(tmpCategories[17]);
    tmpCategories[17]:AddAchievement(InsertAndReturn(achievements, achievement:New(638, nil, nil, nil, nil, nil)));
    tmpCategories[18] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(241))); -- Zul'Farrak
    tmpCategories[2]:AddCategory(tmpCategories[18]);
    tmpCategories[18]:AddAchievement(InsertAndReturn(achievements, achievement:New(639, nil, nil, nil, nil, nil)));
    tmpCategories[19] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(232))); -- Maraudon
    tmpCategories[2]:AddCategory(tmpCategories[19]);
    tmpCategories[19]:AddAchievement(InsertAndReturn(achievements, achievement:New(640, nil, nil, nil, nil, nil)));
    tmpCategories[20] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(237))); -- The Temple Of Atal'hakkar
    tmpCategories[2]:AddCategory(tmpCategories[20]);
    tmpCategories[20]:AddAchievement(InsertAndReturn(achievements, achievement:New(641, nil, nil, nil, nil, nil)));
    tmpCategories[21] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(228))); -- Blackrock Depths
    tmpCategories[2]:AddCategory(tmpCategories[21]);
    tmpCategories[21]:AddAchievement(InsertAndReturn(achievements, achievement:New(642, nil, nil, nil, nil, nil)));
    tmpCategories[22] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(229))); -- Lower Blackrock Spire
    tmpCategories[2]:AddCategory(tmpCategories[22]);
    tmpCategories[22]:AddAchievement(InsertAndReturn(achievements, achievement:New(643, nil, nil, nil, nil, nil)));
    tmpCategories[23] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(230))); -- Dire Maul
    tmpCategories[2]:AddCategory(tmpCategories[23]);
    tmpCategories[23]:AddAchievement(InsertAndReturn(achievements, achievement:New(644, nil, nil, nil, nil, nil)));
    tmpCategories[24] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(246))); -- Scholomance
    tmpCategories[2]:AddCategory(tmpCategories[24]);
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6531, nil, nil, nil, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6394, nil, nil, nil, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6396, nil, nil, nil, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6715, nil, nil, nil, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6821, nil, nil, nil, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(645, nil, nil, nil, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6762, nil, nil, nil, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6897, nil, nil, false, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6914, nil, nil, false, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6915, nil, nil, false, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(6916, nil, nil, false, nil, tmpCategories[24])));
    tmpCategories[24]:AddAchievement(InsertAndReturn(achievements, achievement:New(8438, nil, nil, false, nil, tmpCategories[24])));
    tmpCategories[25] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(236))); -- Stratholme
    tmpCategories[2]:AddCategory(tmpCategories[25]);
    tmpCategories[25]:AddAchievement(InsertAndReturn(achievements, achievement:New(646, nil, nil, nil, nil, nil)));
    tmpCategories[3] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271))); -- Raids
    tmpCategories[1]:AddCategory(tmpCategories[3]);
    tmpCategories[3]:AddAchievement(InsertAndReturn(achievements, achievement:New(1285, nil, nil, nil, nil, nil)));
    tmpCategories[7] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(741))); -- Molten Core
    tmpCategories[3]:AddCategory(tmpCategories[7]);
    tmpCategories[7]:AddAchievement(InsertAndReturn(achievements, achievement:New(686, nil, nil, nil, nil, nil)));
    tmpCategories[26] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(760) .. " (" .. GetCategoryInfo(15234) .. ")")); -- Onyxia's Lair (Legacy)
    tmpCategories[3]:AddCategory(tmpCategories[26]);
    tmpCategories[26]:AddAchievement(InsertAndReturn(achievements, achievement:New(684, nil, nil, false, nil, nil)));
    tmpCategories[27] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(742))); -- Blackwing Lair
    tmpCategories[3]:AddCategory(tmpCategories[27]);
    tmpCategories[27]:AddAchievement(InsertAndReturn(achievements, achievement:New(685, nil, nil, nil, nil, nil)));
    tmpCategories[28] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(76) .. " (" .. GetCategoryInfo(15234) .. ")")); -- Zul'Gurub (Legacy)
    tmpCategories[3]:AddCategory(tmpCategories[28]);
    tmpCategories[28]:AddAchievement(InsertAndReturn(achievements, achievement:New(560, nil, nil, false, nil, nil)));
    tmpCategories[28]:AddAchievement(InsertAndReturn(achievements, achievement:New(688, nil, nil, false, nil, nil)));
    tmpCategories[28]:AddAchievement(InsertAndReturn(achievements, achievement:New(880, nil, nil, false, nil, nil)));
    tmpCategories[28]:AddAchievement(InsertAndReturn(achievements, achievement:New(881, nil, nil, false, nil, nil)));
    tmpCategories[29] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(743))); -- Ruins of Ahn'Qiraj
    tmpCategories[3]:AddCategory(tmpCategories[29]);
    tmpCategories[29]:AddAchievement(InsertAndReturn(achievements, achievement:New(689, nil, nil, nil, nil, nil)));
    tmpCategories[30] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(744))); -- Temple of Ahn'Qiraj
    tmpCategories[3]:AddCategory(tmpCategories[30]);
    tmpCategories[30]:AddAchievement(InsertAndReturn(achievements, achievement:New(687, nil, nil, nil, nil, nil)));
    tmpCategories[30]:AddAchievement(InsertAndReturn(achievements, achievement:New(424, nil, nil, nil, nil, nil)));
    tmpCategories[55] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(14865))); -- The Burning Crusade
    tmpCategories[56] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272))); -- Dungeons
    tmpCategories[55]:AddCategory(tmpCategories[56]);
    tmpCategories[56]:AddAchievement(InsertAndReturn(achievements, achievement:New(1284, nil, nil, nil, nil, nil)));
    tmpCategories[56]:AddAchievement(InsertAndReturn(achievements, achievement:New(1287, nil, nil, nil, nil, nil)));
    tmpCategories[57] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(248))); -- Hellfire Ramparts
    tmpCategories[56]:AddCategory(tmpCategories[57]);
    tmpCategories[57]:AddAchievement(InsertAndReturn(achievements, achievement:New(647, nil, nil, nil, nil, nil)));
    tmpCategories[57]:AddAchievement(InsertAndReturn(achievements, achievement:New(667, nil, nil, nil, nil, nil)));
    tmpCategories[58] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(256))); -- The Blood Furnace
    tmpCategories[56]:AddCategory(tmpCategories[58]);
    tmpCategories[58]:AddAchievement(InsertAndReturn(achievements, achievement:New(648, nil, nil, nil, nil, nil)));
    tmpCategories[58]:AddAchievement(InsertAndReturn(achievements, achievement:New(668, nil, nil, nil, nil, nil)));
    tmpCategories[59] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(259))); -- The Shattered Halls
    tmpCategories[56]:AddCategory(tmpCategories[59]);
    tmpCategories[59]:AddAchievement(InsertAndReturn(achievements, achievement:New(657, nil, nil, nil, nil, nil)));
    tmpCategories[59]:AddAchievement(InsertAndReturn(achievements, achievement:New(678, nil, nil, nil, nil, nil)));
    tmpCategories[60] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(260))); -- The Slave Pens
    tmpCategories[56]:AddCategory(tmpCategories[60]);
    tmpCategories[60]:AddAchievement(InsertAndReturn(achievements, achievement:New(649, nil, nil, nil, nil, nil)));
    tmpCategories[60]:AddAchievement(InsertAndReturn(achievements, achievement:New(669, nil, nil, nil, nil, nil)));
    tmpCategories[61] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(262))); -- The Underbog
    tmpCategories[56]:AddCategory(tmpCategories[61]);
    tmpCategories[61]:AddAchievement(InsertAndReturn(achievements, achievement:New(650, nil, nil, nil, nil, nil)));
    tmpCategories[61]:AddAchievement(InsertAndReturn(achievements, achievement:New(670, nil, nil, nil, nil, nil)));
    tmpCategories[62] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(261))); -- The Steamvault
    tmpCategories[56]:AddCategory(tmpCategories[62]);
    tmpCategories[62]:AddAchievement(InsertAndReturn(achievements, achievement:New(656, nil, nil, nil, nil, nil)));
    tmpCategories[62]:AddAchievement(InsertAndReturn(achievements, achievement:New(677, nil, nil, nil, nil, nil)));
    tmpCategories[63] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(250))); -- Mana-Tombs
    tmpCategories[56]:AddCategory(tmpCategories[63]);
    tmpCategories[63]:AddAchievement(InsertAndReturn(achievements, achievement:New(651, nil, nil, nil, nil, nil)));
    tmpCategories[63]:AddAchievement(InsertAndReturn(achievements, achievement:New(671, nil, nil, nil, nil, nil)));
    tmpCategories[64] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(247))); -- Auchenai Crypts
    tmpCategories[56]:AddCategory(tmpCategories[64]);
    tmpCategories[64]:AddAchievement(InsertAndReturn(achievements, achievement:New(666, nil, nil, nil, nil, nil)));
    tmpCategories[64]:AddAchievement(InsertAndReturn(achievements, achievement:New(672, nil, nil, nil, nil, nil)));
    tmpCategories[65] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(252))); -- Sethekk Halls
    tmpCategories[56]:AddCategory(tmpCategories[65]);
    tmpCategories[65]:AddAchievement(InsertAndReturn(achievements, achievement:New(653, nil, nil, nil, nil, nil)));
    tmpCategories[65]:AddAchievement(InsertAndReturn(achievements, achievement:New(674, nil, nil, nil, nil, nil)));
    tmpCategories[65]:AddAchievement(InsertAndReturn(achievements, achievement:New(883, nil, nil, nil, nil, nil)));
    tmpCategories[66] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(253))); -- Shadow Labyrinth
    tmpCategories[56]:AddCategory(tmpCategories[66]);
    tmpCategories[66]:AddAchievement(InsertAndReturn(achievements, achievement:New(654, nil, nil, nil, nil, nil)));
    tmpCategories[66]:AddAchievement(InsertAndReturn(achievements, achievement:New(675, nil, nil, nil, nil, nil)));
    tmpCategories[67] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(251))); -- Old Hillsbrad Foothills
    tmpCategories[56]:AddCategory(tmpCategories[67]);
    tmpCategories[67]:AddAchievement(InsertAndReturn(achievements, achievement:New(652, nil, nil, nil, nil, nil)));
    tmpCategories[67]:AddAchievement(InsertAndReturn(achievements, achievement:New(673, nil, nil, nil, nil, nil)));
    tmpCategories[68] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(255))); -- The Black Morass
    tmpCategories[56]:AddCategory(tmpCategories[68]);
    tmpCategories[68]:AddAchievement(InsertAndReturn(achievements, achievement:New(655, nil, nil, nil, nil, nil)));
    tmpCategories[68]:AddAchievement(InsertAndReturn(achievements, achievement:New(676, nil, nil, nil, nil, nil)));
    tmpCategories[69] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(258))); -- The Mechanar
    tmpCategories[56]:AddCategory(tmpCategories[69]);
    tmpCategories[69]:AddAchievement(InsertAndReturn(achievements, achievement:New(658, nil, nil, nil, nil, nil)));
    tmpCategories[69]:AddAchievement(InsertAndReturn(achievements, achievement:New(679, nil, nil, nil, nil, nil)));
    tmpCategories[70] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(257))); -- The Botanica
    tmpCategories[56]:AddCategory(tmpCategories[70]);
    tmpCategories[70]:AddAchievement(InsertAndReturn(achievements, achievement:New(659, nil, nil, nil, nil, nil)));
    tmpCategories[70]:AddAchievement(InsertAndReturn(achievements, achievement:New(680, nil, nil, nil, nil, nil)));
    tmpCategories[71] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(254))); -- The Arcatraz
    tmpCategories[56]:AddCategory(tmpCategories[71]);
    tmpCategories[71]:AddAchievement(InsertAndReturn(achievements, achievement:New(660, nil, nil, nil, nil, nil)));
    tmpCategories[71]:AddAchievement(InsertAndReturn(achievements, achievement:New(681, nil, nil, nil, nil, nil)));
    tmpCategories[72] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(249))); -- Magisters Terrace
    tmpCategories[56]:AddCategory(tmpCategories[72]);
    tmpCategories[72]:AddAchievement(InsertAndReturn(achievements, achievement:New(661, nil, nil, nil, nil, nil)));
    tmpCategories[72]:AddAchievement(InsertAndReturn(achievements, achievement:New(682, nil, nil, nil, nil, nil)));
    tmpCategories[72]:AddAchievement(InsertAndReturn(achievements, achievement:New(884, nil, nil, nil, nil, nil)));
    tmpCategories[73] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271))); -- Raids
    tmpCategories[55]:AddCategory(tmpCategories[73]);
    tmpCategories[73]:AddAchievement(InsertAndReturn(achievements, achievement:New(1286, nil, nil, nil, nil, nil)));
    tmpCategories[74] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(745))); -- Karazhan
    tmpCategories[73]:AddCategory(tmpCategories[74]);
    tmpCategories[74]:AddAchievement(InsertAndReturn(achievements, achievement:New(690, nil, nil, nil, nil, nil)));
    tmpCategories[74]:AddAchievement(InsertAndReturn(achievements, achievement:New(882, nil, nil, nil, nil, nil)));
    tmpCategories[75] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(746))); -- Gruul's Lair
    tmpCategories[73]:AddCategory(tmpCategories[75]);
    tmpCategories[75]:AddAchievement(InsertAndReturn(achievements, achievement:New(692, nil, nil, nil, nil, nil)));
    tmpCategories[76] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(747))); -- Magtheridon's Lair
    tmpCategories[73]:AddCategory(tmpCategories[76]);
    tmpCategories[76]:AddAchievement(InsertAndReturn(achievements, achievement:New(693, nil, nil, nil, nil, nil)));
    tmpCategories[77] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(748))); -- Serpentshrine Cavern
    tmpCategories[73]:AddCategory(tmpCategories[77]);
    tmpCategories[77]:AddAchievement(InsertAndReturn(achievements, achievement:New(694, nil, nil, nil, nil, nil)));
    tmpCategories[78] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(749))); -- The Eye
    tmpCategories[73]:AddCategory(tmpCategories[78]);
    tmpCategories[78]:AddAchievement(InsertAndReturn(achievements, achievement:New(696, nil, nil, nil, nil, nil)));
    tmpCategories[78]:AddAchievement(InsertAndReturn(achievements, achievement:New(885, nil, nil, nil, nil, nil)));
    tmpCategories[79] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(750))); -- The Battle for Mount Hyjal
    tmpCategories[73]:AddCategory(tmpCategories[79]);
    tmpCategories[79]:AddAchievement(InsertAndReturn(achievements, achievement:New(695, nil, nil, nil, nil, nil)));
    tmpCategories[80] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(751))); -- Black Temple
    tmpCategories[73]:AddCategory(tmpCategories[80]);
    tmpCategories[80]:AddAchievement(InsertAndReturn(achievements, achievement:New(697, nil, nil, nil, nil, nil)));
    tmpCategories[81] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(77) .. " (" .. GetCategoryInfo(15234) .. ")")); -- Zul'Aman
    tmpCategories[73]:AddCategory(tmpCategories[81]);
    tmpCategories[81]:AddAchievement(InsertAndReturn(achievements, achievement:New(691, nil, nil, false, nil, nil)));
    tmpCategories[81]:AddAchievement(InsertAndReturn(achievements, achievement:New(430, nil, nil, false, nil, nil)));
    tmpCategories[82] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(752))); -- Sunwell Plateau
    tmpCategories[73]:AddCategory(tmpCategories[82]);
    tmpCategories[82]:AddAchievement(InsertAndReturn(achievements, achievement:New(698, nil, nil, nil, nil, nil)));
    tmpCategories[83] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(14866))); -- Wrath of the Lich King
    tmpCategories[84] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272))); -- Dungeons
    tmpCategories[83]:AddCategory(tmpCategories[84]);
    tmpCategories[84]:AddAchievement(InsertAndReturn(achievements, achievement:New(1288, nil, nil, nil, nil, nil)));
    tmpCategories[84]:AddAchievement(InsertAndReturn(achievements, achievement:New(2136, nil, nil, nil, nil, nil)));
    tmpCategories[86] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(285))); -- Utgarde Keep
    tmpCategories[84]:AddCategory(tmpCategories[86]);
    tmpCategories[86]:AddAchievement(InsertAndReturn(achievements, achievement:New(1919, nil, nil, nil, nil, nil)));
    tmpCategories[86]:AddAchievement(InsertAndReturn(achievements, achievement:New(477, nil, nil, nil, nil, nil)));
    tmpCategories[86]:AddAchievement(InsertAndReturn(achievements, achievement:New(489, nil, nil, nil, nil, nil)));
    tmpCategories[87] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(281))); -- The Nexus
    tmpCategories[84]:AddCategory(tmpCategories[87]);
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(2150, nil, nil, nil, nil, nil)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(2037, nil, nil, nil, nil, nil)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(2036, nil, nil, nil, nil, nil)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(478, nil, nil, nil, nil, nil)));
    tmpCategories[87]:AddAchievement(InsertAndReturn(achievements, achievement:New(490, nil, nil, nil, nil, nil)));
    tmpCategories[88] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(272))); -- Azjol-Nerub
    tmpCategories[84]:AddCategory(tmpCategories[88]);
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(1296, nil, nil, nil, nil, nil)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(1297, nil, nil, nil, nil, nil)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(1860, nil, nil, nil, nil, nil)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(480, nil, nil, nil, nil, nil)));
    tmpCategories[88]:AddAchievement(InsertAndReturn(achievements, achievement:New(491, nil, nil, nil, nil, nil)));
    tmpCategories[89] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(271))); -- Ahn'kahet: The Old Kingdom
    tmpCategories[84]:AddCategory(tmpCategories[89]);
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(2038, nil, nil, nil, nil, nil)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(2056, nil, nil, nil, nil, nil)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(1862, nil, nil, nil, nil, nil)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(481, nil, nil, nil, nil, nil)));
    tmpCategories[89]:AddAchievement(InsertAndReturn(achievements, achievement:New(492, nil, nil, nil, nil, nil)));
    tmpCategories[90] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(273))); -- Drak'Tharon Keep
    tmpCategories[84]:AddCategory(tmpCategories[90]);
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(2151, nil, nil, nil, nil, nil)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(2057, nil, nil, nil, nil, nil)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(2039, nil, nil, nil, nil, nil)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(482, nil, nil, nil, nil, nil)));
    tmpCategories[90]:AddAchievement(InsertAndReturn(achievements, achievement:New(493, nil, nil, nil, nil, nil)));
    tmpCategories[91] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(283))); -- The Violet Hold
    tmpCategories[84]:AddCategory(tmpCategories[91]);
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(1865, nil, nil, nil, nil, nil)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(2041, nil, nil, nil, nil, nil)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(2153, nil, nil, nil, nil, nil)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(1816, nil, nil, nil, nil, nil)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(483, nil, nil, nil, nil, nil)));
    tmpCategories[91]:AddAchievement(InsertAndReturn(achievements, achievement:New(494, nil, nil, nil, nil, nil)));
    tmpCategories[92] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(274))); -- Gundrak
    tmpCategories[84]:AddCategory(tmpCategories[92]);
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(2058, nil, nil, nil, nil, nil)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(2040, nil, nil, nil, nil, nil)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(1864, nil, nil, nil, nil, nil)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(2152, nil, nil, nil, nil, nil)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(484, nil, nil, nil, nil, nil)));
    tmpCategories[92]:AddAchievement(InsertAndReturn(achievements, achievement:New(495, nil, nil, nil, nil, nil)));
    tmpCategories[93] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(277))); -- Halls of Stone
    tmpCategories[84]:AddCategory(tmpCategories[93]);
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(1866, nil, nil, nil, nil, nil)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(2154, nil, nil, nil, nil, nil)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(2155, nil, nil, nil, nil, nil)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(485, nil, nil, nil, nil, nil)));
    tmpCategories[93]:AddAchievement(InsertAndReturn(achievements, achievement:New(496, nil, nil, nil, nil, nil)));
    tmpCategories[94] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(275))); -- Halls of Lightning
    tmpCategories[84]:AddCategory(tmpCategories[94]);
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(1834, nil, nil, nil, nil, nil)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(2042, nil, nil, nil, nil, nil)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(1867, nil, nil, nil, nil, nil)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(486, nil, nil, nil, nil, nil)));
    tmpCategories[94]:AddAchievement(InsertAndReturn(achievements, achievement:New(497, nil, nil, nil, nil, nil)));
    tmpCategories[95] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(282))); -- The Oculus
    tmpCategories[84]:AddCategory(tmpCategories[95]);
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(1868, nil, nil, nil, nil, nil)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(2046, nil, nil, nil, nil, nil)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(2045, nil, nil, nil, nil, nil)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(2044, nil, nil, nil, nil, nil)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(1871, nil, nil, nil, nil, nil)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(487, nil, nil, nil, nil, nil)));
    tmpCategories[95]:AddAchievement(InsertAndReturn(achievements, achievement:New(498, nil, nil, nil, nil, nil)));
    tmpCategories[97] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(286))); -- Utgarde Pinnacle
    tmpCategories[84]:AddCategory(tmpCategories[97]);
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(2043, nil, nil, nil, nil, nil)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(1873, nil, nil, nil, nil, nil)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(2156, nil, nil, nil, nil, nil)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(2157, nil, nil, nil, nil, nil)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(488, nil, nil, nil, nil, nil)));
    tmpCategories[97]:AddAchievement(InsertAndReturn(achievements, achievement:New(499, nil, nil, nil, nil, nil)));
    tmpCategories[96] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(279))); -- The Culling of Stratholme
    tmpCategories[84]:AddCategory(tmpCategories[96]);
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(1872, nil, nil, nil, nil, nil)));
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(1817, nil, nil, nil, nil, nil)));
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(479, nil, nil, nil, nil, nil)));
    tmpCategories[96]:AddAchievement(InsertAndReturn(achievements, achievement:New(500, nil, nil, nil, nil, nil)));
    tmpCategories[98] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(284))); -- Trial of the Champion
    tmpCategories[84]:AddCategory(tmpCategories[98]);
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(3803, nil, nil, nil, nil, nil)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(3802, nil, nil, nil, nil, nil)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(3804, nil, nil, nil, nil, nil)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(4296, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(4298, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(3778, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[98]:AddAchievement(InsertAndReturn(achievements, achievement:New(4297, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[99] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(280))); -- The Forge of Souls
    tmpCategories[84]:AddCategory(tmpCategories[99]);
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4522, nil, nil, nil, nil, nil)));
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4523, nil, nil, nil, nil, nil)));
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4516, nil, nil, nil, nil, nil)));
    tmpCategories[99]:AddAchievement(InsertAndReturn(achievements, achievement:New(4519, nil, nil, nil, nil, nil)));
    tmpCategories[100] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(278))); -- Pit of Saron
    tmpCategories[84]:AddCategory(tmpCategories[100]);
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4524, nil, nil, nil, nil, nil)));
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4525, nil, nil, nil, nil, nil)));
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4517, nil, nil, nil, nil, nil)));
    tmpCategories[100]:AddAchievement(InsertAndReturn(achievements, achievement:New(4520, nil, nil, nil, nil, nil)));
    tmpCategories[101] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(276))); -- Halls of Reflection
    tmpCategories[84]:AddCategory(tmpCategories[101]);
    tmpCategories[101]:AddAchievement(InsertAndReturn(achievements, achievement:New(4526, nil, nil, nil, nil, nil)));
    tmpCategories[101]:AddAchievement(InsertAndReturn(achievements, achievement:New(4518, nil, nil, nil, nil, nil)));
    tmpCategories[101]:AddAchievement(InsertAndReturn(achievements, achievement:New(4521, nil, nil, nil, nil, nil)));
    tmpCategories[85] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271))); -- Raids
    tmpCategories[83]:AddCategory(tmpCategories[85]);
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2137, nil, nil, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2138, nil, nil, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(12401, nil, nil, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(4602, nil, nil, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(4603, nil, nil, nil, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2957, nil, nil, false, nil, nil)));
    tmpCategories[85]:AddAchievement(InsertAndReturn(achievements, achievement:New(2958, nil, nil, false, nil, nil)));
    tmpCategories[102] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(753))); -- Vault of Archavon
    tmpCategories[85]:AddCategory(tmpCategories[102]);
    tmpCategories[103] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3))); -- Vault of Archavon 10
    tmpCategories[102]:AddCategory(tmpCategories[103]);
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(4016, nil, nil, nil, nil, nil)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(1722, nil, nil, nil, nil, nil)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(3136, nil, nil, nil, nil, nil)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(3836, nil, nil, nil, nil, nil)));
    tmpCategories[103]:AddAchievement(InsertAndReturn(achievements, achievement:New(4585, nil, nil, nil, nil, nil)));
    tmpCategories[104] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- Vault of Archavon 25
    tmpCategories[102]:AddCategory(tmpCategories[104]);
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(4017, nil, nil, nil, nil, nil)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(1721, nil, nil, nil, nil, nil)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(3137, nil, nil, nil, nil, nil)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(3837, nil, nil, nil, nil, nil)));
    tmpCategories[104]:AddAchievement(InsertAndReturn(achievements, achievement:New(4586, nil, nil, nil, nil, nil)));
    tmpCategories[105] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(754))); -- Naxxramas
    tmpCategories[85]:AddCategory(tmpCategories[105]);
    tmpCategories[106] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3))); -- Naxxramas 10
    tmpCategories[105]:AddCategory(tmpCategories[106]);
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1997, nil, nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1858, nil, nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1856, nil, nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2178, nil, nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2180, nil, nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(1996, nil, nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2182, nil, nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2176, nil, nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2146, nil, nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2184, nil, nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(578, nil, nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(562, nil, nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(564, nil, nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(566, nil, nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(568, nil, nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(572, nil, nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(574, nil, nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(576, nil, nil, nil, nil, nil)));
    tmpCategories[106]:AddAchievement(InsertAndReturn(achievements, achievement:New(2187, nil, nil, false, nil, nil)));
    tmpCategories[107] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- Naxxramas 25
    tmpCategories[105]:AddCategory(tmpCategories[107]);
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2140, nil, nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(1859, nil, nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(1857, nil, nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2179, nil, nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2181, nil, nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2139, nil, nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2183, nil, nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2177, nil, nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2147, nil, nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2185, nil, nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(579, nil, nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(563, nil, nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(565, nil, nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(567, nil, nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(569, nil, nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(573, nil, nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(575, nil, nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(577, nil, nil, nil, nil, nil)));
    tmpCategories[107]:AddAchievement(InsertAndReturn(achievements, achievement:New(2186, nil, nil, false, nil, nil)));
    tmpCategories[108] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(755))); -- The Obsidian Sanctum
    tmpCategories[85]:AddCategory(tmpCategories[108]);
    tmpCategories[109] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3))); -- The Obsidian Sanctum 10
    tmpCategories[108]:AddCategory(tmpCategories[109]);
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2047, nil, nil, nil, nil, nil)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2049, nil, nil, nil, nil, nil)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2050, nil, nil, nil, nil, nil)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(2051, nil, nil, nil, nil, nil)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(624, nil, nil, nil, nil, nil)));
    tmpCategories[109]:AddAchievement(InsertAndReturn(achievements, achievement:New(1876, nil, nil, nil, nil, nil)));
    tmpCategories[110] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- The Obsidian Sanctum 25
    tmpCategories[108]:AddCategory(tmpCategories[110]);
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2048, nil, nil, nil, nil, nil)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2052, nil, nil, nil, nil, nil)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2053, nil, nil, nil, nil, nil)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(2054, nil, nil, nil, nil, nil)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(1877, nil, nil, nil, nil, nil)));
    tmpCategories[110]:AddAchievement(InsertAndReturn(achievements, achievement:New(625, nil, nil, nil, nil, nil)));
    tmpCategories[111] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(756))); -- The Eye of Eternity
    tmpCategories[85]:AddCategory(tmpCategories[111]);
    tmpCategories[112] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3))); -- The Eye of Eternity 10
    tmpCategories[111]:AddCategory(tmpCategories[112]);
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(2148, nil, nil, nil, nil, nil)));
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(1874, nil, nil, nil, nil, nil)));
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(1869, nil, nil, nil, nil, nil)));
    tmpCategories[112]:AddAchievement(InsertAndReturn(achievements, achievement:New(622, nil, nil, nil, nil, nil)));
    tmpCategories[113] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- The Eye of Eternity 25
    tmpCategories[111]:AddCategory(tmpCategories[113]);
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(2149, nil, nil, nil, nil, nil)));
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(1875, nil, nil, nil, nil, nil)));
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(1870, nil, nil, nil, nil, nil)));
    tmpCategories[113]:AddAchievement(InsertAndReturn(achievements, achievement:New(623, nil, nil, nil, nil, nil)));
    tmpCategories[114] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(759))); -- Ulduar
    tmpCategories[85]:AddCategory(tmpCategories[114]);
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12312, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12314, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12313, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12316, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12315, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12317, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12318, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12319, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12320, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12323, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12324, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12325, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12321, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12322, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12326, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12327, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12328, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12329, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12330, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12335, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12336, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12332, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12333, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12334, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12339, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12340, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12337, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12338, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12342, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12341, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12343, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12344, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12345, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12346, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12347, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12348, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12349, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12350, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12351, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12352, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12360, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12361, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12362, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12363, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12364, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12365, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12366, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12367, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12368, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12369, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12372, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12373, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12384, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12395, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12396, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12397, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12398, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12385, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12386, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12387, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12388, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12400, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12297, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12302, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12309, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12310, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12311, nil, nil, nil, nil, nil)));
    tmpCategories[114]:AddAchievement(InsertAndReturn(achievements, achievement:New(12399, nil, nil, nil, nil, nil)));
    tmpCategories[115] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3) .. " (" .. GetCategoryInfo(15234) .. ")")); -- Ulduar 10
    tmpCategories[114]:AddCategory(tmpCategories[115]);
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3097, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2907, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2905, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2911, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2909, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2913, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2914, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2915, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3056, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2925, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2927, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2930, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2919, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2923, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2931, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2933, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2934, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2937, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3058, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2945, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2947, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2939, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2940, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2941, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2955, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2959, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2951, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2953, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3076, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3006, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2961, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2963, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2967, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2969, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3182, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2971, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2973, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2975, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2977, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3176, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2979, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2980, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2985, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2982, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3177, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3178, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3179, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2989, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3138, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3180, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2996, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3181, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3009, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3008, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3012, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3014, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3015, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3157, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3141, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3158, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3159, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3003, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2886, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2888, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2890, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2892, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(2894, nil, nil, false, nil, nil)));
    tmpCategories[115]:AddAchievement(InsertAndReturn(achievements, achievement:New(3036, nil, nil, false, nil, nil)));
    tmpCategories[116] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4) .. " (" .. GetCategoryInfo(15234) .. ")")); -- Ulduar 25
    tmpCategories[114]:AddCategory(tmpCategories[116]);
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3098, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2908, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2906, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2912, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2910, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2918, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2916, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2917, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3057, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2926, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2928, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2929, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2921, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2924, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2932, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2935, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2936, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2938, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3059, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2946, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2948, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2942, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2943, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2944, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2956, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2960, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2952, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2954, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3077, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3007, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2962, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2965, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2968, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2970, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3184, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2972, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2974, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2976, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2978, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3183, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3118, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2981, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2984, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2983, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3185, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3186, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3187, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3237, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2995, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3189, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2997, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3188, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3011, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3010, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3013, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3017, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3016, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3161, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3162, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3163, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3164, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3002, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2887, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2889, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2891, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2893, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(2895, nil, nil, false, nil, nil)));
    tmpCategories[116]:AddAchievement(InsertAndReturn(achievements, achievement:New(3037, nil, nil, false, nil, nil)));
    tmpCategories[117] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(757))); -- Trial of the Crusader
    tmpCategories[85]:AddCategory(tmpCategories[117]);
    tmpCategories[118] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3))); -- Trial of the Crusader 10
    tmpCategories[117]:AddCategory(tmpCategories[118]);
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3797, nil, nil, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3936, nil, nil, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3996, nil, nil, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3798, nil, nil, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3799, nil, nil, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3800, nil, nil, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3917, nil, nil, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3918, nil, nil, nil, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3808, nil, nil, false, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3809, nil, nil, false, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(3810, nil, nil, false, nil, nil)));
    tmpCategories[118]:AddAchievement(InsertAndReturn(achievements, achievement:New(4080, nil, nil, false, nil, nil)));
    tmpCategories[119] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- Trial of the Crusader 25
    tmpCategories[117]:AddCategory(tmpCategories[119]);
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3813, nil, nil, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3937, nil, nil, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3997, nil, nil, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3815, nil, nil, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3816, nil, nil, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3916, nil, nil, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3812, nil, nil, nil, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3817, nil, nil, false, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3818, nil, nil, false, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(3819, nil, nil, false, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(4156, faction.Alliance, nil, false, nil, nil)));
    tmpCategories[119]:AddAchievement(InsertAndReturn(achievements, achievement:New(4079, faction.Horde, nil, false, nil, nil)));
    tmpCategories[120] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(760))); -- Onyxia's Lair
    tmpCategories[85]:AddCategory(tmpCategories[120]);
    tmpCategories[121] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3))); -- Onyxia's Lair 10
    tmpCategories[120]:AddCategory(tmpCategories[121]);
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4402, nil, nil, nil, nil, nil)));
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4403, nil, nil, nil, nil, nil)));
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4404, nil, nil, nil, nil, nil)));
    tmpCategories[121]:AddAchievement(InsertAndReturn(achievements, achievement:New(4396, nil, nil, nil, nil, nil)));
    tmpCategories[122] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- Onyxia's Lair 25
    tmpCategories[120]:AddCategory(tmpCategories[122]);
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4405, nil, nil, nil, nil, nil)));
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4406, nil, nil, nil, nil, nil)));
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4407, nil, nil, nil, nil, nil)));
    tmpCategories[122]:AddAchievement(InsertAndReturn(achievements, achievement:New(4397, nil, nil, nil, nil, nil)));
    tmpCategories[123] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(758))); -- Icecrown Citadel
    tmpCategories[85]:AddCategory(tmpCategories[123]);
    tmpCategories[124] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3))); -- Icecrown Citadel 10
    tmpCategories[123]:AddCategory(tmpCategories[124]);
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4534, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4535, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4536, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4537, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4577, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4538, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4578, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4582, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4539, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4579, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4580, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4601, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4581, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4531, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4528, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4529, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4527, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4530, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4532, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4628, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4629, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4630, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4631, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4583, nil, nil, nil, nil, nil)));
    tmpCategories[124]:AddAchievement(InsertAndReturn(achievements, achievement:New(4636, nil, nil, nil, nil, nil)));
    tmpCategories[125] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- Icecrown Citadel 25
    tmpCategories[123]:AddCategory(tmpCategories[125]);
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4610, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4611, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4612, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4613, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4615, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4614, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4616, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4617, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4618, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4619, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4620, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4621, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4622, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4604, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4605, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4606, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4607, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4597, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4608, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4632, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4633, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4634, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4635, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4584, nil, nil, nil, nil, nil)));
    tmpCategories[125]:AddAchievement(InsertAndReturn(achievements, achievement:New(4637, nil, nil, nil, nil, nil)));
    tmpCategories[126] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(761))); -- The Ruby Sanctum
    tmpCategories[85]:AddCategory(tmpCategories[126]);
    tmpCategories[127] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(3))); -- The Ruby Sanctum 10
    tmpCategories[126]:AddCategory(tmpCategories[127]);
    tmpCategories[127]:AddAchievement(InsertAndReturn(achievements, achievement:New(4817, nil, nil, nil, nil, nil)));
    tmpCategories[127]:AddAchievement(InsertAndReturn(achievements, achievement:New(4818, nil, nil, nil, nil, nil)));
    tmpCategories[128] = InsertAndReturn(categories, achievementCategory:New(GetDifficultyInfo(4))); -- The Ruby Sanctum 25
    tmpCategories[126]:AddCategory(tmpCategories[128]);
    tmpCategories[128]:AddAchievement(InsertAndReturn(achievements, achievement:New(4815, nil, nil, nil, nil, nil)));
    tmpCategories[128]:AddAchievement(InsertAndReturn(achievements, achievement:New(4816, nil, nil, nil, nil, nil)));
    tmpCategories[129] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15072))); -- Cataclysm
    tmpCategories[130] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272))); -- Dungeons
    tmpCategories[129]:AddCategory(tmpCategories[130]);
    tmpCategories[130]:AddAchievement(InsertAndReturn(achievements, achievement:New(4844, nil, nil, nil, nil, nil)));
    tmpCategories[130]:AddAchievement(InsertAndReturn(achievements, achievement:New(4845, nil, nil, nil, nil, nil)));
    tmpCategories[132] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(66))); -- Blackrock Caverns
    tmpCategories[130]:AddCategory(tmpCategories[132]);
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5281, nil, nil, nil, nil, nil)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5282, nil, nil, nil, nil, nil)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5283, nil, nil, nil, nil, nil)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5284, nil, nil, nil, nil, nil)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(4833, nil, nil, nil, nil, nil)));
    tmpCategories[132]:AddAchievement(InsertAndReturn(achievements, achievement:New(5060, nil, nil, nil, nil, nil)));
    tmpCategories[133] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(65))); -- Throne of the Tides
    tmpCategories[130]:AddCategory(tmpCategories[133]);
    tmpCategories[133]:AddAchievement(InsertAndReturn(achievements, achievement:New(5285, nil, nil, nil, nil, nil)));
    tmpCategories[133]:AddAchievement(InsertAndReturn(achievements, achievement:New(5286, nil, nil, nil, nil, nil)));
    tmpCategories[133]:AddAchievement(InsertAndReturn(achievements, achievement:New(4839, nil, nil, nil, nil, nil)));
    tmpCategories[133]:AddAchievement(InsertAndReturn(achievements, achievement:New(5061, nil, nil, nil, nil, nil)));
    tmpCategories[134] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(67))); -- The Stonecore
    tmpCategories[130]:AddCategory(tmpCategories[134]);
    tmpCategories[134]:AddAchievement(InsertAndReturn(achievements, achievement:New(5287, nil, nil, nil, nil, nil)));
    tmpCategories[134]:AddAchievement(InsertAndReturn(achievements, achievement:New(4846, nil, nil, nil, nil, nil)));
    tmpCategories[134]:AddAchievement(InsertAndReturn(achievements, achievement:New(5063, nil, nil, nil, nil, nil)));
    tmpCategories[135] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(68))); -- The Vortex Pinnacle
    tmpCategories[130]:AddCategory(tmpCategories[135]);
    tmpCategories[135]:AddAchievement(InsertAndReturn(achievements, achievement:New(5289, nil, nil, nil, nil, nil)));
    tmpCategories[135]:AddAchievement(InsertAndReturn(achievements, achievement:New(5288, nil, nil, nil, nil, nil)));
    tmpCategories[135]:AddAchievement(InsertAndReturn(achievements, achievement:New(4847, nil, nil, nil, nil, nil)));
    tmpCategories[135]:AddAchievement(InsertAndReturn(achievements, achievement:New(5064, nil, nil, nil, nil, nil)));
    tmpCategories[136] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(71))); -- Grim Batol
    tmpCategories[130]:AddCategory(tmpCategories[136]);
    tmpCategories[136]:AddAchievement(InsertAndReturn(achievements, achievement:New(5297, nil, nil, nil, nil, nil)));
    tmpCategories[136]:AddAchievement(InsertAndReturn(achievements, achievement:New(5298, nil, nil, nil, nil, nil)));
    tmpCategories[136]:AddAchievement(InsertAndReturn(achievements, achievement:New(4840, nil, nil, nil, nil, nil)));
    tmpCategories[136]:AddAchievement(InsertAndReturn(achievements, achievement:New(5062, nil, nil, nil, nil, nil)));
    tmpCategories[137] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(70))); -- Halls of Origination
    tmpCategories[130]:AddCategory(tmpCategories[137]);
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5293, nil, nil, nil, nil, nil)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5294, nil, nil, nil, nil, nil)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5296, nil, nil, nil, nil, nil)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5295, nil, nil, nil, nil, nil)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(4841, nil, nil, nil, nil, nil)));
    tmpCategories[137]:AddAchievement(InsertAndReturn(achievements, achievement:New(5065, nil, nil, nil, nil, nil)));
    tmpCategories[138] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(69))); -- Lost City of the Tol'vir
    tmpCategories[130]:AddCategory(tmpCategories[138]);
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(5291, nil, nil, nil, nil, nil)));
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(5290, nil, nil, nil, nil, nil)));
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(5292, nil, nil, nil, nil, nil)));
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(4848, nil, nil, nil, nil, nil)));
    tmpCategories[138]:AddAchievement(InsertAndReturn(achievements, achievement:New(5066, nil, nil, nil, nil, nil)));
    tmpCategories[139] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(63))); -- Deadmines
    tmpCategories[130]:AddCategory(tmpCategories[139]);
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5366, nil, nil, nil, nil, tmpCategories[139])));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5367, nil, nil, nil, nil, tmpCategories[139])));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5368, nil, nil, nil, nil, tmpCategories[139])));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5369, nil, nil, nil, nil, tmpCategories[139])));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5370, nil, nil, nil, nil, tmpCategories[139])));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5371, nil, nil, nil, nil, tmpCategories[139])));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(628, nil, nil, nil, nil, tmpCategories[139])));
    tmpCategories[139]:AddAchievement(InsertAndReturn(achievements, achievement:New(5083, nil, nil, nil, nil, tmpCategories[139])));
    tmpCategories[140] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(64))); -- Shadowfang Keep
    tmpCategories[130]:AddCategory(tmpCategories[140]);
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(5503, nil, nil, nil, nil, tmpCategories[140])));
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(5504, nil, nil, nil, nil, tmpCategories[140])));
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(5505, nil, nil, nil, nil, tmpCategories[140])));
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(631, nil, nil, nil, nil, tmpCategories[140])));
    tmpCategories[140]:AddAchievement(InsertAndReturn(achievements, achievement:New(5093, nil, nil, nil, nil, tmpCategories[140])));
    tmpCategories[141] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(76))); -- Zul'Gurub
    tmpCategories[130]:AddCategory(tmpCategories[141]);
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5743, nil, nil, nil, nil, nil)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5762, nil, nil, nil, nil, nil)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5765, nil, nil, nil, nil, nil)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5759, nil, nil, nil, nil, nil)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5744, nil, nil, nil, nil, nil)));
    tmpCategories[141]:AddAchievement(InsertAndReturn(achievements, achievement:New(5768, nil, nil, nil, nil, nil)));
    tmpCategories[142] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(77))); -- Zul'Aman
    tmpCategories[130]:AddCategory(tmpCategories[142]);
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5858, nil, nil, nil, nil, nil)));
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5750, nil, nil, nil, nil, nil)));
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5761, nil, nil, nil, nil, nil)));
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5760, nil, nil, nil, nil, nil)));
    tmpCategories[142]:AddAchievement(InsertAndReturn(achievements, achievement:New(5769, nil, nil, nil, nil, nil)));
    tmpCategories[143] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(184))); -- End Time
    tmpCategories[130]:AddCategory(tmpCategories[143]);
    tmpCategories[143]:AddAchievement(InsertAndReturn(achievements, achievement:New(5995, nil, nil, nil, nil, nil)));
    tmpCategories[143]:AddAchievement(InsertAndReturn(achievements, achievement:New(6130, nil, nil, nil, nil, nil)));
    tmpCategories[143]:AddAchievement(InsertAndReturn(achievements, achievement:New(6117, nil, nil, nil, nil, nil)));
    tmpCategories[144] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(185))); -- Well of Eternity
    tmpCategories[130]:AddCategory(tmpCategories[144]);
    tmpCategories[144]:AddAchievement(InsertAndReturn(achievements, achievement:New(6127, nil, nil, nil, nil, nil)));
    tmpCategories[144]:AddAchievement(InsertAndReturn(achievements, achievement:New(6070, nil, nil, nil, nil, nil)));
    tmpCategories[144]:AddAchievement(InsertAndReturn(achievements, achievement:New(6118, nil, nil, nil, nil, nil)));
    tmpCategories[145] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(186))); -- Hour of Twilight
    tmpCategories[130]:AddCategory(tmpCategories[145]);
    tmpCategories[145]:AddAchievement(InsertAndReturn(achievements, achievement:New(6132, nil, nil, nil, nil, nil)));
    tmpCategories[145]:AddAchievement(InsertAndReturn(achievements, achievement:New(6119, nil, nil, nil, nil, nil)));
    tmpCategories[131] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271))); -- Raids
    tmpCategories[129]:AddCategory(tmpCategories[131]);
    tmpCategories[131]:AddAchievement(InsertAndReturn(achievements, achievement:New(4853, nil, nil, nil, nil, nil)));
    tmpCategories[131]:AddAchievement(InsertAndReturn(achievements, achievement:New(5828, nil, nil, nil, nil, nil)));
    tmpCategories[131]:AddAchievement(InsertAndReturn(achievements, achievement:New(6169, nil, nil, nil, nil, nil)));
    tmpCategories[146] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(75))); -- Baradin Hold
    tmpCategories[131]:AddCategory(tmpCategories[146]);
    tmpCategories[146]:AddAchievement(InsertAndReturn(achievements, achievement:New(5416, nil, nil, nil, nil, nil)));
    tmpCategories[146]:AddAchievement(InsertAndReturn(achievements, achievement:New(6045, nil, nil, nil, nil, nil)));
    tmpCategories[146]:AddAchievement(InsertAndReturn(achievements, achievement:New(6108, nil, nil, nil, nil, nil)));
    tmpCategories[147] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(73))); -- Blackwing Descent
    tmpCategories[131]:AddCategory(tmpCategories[147]);
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5306, nil, nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5307, nil, nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5309, nil, nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5308, nil, nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5310, nil, nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(4849, nil, nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(4842, nil, nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5094, nil, nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5107, nil, nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5115, nil, nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5109, nil, nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5108, nil, nil, nil, nil, nil)));
    tmpCategories[147]:AddAchievement(InsertAndReturn(achievements, achievement:New(5116, nil, nil, nil, nil, nil)));
    tmpCategories[148] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(72))); -- The Bastion of Twilight
    tmpCategories[131]:AddCategory(tmpCategories[148]);
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5300, nil, nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(4852, nil, nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5311, nil, nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5312, nil, nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5118, nil, nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5117, nil, nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5119, nil, nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5120, nil, nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5121, nil, nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(4850, nil, nil, nil, nil, nil)));
    tmpCategories[148]:AddAchievement(InsertAndReturn(achievements, achievement:New(5313, nil, nil, false, nil, nil)));
    tmpCategories[149] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(74))); -- Throne of the Four Winds
    tmpCategories[131]:AddCategory(tmpCategories[149]);
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(5304, nil, nil, nil, nil, nil)));
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(5305, nil, nil, nil, nil, nil)));
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(5122, nil, nil, nil, nil, nil)));
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(5123, nil, nil, nil, nil, nil)));
    tmpCategories[149]:AddAchievement(InsertAndReturn(achievements, achievement:New(4851, nil, nil, nil, nil, nil)));
    tmpCategories[150] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(78))); -- Firelands
    tmpCategories[131]:AddCategory(tmpCategories[150]);
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5821, nil, nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5813, nil, nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5810, nil, nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5829, nil, nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5830, nil, nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5799, nil, nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5855, nil, nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5807, nil, nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5809, nil, nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5808, nil, nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5806, nil, nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5805, nil, nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5804, nil, nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5803, nil, nil, nil, nil, nil)));
    tmpCategories[150]:AddAchievement(InsertAndReturn(achievements, achievement:New(5802, nil, nil, nil, nil, nil)));
    tmpCategories[151] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(187))); -- Dragon Soul
    tmpCategories[131]:AddCategory(tmpCategories[151]);
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6174, nil, nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6128, nil, nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6129, nil, nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6175, nil, nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6084, nil, nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6105, nil, nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6133, nil, nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6180, nil, nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6109, nil, nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6110, nil, nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6111, nil, nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6112, nil, nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6113, nil, nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6114, nil, nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6115, nil, nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6116, nil, nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6106, nil, nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6107, nil, nil, nil, nil, nil)));
    tmpCategories[151]:AddAchievement(InsertAndReturn(achievements, achievement:New(6177, nil, nil, nil, nil, nil)));
    tmpCategories[189] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15164))); -- Mists of Pandaria
    tmpCategories[190] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272))); -- Dungeons
    tmpCategories[189]:AddCategory(tmpCategories[190]);
    tmpCategories[190]:AddAchievement(InsertAndReturn(achievements, achievement:New(6925, nil, nil, nil, nil, nil)));
    tmpCategories[190]:AddAchievement(InsertAndReturn(achievements, achievement:New(6927, nil, nil, nil, nil, nil)));
    tmpCategories[193] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(313))); -- Temple of the Jade Serpent
    tmpCategories[190]:AddCategory(tmpCategories[193]);
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6475, nil, nil, nil, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6460, nil, nil, nil, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6671, nil, nil, nil, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6757, nil, nil, nil, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6758, nil, nil, nil, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6884, nil, nil, false, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6885, nil, nil, false, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6886, nil, nil, false, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(6887, nil, nil, false, nil, nil)));
    tmpCategories[193]:AddAchievement(InsertAndReturn(achievements, achievement:New(8430, nil, nil, false, nil, nil)));
    tmpCategories[194] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(302))); -- Stormstout Brewery
    tmpCategories[190]:AddCategory(tmpCategories[194]);
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6402, nil, nil, nil, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6089, nil, nil, nil, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6400, nil, nil, nil, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6420, nil, nil, nil, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6457, nil, nil, nil, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6456, nil, nil, nil, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6888, nil, nil, false, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6889, nil, nil, false, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6890, nil, nil, false, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(6891, nil, nil, false, nil, nil)));
    tmpCategories[194]:AddAchievement(InsertAndReturn(achievements, achievement:New(8431, nil, nil, false, nil, nil)));
    tmpCategories[195] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(321))); -- Mogu'shan Palace
    tmpCategories[190]:AddCategory(tmpCategories[195]);
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6713, nil, nil, nil, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6478, nil, nil, nil, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6736, nil, nil, nil, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6755, nil, nil, nil, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6756, nil, nil, nil, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6892, nil, nil, false, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6899, nil, nil, false, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6900, nil, nil, false, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(6901, nil, nil, false, nil, nil)));
    tmpCategories[195]:AddAchievement(InsertAndReturn(achievements, achievement:New(8433, nil, nil, false, nil, nil)));
    tmpCategories[196] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(312))); -- Shado-Pan Monastery
    tmpCategories[190]:AddCategory(tmpCategories[196]);
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6477, nil, nil, nil, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6472, nil, nil, nil, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6471, nil, nil, nil, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6469, nil, nil, nil, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6470, nil, nil, nil, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6893, nil, nil, false, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6902, nil, nil, false, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6903, nil, nil, false, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(6904, nil, nil, false, nil, nil)));
    tmpCategories[196]:AddAchievement(InsertAndReturn(achievements, achievement:New(8432, nil, nil, false, nil, nil)));
    tmpCategories[197] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(303))); -- Gate of the Setting Sun
    tmpCategories[190]:AddCategory(tmpCategories[197]);
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6479, nil, nil, nil, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6476, nil, nil, nil, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6945, nil, nil, nil, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(10010, nil, nil, nil, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6759, nil, nil, nil, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6894, nil, nil, false, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6905, nil, nil, false, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6906, nil, nil, false, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(6907, nil, nil, false, nil, nil)));
    tmpCategories[197]:AddAchievement(InsertAndReturn(achievements, achievement:New(8434, nil, nil, false, nil, nil)));
    tmpCategories[198] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(324))); -- Siege of Niuzao Temple
    tmpCategories[190]:AddCategory(tmpCategories[198]);
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6688, nil, nil, nil, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6485, nil, nil, nil, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6822, nil, nil, nil, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(10011, nil, nil, nil, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6763, nil, nil, nil, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6898, nil, nil, false, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6917, nil, nil, false, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6918, nil, nil, false, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(6919, nil, nil, false, nil, nil)));
    tmpCategories[198]:AddAchievement(InsertAndReturn(achievements, achievement:New(8439, nil, nil, false, nil, nil)));
    tmpCategories[199] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(311))); -- Scarlet Halls
    tmpCategories[190]:AddCategory(tmpCategories[199]);
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6684, nil, nil, nil, nil, tmpCategories[199])));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6427, nil, nil, nil, nil, tmpCategories[199])));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(7413, nil, nil, nil, nil, tmpCategories[199])));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6760, nil, nil, nil, nil, tmpCategories[199])));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6895, nil, nil, false, nil, tmpCategories[199])));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6908, nil, nil, false, nil, tmpCategories[199])));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6909, nil, nil, false, nil, tmpCategories[199])));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(6910, nil, nil, false, nil, tmpCategories[199])));
    tmpCategories[199]:AddAchievement(InsertAndReturn(achievements, achievement:New(8436, nil, nil, false, nil, tmpCategories[199])));
    tmpCategories[200] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(316))); -- Scarlet Monastery
    tmpCategories[190]:AddCategory(tmpCategories[200]);
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6946, nil, nil, nil, nil, tmpCategories[200])));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6928, nil, nil, nil, nil, tmpCategories[200])));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6929, nil, nil, nil, nil, tmpCategories[200])));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(637, nil, nil, nil, nil, tmpCategories[200])));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6761, nil, nil, nil, nil, tmpCategories[200])));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6896, nil, nil, false, nil, tmpCategories[200])));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6911, nil, nil, false, nil, tmpCategories[200])));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6912, nil, nil, false, nil, tmpCategories[200])));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(6913, nil, nil, false, nil, tmpCategories[200])));
    tmpCategories[200]:AddAchievement(InsertAndReturn(achievements, achievement:New(8437, nil, nil, false, nil, tmpCategories[200])));
    tmpCategories[201] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(246))); -- Scholomance
    tmpCategories[190]:AddCategory(tmpCategories[201]);
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6531, nil, nil, nil, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6394, nil, nil, nil, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6396, nil, nil, nil, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6715, nil, nil, nil, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6821, nil, nil, nil, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(645, nil, nil, nil, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6762, nil, nil, nil, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6897, nil, nil, false, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6914, nil, nil, false, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6915, nil, nil, false, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(6916, nil, nil, false, nil, tmpCategories[201])));
    tmpCategories[201]:AddAchievement(InsertAndReturn(achievements, achievement:New(8438, nil, nil, false, nil, tmpCategories[201])));
    tmpCategories[191] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271))); -- Raids
    tmpCategories[189]:AddCategory(tmpCategories[191]);
    tmpCategories[191]:AddAchievement(InsertAndReturn(achievements, achievement:New(6932, nil, nil, nil, nil, nil)));
    tmpCategories[191]:AddAchievement(InsertAndReturn(achievements, achievement:New(8124, nil, nil, nil, nil, nil)));
    tmpCategories[191]:AddAchievement(InsertAndReturn(achievements, achievement:New(8454, nil, nil, nil, nil, nil)));
    tmpCategories[202] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(317))); -- Mogu'shan Vaults
    tmpCategories[191]:AddCategory(tmpCategories[202]);
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6823, nil, nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6674, nil, nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(7056, nil, nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(7933, nil, nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6687, nil, nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6686, nil, nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6455, nil, nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6719, nil, nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6720, nil, nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6721, nil, nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6722, nil, nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6723, nil, nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6724, nil, nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6458, nil, nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6844, nil, nil, nil, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(6954, nil, nil, false, nil, nil)));
    tmpCategories[202]:AddAchievement(InsertAndReturn(achievements, achievement:New(7485, nil, nil, false, nil, nil)));
    tmpCategories[203] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(330))); -- Heart of Fear
    tmpCategories[191]:AddCategory(tmpCategories[203]);
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6937, nil, nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6936, nil, nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6553, nil, nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6683, nil, nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6518, nil, nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6922, nil, nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6725, nil, nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6726, nil, nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6727, nil, nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6728, nil, nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6729, nil, nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6730, nil, nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6718, nil, nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(6845, nil, nil, nil, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(8246, nil, nil, false, nil, nil)));
    tmpCategories[203]:AddAchievement(InsertAndReturn(achievements, achievement:New(7486, nil, nil, false, nil, nil)));
    tmpCategories[204] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(320))); -- Terrace of Endless Spring
    tmpCategories[191]:AddCategory(tmpCategories[204]);
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6717, nil, nil, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6933, nil, nil, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6824, nil, nil, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6825, nil, nil, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6731, nil, nil, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6732, nil, nil, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6733, nil, nil, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6734, nil, nil, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(6689, nil, nil, nil, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(8248, nil, nil, false, nil, nil)));
    tmpCategories[204]:AddAchievement(InsertAndReturn(achievements, achievement:New(7487, nil, nil, false, nil, nil)));
    tmpCategories[205] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(362))); -- Throne of Thunder
    tmpCategories[191]:AddCategory(tmpCategories[205]);
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8094, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8038, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8073, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8077, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8082, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8097, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8098, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8037, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8081, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8087, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8086, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8090, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8056, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8057, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8058, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8059, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8060, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8061, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8062, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8063, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8064, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8065, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8066, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8067, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8068, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8069, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8070, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8071, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8072, nil, nil, nil, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8089, nil, nil, false, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8249, nil, nil, false, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8238, nil, nil, false, nil, nil)));
    tmpCategories[205]:AddAchievement(InsertAndReturn(achievements, achievement:New(8260, nil, nil, false, nil, nil)));
    tmpCategories[206] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(369))); -- Siege of Orgrimmar
    tmpCategories[191]:AddCategory(tmpCategories[206]);
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8536, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8528, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8532, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8521, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8530, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8520, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8453, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8448, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8538, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8529, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8527, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8543, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8531, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8537, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8463, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8465, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8466, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8467, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8468, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8469, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8470, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8471, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8472, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8478, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8479, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8480, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8481, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8482, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8458, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8459, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8461, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8462, nil, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8679, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8680, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8398, nil, nil, false, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8399, nil, nil, false, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8400, nil, nil, false, nil, nil)));
    tmpCategories[206]:AddAchievement(InsertAndReturn(achievements, achievement:New(8401, nil, nil, false, nil, nil)));
    tmpCategories[192] = InsertAndReturn(categories, achievementCategory:New(addon.L["Scenarios"])); -- Scenarios
    tmpCategories[189]:AddCategory(tmpCategories[192]);
    tmpCategories[192]:AddAchievement(InsertAndReturn(achievements, achievement:New(7385, nil, nil, nil, nil, nil)));
    tmpCategories[207] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(517))); -- A Brewing Storm
    tmpCategories[192]:AddCategory(tmpCategories[207]);
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(7258, nil, nil, nil, nil, nil)));
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(7261, nil, nil, nil, nil, nil)));
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(7257, nil, nil, nil, nil, nil)));
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(7252, nil, nil, nil, nil, nil)));
    tmpCategories[207]:AddAchievement(InsertAndReturn(achievements, achievement:New(8310, nil, nil, nil, nil, nil)));
    tmpCategories[208] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(511))); -- Arena of Annihilation
    tmpCategories[192]:AddCategory(tmpCategories[208]);
    tmpCategories[208]:AddAchievement(InsertAndReturn(achievements, achievement:New(7273, nil, nil, nil, nil, nil)));
    tmpCategories[208]:AddAchievement(InsertAndReturn(achievements, achievement:New(7272, nil, nil, nil, nil, nil)));
    tmpCategories[208]:AddAchievement(InsertAndReturn(achievements, achievement:New(7271, nil, nil, nil, nil, nil)));
    tmpCategories[209] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(539))); -- Brewmoon Festival
    tmpCategories[192]:AddCategory(tmpCategories[209]);
    tmpCategories[209]:AddAchievement(InsertAndReturn(achievements, achievement:New(6931, nil, nil, nil, nil, nil)));
    tmpCategories[209]:AddAchievement(InsertAndReturn(achievements, achievement:New(6930, nil, nil, nil, nil, nil)));
    tmpCategories[209]:AddAchievement(InsertAndReturn(achievements, achievement:New(6923, nil, nil, nil, nil, nil)));
    tmpCategories[210] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(504))); -- Crypt of Forgotten Kings
    tmpCategories[192]:AddCategory(tmpCategories[210]);
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(7275, nil, nil, nil, nil, nil)));
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(8368, nil, nil, nil, nil, nil)));
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(7276, nil, nil, nil, nil, nil)));
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(7522, nil, nil, nil, nil, nil)));
    tmpCategories[210]:AddAchievement(InsertAndReturn(achievements, achievement:New(8311, nil, nil, nil, nil, nil)));
    tmpCategories[211] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(492))); -- Greenstone Village
    tmpCategories[192]:AddCategory(tmpCategories[211]);
    tmpCategories[211]:AddAchievement(InsertAndReturn(achievements, achievement:New(7267, nil, nil, nil, nil, nil)));
    tmpCategories[211]:AddAchievement(InsertAndReturn(achievements, achievement:New(7266, nil, nil, nil, nil, nil)));
    tmpCategories[211]:AddAchievement(InsertAndReturn(achievements, achievement:New(7265, nil, nil, nil, nil, nil)));
    tmpCategories[212] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(566))); -- Theramore's Fall
    tmpCategories[192]:AddCategory(tmpCategories[212]);
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7526, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7527, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7523, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7467, faction.Alliance, nil, false, nil, nil)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7529, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7530, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7524, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[212]:AddAchievement(InsertAndReturn(achievements, achievement:New(7468, faction.Horde, nil, false, nil, nil)));
    tmpCategories[213] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(499))); -- Unga Ingoo
    tmpCategories[192]:AddCategory(tmpCategories[213]);
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7231, nil, nil, nil, nil, nil)));
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7232, nil, nil, nil, nil, nil)));
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7239, nil, nil, nil, nil, nil)));
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7248, nil, nil, nil, nil, nil)));
    tmpCategories[213]:AddAchievement(InsertAndReturn(achievements, achievement:New(7249, nil, nil, nil, nil, nil)));
    tmpCategories[214] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(593))); -- Assault on Zan'vess
    tmpCategories[192]:AddCategory(tmpCategories[214]);
    tmpCategories[214]:AddAchievement(InsertAndReturn(achievements, achievement:New(8017, nil, nil, nil, nil, nil)));
    tmpCategories[214]:AddAchievement(InsertAndReturn(achievements, achievement:New(8016, nil, nil, nil, nil, nil)));
    tmpCategories[215] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(616))); -- Dagger in the Dark
    tmpCategories[192]:AddCategory(tmpCategories[215]);
    tmpCategories[215]:AddAchievement(InsertAndReturn(achievements, achievement:New(7984, nil, nil, nil, nil, nil)));
    tmpCategories[215]:AddAchievement(InsertAndReturn(achievements, achievement:New(7987, nil, nil, nil, nil, nil)));
    tmpCategories[215]:AddAchievement(InsertAndReturn(achievements, achievement:New(7986, nil, nil, nil, nil, nil)));
    tmpCategories[215]:AddAchievement(InsertAndReturn(achievements, achievement:New(8009, nil, nil, nil, nil, nil)));
    tmpCategories[216] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(590))); -- Lion's Landing
    tmpCategories[192]:AddCategory(tmpCategories[216]);
    tmpCategories[216]:AddAchievement(InsertAndReturn(achievements, achievement:New(8011, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[216]:AddAchievement(InsertAndReturn(achievements, achievement:New(8012, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[216]:AddAchievement(InsertAndReturn(achievements, achievement:New(8010, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[218] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(595))); -- Domination Point
    tmpCategories[192]:AddCategory(tmpCategories[218]);
    tmpCategories[218]:AddAchievement(InsertAndReturn(achievements, achievement:New(8014, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[218]:AddAchievement(InsertAndReturn(achievements, achievement:New(8015, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[218]:AddAchievement(InsertAndReturn(achievements, achievement:New(8013, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[219] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(655))); -- Battle on the High Seas
    tmpCategories[192]:AddCategory(tmpCategories[219]);
    tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8347, nil, nil, nil, nil, nil)));
    tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8314, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8364, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8315, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[219]:AddAchievement(InsertAndReturn(achievements, achievement:New(8366, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[220] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(646))); -- Blood in the Snow
    tmpCategories[192]:AddCategory(tmpCategories[220]);
    tmpCategories[220]:AddAchievement(InsertAndReturn(achievements, achievement:New(8329, nil, nil, nil, nil, nil)));
    tmpCategories[220]:AddAchievement(InsertAndReturn(achievements, achievement:New(8330, nil, nil, nil, nil, nil)));
    tmpCategories[220]:AddAchievement(InsertAndReturn(achievements, achievement:New(8316, nil, nil, nil, nil, nil)));
    tmpCategories[220]:AddAchievement(InsertAndReturn(achievements, achievement:New(8312, nil, nil, nil, nil, nil)));
    tmpCategories[221] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(647))); -- Dark Heart of Pandaria
    tmpCategories[192]:AddCategory(tmpCategories[221]);
    tmpCategories[221]:AddAchievement(InsertAndReturn(achievements, achievement:New(8319, nil, nil, nil, nil, nil)));
    tmpCategories[221]:AddAchievement(InsertAndReturn(achievements, achievement:New(8317, nil, nil, nil, nil, nil)));
    tmpCategories[221]:AddAchievement(InsertAndReturn(achievements, achievement:New(8318, nil, nil, nil, nil, nil)));
    tmpCategories[222] = InsertAndReturn(categories, achievementCategory:New(GetLFGDungeonInfo(649))); -- The Secrets of Ragefire
    tmpCategories[192]:AddCategory(tmpCategories[222]);
    tmpCategories[222]:AddAchievement(InsertAndReturn(achievements, achievement:New(8295, nil, nil, nil, nil, nil)));
    tmpCategories[222]:AddAchievement(InsertAndReturn(achievements, achievement:New(8294, nil, nil, nil, nil, nil)));
    tmpCategories[222]:AddAchievement(InsertAndReturn(achievements, achievement:New(8327, nil, nil, nil, nil, nil)));
    tmpCategories[223] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15233))); -- Warlords of Dreanor
    tmpCategories[224] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272))); -- Dungeons
    tmpCategories[223]:AddCategory(tmpCategories[224]);
    tmpCategories[224]:AddAchievement(InsertAndReturn(achievements, achievement:New(9391, nil, nil, nil, nil, nil)));
    tmpCategories[224]:AddAchievement(InsertAndReturn(achievements, achievement:New(9396, nil, nil, nil, nil, nil)));
    tmpCategories[226] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(385))); -- Bloodmaul Slag Mines
    tmpCategories[224]:AddCategory(tmpCategories[226]);
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9005, nil, nil, nil, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8993, nil, nil, nil, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9008, nil, nil, nil, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9037, nil, nil, nil, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9046, nil, nil, nil, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(10076, nil, nil, nil, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8875, nil, nil, false, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8876, nil, nil, false, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8877, nil, nil, false, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(8878, nil, nil, false, nil, nil)));
    tmpCategories[226]:AddAchievement(InsertAndReturn(achievements, achievement:New(9620, nil, nil, false, nil, nil)));
    tmpCategories[227] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(558))); -- Iron Docks
    tmpCategories[224]:AddCategory(tmpCategories[227]);
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9081, nil, nil, nil, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9083, nil, nil, nil, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9082, nil, nil, nil, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9038, nil, nil, nil, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9047, nil, nil, nil, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(10079, nil, nil, nil, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(8997, nil, nil, false, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(8998, nil, nil, false, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(8999, nil, nil, false, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9000, nil, nil, false, nil, nil)));
    tmpCategories[227]:AddAchievement(InsertAndReturn(achievements, achievement:New(9621, nil, nil, false, nil, nil)));
    tmpCategories[228] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(547))); -- Auchindoun
    tmpCategories[224]:AddCategory(tmpCategories[228]);
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9023, nil, nil, nil, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9551, nil, nil, nil, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9552, nil, nil, nil, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9039, nil, nil, nil, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9049, nil, nil, nil, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(10080, nil, nil, nil, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(8879, nil, nil, false, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(8880, nil, nil, false, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(8881, nil, nil, false, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(8882, nil, nil, false, nil, nil)));
    tmpCategories[228]:AddAchievement(InsertAndReturn(achievements, achievement:New(9622, nil, nil, false, nil, nil)));
    tmpCategories[229] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(476))); -- Skyreach
    tmpCategories[224]:AddCategory(tmpCategories[229]);
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9033, nil, nil, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9035, nil, nil, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9034, nil, nil, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9036, nil, nil, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8843, nil, nil, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8844, nil, nil, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(10081, nil, nil, nil, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8871, nil, nil, false, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8872, nil, nil, false, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8873, nil, nil, false, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(8874, nil, nil, false, nil, nil)));
    tmpCategories[229]:AddAchievement(InsertAndReturn(achievements, achievement:New(9623, nil, nil, false, nil, nil)));
    tmpCategories[230] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(536))); -- Grimrail Depot
    tmpCategories[224]:AddCategory(tmpCategories[230]);
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9024, nil, nil, nil, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9007, nil, nil, nil, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9043, nil, nil, nil, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9052, nil, nil, nil, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(10082, nil, nil, nil, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(8887, nil, nil, false, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(8888, nil, nil, false, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(8889, nil, nil, false, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(8890, nil, nil, false, nil, nil)));
    tmpCategories[230]:AddAchievement(InsertAndReturn(achievements, achievement:New(9625, nil, nil, false, nil, nil)));
    tmpCategories[231] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(556))); -- The Everbloom
    tmpCategories[224]:AddCategory(tmpCategories[231]);
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9017, nil, nil, nil, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9493, nil, nil, nil, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9223, nil, nil, nil, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9044, nil, nil, nil, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9053, nil, nil, nil, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(10083, nil, nil, nil, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9001, nil, nil, false, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9002, nil, nil, false, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9003, nil, nil, false, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9004, nil, nil, false, nil, nil)));
    tmpCategories[231]:AddAchievement(InsertAndReturn(achievements, achievement:New(9624, nil, nil, false, nil, nil)));
    tmpCategories[232] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(537))); -- Shadowmoon Burial Grounds
    tmpCategories[224]:AddCategory(tmpCategories[232]);
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9018, nil, nil, nil, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9025, nil, nil, nil, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9026, nil, nil, nil, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9041, nil, nil, nil, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9054, nil, nil, nil, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(10084, nil, nil, nil, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(8883, nil, nil, false, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(8884, nil, nil, false, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(8885, nil, nil, false, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(8886, nil, nil, false, nil, nil)));
    tmpCategories[232]:AddAchievement(InsertAndReturn(achievements, achievement:New(9626, nil, nil, false, nil, nil)));
    tmpCategories[233] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(559))); -- Upper Blackrock Spire
    tmpCategories[224]:AddCategory(tmpCategories[233]);
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9045, nil, nil, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9058, nil, nil, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9056, nil, nil, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9057, nil, nil, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9042, nil, nil, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9055, nil, nil, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(10085, nil, nil, nil, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(8891, nil, nil, false, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(8892, nil, nil, false, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(8893, nil, nil, false, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(8894, nil, nil, false, nil, nil)));
    tmpCategories[233]:AddAchievement(InsertAndReturn(achievements, achievement:New(9627, nil, nil, false, nil, nil)));
    tmpCategories[225] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271))); -- Raids
    tmpCategories[223]:AddCategory(tmpCategories[225]);
    tmpCategories[225]:AddAchievement(InsertAndReturn(achievements, achievement:New(8985, nil, nil, nil, nil, nil)));
    tmpCategories[225]:AddAchievement(InsertAndReturn(achievements, achievement:New(10149, nil, nil, nil, nil, nil)));
    tmpCategories[234] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(477))); -- Highmaul
    tmpCategories[225]:AddCategory(tmpCategories[234]);
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8948, nil, nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8947, nil, nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8974, nil, nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8975, nil, nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8958, nil, nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8976, nil, nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8977, nil, nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8949, nil, nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8960, nil, nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8961, nil, nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8962, nil, nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8963, nil, nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8964, nil, nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8965, nil, nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8986, nil, nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8987, nil, nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(8988, nil, nil, nil, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(9441, nil, nil, false, nil, nil)));
    tmpCategories[234]:AddAchievement(InsertAndReturn(achievements, achievement:New(9442, nil, nil, false, nil, nil)));
    tmpCategories[235] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(457))); -- Blackrock Foundry
    tmpCategories[225]:AddCategory(tmpCategories[235]);
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8979, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8978, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8930, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8980, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8929, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8983, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8981, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8982, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8984, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8952, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8967, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8966, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8970, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8968, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8932, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8971, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8956, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8969, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8972, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8973, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8989, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8990, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8991, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(8992, nil, nil, nil, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(9444, nil, nil, false, nil, nil)));
    tmpCategories[235]:AddAchievement(InsertAndReturn(achievements, achievement:New(9443, nil, nil, false, nil, nil)));
    tmpCategories[236] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(669))); -- Hellfire Citadel
    tmpCategories[225]:AddCategory(tmpCategories[236]);
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10026, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10057, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10013, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10054, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9972, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9979, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9988, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10086, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9989, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10012, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10087, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10030, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10073, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10027, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10032, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10033, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10034, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10035, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10253, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10037, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10040, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10041, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10038, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10039, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10042, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10043, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10023, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10024, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10025, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10020, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10019, nil, nil, nil, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(9680, nil, nil, false, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10044, nil, nil, false, nil, nil)));
    tmpCategories[236]:AddAchievement(InsertAndReturn(achievements, achievement:New(10045, nil, nil, false, nil, nil)));
    tmpCategories[237] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15258))); -- Legion
    tmpCategories[381] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[237]:AddCategory(tmpCategories[381]);
    tmpCategories[396] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(619).name)); -- Broken Isles
    tmpCategories[381]:AddCategory(tmpCategories[396]);
    tmpCategories[397] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[396]:AddCategory(tmpCategories[397]);
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11157, nil, nil, nil, nil, nil)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(10877, nil, nil, nil, nil, nil)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11189, nil, nil, nil, nil, nil)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11427, nil, nil, nil, nil, nil)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11186, nil, nil, nil, nil, nil)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11240, nil, nil, nil, nil, nil)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11544, nil, nil, nil, nil, nil)));
    tmpCategories[397]:AddAchievement(InsertAndReturn(achievements, achievement:New(11846, nil, nil, nil, nil, nil)));
    tmpCategories[398] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[396]:AddCategory(tmpCategories[398]);
    tmpCategories[398]:AddAchievement(InsertAndReturn(achievements, achievement:New(11190, nil, nil, nil, nil, nil)));
    tmpCategories[398]:AddAchievement(InsertAndReturn(achievements, achievement:New(11446, nil, nil, nil, nil, nil)));
    tmpCategories[398]:AddAchievement(InsertAndReturn(achievements, achievement:New(14729, nil, nil, nil, nil, nil)));
    tmpCategories[413] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270))); -- PvP
    tmpCategories[396]:AddCategory(tmpCategories[413]);
    tmpCategories[413]:AddAchievement(InsertAndReturn(achievements, achievement:New(11474, nil, nil, nil, nil, nil)));
    tmpCategories[414] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[396]:AddCategory(tmpCategories[414]);
    tmpCategories[414]:AddAchievement(InsertAndReturn(achievements, achievement:New(10672, nil, nil, nil, nil, nil)));
    tmpCategories[414]:AddAchievement(InsertAndReturn(achievements, achievement:New(11159, nil, nil, nil, nil, nil)));
    tmpCategories[414]:AddAchievement(InsertAndReturn(achievements, achievement:New(11652, nil, nil, nil, nil, nil)));
    tmpCategories[414]:AddAchievement(InsertAndReturn(achievements, achievement:New(11653, nil, nil, nil, nil, nil)));
    tmpCategories[414]:AddAchievement(InsertAndReturn(achievements, achievement:New(11941, nil, nil, nil, nil, nil)));
    tmpCategories[382] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(626).name)); -- Dalaran
    tmpCategories[381]:AddCategory(tmpCategories[382]);
    tmpCategories[383] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[382]:AddCategory(tmpCategories[383]);
    tmpCategories[383]:AddAchievement(InsertAndReturn(achievements, achievement:New(12416, nil, nil, nil, nil, nil)));
    tmpCategories[383]:AddAchievement(InsertAndReturn(achievements, achievement:New(12431, nil, nil, nil, nil, nil)));
    tmpCategories[383]:AddAchievement(InsertAndReturn(achievements, achievement:New(12439, nil, nil, nil, nil, nil)));
    tmpCategories[405] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[382]:AddCategory(tmpCategories[405]);
    tmpCategories[405]:AddAchievement(InsertAndReturn(achievements, achievement:New(11066, nil, nil, nil, nil, nil)));
    tmpCategories[384] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(630).name)); -- Azsuna
    tmpCategories[381]:AddCategory(tmpCategories[384]);
    tmpCategories[385] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[384]:AddCategory(tmpCategories[385]);
    tmpCategories[385]:AddAchievement(InsertAndReturn(achievements, achievement:New(10763, nil, nil, nil, nil, nil)));
    tmpCategories[399] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[384]:AddCategory(tmpCategories[399]);
    tmpCategories[399]:AddAchievement(InsertAndReturn(achievements, achievement:New(10665, nil, nil, nil, nil, nil)));
    tmpCategories[399]:AddAchievement(InsertAndReturn(achievements, achievement:New(11175, nil, nil, nil, nil, nil)));
    tmpCategories[399]:AddAchievement(InsertAndReturn(achievements, achievement:New(11256, nil, nil, nil, nil, nil)));
    tmpCategories[399]:AddAchievement(InsertAndReturn(achievements, achievement:New(11261, nil, nil, nil, nil, nil)));
    tmpCategories[412] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270))); -- PvP
    tmpCategories[384]:AddCategory(tmpCategories[412]);
    tmpCategories[412]:AddAchievement(InsertAndReturn(achievements, achievement:New(11475, nil, nil, nil, nil, nil)));
    tmpCategories[387] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(641).name)); -- Val'sharah
    tmpCategories[381]:AddCategory(tmpCategories[387]);
    tmpCategories[391] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[387]:AddCategory(tmpCategories[391]);
    tmpCategories[391]:AddAchievement(InsertAndReturn(achievements, achievement:New(10698, nil, nil, nil, nil, nil)));
    tmpCategories[400] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[387]:AddCategory(tmpCategories[400]);
    tmpCategories[400]:AddAchievement(InsertAndReturn(achievements, achievement:New(10666, nil, nil, nil, nil, nil)));
    tmpCategories[400]:AddAchievement(InsertAndReturn(achievements, achievement:New(11258, nil, nil, nil, nil, nil)));
    tmpCategories[400]:AddAchievement(InsertAndReturn(achievements, achievement:New(11262, nil, nil, nil, nil, nil)));
    tmpCategories[411] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270))); -- PvP
    tmpCategories[387]:AddCategory(tmpCategories[411]);
    tmpCategories[411]:AddAchievement(InsertAndReturn(achievements, achievement:New(11477, nil, nil, nil, nil, nil)));
    tmpCategories[388] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(650).name)); -- Highmountain
    tmpCategories[381]:AddCategory(tmpCategories[388]);
    tmpCategories[392] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[388]:AddCategory(tmpCategories[392]);
    tmpCategories[392]:AddAchievement(InsertAndReturn(achievements, achievement:New(10059, nil, nil, nil, nil, nil)));
    tmpCategories[392]:AddAchievement(InsertAndReturn(achievements, achievement:New(10774, nil, nil, nil, nil, nil)));
    tmpCategories[392]:AddAchievement(InsertAndReturn(achievements, achievement:New(10626, nil, nil, nil, nil, nil)));
    tmpCategories[392]:AddAchievement(InsertAndReturn(achievements, achievement:New(10398, nil, nil, nil, nil, nil)));
    tmpCategories[401] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[388]:AddCategory(tmpCategories[401]);
    tmpCategories[401]:AddAchievement(InsertAndReturn(achievements, achievement:New(10667, nil, nil, nil, nil, nil)));
    tmpCategories[401]:AddAchievement(InsertAndReturn(achievements, achievement:New(11257, nil, nil, nil, nil, nil)));
    tmpCategories[401]:AddAchievement(InsertAndReturn(achievements, achievement:New(11264, nil, nil, nil, nil, nil)));
    tmpCategories[410] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270))); -- PvP
    tmpCategories[388]:AddCategory(tmpCategories[410]);
    tmpCategories[410]:AddAchievement(InsertAndReturn(achievements, achievement:New(11478, nil, nil, nil, nil, nil)));
    tmpCategories[416] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[388]:AddCategory(tmpCategories[416]);
    tmpCategories[416]:AddAchievement(InsertAndReturn(achievements, achievement:New(12292, nil, nil, nil, nil, nil)));
    tmpCategories[386] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(634).name)); -- Stormheim
    tmpCategories[381]:AddCategory(tmpCategories[386]);
    tmpCategories[390] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[386]:AddCategory(tmpCategories[390]);
    tmpCategories[390]:AddAchievement(InsertAndReturn(achievements, achievement:New(10790, nil, nil, nil, nil, nil)));
    tmpCategories[390]:AddAchievement(InsertAndReturn(achievements, achievement:New(10793, nil, nil, nil, nil, nil)));
    tmpCategories[390]:AddAchievement(InsertAndReturn(achievements, achievement:New(11232, nil, nil, nil, nil, nil)));
    tmpCategories[402] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[386]:AddCategory(tmpCategories[402]);
    tmpCategories[402]:AddAchievement(InsertAndReturn(achievements, achievement:New(10668, nil, nil, nil, nil, nil)));
    tmpCategories[402]:AddAchievement(InsertAndReturn(achievements, achievement:New(10627, nil, nil, nil, nil, nil)));
    tmpCategories[402]:AddAchievement(InsertAndReturn(achievements, achievement:New(11259, nil, nil, nil, nil, nil)));
    tmpCategories[402]:AddAchievement(InsertAndReturn(achievements, achievement:New(11263, nil, nil, nil, nil, nil)));
    tmpCategories[402]:AddAchievement(InsertAndReturn(achievements, achievement:New(11178, nil, nil, nil, nil, nil)));
    tmpCategories[409] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270))); -- PvP
    tmpCategories[386]:AddCategory(tmpCategories[409]);
    tmpCategories[409]:AddAchievement(InsertAndReturn(achievements, achievement:New(11476, nil, nil, nil, nil, nil)));
    tmpCategories[389] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(680).name)); -- Suramar
    tmpCategories[381]:AddCategory(tmpCategories[389]);
    tmpCategories[393] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[389]:AddCategory(tmpCategories[393]);
    tmpCategories[393]:AddAchievement(InsertAndReturn(achievements, achievement:New(10617, nil, nil, nil, nil, nil)));
    tmpCategories[393]:AddAchievement(InsertAndReturn(achievements, achievement:New(11124, nil, nil, nil, nil, nil)));
    tmpCategories[393]:AddAchievement(InsertAndReturn(achievements, achievement:New(10756, nil, nil, nil, nil, nil)));
    tmpCategories[393]:AddAchievement(InsertAndReturn(achievements, achievement:New(11125, nil, nil, nil, nil, nil)));
    tmpCategories[393]:AddAchievement(InsertAndReturn(achievements, achievement:New(11133, nil, nil, nil, nil, nil)));
    tmpCategories[393]:AddAchievement(InsertAndReturn(achievements, achievement:New(11340, nil, nil, nil, nil, nil)));
    tmpCategories[403] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[389]:AddCategory(tmpCategories[403]);
    tmpCategories[403]:AddAchievement(InsertAndReturn(achievements, achievement:New(10669, nil, nil, nil, nil, nil)));
    tmpCategories[403]:AddAchievement(InsertAndReturn(achievements, achievement:New(11260, nil, nil, nil, nil, nil)));
    tmpCategories[403]:AddAchievement(InsertAndReturn(achievements, achievement:New(11265, nil, nil, nil, nil, nil)));
    tmpCategories[415] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[389]:AddCategory(tmpCategories[415]);
    tmpCategories[415]:AddAchievement(InsertAndReturn(achievements, achievement:New(10778, nil, nil, nil, nil, nil)));
    tmpCategories[394] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(646).name)); -- Broken Shore
    tmpCategories[381]:AddCategory(tmpCategories[394]);
    tmpCategories[395] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[394]:AddCategory(tmpCategories[395]);
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11607, nil, nil, nil, nil, nil)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11546, nil, nil, nil, nil, nil)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11681, nil, nil, nil, nil, nil)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11731, nil, nil, nil, nil, nil)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11732, nil, nil, nil, nil, nil)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11735, nil, nil, nil, nil, nil)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11736, nil, nil, nil, nil, nil)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11737, nil, nil, nil, nil, nil)));
    tmpCategories[395]:AddAchievement(InsertAndReturn(achievements, achievement:New(11738, nil, nil, nil, nil, nil)));
    tmpCategories[404] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[394]:AddCategory(tmpCategories[404]);
    tmpCategories[404]:AddAchievement(InsertAndReturn(achievements, achievement:New(11543, nil, nil, nil, nil, nil)));
    tmpCategories[404]:AddAchievement(InsertAndReturn(achievements, achievement:New(11802, nil, nil, nil, nil, nil)));
    tmpCategories[404]:AddAchievement(InsertAndReturn(achievements, achievement:New(11841, nil, nil, nil, nil, nil)));
    tmpCategories[417] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[394]:AddCategory(tmpCategories[417]);
    tmpCategories[417]:AddAchievement(InsertAndReturn(achievements, achievement:New(11545, nil, nil, nil, nil, nil)));
    tmpCategories[417]:AddAchievement(InsertAndReturn(achievements, achievement:New(11796, nil, nil, nil, nil, nil)));
    tmpCategories[406] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(905).name)); -- Argus
    tmpCategories[381]:AddCategory(tmpCategories[406]);
    tmpCategories[407] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[406]:AddCategory(tmpCategories[407]);
    tmpCategories[407]:AddAchievement(InsertAndReturn(achievements, achievement:New(12066, nil, nil, nil, nil, nil)));
    tmpCategories[407]:AddAchievement(InsertAndReturn(achievements, achievement:New(12073, nil, nil, nil, nil, nil)));
    tmpCategories[408] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[406]:AddCategory(tmpCategories[408]);
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12074, nil, nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12084, nil, nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12028, nil, nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12026, nil, nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12069, nil, nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12077, nil, nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12078, nil, nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12083, nil, nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12101, nil, nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12102, nil, nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12103, nil, nil, nil, nil, nil)));
    tmpCategories[408]:AddAchievement(InsertAndReturn(achievements, achievement:New(12104, nil, nil, nil, nil, nil)));
    tmpCategories[418] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[406]:AddCategory(tmpCategories[418]);
    tmpCategories[418]:AddAchievement(InsertAndReturn(achievements, achievement:New(12076, nil, nil, nil, nil, nil)));
    tmpCategories[418]:AddAchievement(InsertAndReturn(achievements, achievement:New(12081, nil, nil, nil, nil, nil)));
    tmpCategories[238] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272))); -- Dungeons
    tmpCategories[237]:AddCategory(tmpCategories[238]);
    tmpCategories[238]:AddAchievement(InsertAndReturn(achievements, achievement:New(11164, nil, nil, nil, nil, nil)));
    tmpCategories[238]:AddAchievement(InsertAndReturn(achievements, achievement:New(11163, nil, nil, nil, nil, nil)));
    tmpCategories[240] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(716))); -- Eye of Azshara
    tmpCategories[238]:AddCategory(tmpCategories[240]);
    tmpCategories[240]:AddAchievement(InsertAndReturn(achievements, achievement:New(10456, nil, nil, nil, nil, nil)));
    tmpCategories[240]:AddAchievement(InsertAndReturn(achievements, achievement:New(10457, nil, nil, nil, nil, nil)));
    tmpCategories[240]:AddAchievement(InsertAndReturn(achievements, achievement:New(10458, nil, nil, nil, nil, nil)));
    tmpCategories[240]:AddAchievement(InsertAndReturn(achievements, achievement:New(10780, nil, nil, nil, nil, nil)));
    tmpCategories[240]:AddAchievement(InsertAndReturn(achievements, achievement:New(10781, nil, nil, nil, nil, nil)));
    tmpCategories[240]:AddAchievement(InsertAndReturn(achievements, achievement:New(10782, nil, nil, nil, nil, nil)));
    tmpCategories[241] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(762))); -- Darkheart Thicket
    tmpCategories[238]:AddCategory(tmpCategories[241]);
    tmpCategories[241]:AddAchievement(InsertAndReturn(achievements, achievement:New(10766, nil, nil, nil, nil, nil)));
    tmpCategories[241]:AddAchievement(InsertAndReturn(achievements, achievement:New(10769, nil, nil, nil, nil, nil)));
    tmpCategories[241]:AddAchievement(InsertAndReturn(achievements, achievement:New(10783, nil, nil, nil, nil, nil)));
    tmpCategories[241]:AddAchievement(InsertAndReturn(achievements, achievement:New(10784, nil, nil, nil, nil, nil)));
    tmpCategories[241]:AddAchievement(InsertAndReturn(achievements, achievement:New(10785, nil, nil, nil, nil, nil)));
    tmpCategories[242] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(721))); -- Halls of Valor
    tmpCategories[238]:AddCategory(tmpCategories[242]);
    tmpCategories[242]:AddAchievement(InsertAndReturn(achievements, achievement:New(10544, nil, nil, nil, nil, nil)));
    tmpCategories[242]:AddAchievement(InsertAndReturn(achievements, achievement:New(10542, nil, nil, nil, nil, nil)));
    tmpCategories[242]:AddAchievement(InsertAndReturn(achievements, achievement:New(10543, nil, nil, nil, nil, nil)));
    tmpCategories[242]:AddAchievement(InsertAndReturn(achievements, achievement:New(10786, nil, nil, nil, nil, nil)));
    tmpCategories[242]:AddAchievement(InsertAndReturn(achievements, achievement:New(10788, nil, nil, nil, nil, nil)));
    tmpCategories[242]:AddAchievement(InsertAndReturn(achievements, achievement:New(10789, nil, nil, nil, nil, nil)));
    tmpCategories[243] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(767))); -- Neltharions Lair
    tmpCategories[238]:AddCategory(tmpCategories[243]);
    tmpCategories[243]:AddAchievement(InsertAndReturn(achievements, achievement:New(10996, nil, nil, nil, nil, nil)));
    tmpCategories[243]:AddAchievement(InsertAndReturn(achievements, achievement:New(10875, nil, nil, nil, nil, nil)));
    tmpCategories[243]:AddAchievement(InsertAndReturn(achievements, achievement:New(10795, nil, nil, nil, nil, nil)));
    tmpCategories[243]:AddAchievement(InsertAndReturn(achievements, achievement:New(10796, nil, nil, nil, nil, nil)));
    tmpCategories[243]:AddAchievement(InsertAndReturn(achievements, achievement:New(10797, nil, nil, nil, nil, nil)));
    tmpCategories[244] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(777))); -- Assault on Violet Hold
    tmpCategories[238]:AddCategory(tmpCategories[244]);
    tmpCategories[244]:AddAchievement(InsertAndReturn(achievements, achievement:New(10554, nil, nil, nil, nil, nil)));
    tmpCategories[244]:AddAchievement(InsertAndReturn(achievements, achievement:New(10553, nil, nil, nil, nil, nil)));
    tmpCategories[244]:AddAchievement(InsertAndReturn(achievements, achievement:New(10798, nil, nil, nil, nil, nil)));
    tmpCategories[244]:AddAchievement(InsertAndReturn(achievements, achievement:New(10799, nil, nil, nil, nil, nil)));
    tmpCategories[244]:AddAchievement(InsertAndReturn(achievements, achievement:New(10800, nil, nil, nil, nil, nil)));
    tmpCategories[245] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(707))); -- Vault of the Wardens
    tmpCategories[238]:AddCategory(tmpCategories[245]);
    tmpCategories[245]:AddAchievement(InsertAndReturn(achievements, achievement:New(10679, nil, nil, nil, nil, nil)));
    tmpCategories[245]:AddAchievement(InsertAndReturn(achievements, achievement:New(10680, nil, nil, nil, nil, nil)));
    tmpCategories[245]:AddAchievement(InsertAndReturn(achievements, achievement:New(10707, nil, nil, nil, nil, nil)));
    tmpCategories[245]:AddAchievement(InsertAndReturn(achievements, achievement:New(10801, nil, nil, nil, nil, nil)));
    tmpCategories[245]:AddAchievement(InsertAndReturn(achievements, achievement:New(10802, nil, nil, nil, nil, nil)));
    tmpCategories[245]:AddAchievement(InsertAndReturn(achievements, achievement:New(10803, nil, nil, nil, nil, nil)));
    tmpCategories[246] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(740))); -- Black Rook Hold
    tmpCategories[238]:AddCategory(tmpCategories[246]);
    tmpCategories[246]:AddAchievement(InsertAndReturn(achievements, achievement:New(10710, nil, nil, nil, nil, nil)));
    tmpCategories[246]:AddAchievement(InsertAndReturn(achievements, achievement:New(10709, nil, nil, nil, nil, nil)));
    tmpCategories[246]:AddAchievement(InsertAndReturn(achievements, achievement:New(10711, nil, nil, nil, nil, nil)));
    tmpCategories[246]:AddAchievement(InsertAndReturn(achievements, achievement:New(10804, nil, nil, nil, nil, nil)));
    tmpCategories[246]:AddAchievement(InsertAndReturn(achievements, achievement:New(10805, nil, nil, nil, nil, nil)));
    tmpCategories[246]:AddAchievement(InsertAndReturn(achievements, achievement:New(10806, nil, nil, nil, nil, nil)));
    tmpCategories[247] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(727))); -- Maw of Souls
    tmpCategories[238]:AddCategory(tmpCategories[247]);
    tmpCategories[247]:AddAchievement(InsertAndReturn(achievements, achievement:New(10413, nil, nil, nil, nil, nil)));
    tmpCategories[247]:AddAchievement(InsertAndReturn(achievements, achievement:New(10411, nil, nil, nil, nil, nil)));
    tmpCategories[247]:AddAchievement(InsertAndReturn(achievements, achievement:New(10412, nil, nil, nil, nil, nil)));
    tmpCategories[247]:AddAchievement(InsertAndReturn(achievements, achievement:New(10807, nil, nil, nil, nil, nil)));
    tmpCategories[247]:AddAchievement(InsertAndReturn(achievements, achievement:New(10808, nil, nil, nil, nil, nil)));
    tmpCategories[247]:AddAchievement(InsertAndReturn(achievements, achievement:New(10809, nil, nil, nil, nil, nil)));
    tmpCategories[248] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(726))); -- The Arcway
    tmpCategories[238]:AddCategory(tmpCategories[248]);
    tmpCategories[248]:AddAchievement(InsertAndReturn(achievements, achievement:New(10773, nil, nil, nil, nil, nil)));
    tmpCategories[248]:AddAchievement(InsertAndReturn(achievements, achievement:New(10775, nil, nil, nil, nil, nil)));
    tmpCategories[248]:AddAchievement(InsertAndReturn(achievements, achievement:New(10776, nil, nil, nil, nil, nil)));
    tmpCategories[248]:AddAchievement(InsertAndReturn(achievements, achievement:New(10813, nil, nil, nil, nil, nil)));
    tmpCategories[249] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(800))); -- Court of Stars
    tmpCategories[238]:AddCategory(tmpCategories[249]);
    tmpCategories[249]:AddAchievement(InsertAndReturn(achievements, achievement:New(10610, nil, nil, nil, nil, nil)));
    tmpCategories[249]:AddAchievement(InsertAndReturn(achievements, achievement:New(10611, nil, nil, nil, nil, nil)));
    tmpCategories[249]:AddAchievement(InsertAndReturn(achievements, achievement:New(10816, nil, nil, nil, nil, nil)));
    tmpCategories[250] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(860))); -- Return to Karazhan
    tmpCategories[238]:AddCategory(tmpCategories[250]);
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11430, nil, nil, nil, nil, nil)));
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11335, nil, nil, nil, nil, nil)));
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11338, nil, nil, nil, nil, nil)));
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11432, nil, nil, nil, nil, nil)));
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11433, nil, nil, nil, nil, nil)));
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11929, nil, nil, nil, nil, nil)));
    tmpCategories[250]:AddAchievement(InsertAndReturn(achievements, achievement:New(11429, nil, nil, nil, nil, nil)));
    tmpCategories[251] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(900))); -- Cathedral of Eternal Night
    tmpCategories[238]:AddCategory(tmpCategories[251]);
    tmpCategories[251]:AddAchievement(InsertAndReturn(achievements, achievement:New(11768, nil, nil, nil, nil, nil)));
    tmpCategories[251]:AddAchievement(InsertAndReturn(achievements, achievement:New(11769, nil, nil, nil, nil, nil)));
    tmpCategories[251]:AddAchievement(InsertAndReturn(achievements, achievement:New(11703, nil, nil, nil, nil, nil)));
    tmpCategories[251]:AddAchievement(InsertAndReturn(achievements, achievement:New(11700, nil, nil, nil, nil, nil)));
    tmpCategories[251]:AddAchievement(InsertAndReturn(achievements, achievement:New(11701, nil, nil, nil, nil, nil)));
    tmpCategories[251]:AddAchievement(InsertAndReturn(achievements, achievement:New(11702, nil, nil, nil, nil, nil)));
    tmpCategories[252] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(945))); -- Seat of the Triumvirate
    tmpCategories[238]:AddCategory(tmpCategories[252]);
    tmpCategories[252]:AddAchievement(InsertAndReturn(achievements, achievement:New(12004, nil, nil, nil, nil, nil)));
    tmpCategories[252]:AddAchievement(InsertAndReturn(achievements, achievement:New(12005, nil, nil, nil, nil, nil)));
    tmpCategories[252]:AddAchievement(InsertAndReturn(achievements, achievement:New(12009, nil, nil, nil, nil, nil)));
    tmpCategories[252]:AddAchievement(InsertAndReturn(achievements, achievement:New(12007, nil, nil, nil, nil, nil)));
    tmpCategories[252]:AddAchievement(InsertAndReturn(achievements, achievement:New(12008, nil, nil, nil, nil, nil)));
    tmpCategories[239] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271))); -- Raids
    tmpCategories[237]:AddCategory(tmpCategories[239]);
    tmpCategories[239]:AddAchievement(InsertAndReturn(achievements, achievement:New(11180, nil, nil, nil, nil, nil)));
    tmpCategories[239]:AddAchievement(InsertAndReturn(achievements, achievement:New(11763, nil, nil, nil, nil, nil)));
    tmpCategories[239]:AddAchievement(InsertAndReturn(achievements, achievement:New(11987, nil, nil, nil, nil, nil)));
    tmpCategories[253] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(768))); -- The Emerald Nightmare
    tmpCategories[239]:AddCategory(tmpCategories[253]);
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10555, nil, nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10830, nil, nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10771, nil, nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10753, nil, nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10663, nil, nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10772, nil, nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10755, nil, nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10821, nil, nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10823, nil, nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10822, nil, nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10824, nil, nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10825, nil, nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10826, nil, nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10827, nil, nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10818, nil, nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10819, nil, nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(10820, nil, nil, nil, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(11194, nil, nil, false, nil, nil)));
    tmpCategories[253]:AddAchievement(InsertAndReturn(achievements, achievement:New(11191, nil, nil, false, nil, nil)));
    tmpCategories[254] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(786))); -- The Nighthold
    tmpCategories[239]:AddCategory(tmpCategories[254]);
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10678, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10697, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10742, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10817, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10851, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10754, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10575, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10704, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10699, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10696, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10840, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10842, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10843, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10844, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10845, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10846, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10848, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10847, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10849, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10850, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10829, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10837, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10838, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(10839, nil, nil, nil, nil, nil)));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(13418, nil, nil, false, nil, tmpCategories[254])));
    tmpCategories[254]:AddAchievement(InsertAndReturn(achievements, achievement:New(13419, nil, nil, false, nil, tmpCategories[254])));
    tmpCategories[255] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(861))); -- Trial of Valor
    tmpCategories[239]:AddCategory(tmpCategories[255]);
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11337, nil, nil, nil, nil, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11386, nil, nil, nil, nil, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11377, nil, nil, nil, nil, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11396, nil, nil, nil, nil, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11397, nil, nil, nil, nil, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11398, nil, nil, nil, nil, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11394, nil, nil, nil, nil, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11426, nil, nil, nil, nil, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11387, nil, nil, false, nil, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11581, nil, nil, false, nil, nil)));
    tmpCategories[255]:AddAchievement(InsertAndReturn(achievements, achievement:New(11580, nil, nil, false, nil, nil)));
    tmpCategories[256] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(875))); -- Tomb of Sargeras
    tmpCategories[239]:AddCategory(tmpCategories[256]);
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11724, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11699, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11676, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11696, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11773, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11674, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11675, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11683, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11770, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11767, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11775, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11776, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11774, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11777, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11778, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11779, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11780, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11781, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11787, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11788, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11789, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11790, nil, nil, nil, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11874, nil, nil, false, nil, nil)));
    tmpCategories[256]:AddAchievement(InsertAndReturn(achievements, achievement:New(11875, nil, nil, false, nil, nil)));
    tmpCategories[257] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(946))); -- Antorus, the Burning Throne
    tmpCategories[239]:AddCategory(tmpCategories[257]);
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11930, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12065, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12129, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11928, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12067, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11949, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12030, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11948, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12046, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11915, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12257, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11992, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11993, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11994, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11995, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11996, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11997, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11998, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11999, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12000, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12001, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12002, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11988, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11990, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11989, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(11991, nil, nil, nil, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12110, nil, nil, false, nil, nil)));
    tmpCategories[257]:AddAchievement(InsertAndReturn(achievements, achievement:New(12111, nil, nil, false, nil, nil)));
    tmpCategories[430] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15117))); -- Pet Battles
    tmpCategories[237]:AddCategory(tmpCategories[430]);
    tmpCategories[429] = InsertAndReturn(categories, achievementCategory:New(addon.L["Class Hall"])); -- Class Hall
    tmpCategories[237]:AddCategory(tmpCategories[429]);
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10994, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11135, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11136, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10706, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11212, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11213, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11214, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11215, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11216, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11217, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11219, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11220, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11221, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11222, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11223, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11298, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10746, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10459, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10743, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10745, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10460, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10461, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10747, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10748, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11173, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10749, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10750, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11171, nil, nil, nil, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11611, nil, nil, false, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11612, nil, nil, false, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11144, nil, nil, false, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11772, nil, nil, false, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11609, nil, nil, false, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(11610, nil, nil, false, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10852, nil, nil, false, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(10853, nil, nil, false, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(12071, nil, nil, false, nil, nil)));
    tmpCategories[429]:AddAchievement(InsertAndReturn(achievements, achievement:New(12072, nil, nil, false, nil, nil)));
    tmpCategories[258] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15305))); -- Battle for Azeroth
    tmpCategories[259] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[258]:AddCategory(tmpCategories[259]);
    tmpCategories[271] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(876).name .. " & " .. C_Map.GetMapInfo(875).name)); -- Kul Tiras & Zandalar
    tmpCategories[259]:AddCategory(tmpCategories[271]);
    tmpCategories[272] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[271]:AddCategory(tmpCategories[272]);
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12582, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12997, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12593, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12891, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12555, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12479, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13294, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13512, nil, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13384, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12510, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13467, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13925, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(12509, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13466, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13924, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13517, nil, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13283, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13251, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13284, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13144, nil, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13060, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13048, nil, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(13263, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(14161, nil, nil, nil, nil, nil)));
    tmpCategories[272]:AddAchievement(InsertAndReturn(achievements, achievement:New(14157, nil, nil, nil, nil, nil)));
    tmpCategories[273] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[271]:AddCategory(tmpCategories[273]);
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(12989, nil, nil, nil, nil, nil)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(13250, nil, nil, nil, nil, nil)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(14160, nil, nil, nil, nil, nil)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(14159, nil, nil, nil, nil, nil)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(14158, nil, nil, nil, nil, nil)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(13061, nil, nil, nil, nil, nil)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(12482, nil, nil, nil, nil, nil)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(13036, nil, nil, nil, nil, nil)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(13029, nil, nil, nil, nil, nil)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(13027, nil, nil, nil, nil, nil)));
    tmpCategories[273]:AddAchievement(InsertAndReturn(achievements, achievement:New(14730, nil, nil, nil, nil, nil)));
    tmpCategories[274] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270))); -- PvP
    tmpCategories[271]:AddCategory(tmpCategories[274]);
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13429, nil, nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13317, nil, nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12572, nil, nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12571, nil, nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12573, nil, nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12605, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12604, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12856, nil, nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12857, nil, nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12858, nil, nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12860, nil, nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12863, nil, nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12859, nil, nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12861, nil, nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(12862, nil, nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13387, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13388, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13402, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13403, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[274]:AddAchievement(InsertAndReturn(achievements, achievement:New(13623, nil, nil, nil, nil, nil)));
    tmpCategories[275] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[271]:AddCategory(tmpCategories[275]);
    tmpCategories[275]:AddAchievement(InsertAndReturn(achievements, achievement:New(12947, nil, nil, nil, nil, nil)));
    tmpCategories[275]:AddAchievement(InsertAndReturn(achievements, achievement:New(12955, nil, nil, nil, nil, nil)));
    tmpCategories[275]:AddAchievement(InsertAndReturn(achievements, achievement:New(12956, nil, nil, nil, nil, nil)));
    tmpCategories[276] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(895).name)); -- Tiragarde Sound
    tmpCategories[259]:AddCategory(tmpCategories[276]);
    tmpCategories[281] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[276]:AddCategory(tmpCategories[281]);
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(12473, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(13059, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(13050, nil, nil, nil, nil, nil)));
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(13049, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(12087, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[281]:AddAchievement(InsertAndReturn(achievements, achievement:New(13285, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[278] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[276]:AddCategory(tmpCategories[278]);
    tmpCategories[278]:AddAchievement(InsertAndReturn(achievements, achievement:New(12556, nil, nil, nil, nil, nil)));
    tmpCategories[278]:AddAchievement(InsertAndReturn(achievements, achievement:New(12939, nil, nil, nil, nil, nil)));
    tmpCategories[278]:AddAchievement(InsertAndReturn(achievements, achievement:New(12852, nil, nil, nil, nil, nil)));
    tmpCategories[278]:AddAchievement(InsertAndReturn(achievements, achievement:New(13057, nil, nil, nil, nil, nil)));
    tmpCategories[278]:AddAchievement(InsertAndReturn(achievements, achievement:New(13058, nil, nil, nil, nil, nil)));
    tmpCategories[279] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270))); -- PvP
    tmpCategories[276]:AddCategory(tmpCategories[279]);
    tmpCategories[279]:AddAchievement(InsertAndReturn(achievements, achievement:New(12577, nil, nil, nil, nil, nil)));
    tmpCategories[280] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[276]:AddCategory(tmpCategories[280]);
    tmpCategories[280]:AddAchievement(InsertAndReturn(achievements, achievement:New(12951, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[280]:AddAchievement(InsertAndReturn(achievements, achievement:New(12954, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[282] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(896).name)); -- Drustvar
    tmpCategories[259]:AddCategory(tmpCategories[282]);
    tmpCategories[283] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[282]:AddCategory(tmpCategories[283]);
    tmpCategories[283]:AddAchievement(InsertAndReturn(achievements, achievement:New(12497, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[283]:AddAchievement(InsertAndReturn(achievements, achievement:New(13435, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[284] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[282]:AddCategory(tmpCategories[284]);
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(12557, nil, nil, nil, nil, nil)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(12941, nil, nil, nil, nil, nil)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(12995, nil, nil, nil, nil, nil)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(13087, nil, nil, nil, nil, nil)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(13083, nil, nil, nil, nil, nil)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(13082, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(13064, nil, nil, nil, nil, nil)));
    tmpCategories[284]:AddAchievement(InsertAndReturn(achievements, achievement:New(13094, nil, nil, nil, nil, nil)));
    tmpCategories[285] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270))); -- PvP
    tmpCategories[282]:AddCategory(tmpCategories[285]);
    tmpCategories[285]:AddAchievement(InsertAndReturn(achievements, achievement:New(12579, nil, nil, nil, nil, nil)));
    tmpCategories[286] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[282]:AddCategory(tmpCategories[286]);
    tmpCategories[286]:AddAchievement(InsertAndReturn(achievements, achievement:New(12952, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[287] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(942).name)); -- Stormsong Valley
    tmpCategories[259]:AddCategory(tmpCategories[287]);
    tmpCategories[288] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[287]:AddCategory(tmpCategories[288]);
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(12496, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13054, nil, nil, nil, nil, nil)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13053, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13047, nil, nil, nil, nil, nil)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13046, nil, nil, nil, nil, nil)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13045, nil, nil, nil, nil, nil)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13042, nil, nil, nil, nil, nil)));
    tmpCategories[288]:AddAchievement(InsertAndReturn(achievements, achievement:New(13062, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[289] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[287]:AddCategory(tmpCategories[289]);
    tmpCategories[289]:AddAchievement(InsertAndReturn(achievements, achievement:New(12558, nil, nil, nil, nil, nil)));
    tmpCategories[289]:AddAchievement(InsertAndReturn(achievements, achievement:New(12940, nil, nil, nil, nil, nil)));
    tmpCategories[289]:AddAchievement(InsertAndReturn(achievements, achievement:New(12853, nil, nil, nil, nil, nil)));
    tmpCategories[289]:AddAchievement(InsertAndReturn(achievements, achievement:New(13051, nil, nil, nil, nil, nil)));
    tmpCategories[290] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270))); -- PvP
    tmpCategories[287]:AddCategory(tmpCategories[290]);
    tmpCategories[290]:AddAchievement(InsertAndReturn(achievements, achievement:New(12578, nil, nil, nil, nil, nil)));
    tmpCategories[291] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[287]:AddCategory(tmpCategories[291]);
    tmpCategories[291]:AddAchievement(InsertAndReturn(achievements, achievement:New(12953, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[292] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(862).name)); -- Zuldazar
    tmpCategories[259]:AddCategory(tmpCategories[292]);
    tmpCategories[293] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[292]:AddCategory(tmpCategories[293]);
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13440, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(11861, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(12480, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(12481, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13441, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13039, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13038, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13037, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(12719, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13020, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(12614, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13030, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13573, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13542, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[293]:AddAchievement(InsertAndReturn(achievements, achievement:New(13035, nil, nil, nil, nil, nil)));
    tmpCategories[294] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[292]:AddCategory(tmpCategories[294]);
    tmpCategories[294]:AddAchievement(InsertAndReturn(achievements, achievement:New(12559, nil, nil, nil, nil, nil)));
    tmpCategories[294]:AddAchievement(InsertAndReturn(achievements, achievement:New(12944, nil, nil, nil, nil, nil)));
    tmpCategories[294]:AddAchievement(InsertAndReturn(achievements, achievement:New(12851, nil, nil, nil, nil, nil)));
    tmpCategories[295] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270))); -- PvP
    tmpCategories[292]:AddCategory(tmpCategories[295]);
    tmpCategories[295]:AddAchievement(InsertAndReturn(achievements, achievement:New(12575, nil, nil, nil, nil, nil)));
    tmpCategories[295]:AddAchievement(InsertAndReturn(achievements, achievement:New(13439, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[295]:AddAchievement(InsertAndReturn(achievements, achievement:New(13438, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[296] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[292]:AddCategory(tmpCategories[296]);
    tmpCategories[296]:AddAchievement(InsertAndReturn(achievements, achievement:New(12950, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[296]:AddAchievement(InsertAndReturn(achievements, achievement:New(12957, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[297] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(863).name)); -- Nazmir
    tmpCategories[259]:AddCategory(tmpCategories[297]);
    tmpCategories[298] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[297]:AddCategory(tmpCategories[298]);
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13426, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13026, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(11868, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13025, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13023, nil, nil, nil, nil, nil)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13022, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[298]:AddAchievement(InsertAndReturn(achievements, achievement:New(13021, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[299] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[297]:AddCategory(tmpCategories[299]);
    tmpCategories[299]:AddAchievement(InsertAndReturn(achievements, achievement:New(12561, nil, nil, nil, nil, nil)));
    tmpCategories[299]:AddAchievement(InsertAndReturn(achievements, achievement:New(12942, nil, nil, nil, nil, nil)));
    tmpCategories[299]:AddAchievement(InsertAndReturn(achievements, achievement:New(12771, nil, nil, nil, nil, nil)));
    tmpCategories[299]:AddAchievement(InsertAndReturn(achievements, achievement:New(12588, nil, nil, nil, nil, nil)));
    tmpCategories[299]:AddAchievement(InsertAndReturn(achievements, achievement:New(13024, nil, nil, nil, nil, nil)));
    tmpCategories[299]:AddAchievement(InsertAndReturn(achievements, achievement:New(13028, nil, nil, nil, nil, nil)));
    tmpCategories[300] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270))); -- PvP
    tmpCategories[297]:AddCategory(tmpCategories[300]);
    tmpCategories[300]:AddAchievement(InsertAndReturn(achievements, achievement:New(12574, nil, nil, nil, nil, nil)));
    tmpCategories[301] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[297]:AddCategory(tmpCategories[301]);
    tmpCategories[301]:AddAchievement(InsertAndReturn(achievements, achievement:New(12948, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[302] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(864).name)); -- Voldun
    tmpCategories[259]:AddCategory(tmpCategories[302]);
    tmpCategories[303] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[302]:AddCategory(tmpCategories[303]);
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(12478, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(13437, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(13009, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(13011, nil, nil, nil, nil, nil)));
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(13014, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(13041, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[303]:AddAchievement(InsertAndReturn(achievements, achievement:New(13017, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[304] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[302]:AddCategory(tmpCategories[304]);
    tmpCategories[304]:AddAchievement(InsertAndReturn(achievements, achievement:New(12560, nil, nil, nil, nil, nil)));
    tmpCategories[304]:AddAchievement(InsertAndReturn(achievements, achievement:New(12943, nil, nil, nil, nil, nil)));
    tmpCategories[304]:AddAchievement(InsertAndReturn(achievements, achievement:New(12849, nil, nil, nil, nil, nil)));
    tmpCategories[304]:AddAchievement(InsertAndReturn(achievements, achievement:New(13016, nil, nil, nil, nil, nil)));
    tmpCategories[304]:AddAchievement(InsertAndReturn(achievements, achievement:New(13018, nil, nil, nil, nil, nil)));
    tmpCategories[305] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270))); -- PvP
    tmpCategories[302]:AddCategory(tmpCategories[305]);
    tmpCategories[305]:AddAchievement(InsertAndReturn(achievements, achievement:New(12576, nil, nil, nil, nil, nil)));
    tmpCategories[306] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[302]:AddCategory(tmpCategories[306]);
    tmpCategories[306]:AddAchievement(InsertAndReturn(achievements, achievement:New(12949, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[307] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1462).name)); -- Mechagon Island
    tmpCategories[259]:AddCategory(tmpCategories[307]);
    tmpCategories[308] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[307]:AddCategory(tmpCategories[308]);
    tmpCategories[308]:AddAchievement(InsertAndReturn(achievements, achievement:New(13553, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[308]:AddAchievement(InsertAndReturn(achievements, achievement:New(13700, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[308]:AddAchievement(InsertAndReturn(achievements, achievement:New(13790, nil, nil, nil, nil, nil)));
    tmpCategories[308]:AddAchievement(InsertAndReturn(achievements, achievement:New(13791, nil, nil, nil, nil, nil)));
    tmpCategories[309] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[307]:AddCategory(tmpCategories[309]);
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13776, nil, nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13470, nil, nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13472, nil, nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13482, nil, nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13473, nil, nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13474, nil, nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13696, nil, nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13686, nil, nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13475, nil, nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13477, nil, nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13476, nil, nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13555, nil, nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13478, nil, nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13479, nil, nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13556, nil, nil, nil, nil, nil)));
    tmpCategories[309]:AddAchievement(InsertAndReturn(achievements, achievement:New(13541, nil, nil, nil, nil, nil)));
    tmpCategories[310] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270))); -- PvP
    tmpCategories[307]:AddCategory(tmpCategories[310]);
    tmpCategories[310]:AddAchievement(InsertAndReturn(achievements, achievement:New(13570, nil, nil, nil, nil, nil)));
    tmpCategories[311] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[307]:AddCategory(tmpCategories[311]);
    tmpCategories[311]:AddAchievement(InsertAndReturn(achievements, achievement:New(13557, nil, nil, nil, nil, nil)));
    tmpCategories[312] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1355).name)); -- Nazjatar
    tmpCategories[259]:AddCategory(tmpCategories[312]);
    tmpCategories[313] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[312]:AddCategory(tmpCategories[313]);
    tmpCategories[313]:AddAchievement(InsertAndReturn(achievements, achievement:New(13710, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[313]:AddAchievement(InsertAndReturn(achievements, achievement:New(13709, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[314] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[312]:AddCategory(tmpCategories[314]);
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13712, nil, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13635, nil, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13690, nil, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13691, nil, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13692, nil, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13743, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13753, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13758, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13744, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13754, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13759, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13745, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13755, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13760, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13704, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13762, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13746, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13749, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13750, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13747, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13751, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13756, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13748, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13752, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13757, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13645, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13761, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13711, nil, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13765, nil, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13549, nil, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13722, nil, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13699, nil, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13713, nil, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13707, nil, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13763, nil, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13764, nil, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13836, nil, nil, nil, nil, nil)));
    tmpCategories[314]:AddAchievement(InsertAndReturn(achievements, achievement:New(13638, nil, nil, nil, nil, nil)));
    tmpCategories[315] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270))); -- PvP
    tmpCategories[312]:AddCategory(tmpCategories[315]);
    tmpCategories[315]:AddAchievement(InsertAndReturn(achievements, achievement:New(13569, nil, nil, nil, nil, nil)));
    tmpCategories[315]:AddAchievement(InsertAndReturn(achievements, achievement:New(13568, nil, nil, nil, nil, nil)));
    tmpCategories[315]:AddAchievement(InsertAndReturn(achievements, achievement:New(13720, nil, nil, nil, nil, nil)));
    tmpCategories[316] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[312]:AddCategory(tmpCategories[316]);
    tmpCategories[316]:AddAchievement(InsertAndReturn(achievements, achievement:New(13558, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[316]:AddAchievement(InsertAndReturn(achievements, achievement:New(13559, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[317] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1530).name)); -- Vale of Eternal Blossoms
    tmpCategories[259]:AddCategory(tmpCategories[317]);
    tmpCategories[318] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[317]:AddCategory(tmpCategories[318]);
    tmpCategories[318]:AddAchievement(InsertAndReturn(achievements, achievement:New(14154, nil, nil, nil, nil, nil)));
    tmpCategories[321] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[317]:AddCategory(tmpCategories[321]);
    tmpCategories[321]:AddAchievement(InsertAndReturn(achievements, achievement:New(14156, nil, nil, nil, nil, nil)));
    tmpCategories[322] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1527).name)); -- Uldum
    tmpCategories[259]:AddCategory(tmpCategories[322]);
    tmpCategories[323] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[322]:AddCategory(tmpCategories[323]);
    tmpCategories[323]:AddAchievement(InsertAndReturn(achievements, achievement:New(14153, nil, nil, nil, nil, nil)));
    tmpCategories[324] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[322]:AddCategory(tmpCategories[324]);
    tmpCategories[324]:AddAchievement(InsertAndReturn(achievements, achievement:New(14155, nil, nil, nil, nil, nil)));
    tmpCategories[325] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272))); -- Dungeons
    tmpCategories[258]:AddCategory(tmpCategories[325]);
    tmpCategories[325]:AddAchievement(InsertAndReturn(achievements, achievement:New(12807, nil, nil, nil, nil, nil)));
    tmpCategories[325]:AddAchievement(InsertAndReturn(achievements, achievement:New(12812, nil, nil, nil, nil, nil)));
    tmpCategories[325]:AddAchievement(InsertAndReturn(achievements, achievement:New(13075, nil, nil, nil, nil, nil)));
    tmpCategories[327] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1001))); -- Freelhold
    tmpCategories[325]:AddCategory(tmpCategories[327]);
    tmpCategories[327]:AddAchievement(InsertAndReturn(achievements, achievement:New(12550, nil, nil, nil, nil, nil)));
    tmpCategories[327]:AddAchievement(InsertAndReturn(achievements, achievement:New(12548, nil, nil, nil, nil, nil)));
    tmpCategories[327]:AddAchievement(InsertAndReturn(achievements, achievement:New(12998, nil, nil, nil, nil, nil)));
    tmpCategories[327]:AddAchievement(InsertAndReturn(achievements, achievement:New(12831, nil, nil, nil, nil, nil)));
    tmpCategories[327]:AddAchievement(InsertAndReturn(achievements, achievement:New(12832, nil, nil, nil, nil, nil)));
    tmpCategories[327]:AddAchievement(InsertAndReturn(achievements, achievement:New(12833, nil, nil, nil, nil, nil)));
    tmpCategories[328] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1021))); -- Waycrest Manor
    tmpCategories[325]:AddCategory(tmpCategories[328]);
    tmpCategories[328]:AddAchievement(InsertAndReturn(achievements, achievement:New(12495, nil, nil, nil, nil, nil)));
    tmpCategories[328]:AddAchievement(InsertAndReturn(achievements, achievement:New(12490, nil, nil, nil, nil, nil)));
    tmpCategories[328]:AddAchievement(InsertAndReturn(achievements, achievement:New(12489, nil, nil, nil, nil, tmpCategories[328])));
    tmpCategories[328]:AddAchievement(InsertAndReturn(achievements, achievement:New(12483, nil, nil, nil, nil, nil)));
    tmpCategories[328]:AddAchievement(InsertAndReturn(achievements, achievement:New(12484, nil, nil, nil, nil, nil)));
    tmpCategories[328]:AddAchievement(InsertAndReturn(achievements, achievement:New(12488, nil, nil, nil, nil, nil)));
    tmpCategories[329] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1036))); -- Shrine of the Storm
    tmpCategories[325]:AddCategory(tmpCategories[329]);
    tmpCategories[329]:AddAchievement(InsertAndReturn(achievements, achievement:New(12600, nil, nil, nil, nil, nil)));
    tmpCategories[329]:AddAchievement(InsertAndReturn(achievements, achievement:New(12601, nil, nil, nil, nil, nil)));
    tmpCategories[329]:AddAchievement(InsertAndReturn(achievements, achievement:New(12602, nil, nil, nil, nil, nil)));
    tmpCategories[329]:AddAchievement(InsertAndReturn(achievements, achievement:New(12835, nil, nil, nil, nil, nil)));
    tmpCategories[329]:AddAchievement(InsertAndReturn(achievements, achievement:New(12837, nil, nil, nil, nil, nil)));
    tmpCategories[329]:AddAchievement(InsertAndReturn(achievements, achievement:New(12838, nil, nil, nil, nil, nil)));
    tmpCategories[330] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(968))); -- Atal'Dazar
    tmpCategories[325]:AddCategory(tmpCategories[330]);
    tmpCategories[330]:AddAchievement(InsertAndReturn(achievements, achievement:New(12270, nil, nil, nil, nil, nil)));
    tmpCategories[330]:AddAchievement(InsertAndReturn(achievements, achievement:New(12272, nil, nil, nil, nil, nil)));
    tmpCategories[330]:AddAchievement(InsertAndReturn(achievements, achievement:New(12273, nil, nil, nil, nil, nil)));
    tmpCategories[330]:AddAchievement(InsertAndReturn(achievements, achievement:New(12824, nil, nil, nil, nil, nil)));
    tmpCategories[330]:AddAchievement(InsertAndReturn(achievements, achievement:New(12825, nil, nil, nil, nil, nil)));
    tmpCategories[330]:AddAchievement(InsertAndReturn(achievements, achievement:New(12826, nil, nil, nil, nil, nil)));
    tmpCategories[331] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1022))); -- Underrot
    tmpCategories[325]:AddCategory(tmpCategories[331]);
    tmpCategories[331]:AddAchievement(InsertAndReturn(achievements, achievement:New(12498, nil, nil, nil, nil, nil)));
    tmpCategories[331]:AddAchievement(InsertAndReturn(achievements, achievement:New(12549, nil, nil, nil, nil, nil)));
    tmpCategories[331]:AddAchievement(InsertAndReturn(achievements, achievement:New(12499, nil, nil, nil, nil, nil)));
    tmpCategories[331]:AddAchievement(InsertAndReturn(achievements, achievement:New(12500, nil, nil, nil, nil, nil)));
    tmpCategories[331]:AddAchievement(InsertAndReturn(achievements, achievement:New(12501, nil, nil, nil, nil, nil)));
    tmpCategories[331]:AddAchievement(InsertAndReturn(achievements, achievement:New(12502, nil, nil, nil, nil, nil)));
    tmpCategories[332] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1030))); -- Temple of Sethraliss
    tmpCategories[325]:AddCategory(tmpCategories[332]);
    tmpCategories[332]:AddAchievement(InsertAndReturn(achievements, achievement:New(12507, nil, nil, nil, nil, nil)));
    tmpCategories[332]:AddAchievement(InsertAndReturn(achievements, achievement:New(12503, nil, nil, nil, nil, nil)));
    tmpCategories[332]:AddAchievement(InsertAndReturn(achievements, achievement:New(12508, nil, nil, nil, nil, nil)));
    tmpCategories[332]:AddAchievement(InsertAndReturn(achievements, achievement:New(12504, nil, nil, nil, nil, nil)));
    tmpCategories[332]:AddAchievement(InsertAndReturn(achievements, achievement:New(12505, nil, nil, nil, nil, nil)));
    tmpCategories[332]:AddAchievement(InsertAndReturn(achievements, achievement:New(12506, nil, nil, nil, nil, nil)));
    tmpCategories[333] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1002))); -- Tol Dagor
    tmpCategories[325]:AddCategory(tmpCategories[333]);
    tmpCategories[333]:AddAchievement(InsertAndReturn(achievements, achievement:New(12457, nil, nil, nil, nil, nil)));
    tmpCategories[333]:AddAchievement(InsertAndReturn(achievements, achievement:New(12462, nil, nil, nil, nil, nil)));
    tmpCategories[333]:AddAchievement(InsertAndReturn(achievements, achievement:New(12840, nil, nil, nil, nil, nil)));
    tmpCategories[333]:AddAchievement(InsertAndReturn(achievements, achievement:New(12841, nil, nil, nil, nil, nil)));
    tmpCategories[333]:AddAchievement(InsertAndReturn(achievements, achievement:New(12842, nil, nil, nil, nil, nil)));
    tmpCategories[334] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1012))); -- The MOTHERLODE!!
    tmpCategories[325]:AddCategory(tmpCategories[334]);
    tmpCategories[334]:AddAchievement(InsertAndReturn(achievements, achievement:New(12855, nil, nil, nil, nil, nil)));
    tmpCategories[334]:AddAchievement(InsertAndReturn(achievements, achievement:New(12854, nil, nil, nil, nil, nil)));
    tmpCategories[334]:AddAchievement(InsertAndReturn(achievements, achievement:New(12844, nil, nil, nil, nil, nil)));
    tmpCategories[334]:AddAchievement(InsertAndReturn(achievements, achievement:New(12845, nil, nil, nil, nil, nil)));
    tmpCategories[334]:AddAchievement(InsertAndReturn(achievements, achievement:New(12846, nil, nil, nil, nil, nil)));
    tmpCategories[335] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1023))); -- Siege of Boralus
    tmpCategories[325]:AddCategory(tmpCategories[335]);
    tmpCategories[335]:AddAchievement(InsertAndReturn(achievements, achievement:New(12727, nil, nil, nil, nil, nil)));
    tmpCategories[335]:AddAchievement(InsertAndReturn(achievements, achievement:New(12726, nil, nil, nil, nil, nil)));
    tmpCategories[335]:AddAchievement(InsertAndReturn(achievements, achievement:New(12489, nil, nil, nil, nil, tmpCategories[335])));
    tmpCategories[335]:AddAchievement(InsertAndReturn(achievements, achievement:New(12847, nil, nil, nil, nil, nil)));
    tmpCategories[336] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1041))); -- Kings' Rest
    tmpCategories[325]:AddCategory(tmpCategories[336]);
    tmpCategories[336]:AddAchievement(InsertAndReturn(achievements, achievement:New(12722, nil, nil, nil, nil, nil)));
    tmpCategories[336]:AddAchievement(InsertAndReturn(achievements, achievement:New(12721, nil, nil, nil, nil, nil)));
    tmpCategories[336]:AddAchievement(InsertAndReturn(achievements, achievement:New(12723, nil, nil, nil, nil, nil)));
    tmpCategories[336]:AddAchievement(InsertAndReturn(achievements, achievement:New(12848, nil, nil, nil, nil, nil)));
    tmpCategories[337] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1178))); -- Operation: Mechagon
    tmpCategories[325]:AddCategory(tmpCategories[337]);
    tmpCategories[337]:AddAchievement(InsertAndReturn(achievements, achievement:New(13706, nil, nil, nil, nil, nil)));
    tmpCategories[337]:AddAchievement(InsertAndReturn(achievements, achievement:New(13698, nil, nil, nil, nil, nil)));
    tmpCategories[337]:AddAchievement(InsertAndReturn(achievements, achievement:New(13723, nil, nil, nil, nil, nil)));
    tmpCategories[337]:AddAchievement(InsertAndReturn(achievements, achievement:New(13545, nil, nil, nil, nil, nil)));
    tmpCategories[337]:AddAchievement(InsertAndReturn(achievements, achievement:New(13624, nil, nil, nil, nil, nil)));
    tmpCategories[337]:AddAchievement(InsertAndReturn(achievements, achievement:New(13789, nil, nil, nil, nil, nil)));
    tmpCategories[326] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271))); -- Raids
    tmpCategories[258]:AddCategory(tmpCategories[326]);
    tmpCategories[326]:AddAchievement(InsertAndReturn(achievements, achievement:New(12806, nil, nil, nil, nil, nil)));
    tmpCategories[326]:AddAchievement(InsertAndReturn(achievements, achievement:New(13315, nil, nil, nil, nil, nil)));
    tmpCategories[326]:AddAchievement(InsertAndReturn(achievements, achievement:New(13687, nil, nil, nil, nil, nil)));
    tmpCategories[326]:AddAchievement(InsertAndReturn(achievements, achievement:New(14146, nil, nil, nil, nil, nil)));
    tmpCategories[338] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1031))); -- Uldir
    tmpCategories[326]:AddCategory(tmpCategories[338]);
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12937, nil, nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12938, nil, nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12828, nil, nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12823, nil, nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12772, nil, nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12830, nil, nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12836, nil, nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12551, nil, nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12521, nil, nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12522, nil, nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12523, nil, nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12524, nil, nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12526, nil, nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12527, nil, nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12530, nil, nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12529, nil, nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12531, nil, nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12532, nil, nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12533, nil, nil, nil, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12536, nil, nil, false, nil, nil)));
    tmpCategories[338]:AddAchievement(InsertAndReturn(achievements, achievement:New(12535, nil, nil, false, nil, nil)));
    tmpCategories[339] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1176))); -- Battle of Dazar'alor
    tmpCategories[326]:AddCategory(tmpCategories[339]);
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13316, nil, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13431, nil, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13383, nil, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13345, nil, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13325, nil, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13425, nil, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13401, nil, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13430, nil, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13410, nil, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13286, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13289, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13287, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13290, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13288, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13291, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13292, nil, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13298, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13293, nil, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13295, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13299, nil, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13300, nil, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13311, nil, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13312, nil, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13313, nil, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13314, nil, nil, nil, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13322, nil, nil, false, nil, nil)));
    tmpCategories[339]:AddAchievement(InsertAndReturn(achievements, achievement:New(13323, nil, nil, false, nil, nil)));
    tmpCategories[340] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1177))); -- Crucible of Storms
    tmpCategories[326]:AddCategory(tmpCategories[340]);
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13501, nil, nil, nil, nil, nil)));
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13506, nil, nil, nil, nil, nil)));
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13414, nil, nil, nil, nil, nil)));
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13416, nil, nil, nil, nil, nil)));
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13417, nil, nil, nil, nil, nil)));
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13418, nil, nil, false, nil, tmpCategories[340])));
    tmpCategories[340]:AddAchievement(InsertAndReturn(achievements, achievement:New(13419, nil, nil, false, nil, tmpCategories[340])));
    tmpCategories[341] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1179))); -- Eternal Palace
    tmpCategories[326]:AddCategory(tmpCategories[341]);
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13684, nil, nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13628, nil, nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13767, nil, nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13629, nil, nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13724, nil, nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13633, nil, nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13716, nil, nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13768, nil, nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13718, nil, nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13719, nil, nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13725, nil, nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13726, nil, nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13728, nil, nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13727, nil, nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13729, nil, nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13730, nil, nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13731, nil, nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13732, nil, nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13733, nil, nil, nil, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13784, nil, nil, false, nil, nil)));
    tmpCategories[341]:AddAchievement(InsertAndReturn(achievements, achievement:New(13785, nil, nil, false, nil, nil)));
    tmpCategories[342] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1180))); -- Ny'alotha, the Waking City
    tmpCategories[326]:AddCategory(tmpCategories[342]);
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14019, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14008, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14037, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14024, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14139, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14023, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(13999, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(13990, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14026, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14038, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14147, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14148, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14193, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14194, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14195, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14196, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14041, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14043, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14044, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14045, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14050, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14046, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14051, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14048, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14049, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14052, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14054, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14055, nil, nil, nil, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14068, nil, nil, false, nil, nil)));
    tmpCategories[342]:AddAchievement(InsertAndReturn(achievements, achievement:New(14069, nil, nil, false, nil, nil)));
    tmpCategories[343] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15117))); -- Pet Battles
    tmpCategories[258]:AddCategory(tmpCategories[343]);
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(12930, nil, nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13693, nil, nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13694, nil, nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13715, nil, nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(12936, nil, nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13280, nil, nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13270, nil, nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13271, nil, nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13272, nil, nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13273, nil, nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13274, nil, nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13281, nil, nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13275, nil, nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13277, nil, nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13278, nil, nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13279, nil, nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13625, nil, nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13626, nil, nil, nil, nil, nil)));
    tmpCategories[343]:AddAchievement(InsertAndReturn(achievements, achievement:New(13695, nil, nil, nil, nil, nil)));
    tmpCategories[425] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15307))); -- Island Expeditions
    tmpCategories[258]:AddCategory(tmpCategories[425]);
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(12590, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(12589, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(12591, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(12592, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13095, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13096, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13097, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13098, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13103, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13104, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13105, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13106, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13099, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13100, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13101, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13102, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13111, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13112, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13113, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13114, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13107, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13108, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13109, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13110, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13119, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13118, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13116, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13115, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13389, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13394, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13395, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13399, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13396, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13397, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13398, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13400, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13577, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13578, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13579, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13580, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13581, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13582, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13583, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13584, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13142, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13122, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13141, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(12596, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(12594, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(12595, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(12597, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13120, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13121, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13129, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13123, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13124, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13125, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13126, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13127, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13128, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13132, nil, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13133, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13135, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[425]:AddAchievement(InsertAndReturn(achievements, achievement:New(13134, nil, nil, nil, nil, nil)));
    tmpCategories[426] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15308))); -- War Effort
    tmpCategories[258]:AddCategory(tmpCategories[426]);
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12867, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12896, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12869, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12898, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12870, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12899, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12872, nil, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12873, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(13735, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12881, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(13737, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12877, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12876, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12888, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12889, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12878, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12884, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12879, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(13738, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12886, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(13739, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(12874, nil, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(13296, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(14149, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(13297, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(14150, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(13301, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(13306, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(13302, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(13305, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(13307, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(13308, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(13309, faction.Horde, nil, nil, nil, nil)));
    tmpCategories[426]:AddAchievement(InsertAndReturn(achievements, achievement:New(13310, faction.Alliance, nil, nil, nil, nil)));
    tmpCategories[427] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15417))); -- Heart of Azeroth
    tmpCategories[258]:AddCategory(tmpCategories[427]);
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(12918, nil, nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13998, nil, nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13572, nil, nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13769, nil, nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13770, nil, nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13771, nil, nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13772, nil, nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13773, nil, nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13775, nil, nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13777, nil, nil, nil, nil, nil)));
    tmpCategories[427]:AddAchievement(InsertAndReturn(achievements, achievement:New(13779, nil, nil, false, nil, nil)));
    tmpCategories[428] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15426))); -- Visions of N'Zoth	
    tmpCategories[258]:AddCategory(tmpCategories[428]);
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14143, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(13994, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14060, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14061, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14062, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14064, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14066, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14063, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14065, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14067, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14162, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14165, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14166, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14167, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14168, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14169, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14170, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14171, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14172, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14173, nil, nil, nil, nil, nil)));
    tmpCategories[428]:AddAchievement(InsertAndReturn(achievements, achievement:New(14140, nil, nil, false, nil, nil)));
    tmpCategories[6] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15439))); -- Shadowlands
    tmpCategories[344] = InsertAndReturn(categories, achievementCategory:New(addon.L["Zones"])); -- Zones
    tmpCategories[6]:AddCategory(tmpCategories[344]);
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14280, nil, nil, nil, nil, nil)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14790, nil, nil, nil, nil, nil)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14758, nil, nil, nil, nil, nil)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14825, nil, nil, nil, nil, nil)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14731, nil, nil, nil, nil, nil)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14515, nil, nil, nil, nil, nil)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14516, nil, nil, nil, nil, nil)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14519, nil, nil, nil, nil, nil)));
    tmpCategories[344]:AddAchievement(InsertAndReturn(achievements, achievement:New(14315, nil, nil, nil, nil, nil)));
    tmpCategories[345] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1533).name)); -- Bastion
    tmpCategories[344]:AddCategory(tmpCategories[345]);
    tmpCategories[346] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[345]:AddCategory(tmpCategories[346]);
    tmpCategories[346]:AddAchievement(InsertAndReturn(achievements, achievement:New(14281, nil, nil, nil, nil, nil)));
    tmpCategories[346]:AddAchievement(InsertAndReturn(achievements, achievement:New(14801, nil, nil, nil, nil, nil)));
    tmpCategories[346]:AddAchievement(InsertAndReturn(achievements, achievement:New(14737, nil, nil, nil, nil, nil)));
    tmpCategories[346]:AddAchievement(InsertAndReturn(achievements, achievement:New(14735, nil, nil, nil, nil, nil)));
    tmpCategories[346]:AddAchievement(InsertAndReturn(achievements, achievement:New(14741, nil, nil, nil, nil, nil)));
    tmpCategories[346]:AddAchievement(InsertAndReturn(achievements, achievement:New(14762, nil, nil, nil, nil, nil)));
    tmpCategories[347] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[345]:AddCategory(tmpCategories[347]);
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14303, nil, nil, nil, nil, nil)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14307, nil, nil, nil, nil, nil)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14311, nil, nil, nil, nil, nil)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14339, nil, nil, nil, nil, nil)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14734, nil, nil, nil, nil, nil)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14767, nil, nil, nil, nil, nil)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14768, nil, nil, nil, nil, nil)));
    tmpCategories[347]:AddAchievement(InsertAndReturn(achievements, achievement:New(14733, nil, nil, nil, nil, nil)));
    tmpCategories[348] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270))); -- PvP
    tmpCategories[345]:AddCategory(tmpCategories[348]);
    tmpCategories[348]:AddAchievement(InsertAndReturn(achievements, achievement:New(14514, nil, nil, nil, nil, nil)));
    tmpCategories[349] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[345]:AddCategory(tmpCategories[349]);
    tmpCategories[349]:AddAchievement(InsertAndReturn(achievements, achievement:New(14335, nil, nil, nil, nil, nil)));
    tmpCategories[350] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1536).name)); -- Maldraxxus
    tmpCategories[344]:AddCategory(tmpCategories[350]);
    tmpCategories[351] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[350]:AddCategory(tmpCategories[351]);
    tmpCategories[351]:AddAchievement(InsertAndReturn(achievements, achievement:New(14206, nil, nil, nil, nil, nil)));
    tmpCategories[351]:AddAchievement(InsertAndReturn(achievements, achievement:New(14799, nil, nil, nil, nil, nil)));
    tmpCategories[352] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[350]:AddCategory(tmpCategories[352]);
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14305, nil, nil, nil, nil, nil)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14308, nil, nil, nil, nil, nil)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14312, nil, nil, nil, nil, nil)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14626, nil, nil, nil, nil, nil)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14802, nil, nil, nil, nil, nil)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14721, nil, nil, nil, nil, nil)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14634, nil, nil, nil, nil, nil)));
    tmpCategories[352]:AddAchievement(InsertAndReturn(achievements, achievement:New(14763, nil, nil, nil, nil, nil)));
    tmpCategories[353] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270))); -- PvP
    tmpCategories[350]:AddCategory(tmpCategories[353]);
    tmpCategories[353]:AddAchievement(InsertAndReturn(achievements, achievement:New(14513, nil, nil, nil, nil, nil)));
    tmpCategories[354] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[350]:AddCategory(tmpCategories[354]);
    tmpCategories[354]:AddAchievement(InsertAndReturn(achievements, achievement:New(14336, nil, nil, nil, nil, nil)));
    tmpCategories[355] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1565).name)); -- Ardenweald
    tmpCategories[344]:AddCategory(tmpCategories[355]);
    tmpCategories[356] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[355]:AddCategory(tmpCategories[356]);
    tmpCategories[356]:AddAchievement(InsertAndReturn(achievements, achievement:New(14164, nil, nil, nil, nil, nil)));
    tmpCategories[356]:AddAchievement(InsertAndReturn(achievements, achievement:New(14800, nil, nil, nil, nil, nil)));
    tmpCategories[356]:AddAchievement(InsertAndReturn(achievements, achievement:New(14671, nil, nil, nil, nil, nil)));
    tmpCategories[356]:AddAchievement(InsertAndReturn(achievements, achievement:New(14672, nil, nil, nil, nil, nil)));
    tmpCategories[357] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[355]:AddCategory(tmpCategories[357]);
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14304, nil, nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14309, nil, nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14313, nil, nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14353, nil, nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14791, nil, nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14774, nil, nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14788, nil, nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14779, nil, nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14504, nil, nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14505, nil, nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14506, nil, nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14507, nil, nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14508, nil, nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14509, nil, nil, nil, nil, nil)));
    tmpCategories[357]:AddAchievement(InsertAndReturn(achievements, achievement:New(14510, nil, nil, nil, nil, nil)));
    tmpCategories[358] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270))); -- PvP
    tmpCategories[355]:AddCategory(tmpCategories[358]);
    tmpCategories[358]:AddAchievement(InsertAndReturn(achievements, achievement:New(14511, nil, nil, nil, nil, nil)));
    tmpCategories[359] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[355]:AddCategory(tmpCategories[359]);
    tmpCategories[359]:AddAchievement(InsertAndReturn(achievements, achievement:New(14337, nil, nil, nil, nil, nil)));
    tmpCategories[360] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1525).name)); -- Revendreth
    tmpCategories[344]:AddCategory(tmpCategories[360]);
    tmpCategories[361] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[360]:AddCategory(tmpCategories[361]);
    tmpCategories[361]:AddAchievement(InsertAndReturn(achievements, achievement:New(13878, nil, nil, nil, nil, nil)));
    tmpCategories[361]:AddAchievement(InsertAndReturn(achievements, achievement:New(14798, nil, nil, nil, nil, nil)));
    tmpCategories[361]:AddAchievement(InsertAndReturn(achievements, achievement:New(14233, nil, nil, nil, nil, nil)));
    tmpCategories[361]:AddAchievement(InsertAndReturn(achievements, achievement:New(14765, nil, nil, nil, nil, nil)));
    tmpCategories[361]:AddAchievement(InsertAndReturn(achievements, achievement:New(14766, nil, nil, nil, nil, nil)));
    tmpCategories[361]:AddAchievement(InsertAndReturn(achievements, achievement:New(14772, nil, nil, nil, nil, nil)));
    tmpCategories[362] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[360]:AddCategory(tmpCategories[362]);
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14306, nil, nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14310, nil, nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14314, nil, nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14277, nil, nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14274, nil, nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14272, nil, nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14276, nil, nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14769, nil, nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14771, nil, nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14770, nil, nil, nil, nil, nil)));
    tmpCategories[362]:AddAchievement(InsertAndReturn(achievements, achievement:New(14273, nil, nil, nil, nil, nil)));
    tmpCategories[363] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15270))); -- PvP
    tmpCategories[360]:AddCategory(tmpCategories[363]);
    tmpCategories[363]:AddAchievement(InsertAndReturn(achievements, achievement:New(14512, nil, nil, nil, nil, nil)));
    tmpCategories[364] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[360]:AddCategory(tmpCategories[364]);
    tmpCategories[364]:AddAchievement(InsertAndReturn(achievements, achievement:New(14338, nil, nil, nil, nil, nil)));
    tmpCategories[365] = InsertAndReturn(categories, achievementCategory:New(C_Map.GetMapInfo(1543).name)); -- The Maw
    tmpCategories[344]:AddCategory(tmpCategories[365]);
    tmpCategories[366] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15447))); -- Quests
    tmpCategories[365]:AddCategory(tmpCategories[366]);
    tmpCategories[366]:AddAchievement(InsertAndReturn(achievements, achievement:New(14334, nil, nil, nil, nil, nil)));
    tmpCategories[367] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(97))); -- Exploration
    tmpCategories[365]:AddCategory(tmpCategories[367]);
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14663, nil, nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14658, nil, nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14659, nil, nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14660, nil, nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14738, nil, nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14742, nil, nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14743, nil, nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14744, nil, nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14745, nil, nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14746, nil, nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14747, nil, nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14761, nil, nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14894, nil, nil, nil, nil, nil)));
    tmpCategories[367]:AddAchievement(InsertAndReturn(achievements, achievement:New(14895, nil, nil, nil, nil, nil)));
    tmpCategories[368] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15273))); -- Reputation
    tmpCategories[365]:AddCategory(tmpCategories[368]);
    tmpCategories[368]:AddAchievement(InsertAndReturn(achievements, achievement:New(14656, nil, nil, nil, nil, nil)));
    tmpCategories[369] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15272))); -- Dungeons
    tmpCategories[6]:AddCategory(tmpCategories[369]);
    tmpCategories[369]:AddAchievement(InsertAndReturn(achievements, achievement:New(14418, nil, nil, nil, nil, nil)));
    tmpCategories[369]:AddAchievement(InsertAndReturn(achievements, achievement:New(14322, nil, nil, nil, nil, nil)));
    tmpCategories[371] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1182))); -- The Necrotic Wake
    tmpCategories[369]:AddCategory(tmpCategories[371]);
    tmpCategories[371]:AddAchievement(InsertAndReturn(achievements, achievement:New(14295, nil, nil, nil, nil, nil)));
    tmpCategories[371]:AddAchievement(InsertAndReturn(achievements, achievement:New(14320, nil, nil, nil, nil, nil)));
    tmpCategories[371]:AddAchievement(InsertAndReturn(achievements, achievement:New(14285, nil, nil, nil, nil, nil)));
    tmpCategories[371]:AddAchievement(InsertAndReturn(achievements, achievement:New(14366, nil, nil, nil, nil, nil)));
    tmpCategories[371]:AddAchievement(InsertAndReturn(achievements, achievement:New(14367, nil, nil, nil, nil, nil)));
    tmpCategories[371]:AddAchievement(InsertAndReturn(achievements, achievement:New(14368, nil, nil, nil, nil, nil)));
    tmpCategories[372] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1183))); -- Plaguefall
    tmpCategories[369]:AddCategory(tmpCategories[372]);
    tmpCategories[372]:AddAchievement(InsertAndReturn(achievements, achievement:New(14292, nil, nil, nil, nil, nil)));
    tmpCategories[372]:AddAchievement(InsertAndReturn(achievements, achievement:New(14347, nil, nil, nil, nil, nil)));
    tmpCategories[372]:AddAchievement(InsertAndReturn(achievements, achievement:New(14296, nil, nil, nil, nil, nil)));
    tmpCategories[372]:AddAchievement(InsertAndReturn(achievements, achievement:New(14369, nil, nil, nil, nil, nil)));
    tmpCategories[372]:AddAchievement(InsertAndReturn(achievements, achievement:New(14414, nil, nil, nil, nil, nil)));
    tmpCategories[372]:AddAchievement(InsertAndReturn(achievements, achievement:New(14415, nil, nil, nil, nil, nil)));
    tmpCategories[373] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1184))); -- Mists of Tirna Scithe
    tmpCategories[369]:AddCategory(tmpCategories[373]);
    tmpCategories[373]:AddAchievement(InsertAndReturn(achievements, achievement:New(14503, nil, nil, nil, nil, nil)));
    tmpCategories[373]:AddAchievement(InsertAndReturn(achievements, achievement:New(14291, nil, nil, nil, nil, nil)));
    tmpCategories[373]:AddAchievement(InsertAndReturn(achievements, achievement:New(14375, nil, nil, nil, nil, nil)));
    tmpCategories[373]:AddAchievement(InsertAndReturn(achievements, achievement:New(14371, nil, nil, nil, nil, nil)));
    tmpCategories[373]:AddAchievement(InsertAndReturn(achievements, achievement:New(14412, nil, nil, nil, nil, nil)));
    tmpCategories[373]:AddAchievement(InsertAndReturn(achievements, achievement:New(14413, nil, nil, nil, nil, nil)));
    tmpCategories[374] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1185))); -- Halls of Atonement
    tmpCategories[369]:AddCategory(tmpCategories[374]);
    tmpCategories[374]:AddAchievement(InsertAndReturn(achievements, achievement:New(14567, nil, nil, nil, nil, nil)));
    tmpCategories[374]:AddAchievement(InsertAndReturn(achievements, achievement:New(14284, nil, nil, nil, nil, nil)));
    tmpCategories[374]:AddAchievement(InsertAndReturn(achievements, achievement:New(14352, nil, nil, nil, nil, nil)));
    tmpCategories[374]:AddAchievement(InsertAndReturn(achievements, achievement:New(14370, nil, nil, nil, nil, nil)));
    tmpCategories[374]:AddAchievement(InsertAndReturn(achievements, achievement:New(14410, nil, nil, nil, nil, nil)));
    tmpCategories[374]:AddAchievement(InsertAndReturn(achievements, achievement:New(14411, nil, nil, nil, nil, nil)));
    tmpCategories[375] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1186))); -- Spires of Ascension
    tmpCategories[369]:AddCategory(tmpCategories[375]);
    tmpCategories[375]:AddAchievement(InsertAndReturn(achievements, achievement:New(14331, nil, nil, nil, nil, nil)));
    tmpCategories[375]:AddAchievement(InsertAndReturn(achievements, achievement:New(14323, nil, nil, nil, nil, nil)));
    tmpCategories[375]:AddAchievement(InsertAndReturn(achievements, achievement:New(14327, nil, nil, nil, nil, nil)));
    tmpCategories[375]:AddAchievement(InsertAndReturn(achievements, achievement:New(14326, nil, nil, nil, nil, nil)));
    tmpCategories[375]:AddAchievement(InsertAndReturn(achievements, achievement:New(14324, nil, nil, nil, nil, nil)));
    tmpCategories[375]:AddAchievement(InsertAndReturn(achievements, achievement:New(14325, nil, nil, nil, nil, nil)));
    tmpCategories[376] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1187))); -- Theater of Pain
    tmpCategories[369]:AddCategory(tmpCategories[376]);
    tmpCategories[376]:AddAchievement(InsertAndReturn(achievements, achievement:New(14297, nil, nil, nil, nil, nil)));
    tmpCategories[376]:AddAchievement(InsertAndReturn(achievements, achievement:New(14607, nil, nil, nil, nil, nil)));
    tmpCategories[376]:AddAchievement(InsertAndReturn(achievements, achievement:New(14533, nil, nil, nil, nil, nil)));
    tmpCategories[376]:AddAchievement(InsertAndReturn(achievements, achievement:New(14372, nil, nil, nil, nil, nil)));
    tmpCategories[376]:AddAchievement(InsertAndReturn(achievements, achievement:New(14416, nil, nil, nil, nil, nil)));
    tmpCategories[376]:AddAchievement(InsertAndReturn(achievements, achievement:New(14417, nil, nil, nil, nil, nil)));
    tmpCategories[377] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1188))); -- De Other Side
    tmpCategories[369]:AddCategory(tmpCategories[377]);
    tmpCategories[377]:AddAchievement(InsertAndReturn(achievements, achievement:New(14354, nil, nil, nil, nil, nil)));
    tmpCategories[377]:AddAchievement(InsertAndReturn(achievements, achievement:New(14374, nil, nil, nil, nil, nil)));
    tmpCategories[377]:AddAchievement(InsertAndReturn(achievements, achievement:New(14606, nil, nil, nil, nil, nil)));
    tmpCategories[377]:AddAchievement(InsertAndReturn(achievements, achievement:New(14373, nil, nil, nil, nil, nil)));
    tmpCategories[377]:AddAchievement(InsertAndReturn(achievements, achievement:New(14408, nil, nil, nil, nil, nil)));
    tmpCategories[377]:AddAchievement(InsertAndReturn(achievements, achievement:New(14409, nil, nil, nil, nil, nil)));
    tmpCategories[378] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1189))); -- Sanguine Depths
    tmpCategories[369]:AddCategory(tmpCategories[378]);
    tmpCategories[378]:AddAchievement(InsertAndReturn(achievements, achievement:New(14286, nil, nil, nil, nil, nil)));
    tmpCategories[378]:AddAchievement(InsertAndReturn(achievements, achievement:New(14290, nil, nil, nil, nil, nil)));
    tmpCategories[378]:AddAchievement(InsertAndReturn(achievements, achievement:New(14289, nil, nil, nil, nil, nil)));
    tmpCategories[378]:AddAchievement(InsertAndReturn(achievements, achievement:New(14197, nil, nil, nil, nil, nil)));
    tmpCategories[378]:AddAchievement(InsertAndReturn(achievements, achievement:New(14198, nil, nil, nil, nil, nil)));
    tmpCategories[378]:AddAchievement(InsertAndReturn(achievements, achievement:New(14199, nil, nil, nil, nil, nil)));
    tmpCategories[370] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15271))); -- Raids
    tmpCategories[6]:AddCategory(tmpCategories[370]);
    tmpCategories[370]:AddAchievement(InsertAndReturn(achievements, achievement:New(14355, nil, nil, nil, nil, nil)));
    tmpCategories[379] = InsertAndReturn(categories, achievementCategory:New(EJ_GetInstanceInfo(1190))); -- Castle Nathria
    tmpCategories[370]:AddCategory(tmpCategories[379]);
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14293, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14523, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14376, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14524, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14617, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14608, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14619, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14294, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14525, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14610, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14715, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14717, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14718, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14356, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14357, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14358, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14361, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14359, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14360, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14362, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14363, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14364, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14365, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14460, nil, nil, nil, nil, nil)));
    tmpCategories[379]:AddAchievement(InsertAndReturn(achievements, achievement:New(14461, nil, nil, nil, nil, nil)));
    tmpCategories[380] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15117))); -- Pet Battles
    tmpCategories[6]:AddCategory(tmpCategories[380]);
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14867, nil, nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14625, nil, nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14868, nil, nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14869, nil, nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14870, nil, nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14871, nil, nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14872, nil, nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14873, nil, nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14874, nil, nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14875, nil, nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14876, nil, nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14877, nil, nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14879, nil, nil, nil, nil, nil)));
    tmpCategories[380]:AddAchievement(InsertAndReturn(achievements, achievement:New(14881, nil, nil, nil, nil, nil)));
    tmpCategories[424] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15440))); -- Torghast
    tmpCategories[6]:AddCategory(tmpCategories[424]);
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14463, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14473, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14478, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14483, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14488, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14493, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14808, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14809, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14810, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14499, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14500, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14501, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14468, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14469, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14470, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14471, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14472, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14568, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14569, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14570, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14571, nil, nil, false, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14498, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14773, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14776, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14778, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14754, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14755, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14759, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14760, nil, nil, nil, nil, nil)));
    tmpCategories[424]:AddAchievement(InsertAndReturn(achievements, achievement:New(14795, nil, nil, nil, nil, nil)));
    tmpCategories[419] = InsertAndReturn(categories, achievementCategory:New(GetCategoryInfo(15441))); -- Covenant Sanctums
    tmpCategories[6]:AddCategory(tmpCategories[419]);
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14627, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14834, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14835, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14836, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14837, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14628, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14629, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14630, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14631, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14632, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14633, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14636, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14839, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14840, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14841, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14842, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14843, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14844, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14845, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14846, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14847, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14637, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14638, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14639, nil, nil, nil, nil, nil)));
    tmpCategories[419]:AddAchievement(InsertAndReturn(achievements, achievement:New(14777, nil, nil, nil, nil, nil)));
    tmpCategories[423] = InsertAndReturn(categories, achievementCategory:New(C_Covenants.GetCovenantData(1).name)); -- Kyrian
    tmpCategories[419]:AddCategory(tmpCategories[423]);
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14851, nil, covenant.Kyrian, nil, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14852, nil, covenant.Kyrian, nil, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14853, nil, covenant.Kyrian, nil, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14854, nil, covenant.Kyrian, nil, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14856, nil, covenant.Kyrian, nil, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14857, nil, covenant.Kyrian, nil, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14858, nil, covenant.Kyrian, nil, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14859, nil, covenant.Kyrian, nil, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14860, nil, covenant.Kyrian, nil, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14861, nil, covenant.Kyrian, nil, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14862, nil, covenant.Kyrian, nil, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14863, nil, covenant.Kyrian, nil, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14864, nil, covenant.Kyrian, nil, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14865, nil, covenant.Kyrian, nil, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14866, nil, covenant.Kyrian, nil, nil, nil)));
    tmpCategories[423]:AddAchievement(InsertAndReturn(achievements, achievement:New(14887, nil, covenant.Kyrian, nil, nil, nil)));
    tmpCategories[421] = InsertAndReturn(categories, achievementCategory:New(C_Covenants.GetCovenantData(2).name)); -- Venthyr
    tmpCategories[419]:AddCategory(tmpCategories[421]);
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14678, nil, covenant.Venthyr, nil, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14679, nil, covenant.Venthyr, nil, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14680, nil, covenant.Venthyr, nil, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14681, nil, covenant.Venthyr, nil, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14682, nil, covenant.Venthyr, nil, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14683, nil, covenant.Venthyr, nil, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14723, nil, covenant.Venthyr, nil, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14724, nil, covenant.Venthyr, nil, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14725, nil, covenant.Venthyr, nil, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14726, nil, covenant.Venthyr, nil, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14727, nil, covenant.Venthyr, nil, nil, nil)));
    tmpCategories[421]:AddAchievement(InsertAndReturn(achievements, achievement:New(14749, nil, covenant.Venthyr, nil, nil, nil)));
    tmpCategories[422] = InsertAndReturn(categories, achievementCategory:New(C_Covenants.GetCovenantData(3).name)); -- Night Fae
    tmpCategories[419]:AddCategory(tmpCategories[422]);
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14670, nil, covenant.NightFae, nil, nil, nil)));
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14675, nil, covenant.NightFae, nil, nil, nil)));
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14676, nil, covenant.NightFae, nil, nil, nil)));
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14677, nil, covenant.NightFae, nil, nil, nil)));
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14775, nil, covenant.NightFae, nil, nil, nil)));
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14780, nil, covenant.NightFae, nil, nil, nil)));
    tmpCategories[422]:AddAchievement(InsertAndReturn(achievements, achievement:New(14789, nil, covenant.NightFae, nil, nil, nil)));
    tmpCategories[420] = InsertAndReturn(categories, achievementCategory:New(C_Covenants.GetCovenantData(4).name)); -- Necrolord
    tmpCategories[419]:AddCategory(tmpCategories[420]);
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14684, nil, covenant.Necrolord, nil, nil, nil)));
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14748, nil, covenant.Necrolord, nil, nil, nil)));
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14751, nil, covenant.Necrolord, nil, nil, nil)));
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14752, nil, covenant.Necrolord, nil, nil, nil)));
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14753, nil, covenant.Necrolord, nil, nil, nil)));
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14764, nil, covenant.Necrolord, nil, nil, nil)));
    tmpCategories[420]:AddAchievement(InsertAndReturn(achievements, achievement:New(14833, nil, covenant.Necrolord, nil, nil, nil)));
end

