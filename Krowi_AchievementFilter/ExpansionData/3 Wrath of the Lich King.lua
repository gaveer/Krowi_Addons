local expansion, raids, raid, version, dungeons, dungeon;

-- Expansion
expansion = KrowiAF.AchievementCategory:New(GetCategoryInfo(14866)); -- Wrath of the Lich King
-- expansion:AddAchievementIDs({}); -- Overarching achievements
tinsert(KrowiAF.Data, expansion);

    -- Raids
        raids = expansion:AddChild(KrowiAF.AchievementCategory:NewRaids());
        raids:AddAchievementIDs({2137, 2138, 12401, 4602, 4603}); -- Overarching achievements
        raids:AddAchievementFOSIDs({2957, 2958}); -- Feats of Strength (Unobtainable)

        -- 3.0
            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(753)); -- Vault of Archavon
            version = raid:AddChild(KrowiAF.AchievementCategory:New(GetDifficultyInfo(3))); -- 10 player
            version:AddAchievementIDs({4016}); -- No Glory available
            version:AddAchievementIDs({1722, 3136 --[[3.1]], 3836 --[[3.2]], 4585 --[[3.3]]}); -- Defeat X
            version = raid:AddChild(KrowiAF.AchievementCategory:New(GetDifficultyInfo(4))); -- 25 player
            version:AddAchievementIDs({4017}); -- No Glory available
            version:AddAchievementIDs({1721, 3137 --[[3.1]], 3837 --[[3.2]], 4586 --[[3.3]]}); -- Defeat X

            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(754)); -- Naxxramas
            version = raid:AddChild(KrowiAF.AchievementCategory:New(GetDifficultyInfo(3))); -- 10 player
            version:AddAchievementIDs({1997, 1858, 1856, 2178, 2180, 1996, 2182, 2176, 2146, 2184, 578}); -- Glory of the Raider (10 player)
            version:AddAchievementIDs({562, 564, 566, 568, 572, 574, 576}); -- Defeat the bosses in X
            version:AddAchievementFOSIDs({2187}); -- Feats of Strength (Unobtainable)
            version = raid:AddChild(KrowiAF.AchievementCategory:New(GetDifficultyInfo(4))); -- 25 player
            version:AddAchievementIDs({2140, 1859, 1857, 2179, 2181, 2139, 2183, 2177, 2147, 2185, 579}); -- Glory of the Raider (25 player)
            version:AddAchievementIDs({563, 565, 567, 569, 573, 575, 577}); -- Defeat the bosses in X
            version:AddAchievementFOSIDs({2186}); -- Feats of Strength (Unobtainable)

            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(755)); -- Obsidian Sanctum
            version = raid:AddChild(KrowiAF.AchievementCategory:New(GetDifficultyInfo(3))); -- 10 player
            version:AddAchievementIDs({2047, 2049, 2050, 2051, 624}); -- Glory of the Raider (10 player)
            version:AddAchievementIDs({1876}); -- Defeat the bosses in X
            version = raid:AddChild(KrowiAF.AchievementCategory:New(GetDifficultyInfo(4))); -- 25 player
            version:AddAchievementIDs({2048, 2052, 2053, 2054, 1877}); -- Glory of the Raider (25 player)

            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(756)); -- Eye of Eternity
            version = raid:AddChild(KrowiAF.AchievementCategory:New(GetDifficultyInfo(3))); -- 10 player
            version:AddAchievementIDs({2148, 1874, 1869}); -- Glory of the Raider (10 player)
            version:AddAchievementIDs({622}); -- Defeat the bosses in X
            version = raid:AddChild(KrowiAF.AchievementCategory:New(GetDifficultyInfo(4))); -- 25 player
            version:AddAchievementIDs({2149, 1875, 1870}); -- Glory of the Raider (25 player)
            version:AddAchievementIDs({623}); -- Defeat the bosses in X

        -- 3.1
            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(759)); -- Ulduar
            raid:AddAchievementIDs({12312, 12314, 12313, 12316, 12315, 12317, 12318, 12319, 12320, -- Flame Leviathan
                                    12323, 12324, 12325, -- Ignis the Furnace
                                    12321, 12322, -- Razorscale
                                    12326, 12327, 12328, 12329, 12330, -- XT-002 Deconstructor
                                    12335, 12336, 12332, 12333, 12334, -- Assembly of Iron
                                    12339, 12340, 12337, 12338, -- Kologarn
                                    12342, 12341, -- Auriaya
                                    12343, 12344, 12345, 12346, 12347, -- Hodir
                                    12348, 12349, 12350, 12351, 12352, -- Thorim
                                    12360, 12361, 12362, 12363, 12364, 12365, 12366, -- Freya
                                    12367, 12368, 12369, -- Mimiron
                                    12372, 12373, -- General Vezax
                                    12384, 12395, 12396, 12397, 12398, 12385, 12386, 12387, 12388, -- Yogg-Saron
                                    12400 -- Algalon the Observer
                                }); -- Glory of the Ulduar Raider
            raid:AddAchievementIDs({12297, 12302, 12309, 12310, 12311, 12399}); -- Defeat the bosses in X
            version = raid:AddChild(KrowiAF.AchievementCategory:New(GetDifficultyInfo(3) .. " (" .. GetCategoryInfo(15234) .. ")"));
            version:AddAchievementFOSIDs({3097, 2907, 2905, 2911, 2909, 2913, 2914, 2915, 3056, -- Flame Leviathan
                                            2925, 2927, 2930, -- Ignis the Furnace
                                            2919, 2923, -- Razorscale
                                            2931, 2933, 2934, 2937, 3058, -- XT-002 Deconstructor
                                            2945, 2947, 2939, 2940, 2941, -- Assembly of Iron
                                            2955, 2959, 2951, 2953, -- Kologarn
                                            3076, 3006, -- Auriaya
                                            2961, 2963, 2967, 2969, 3182, -- Hodir
                                            2971, 2973, 2975, 2977, 3176, -- Thorim
                                            2979, 2980, 2985, 2982, 3177, 3178, 3179, -- Freya
                                            2989, 3138, 3180, -- Mimiron
                                            2996, 3181, -- General Vezax
                                            3009, 3008, 3012, 3014, 3015, 3157, 3141, 3158, 3159, -- Yogg-Saron
                                            3003 -- Algalon the Observer
                                        }); -- Glory of the Ulduar Raider (10 player)
            version:AddAchievementFOSIDs({2886, 2888, 2890, 2892, 2894, 3036}); -- Defeat the bosses in X
            version = raid:AddChild(KrowiAF.AchievementCategory:New(GetDifficultyInfo(4) .. " (" .. GetCategoryInfo(15234) .. ")"));
            version:AddAchievementFOSIDs({3098, 2908, 2906, 2912, 2910, 2918, 2916, 2917, 3057, -- Flame Leviathan
                                            2926, 2928, 2929, -- Ignis the Furnace
                                            2921, 2924, -- Razorscale
                                            2932, 2935, 2936, 2938, 3059, -- XT-002 Deconstructor
                                            2946, 2948, 2942, 2943, 2944, -- Assembly of Iron
                                            2956, 2960, 2952, 2954, -- Kologarn
                                            3077, 3007, -- Auriaya
                                            2962, 2965, 2968, 2970, 3184, -- Hodir
                                            2972, 2974, 2976, 2978, 3183, -- Thorim
                                            3118, 2981, 2984, 2983, 3185, 3186, 3187, -- Freya
                                            3237, 2995, 3189, -- Mimiron
                                            2997, 3188, -- General Vezax
                                            3011, 3010, 3013, 3017, 3016, 3161, 3162, 3163, 3164, -- Yogg-Saron
                                            3002 -- Algalon the Observer
                                        }); -- Glory of the Ulduar Raider (25 player)
            version:AddAchievementFOSIDs({2887, 2889, 2891, 2893, 2895, 3037}); -- Defeat the bosses in X

        -- 3.2
            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(757)); -- Trial of the Crusader
            version = raid:AddChild(KrowiAF.AchievementCategory:New(GetDifficultyInfo(3))); -- 10 player
            version:AddAchievementIDs({3797, 3936, 3996, 3798, 3799, 3800}); -- No Glory available
            version:AddAchievementIDs({3917, 3918}); -- Defeat the bosses in X
            version:AddAchievementFOSIDs({3808, 3809, 3810, 4080}); -- Feats of Strength (Unobtainable)
            version = raid:AddChild(KrowiAF.AchievementCategory:New(GetDifficultyInfo(4))); -- 25 player
            version:AddAchievementIDs({3813, 3937, 3997, 3815, 3816}); -- No Glory available
            version:AddAchievementIDs({3916, 3812}); -- Defeat the bosses in X
            version:AddAchievementFOSIDs({3817, 3818, 3819}); -- Feats of Strength (Unobtainable)
            if KrowiAF.IsAlliance then
                version:AddAchievementFOSIDs({4156}); -- Feats of Strength (Unobtainable)
            elseif KrowiAF.IsHorde then
                version:AddAchievementFOSIDs({4079}); -- Feats of Strength (Unobtainable)
            end

            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(760)); -- Onyxia's Lair
            version = raid:AddChild(KrowiAF.AchievementCategory:New(GetDifficultyInfo(3))); -- 10 player
            version:AddAchievementIDs({4402, 4403, 4404}); -- No Glory available
            version:AddAchievementIDs({4396}); -- Defeat the bosses in X
            version = raid:AddChild(KrowiAF.AchievementCategory:New(GetDifficultyInfo(4))); -- 25 player
            version:AddAchievementIDs({4405, 4406, 4407}); -- No Glory available
            version:AddAchievementIDs({4397}); -- Defeat the bosses in X

        -- 3.3
            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(758)); -- Icecrown Citadel
            version = raid:AddChild(KrowiAF.AchievementCategory:New(GetDifficultyInfo(3))); -- 10 player
            version:AddAchievementIDs({4534, 4535, 4536, 4537, 4577, 4538, 4578, 4582, 4539, 4579, 4580, 4601, 4581}); -- Glory of the Icecrown Raider (10 player)
            version:AddAchievementIDs({4531, 4528, 4529, 4527, 4530, 4532, 4628, 4629, 4630, 4631, 4583, 4636}); -- Defeat the bosses in X
            version = raid:AddChild(KrowiAF.AchievementCategory:New(GetDifficultyInfo(4))); -- 25 player
            version:AddAchievementIDs({4610, 4611, 4612, 4613, 4615, 4614, 4616, 4617, 4618, 4619, 4620, 4621, 4622}); -- Glory of the Icecrown Raider (25 player)
            version:AddAchievementIDs({4604, 4605, 4606, 4607, 4597, 4608, 4632, 4633, 4634, 4635, 4584, 4637}); -- Defeat the bosses in X

            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(761)); -- The Ruby Sanctum
            version = raid:AddChild(KrowiAF.AchievementCategory:New(GetDifficultyInfo(3))); -- 10 player
            -- version:AddAchievementIDs({}); -- No Glory available
            version:AddAchievementIDs({4817, 4818}); -- Defeat the bosses in X
            version = raid:AddChild(KrowiAF.AchievementCategory:New(GetDifficultyInfo(4))); -- 25 player
            -- version:AddAchievementIDs({}); -- No Glory available
            version:AddAchievementIDs({4815, 4816}); -- Defeat the bosses in X

    -- Dungeons
        dungeons = expansion:AddChild(KrowiAF.AchievementCategory:NewDungeons());
        dungeons:AddAchievementIDs({1288, 2136}); -- Overarching achievements

        -- 3.0
            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(285)); -- Utgarde Keep
            dungeon:AddAchievementIDs({1919}); -- Glory of the Hero
            dungeon:AddAchievementIDs({477, 489}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(281)); -- The Nexus
            dungeon:AddAchievementIDs({2150, 2037, 2036}); -- Glory of the Hero
            dungeon:AddAchievementIDs({478, 490}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(272)); -- Azjol-Nerub
            dungeon:AddAchievementIDs({1296, 1297, 1860}); -- Glory of the Hero
            dungeon:AddAchievementIDs({480, 491}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(271)); -- Ahn'kahet: The Old Kingdom
            dungeon:AddAchievementIDs({2038, 2056, 1862}); -- Glory of the Hero
            dungeon:AddAchievementIDs({481, 492}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(273)); -- Drak'Tharon Keep
            dungeon:AddAchievementIDs({2151, 2057, 2039}); -- Glory of the Hero
            dungeon:AddAchievementIDs({482, 493}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(283)); -- The Violet Hold
            dungeon:AddAchievementIDs({1865, 2041, 2153, 1816}); -- Glory of the Hero
            dungeon:AddAchievementIDs({483, 494}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(274)); -- Gundrak
            dungeon:AddAchievementIDs({2058, 2040, 1864, 2152}); -- Glory of the Hero
            dungeon:AddAchievementIDs({484, 495}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(277)); -- Halls of Stone
            dungeon:AddAchievementIDs({1866, 2154, 2155}); -- Glory of the Hero
            dungeon:AddAchievementIDs({485, 496}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(275)); -- Halls of Lightning
            dungeon:AddAchievementIDs({1834, 2042, 1867}); -- Glory of the Hero
            dungeon:AddAchievementIDs({486, 497}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(282)); -- The Oculus
            dungeon:AddAchievementIDs({1868, 2046, 2045, 2044, 1871}); -- Glory of the Hero
            dungeon:AddAchievementIDs({478, 498}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(286)); -- Utgarde Pinnacle
            dungeon:AddAchievementIDs({2043, 1873, 2156, 2157}); -- Glory of the Hero
            dungeon:AddAchievementIDs({488, 499}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(279)); -- The Culling of Stratholme
            dungeon:AddAchievementIDs({1872, 1817}); -- Glory of the Hero
            dungeon:AddAchievementIDs({479, 500}); -- Defeat the bosses in X

        -- 3.2
            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(284)); -- Trial of the Champion
            dungeon:AddAchievementIDs({3803, 3802, 3804}); -- No Glory available
            if KrowiAF.IsAlliance then
                version:AddAchievementIDs({4296, 4298}); -- Defeat the bosses in X
            elseif KrowiAF.IsHorde then
                version:AddAchievementIDs({3778, 4297}); -- Defeat the bosses in X
            end

        -- 3.3
            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(280)); -- The Forge of Souls
            dungeon:AddAchievementIDs({4522, 4523}); -- No Glory available
            dungeon:AddAchievementIDs({4516, 4519}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(278)); -- Pit of Saron
            dungeon:AddAchievementIDs({4524, 4525}); -- No Glory available
            dungeon:AddAchievementIDs({4517, 4520}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(276)); -- Halls of Reflection
            dungeon:AddAchievementIDs({4526}); -- No Glory available
            dungeon:AddAchievementIDs({4518, 4521}); -- Defeat the bosses in X