-- [[ Exported at 2021-05-25 22-20-31 ]] --
-- [[ This code is automatically generated as an export from ]] --
-- [[ an SQLite database and is not meant for manual edit. ]] --

-- [[ Namespaces ]] --
local _, addon = ...;
local data = addon.Data;
data.NextPatch = {};
local nextPatch = data.NextPatch;

function nextPatch.Load(achievements)
    for i, _ in next, achievements do
        achievements[i] = nil;
    end

    addon.NextPatchAchievements[15000] = {15000, "United Front", 10, "Complete all four covenant assaults in the Maw.", 0, 236352, ""};
    addon.NextPatchAchievements[15044] = {15044, "Krrprripripkraak's Heroes", 5, "Aid each of the following characters during the Night Fae assault quest \"Just Don't Ask Me to Spell It\".", 0, 3730999, ""};
    addon.NextPatchAchievements[15035] = {15035, "On the Offensive", 15, "Complete the covenant assault achievements listed below.", 0, 236373, ""};
    addon.NextPatchAchievements[15043] = {15043, "Hoarder of Torghast", 0, "Make use of fifteen items Fangcrack pulls out of the Portal to Torghast.", 128, 3257863, ""};
    addon.NextPatchAchievements[15042] = {15042, "Tea for the Troubled", 5, "Serve tea to the following characters during the Venthyr assault on the Tremaculum.", 0, 651601, ""};
    addon.NextPatchAchievements[15036] = {15036, "Rooting Out the Evil", 10, "Complete the following quests during the Night Fae assault on Crucible of the Damned.", 0, 3257750, ""};
    addon.NextPatchAchievements[15034] = {15034, "Wings Against the Flames", 10, "Complete the following quests during the Kyrian assault on Zovaal's Cauldron.", 0, 3257748, ""};
    addon.NextPatchAchievements[15033] = {15033, "Taking the Tremaculum", 10, "Complete the following quests during the Venthyr assault on the Tremaculum.", 0, 3257751, ""};
    addon.NextPatchAchievements[15032] = {15032, "Breaking Their Hold", 10, "Complete the following quests during the Necrolord assault on Perdition Hold.", 0, 3257749, ""};
    addon.NextPatchAchievements[15001] = {15001, "Jailer's Personal Stash", 5, "Open ten Rift Hidden Caches during the Night Fae assault on the Crucible of the Damned.", 128, 3743739, ""};
    addon.NextPatchAchievements[15041] = {15041, "The Zovaal Shuffle", 5, "Dance near five different forges in Zovaal's Cauldron while holding a Mawproof Parasol.", 128, 135265, ""};
    addon.NextPatchAchievements[15039] = {15039, "Up For Grabs", 5, "Open ten Mawsworn Caches during the Necrolord assault on Perdition Hold.", 128, 3753263, ""};
    addon.NextPatchAchievements[15037] = {15037, "This Army", 5, "Complete the quest \"You and What Army\" once with each of the unique champions.", 0, 3601551, ""};
    addon.NextPatchAchievements[14961] = {14961, "Chains of Domination", 10, "Complete the storylines listed below.", 0, 3729814, ""};
    addon.NextPatchAchievements[15064] = {15064, "Breaking the Chains", 10, "Complete the achievements listed below.", 0, 3743311, "Mount Reward: Bracelet of Salarangor"};
    addon.NextPatchAchievements[15054] = {15054, "Minions of the Cold Dark", 15, "Defeat all of the Tormentors of Torghast special encounters in The Maw.", 0, 136122, ""};
    addon.NextPatchAchievements[14943] = {14943, "Guarmageddon", 10, "Defeat Ylva, the Mate of Guarm in the Maw while having five stacks of Blood of the Pack active.", 0, 1530369, ""};
    addon.NextPatchAchievements[15059] = {15059, "Death's Advance", 5, "Earn Exalted status with Death's Advance.", 0, 4083292, ""};
    addon.NextPatchAchievements[15065] = {15065, "Eye Wish You Were Here", 10, "Defeat the Eye of the Jailer after using the Scavenged S.E.L.F.I.E. Camera to take a picture of the Eye of the Jailer and the entire raid after it has cast Immediate Extermination in the Sanctum of Domination on Normal difficulty or higher.", 0, 1109100, ""};
    addon.NextPatchAchievements[15066] = {15066, "Reliquary Restoration", 10, "Collect all of the Archivist's relics in Korthia.", 128, 4076799, ""};
    addon.NextPatchAchievements[15055] = {15055, "Friend of Ooz", 10, "Complete the \"Oozing with Character\" daily quest, with Ooz, 10 times.", 128, 3459153, ""};
    addon.NextPatchAchievements[15056] = {15056, "Friend of Bloop", 10, "Complete the \"Oozing with Character\" daily quest, with Bloop, 10 times.", 128, 651086, ""};
    addon.NextPatchAchievements[15057] = {15057, "Friend of Plaguey", 10, "Complete the \"Oozing with Character\" daily quest, with Plaguey, 10 times.", 128, 3459799, ""};
    addon.NextPatchAchievements[15053] = {15053, "Explore Korthia", 10, "Explore Korthia, revealing the covered areas of the world map.", 0, 979574, ""};
    addon.NextPatchAchievements[15099] = {15099, "Treasures of Korthia", 0, "Discover the hidden treasures of Korthia and Desmotaeron.", 0, 4066373, ""};
    addon.NextPatchAchievements[15069] = {15069, "The Archivist's Codex", 5, "Unlock Tier 6 Research with The Archivist's Codex.", 0, 2178528, ""};
    addon.NextPatchAchievements[15107] = {15107, "Conquering Korthia", 10, "Complete the following special encounters in Korthia and the Maw.", 0, 3605497, ""};
    addon.NextPatchAchievements[15045] = {15045, "Keystone Hero: The Necrotic Wake", 0, "Complete The Necrotic Wake at Mythic Level 20 or higher, within the time limit.", 2048, 3601560, "Reward: Teleport to The Necrotic Wake"};
    addon.NextPatchAchievements[15046] = {15046, "Keystone Hero: Plaguefall", 0, "Complete Plaguefall at Mythic Level 20 or higher, within the time limit.", 2048, 3601535, "Reward: Teleport to Plaguefall"};
    addon.NextPatchAchievements[15047] = {15047, "Keystone Hero: Mists of Tirna Scithe", 0, "Complete Mists of Tirna Scithe at Mythic Level 20 or higher, within the time limit.", 2048, 3601531, "Reward: Teleport to Mists of Tirna Scithe"};
    addon.NextPatchAchievements[15048] = {15048, "Keystone Hero: Halls of Atonement", 0, "Complete Halls of Atonement at Mythic Level 20 or higher, within the time limit.", 2048, 3601526, "Reward: Teleport to Halls of Atonement"};
    addon.NextPatchAchievements[15049] = {15049, "Keystone Hero: Spires of Ascension", 0, "Complete Spires of Ascension at Mythic Level 20 or higher, within the time limit.", 2048, 3601545, "Reward: Teleport to Spires of Ascension"};
    addon.NextPatchAchievements[15050] = {15050, "Keystone Hero: Theater of Pain", 0, "Complete Theater of Pain at Mythic Level 20 or higher, within the time limit.", 2048, 3601550, "Reward: Teleport to Theater of Pain"};
    addon.NextPatchAchievements[15051] = {15051, "Keystone Hero: De Other Side", 0, "Complete De Other Side at Mythic Level 20 or higher, within the time limit.", 2048, 3601561, "Reward: Teleport to De Other Side"};
    addon.NextPatchAchievements[15052] = {15052, "Keystone Hero: Sanguine Depths", 0, "Complete Sanguine Depths at Mythic Level 20 or higher, within the time limit.", 2048, 3601540, "Reward: Teleport to Sanguine Depths"};
    addon.NextPatchAchievements[15106] = {15106, "Quality Control", 10, "Defeat the P.O.S.T. Master after passing all Unstable Goods to at least one other player before delivery in Tazavesh, the Veiled Market on Mythic difficulty.", 0, 1506461, ""};
    addon.NextPatchAchievements[15109] = {15109, "Will it Blend?", 10, "Defeat Zo'phex the Sentinel in Tazavesh, the Veiled Market while covered in 4 blended substances.", 0, 3889765, ""};
    addon.NextPatchAchievements[15073] = {15073, "Shadowlands Keystone Explorer: Season Two", 0, "Attain a Mythic+ Rating of at least 750 during Shadowlands Season Two.", 133120, 618860, ""};
    addon.NextPatchAchievements[15077] = {15077, "Shadowlands Keystone Conqueror: Season Two", 0, "Attain a Mythic+ Rating of at least 1500 during Shadowlands Season Two.", 133120, 618858, "Title Reward: TBD"};
    addon.NextPatchAchievements[15078] = {15078, "Shadowlands Keystone Master: Season Two", 0, "Attain a Mythic+ Rating of at least 2000 during Shadowlands Season Two.", 133120, 618859, "Mount Reward: TBD"};
    addon.NextPatchAchievements[15058] = {15058, "I Used to Bullseye Deeprun Rats Back Home", 10, "Defeat the Remnant of Ner'zhul after scoring seven goals in the Sanctum of Domination on Normal difficulty or higher.", 0, 618973, ""};
    addon.NextPatchAchievements[14998] = {14998, "Name A Better Duo, I'll Wait", 10, "Defeat The Tarragrue after entering the mists and reuniting Moriaz with Buttons in the Sanctum of Domination on Normal difficulty or higher.", 0, 135451, ""};
    addon.NextPatchAchievements[15003] = {15003, "To the Nines", 10, "Defeat The Nine after forming a Shard of Destiny from 9 or more Fragments of Destiny in the Sanctum of Domination on Normal difficulty or higher.", 0, 1029742, ""};
    addon.NextPatchAchievements[15040] = {15040, "Retrograde Fate", 10, "Defeat Fatescribe Roh-Kalo after surviving Realign Fate while moving rings counterclockwise only in the Sanctum of Domination on Normal difficulty or higher.", 0, 4067928, ""};
    addon.NextPatchAchievements[15105] = {15105, "Tormentor's Tango", 10, "Defeat Soulrender Dormazain after /taunting Garrosh Hellscream before combat begins and avoiding all Torment impacts in the Sanctum of Domination on Normal difficulty or higher.", 0, 4050664, ""};
    addon.NextPatchAchievements[15108] = {15108, "Together Forever", 10, "Defeat Kel'Thuzad after thawing the Remnant's heart in the Sanctum of Domination on Normal difficulty or higher.", 0, 1390944, ""};
    addon.NextPatchAchievements[15122] = {15122, "The Jailer's Vanguard", 10, "Defeat the following bosses in the lower floors of the Sanctum of Domination.", 0, 4062741, ""};
    addon.NextPatchAchievements[15123] = {15123, "The Dark Bastille", 10, "Defeat the following bosses in the wings of the Sanctum of Domination.", 0, 4062735, ""};
    addon.NextPatchAchievements[15124] = {15124, "Shackles of Fate", 10, "Defeat the following bosses in the upper tiers of the Sanctum of Domination.", 0, 4062734, ""};
    addon.NextPatchAchievements[15125] = {15125, "The Reckoning", 10, "Ascend to the summit and confront Sylvanas Windrunner in the Sanctum of Domination.", 0, 4062738, ""};
    addon.NextPatchAchievements[15131] = {15131, "Painsmith Raznal PH Achievement", 10, "Defeat Painsmith Raznal after doing something cool in the Sanctum of Domination on Normal difficulty or higher.", 0, 136243, ""};
    addon.NextPatchAchievements[15132] = {15132, "Guardian of the First Ones PH Achievement", 10, "Defeat the Guardian of the First Ones after doing something cool in the Sanctum of Domination on Normal difficulty or higher.", 0, 136243, ""};
    addon.NextPatchAchievements[15133] = {15133, "Sylvanas Windrunner PH Achievement", 10, "Defeat Sylvanas Windrunner after doing something cool in the Sanctum of Domination on Normal difficulty or higher.", 0, 136243, ""};
    addon.NextPatchAchievements[15126] = {15126, "Sanctum of Domination", 10, "Defeat the following bosses on any difficulty.", 0, 4062765, ""};
    addon.NextPatchAchievements[15127] = {15127, "Heroic: Sanctum of Domination", 10, "Defeat the following bosses on Heroic difficulty.", 0, 4062765, ""};
    addon.NextPatchAchievements[15128] = {15128, "Mythic: Sanctum of Domination", 10, "Defeat the following bosses on Mythic difficulty.", 0, 4062765, ""};
    addon.NextPatchAchievements[15112] = {15112, "Mythic: The Tarragrue", 10, "Defeat The Tarragrue in the Sanctum of Domination on Mythic difficulty.", 4096, 4062739, ""};
    addon.NextPatchAchievements[15113] = {15113, "Mythic: The Eye of the Jailer", 10, "Defeat The Eye of the Jailer in the Sanctum of Domination on Mythic difficulty.", 4096, 4062740, ""};
    addon.NextPatchAchievements[15114] = {15114, "Mythic: The Nine", 10, "Defeat The Nine in the Sanctum of Domination on Mythic difficulty.", 4096, 4062741, ""};
    addon.NextPatchAchievements[15115] = {15115, "Mythic: Remnant of Ner'zhul", 10, "Defeat Remnant of Ner'zhul in the Sanctum of Domination on Mythic difficulty.", 4096, 4062736, ""};
    addon.NextPatchAchievements[15116] = {15116, "Mythic: Soulrender Dormazain", 10, "Defeat Soulrender Dormazain in the Sanctum of Domination on Mythic difficulty.", 4096, 4062737, ""};
    addon.NextPatchAchievements[15117] = {15117, "Mythic: Painsmith Raznal", 10, "Defeat Painsmith Raznal in the Sanctum of Domination on Mythic difficulty.", 4096, 4062735, ""};
    addon.NextPatchAchievements[15118] = {15118, "Mythic: Guardian of the First Ones", 10, "Defeat Guardian of the First Ones in the Sanctum of Domination on Mythic difficulty.", 4096, 4062733, ""};
    addon.NextPatchAchievements[15119] = {15119, "Mythic: Fatescribe Roh-Kalo", 10, "Defeat Fatescribe Roh-Kalo in the Sanctum of Domination on Mythic difficulty.", 4096, 4062732, ""};
    addon.NextPatchAchievements[15120] = {15120, "Mythic: Kel'Thuzad", 10, "Defeat Kel'Thuzad in the Sanctum of Domination on Mythic difficulty.", 4096, 4062734, ""};
    addon.NextPatchAchievements[15121] = {15121, "Mythic: Sylvanas Windrunner", 10, "Defeat Sylvanas Windrunner in the Sanctum of Domination on Mythic difficulty.", 4096, 4062738, ""};
    addon.NextPatchAchievements[15134] = {15134, "Ahead of the Curve: Sylvanas Windrunner", 0, "Defeat Sylvanas Windrunner in the Sanctum of Domination on Heroic difficulty or higher, before the release of the next raid tier.", 6144, 4062738, ""};
    addon.NextPatchAchievements[15135] = {15135, "Cutting Edge: Sylvanas Windrunner", 0, "Defeat Sylvanas Windrunner in the Sanctum of Domination on Mythic difficulty, before the release of the next raid tier.", 6144, 4062738, ""};
    addon.NextPatchAchievements[15110] = {15110, "Dominating the Catwalk", 10, "Collect an armor set from Sanctum of Domination.", 131072, 4062765, ""};
    addon.NextPatchAchievements[15130] = {15130, "Glory of the Dominant Raider", 25, "Complete the Sanctum of Domination raid achievements listed below.", 143360, 4062765, "Mount Reward: Hand of Hrestimorak"};
    addon.NextPatchAchievements[15004] = {15004, "A Sly Fox", 5, "Find \"Sly\" each time he runs away.", 0, 3072461, "Pet Reward: Sly"};
    addon.NextPatchAchievements[15067] = {15067, "Adamant Vaults", 10, "Successfully complete the Adamant Vaults on any layer in Torghast, Tower of the Damned.", 0, 3853943, ""};
    addon.NextPatchAchievements[15075] = {15075, "Infiltrators", 10, "Defeat each of the following rare encounters in Torghast, Tower of the Damned:", 0, 1413862, ""};
    addon.NextPatchAchievements[15076] = {15076, "The Box of Many Things", 5, "Obtain the Box of Many Things in Torghast, Tower of the Damned.", 0, 4094821, ""};
    addon.NextPatchAchievements[15091] = {15091, "A Taste of Perfection", 10, "Achieve a Flawless run in Torghast, Tower of the damned.", 0, 603532, ""};
    addon.NextPatchAchievements[15089] = {15089, "Flawless Master", 20, "Achieve a Flawless run on layer 12 in each wing of Torghast, Tower of the Damned.", 0, 3731620, "Mount Reward: Mawsworn Charger"};
    addon.NextPatchAchievements[15081] = {15081, "Flawless: Skoldus Hall", 10, "Achieve a Flawless run on layer 12 in Skoldus Hall.", 0, 3555135, ""};
    addon.NextPatchAchievements[15082] = {15082, "Flawless: Fracture Chambers", 10, "Achieve a Flawless run on layer 12 in Fracture Chambers.", 0, 3592448, ""};
    addon.NextPatchAchievements[15084] = {15084, "Flawless: The Soulforges", 10, "Achieve a Flawless run on layer 12 in The Soulforges.", 0, 467102, ""};
    addon.NextPatchAchievements[15083] = {15083, "Flawless: Coldheart Interstitia", 10, "Achieve a Flawless run on layer 12 in Coldheart Interstitia.", 0, 3552748, ""};
    addon.NextPatchAchievements[15087] = {15087, "Flawless: Mort'regar", 10, "Achieve a Flawless run on layer 12 in Mort'regar.", 0, 3586456, ""};
    addon.NextPatchAchievements[15088] = {15088, "Flawless: Upper Reaches", 10, "Achieve a Flawless run on layer 12 in Upper Reaches.", 0, 522867, ""};
    addon.NextPatchAchievements[15080] = {15080, "So Blessed", 10, "Research rank 3 of Blessing of the Ancients in the Box of Many Things.", 0, 135769, ""};
    addon.NextPatchAchievements[15079] = {15079, "Many, Many Things", 10, "Research every talent in the Box of Many Things.", 0, 4037125, "Pet Reward: Mord'al Eveningstar"};
    addon.NextPatchAchievements[15092] = {15092, "Master of Torment", 20, "Complete the achievements listed below:", 0, 132344, ""};
    addon.NextPatchAchievements[15093] = {15093, "Avenge Me!", 10, "Slay an elite enemy with 10 stacks of Vengeance in Torghast, Tower of the Damned.", 0, 458971, ""};
    addon.NextPatchAchievements[15094] = {15094, "Rampage", 10, "Maintain maximum stacks of Rampaging for 30 consecutive seconds in Torghast, Tower of the Damned.", 0, 1035053, ""};
    addon.NextPatchAchievements[15095] = {15095, "No Doubt", 10, "Defeat a boss without killing or interrupting any of the Mawsworn Doubtcaller's spells while the Torment \"Backup\" is active in Torghast, Tower of the Damned.", 0, 458226, ""};
    addon.NextPatchAchievements[15096] = {15096, "Crowd Pleaser", 10, "Be under the effects of Claustrophobia for 30 consecutive seconds in Torghast, Tower of the Damned.", 0, 1387356, ""};
end

