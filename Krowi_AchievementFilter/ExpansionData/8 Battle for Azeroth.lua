local expansion, raids, raid, dungeons, dungeon;

-- Expansion
expansion = KrowiAF.AchievementCategory:New(GetCategoryInfo(15305)); -- Battle for Azeroth
-- expansion:AddAchievementIDs({}); -- Overarching achievements
tinsert(KrowiAF.Data, expansion);

    -- Raids
        raids = expansion:AddChild(KrowiAF.AchievementCategory:NewRaids());
        raids:AddAchievementIDs({12806, 13315, 13687, 14146}); -- Overarching achievements

        -- 8.0
            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(1031)); -- Uldir
            raid:AddAchievementIDs({12937, 12938, 12828, 12823, 12772, 12830, 12836, 12551}); -- Glory of the Uldir Raider
            raid:AddAchievementIDs({12521, 12522, 12523}); -- Defeat the bosses in X
            raid:AddAchievementIDs({12524, 12526, 12527, 12530, 12529, 12531, 12532, 12533}); -- Defeat X on Mythic Difficulty
            raid:AddAchievementFOSIDs({12536, 12535}); -- Feats of Strength (Unobtainable)

        -- 8.1
            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(1176)); -- Battle of Dazar'alor
            raid:AddAchievementIDs({13316}); -- Glory of the Dazar'alor Raider
            if KrowiAF.IsAlliance then
                raid:AddAchievementIDs({13431, 13383}); -- Glory of the Dazar'alor Raider
            elseif KrowiAF.IsHorde then
                raid:AddAchievementIDs({13383, 13431}); -- Glory of the Dazar'alor Raider
            end
            raid:AddAchievementIDs({13345, 13325, 13425, 13401, 13430, 13410}); -- Glory of the Dazar'alor Raider
            if KrowiAF.IsAlliance then
                raid:AddAchievementIDs({13286, 13287, 13288}); -- Defeat the bosses in X
            elseif KrowiAF.IsHorde then
                raid:AddAchievementIDs({13289, 13290, 13291}); -- Defeat the bosses in X
            end
            raid:AddAchievementIDs({13292}); -- Defeat X on Mythic Difficulty
            if KrowiAF.IsAlliance then
                raid:AddAchievementIDs({13298, 13293}); -- Defeat X on Mythic Difficulty
            elseif KrowiAF.IsHorde then
                raid:AddAchievementIDs({13293, 13295}); -- Defeat X on Mythic Difficulty
            end
            raid:AddAchievementIDs({13299, 13300, 13311, 13312, 13313, 13314}); -- Defeat X on Mythic Difficulty
            raid:AddAchievementFOSIDs({13322, 13323}); -- Feats of Strength (Unobtainable)

            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(1177)); -- Crucible of Storms
            raid:AddAchievementIDs({13501, 13506}); -- No Glory available
            raid:AddAchievementIDs({13414, 13415}); -- Defeat the bosses in X
            raid:AddAchievementIDs({13416, 13417}); -- Defeat X on Mythic Difficulty
            raid:AddAchievementFOSIDs({13418, 13419}); -- Feats of Strength (Unobtainable)

        -- 8.2
            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(1179)); -- Eternal Palace
            raid:AddAchievementIDs({13684, 13628, 13767, 13629, 13724, 13633, 13716, 13768}); -- Glory of the Eternal Raider
            raid:AddAchievementIDs({13718, 13719, 13725}); -- Defeat the bosses in X
            raid:AddAchievementIDs({13726, 13728, 13727, 13729, 13730, 13731, 13732, 13733}); -- Defeat X on Mythic Difficulty
            raid:AddAchievementFOSIDs({13784, 13785}); -- Feats of Strength (Unobtainable)

        -- 8.3
            raid = raids:AddChild(KrowiAF.AchievementCategory:NewEJ(1180)); -- Ny'alotha, the Waking City
            raid:AddAchievementIDs({14019, 14008, 14037, 14024, 14139, 14023, 13999, 13990, 14026, 14038, 14147, 14148}); -- Glory of the Ny'alotha Raider
            raid:AddAchievementIDs({14193, 14194, 14195, 14196}); -- Defeat the bosses in X
            raid:AddAchievementIDs({14041, 14043, 14044, 14045, 14050, 14046, 14051, 14048, 14049, 14052, 14054, 14055}); -- Defeat X on Mythic Difficulty
            raid:AddAchievementFOSIDs({14068, 14069}); -- Feats of Strength (Unobtainable)

    -- Dungeons
        dungeons = expansion:AddChild(KrowiAF.AchievementCategory:NewDungeons());
        dungeons:AddAchievementIDs({12807, 12812, 13075, 12489}); -- Overarching achievements
        -- Not sure to put 12489 here on in both dungeons, put it here for now

        -- 8.0
            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(1001)); -- Freehold
            dungeon:AddAchievementIDs({12550, 12548, 12998}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({12831, 12832, 12833}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(1021)); -- Waycrest Manor
            dungeon:AddAchievementIDs({12495, 12490}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({12483, 12484, 12488}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(1036)); -- Shrine of the Storm
            dungeon:AddAchievementIDs({12600, 12601, 12602}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({12835, 12837, 12838}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(968)); -- Atal'Dazar
            dungeon:AddAchievementIDs({12270, 12272, 12273}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({12824, 12825, 12826}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(1022)); -- Underrot
            dungeon:AddAchievementIDs({12498, 12549, 12499}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({12500, 12501, 12502}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(1030)); -- Temple of Sethraliss
            dungeon:AddAchievementIDs({12507, 12503, 12508}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({12504, 12505, 12506}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(1002)); -- Tol Dagor
            dungeon:AddAchievementIDs({12457, 12462}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({12840, 12841, 12842}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(1012)); -- The MOTHERLODE!!
            dungeon:AddAchievementIDs({12855, 12854}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({12844, 12845, 12846}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(1023)); -- Siege of Boralus
            dungeon:AddAchievementIDs({12727, 12726}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({12847}); -- Defeat the bosses in X

            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(1041)); -- Kings' Rest
            dungeon:AddAchievementIDs({12722, 12721, 12723}); -- Glory of the Wartorn Hero
            dungeon:AddAchievementIDs({12848}); -- Defeat the bosses in X

        -- 8.2
            dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(1178)); -- Operation: Mechagon
            dungeon:AddAchievementIDs({13706, 13698, 13723, 13545, 13624}); -- No Glory available
            -- dungeon:AddAchievementIDs({}); -- Defeat the bosses in X
            raid:AddAchievementFOSIDs({13789});  -- Feats of Strength (Unobtainable)