local dungeons, dungeon;

dungeons = Xpack_BfA:AddSubsection(KrowiAF.AchievementSubsection.Dungeons);
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
    dungeon:AddAchievementFOSIDs({13789});  -- Feats of Strength (Unobtainable)