-- [[ Exported at 2021-05-07 23-45-40 ]] --
-- [[ This code is automatically generated as an export from ]] --
-- [[ an SQLite database and is not meant for manual edit. ]] --

-- [[ Namespaces ]] --
local _, addon = ...;
addon.NextPatch = {};
local nextPatch = addon.NextPatch;

function nextPatch.Load(achievements)
    for i, _ in next, achievements do
        achievements[i] = nil;
    end

    addon.NextPatchAchievements[15000] = {15000, "United Front", 10, "Complete all four covenant assaults in the Maw.", 0, 236352, ""};
    addon.NextPatchAchievements[15044] = {15044, "Krrprripripkraak's Heroes", 5, "Aid each of the following characters during the Night Fae assault quest \"Just Don't Ask Me to Spell It\".", 0, 3730999, ""};
    addon.NextPatchAchievements[15035] = {15035, "On the Offensive", 15, "Complete the covenant assault achivements listed below.", 0, 236373, ""};
    addon.NextPatchAchievements[15043] = {15043, "Hoarder of Torghast", 0, "Make use of fifteen items Fangcrack pulls out of the Portal to Torghast.", 128, 3257863, ""};
    addon.NextPatchAchievements[15042] = {15042, "Tea for the Troubled", 5, "Serve tea to the following characters during the Venthyr assault on the Tremaculum.", 0, 651601, ""};
    addon.NextPatchAchievements[15036] = {15036, "Rooting Out the Evil", 10, "Complete the following quests during the Night Fae assault on Crucible of the Damned.", 0, 3257750, ""};
    addon.NextPatchAchievements[15034] = {15034, "Wings Against the Flames", 10, "Complete the following quests during the Kyrian assault on Zovaal's Cauldron.", 0, 3257748, ""};
    addon.NextPatchAchievements[15033] = {15033, "Taking the Tremaculum", 10, "Complete the following quests during the Venthyr assault on the Tremaculum.", 0, 3257751, ""};
    addon.NextPatchAchievements[15032] = {15032, "Breaking Their Hold", 10, "Complete the following quests during the Necrolord assault on Perdition Hold.", 0, 3257749, ""};
    addon.NextPatchAchievements[15001] = {15001, "Jailer's Personal Stash", 5, "Open ten Rift Hidden Caches during the nightfae assault on the Crucible of the Damned.", 128, 3743739, ""};
    addon.NextPatchAchievements[15041] = {15041, "The Zovaal Shuffle", 5, "Dance near five different forges in Zovaal's Cauldron while holding a Mawproof Parasol.", 128, 135265, ""};
    addon.NextPatchAchievements[15039] = {15039, "Up For Grabs", 5, "Open ten Mawsworn Caches during the Necrolord assault on Perdition Hold.", 128, 3753263, ""};
    addon.NextPatchAchievements[15037] = {15037, "This Army", 5, "Complete the quest \"You and What Army\" once with each of the unique champions.", 0, 3601551, ""};
    addon.NextPatchAchievements[14961] = {14961, "Chains of Domination", 10, "Complete the storylines listed below.", 0, 3729814, ""};
    addon.NextPatchAchievements[15064] = {15064, "Breaking the Chains", 10, "Complete the achievements listed below.", 0, 3743311, "Mount Reward: Bracelet of Salarangor"};
    addon.NextPatchAchievements[15054] = {15054, "Minions of the Cold Dark", 15, "Defeat all of the Tormentors of Torghast special encounters in The Maw.", 0, 136122, ""};
    addon.NextPatchAchievements[14943] = {14943, "Guarmageddon", 10, "Defeat Ylva, the Mate of Guarm in the Maw while having five stacks of Blood of the Pack active.", 0, 1530369, ""};
    addon.NextPatchAchievements[15059] = {15059, "Death's Advance", 5, "Earn Exalted status with Death's Advance.", 0, 4083292, ""};
    addon.NextPatchAchievements[15065] = {15065, "Eye Wish You Were Here", 10, "Use the Scavenged S.E.L.F.I.E. Camera to take a picture of the Eye of the Jailer and the entire raid after it has cast Immediate Extermination, then defeat the Eye of the Jailer.", 0, 1109100, ""};
    addon.NextPatchAchievements[15066] = {15066, "Reliquary Restoration", 10, "Collect all of the Archivist's relics in Korthia.", 128, 4076799, ""};
    addon.NextPatchAchievements[15055] = {15055, "Friend of Ooz", 5, "Complete the \"Oozing with Character\" daily quest, with Ooz, 10 times.", 128, 3459153, ""};
    addon.NextPatchAchievements[15056] = {15056, "Friend of Bloop", 5, "Complete the \"Oozing with Character\" daily quest, with Bloop, 10 times.", 128, 651086, ""};
    addon.NextPatchAchievements[15057] = {15057, "Friend of Plaguey", 5, "Complete the \"Oozing with Character\" daily quest, with Plaguey, 10 times.", 128, 3459799, ""};
    addon.NextPatchAchievements[15053] = {15053, "Explore Korthia", 10, "Explore Korthia, revealing the covered areas of the world map.", 0, 3257863, ""};
    addon.NextPatchAchievements[15069] = {15069, "The Archivist's Codex", 5, "Earn Exalted status with The Archivist's Codex.", 0, 2178528, ""};
    addon.NextPatchAchievements[15045] = {15045, "Keystone Hero: The Necrotic Wake", 0, "Complete The Necrotic Wake at Mythic Level 20 or higher, within the time limit.", 2048, 3601560, "Reward: Teleport to The Necrotic Wake"};
    addon.NextPatchAchievements[15046] = {15046, "Keystone Hero: Plaguefall", 0, "Complete Plaguefall at Mythic Level 20 or higher, within the time limit.", 2048, 3601535, "Reward: Teleport to Plaguefall"};
    addon.NextPatchAchievements[15047] = {15047, "Keystone Hero: Mists of Tirna Scithe", 0, "Complete Mists of Tirna Scithe at Mythic Level 20 or higher, within the time limit.", 2048, 3601531, "Reward: Teleport to Mists of Tirna Scithe"};
    addon.NextPatchAchievements[15048] = {15048, "Keystone Hero: Halls of Atonement", 0, "Complete Halls of Atonement at Mythic Level 20 or higher, within the time limit.", 2048, 3601526, "Reward: Teleport to Halls of Atonement"};
    addon.NextPatchAchievements[15049] = {15049, "Keystone Hero: Spires of Ascension", 0, "Complete Spires of Ascension at Mythic Level 20 or higher, within the time limit.", 2048, 3601545, "Reward: Teleport to Spires of Ascension"};
    addon.NextPatchAchievements[15050] = {15050, "Keystone Hero: Theater of Pain", 0, "Complete Theater of Pain at Mythic Level 20 or higher, within the time limit.", 2048, 3601550, "Reward: Teleport to Theater of Pain"};
    addon.NextPatchAchievements[15051] = {15051, "Keystone Hero: De Other Side", 0, "Complete De Other Side at Mythic Level 20 or higher, within the time limit.", 2048, 3601561, "Reward: Teleport to De Other Side"};
    addon.NextPatchAchievements[15052] = {15052, "Keystone Hero: Sanguine Depths", 0, "Complete Sanguine Depths at Mythic Level 20 or higher, within the time limit.", 2048, 3601540, "Reward: Teleport to Sanguine Depths"};
    addon.NextPatchAchievements[15073] = {15073, "Shadowlands Keystone Explorer: Season Two", 0, "Attain a Mythic+ Rating of at least X during Shadowlands Season Two.", 133120, 618860, ""};
    addon.NextPatchAchievements[15058] = {15058, "I Used to Bullseye Deeprun Rats Back Home", 10, "Score a goal and then defeat the Remnant of Ner'zhul on Normal Raid difficulty or higher.", 0, 618973, ""};
    addon.NextPatchAchievements[14998] = {14998, "Name A Better Duo, I'll Wait", 10, "Defeat The Tarragrue after entering the mists and reuniting Moriaz with Buttons in the Sanctum of Domination on Normal difficulty or higher.", 0, 135451, ""};
    addon.NextPatchAchievements[15003] = {15003, "To the Nines", 10, "Defeat The Nine after forming a Shard of Destiny from 9 or more Fragments of Destiny in the Sanctum of Domination on Normal difficulty or higher.", 0, 1029742, ""};
    addon.NextPatchAchievements[15040] = {15040, "Retrograde Fate", 10, "Defeat Fatescribe Roh-Kalo after surviving Realign Fate while moving rings counterclockwise only in the Sanctum of Domination on Normal difficulty or higher.", 0, 4067928, ""};
    addon.NextPatchAchievements[15004] = {15004, "A Sly Fox", 5, "Find \"Sly\" each time he runs away.", 0, 3072461, "Pet Reward: Sly"};
    addon.NextPatchAchievements[15067] = {15067, "Adamant Vaults", 10, "Successfully complete the Adamant Vaults on any layer in Torghast, Tower of the Damned.", 0, 3853943, ""};
end

