local expansion, raids, raid, dungeons, dungeon;

-- Expansion
expansion = KrowiAF.AchievementCategory:New(GetCategoryInfo(15164)); -- Mists of Pandaria
-- expansion:AddAchievementIDs({}); -- Overarching achievements
tinsert(KrowiAF.Data, expansion);

    -- Raids
    raids = expansion:AddChild(KrowiAF.AchievementCategory:NewRaids());
    raids:AddAchievementIDs({6932, 8124, 8454}); -- Overarching achievements

        -- 5.0
            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(317)); -- Mogu'shan Vaults
            raid:AddAchievementIDs({6823, 6674, 7056, 7933, 6687, 6686, 6455}); -- Glory of the Pandaria Raider
            raid:AddAchievementIDs({6719, 6720, 6721, 6722, 6723, 6724}); -- Defeat X on Heroic Difficulty
            raid:AddAchievementIDs({6458, 6844}); -- Defeat the bosses in X
            raid:AddAchievement(6954, KrowiAF.AchievementType.FoS, false); -- Feats of Strength (Unobtainable)
            raid:AddAchievement(7485, KrowiAF.AchievementType.FoS, false); -- Feats of Strength (Unobtainable)

            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(330)); -- Heart of Fear
            raid:AddAchievementIDs({6937, 6936, 6553, 6683, 6518, 6922}); -- Glory of the Pandaria Raider
            raid:AddAchievementIDs({6725, 6726, 6727, 6728, 6729, 6730}); -- Defeat X on Heroic Difficulty
            raid:AddAchievementIDs({6718, 6845}); -- Defeat the bosses in X
            raid:AddAchievement(8246, KrowiAF.AchievementType.FoS, false); -- Feats of Strength (Unobtainable)
            raid:AddAchievement(7486, KrowiAF.AchievementType.FoS, false); -- Feats of Strength (Unobtainable)

            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(320)); -- Terrace of Endless Spring
            raid:AddAchievementIDs({6717, 6933, 6824, 6825}); -- Glory of the Pandaria Raider
            raid:AddAchievementIDs({6731, 6732, 6733, 6734}); -- Defeat X on Heroic Difficulty
            raid:AddAchievementIDs({6689}); -- Defeat the bosses in X
            raid:AddAchievement(8248, KrowiAF.AchievementType.FoS, false); -- Feats of Strength (Unobtainable)
            raid:AddAchievement(7487, KrowiAF.AchievementType.FoS, false); -- Feats of Strength (Unobtainable)

        -- 5.2
            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(362)); -- Throne of Thunder
            raid:AddAchievementIDs({8094, 8038, 8073, 8077, 8082, 8097, 8098, 8037, 8081, 8087, 8086, 8090}); -- Glory of the Thundering Raider
            raid:AddAchievementIDs({8056, 8057, 8058, 8059, 8060, 8061, 8062, 8063, 8064, 8065, 8066, 8067, 8068}); -- Defeat X on Heroic Difficulty
            raid:AddAchievementIDs({8069, 8070, 8071, 8072}); -- Defeat the bosses in X
            raid:AddAchievement(8089, KrowiAF.AchievementType.FoS, false); -- Feats of Strength (Unobtainable)
            raid:AddAchievement(8249, KrowiAF.AchievementType.FoS, false); -- Feats of Strength (Unobtainable)
            raid:AddAchievement(8238, KrowiAF.AchievementType.FoS, false); -- Feats of Strength (Unobtainable)
            raid:AddAchievement(8260, KrowiAF.AchievementType.FoS, false); -- Feats of Strength (Unobtainable)

        -- 5.4
            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(369)); -- Siege of Orgrimmar
            raid:AddAchievementIDs({8536, 8528, 8532, 8521, 8530, 8520, 8453, 8448, 8538, 8529, 8527, 8543, 8531, 8537}); -- Glory of the Orgrimmar Raider
            raid:AddAchievementIDs({8463, 8465, 8466, 8467, 8468, 8469, 8470, 8471, 8472, 8478, 8479, 8480, 8481, 8482}); -- Defeat X on Mythic Difficulty
            raid:AddAchievementIDs({8458, 8459, 8461, 8462}); -- Defeat the bosses in X
            if KrowiAF.IsAlliance then
                raid:AddAchievementIDs({8679}); -- Defeat X
            elseif KrowiAF.IsHorde then
                raid:AddAchievementIDs({8680}); -- Defeat X
            end
            raid:AddAchievement(8398, KrowiAF.AchievementType.FoS, false); -- Feats of Strength (Unobtainable)
            raid:AddAchievement(8399, KrowiAF.AchievementType.FoS, false); -- Feats of Strength (Unobtainable)
            raid:AddAchievement(8400, KrowiAF.AchievementType.FoS, false); -- Feats of Strength (Unobtainable)
            raid:AddAchievement(8401, KrowiAF.AchievementType.FoS, false); -- Feats of Strength (Unobtainable)

    -- Dungeons
        dungeons = expansion:AddChild(KrowiAF.AchievementCategory:NewDungeons());
        dungeons:AddAchievementIDs({6925, 6927}); -- Overarching achievements

        -- 5.0
            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(313)); -- Temple of the Jade Serpent
            dungeon:AddAchievementIDs({6475, 6460, 6671}); -- Glory of the Pandaria Hero
            dungeon:AddAchievementIDs({6757, 6758}); -- Defeat the bosses in X
            dungeon:AddAchievementFOSIDs({6884, 6885, 6886, 6887, 8430}); -- Challenge mode

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(302)); -- Stormstout Brewery
            dungeon:AddAchievementIDs({6402, 6089, 6400, 6420}); -- Glory of the Pandaria Hero
            dungeon:AddAchievementIDs({6457, 6456}); -- Defeat the bosses in X
            dungeon:AddAchievementFOSIDs({6888, 6889, 6890, 6891, 8431}); -- Challenge mode

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(321)); -- Mogu'shan Palace
            dungeon:AddAchievementIDs({6713, 6478, 6736}); -- Glory of the Pandaria Hero
            dungeon:AddAchievementIDs({6755, 6756}); -- Defeat the bosses in X
            dungeon:AddAchievementFOSIDs({6892, 6899, 6900, 6901, 8433}); -- Challenge mode

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(312)); -- Shado-Pan Monastery
            dungeon:AddAchievementIDs({6477, 6472, 6471}); -- Glory of the Pandaria Hero
            dungeon:AddAchievementIDs({6469, 6470}); -- Defeat the bosses in X
            dungeon:AddAchievementFOSIDs({6893, 6902, 6903, 6904, 8432}); -- Challenge mode

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(303)); -- Gate of the Setting Sun
            dungeon:AddAchievementIDs({6479, 6476, 6945}); -- Glory of the Pandaria Hero
            dungeon:AddAchievementIDs({10010, 6759}); -- Defeat the bosses in X
            dungeon:AddAchievementFOSIDs({6894, 6905, 6906, 6907, 8434}); -- Challenge mode

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(324)); -- Siege of Niuzao Temple
            dungeon:AddAchievementIDs({6688, 6485, 6822}); -- Glory of the Pandaria Hero
            dungeon:AddAchievementIDs({10011, 6763}); -- Defeat the bosses in X
            dungeon:AddAchievementFOSIDs({6898,  6917, 6918, 6919, 8439}); -- Challenge mode

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(311)); -- Scarlet Halls
            dungeon:AddAchievementIDs({6684, 6427}); -- Glory of the Pandaria Hero
            dungeon:AddAchievementIDs({7413, 6760}); -- Defeat the bosses in X
            dungeon:AddAchievementFOSIDs({6895, 6908, 6909, 6910, 8436}); -- Challenge mode

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(316)); -- Scarlet Monastery
            dungeon:AddAchievementIDs({6946, 6928, 6929}); -- Glory of the Pandaria Hero
            dungeon:AddAchievementIDs({637, 6761}); -- Defeat the bosses in X
            dungeon:AddAchievementFOSIDs({6896, 6911, 6912, 6913, 8437}); -- Challenge mode

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(246)); -- Scholomance
            dungeon:AddAchievementIDs({6531, 6394, 6396, 6715, 6821}); -- Glory of the Pandaria Hero
            dungeon:AddAchievementIDs({645, 6762}); -- Defeat the bosses in X
            dungeon:AddAchievementFOSIDs({6897, 6914, 6915, 6916, 8438}); -- Challenge mode
