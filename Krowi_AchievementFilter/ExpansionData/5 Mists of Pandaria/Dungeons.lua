local dungeons, dungeon;

dungeons = Xpack_MoP:AddCategory(KrowiAF.AchievementSubsection.Dungeons);
dungeons:AddAchievementIDs({6925, 6927}); -- Overarching achievements

-- 5.0
    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(313)); -- Temple of the Jade Serpent
    dungeon:AddAchievementIDs({6475, 6460, 6671}); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs({6757, 6758}); -- Defeat the bosses in X
    dungeon:AddAchievementFOSIDs({6884, 6885, 6886, 6887, 8430}); -- Challenge mode (Unobtainable)

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(302)); -- Stormstout Brewery
    dungeon:AddAchievementIDs({6402, 6089, 6400, 6420}); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs({6457, 6456}); -- Defeat the bosses in X
    dungeon:AddAchievementFOSIDs({6888, 6889, 6890, 6891, 8431}); -- Challenge mode (Unobtainable)

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(321)); -- Mogu'shan Palace
    dungeon:AddAchievementIDs({6713, 6478, 6736}); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs({6755, 6756}); -- Defeat the bosses in X
    dungeon:AddAchievementFOSIDs({6892, 6899, 6900, 6901, 8433}); -- Challenge mode (Unobtainable)

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(312)); -- Shado-Pan Monastery
    dungeon:AddAchievementIDs({6477, 6472, 6471}); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs({6469, 6470}); -- Defeat the bosses in X
    dungeon:AddAchievementFOSIDs({6893, 6902, 6903, 6904, 8432}); -- Challenge mode (Unobtainable)

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(303)); -- Gate of the Setting Sun
    dungeon:AddAchievementIDs({6479, 6476, 6945}); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs({10010, 6759}); -- Defeat the bosses in X
    dungeon:AddAchievementFOSIDs({6894, 6905, 6906, 6907, 8434}); -- Challenge mode (Unobtainable)

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(324)); -- Siege of Niuzao Temple
    dungeon:AddAchievementIDs({6688, 6485, 6822}); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs({10011, 6763}); -- Defeat the bosses in X
    dungeon:AddAchievementFOSIDs({6898,  6917, 6918, 6919, 8439}); -- Challenge mode (Unobtainable)

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(311)); -- Scarlet Halls
    dungeon:AddAchievementIDs({6684, 6427}); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs({7413, 6760}); -- Defeat the bosses in X
    dungeon:AddAchievementFOSIDs({6895, 6908, 6909, 6910, 8436}); -- Challenge mode (Unobtainable)

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(316)); -- Scarlet Monastery
    dungeon:AddAchievementIDs({6946, 6928, 6929}); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs({637, 6761}); -- Defeat the bosses in X
    dungeon:AddAchievementFOSIDs({6896, 6911, 6912, 6913, 8437}); -- Challenge mode (Unobtainable)

    dungeon = dungeons:AddChild(KrowiAF.AchievementCategory:NewEJ(246)); -- Scholomance
    dungeon:AddAchievementIDs({6531, 6394, 6396, 6715, 6821}); -- Glory of the Pandaria Hero
    dungeon:AddAchievementIDs({645, 6762}); -- Defeat the bosses in X
    dungeon:AddAchievementFOSIDs({6897, 6914, 6915, 6916, 8438}); -- Challenge mode (Unobtainable)