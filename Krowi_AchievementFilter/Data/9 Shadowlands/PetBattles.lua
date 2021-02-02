-- [[ Namespaces ]] --
local _, addon = ...;
addon.Shadowlands.PetBattles = {};
local petBattles = addon.Shadowlands.PetBattles;

local familyID = {
    Aquatic = 1338,
    Beast = 1323,
    Critter = 1278,
    Dragonkin = 1233,
    Elemental = 1308,
    Flying = 1248,
    Humanoid = 1218,
    Magic = 1293,
    Mechanical = 1353,
    Undead = 1263
}

local function GetBitSLinks(achievementID)
    local linkBase = "https://www.wow-petguide.com/index.php?m=ShadowlandsWQs&s=";
    local item = addon.Objects.MenuItem:NewExtLink(addon.L["XUFU"], linkBase);

    item:AddChildCritExtLinkFull(achievementID, 1, linkBase .. 1197); -- Ardenweald's Tricksters
    item:AddChildCritExtLinkFull(achievementID, 2, linkBase .. 1196); -- Airborne Defense Force
    item:AddChildCritExtLinkFull(achievementID, 3, linkBase .. 1195); -- Lurking In The Shadows
    item:AddChildCritExtLinkFull(achievementID, 4, linkBase .. 1194); -- Natural Defenders
    item:AddChildCritExtLinkFull(achievementID, 5, linkBase .. 1192); -- The Mind Games of Addius
    item:AddChildCritExtLinkFull(achievementID, 6, linkBase .. 1191); -- Eyegor's Special Friends
    item:AddChildCritExtLinkFull(achievementID, 7, linkBase .. 1190); -- Resilient Survivors
    item:AddChildCritExtLinkFull(achievementID, 8, linkBase .. 1189); -- Ashes Will Fall
    item:AddChildCritExtLinkFull(achievementID, 9, linkBase .. 1187); -- Failed Experiment
    item:AddChildCritExtLinkFull(achievementID, 10, linkBase .. 1186); -- Uncomfortably Undercover
    item:AddChildCritExtLinkFull(achievementID, 11, linkBase .. 1185); -- Extra Pieces
    item:AddChildCritExtLinkFull(achievementID, 12, linkBase .. 1184); -- Mighty Minions of Maldraxxus
    item:AddChildCritExtLinkFull(achievementID, 13, linkBase .. 1182); -- Thenia's Loyal Companions
    item:AddChildCritExtLinkFull(achievementID, 14, linkBase .. 1180); -- Micro Defense Force
    item:AddChildCritExtLinkFull(achievementID, 15, linkBase .. 1179); -- Cliffs of Bastion
    item:AddChildCritExtLinkFull(achievementID, 16, linkBase .. 1181); -- Mega Bite

    return item;
end

local function GetFELinks(achievementID, firstCriteriaXuFuID, headerName)
    if headerName == nil then
        headerName = addon.L["XUFU"];
    end
    local linkBase = "https://www.wow-petguide.com/?m=FamilyExorcist&s=";
    local item = addon.Objects.MenuItem:NewExtLink(headerName, linkBase .. firstCriteriaXuFuID);

    -- Offsets are based on wow-petguide.com IDs
    item:AddChildCritExtLinkFull(achievementID, 1, linkBase .. firstCriteriaXuFuID); -- Sylla
    item:AddChildCritExtLinkFull(achievementID, 2, linkBase .. firstCriteriaXuFuID + 1); -- Eyegor
    item:AddChildCritExtLinkFull(achievementID, 3, linkBase .. firstCriteriaXuFuID + 2); -- Addius the Tormenter
    item:AddChildCritExtLinkFull(achievementID, 4, linkBase .. firstCriteriaXuFuID - 3); -- Rotgut
    item:AddChildCritExtLinkFull(achievementID, 5, linkBase .. firstCriteriaXuFuID - 2); -- Dundley Stickyfingers
    item:AddChildCritExtLinkFull(achievementID, 6, linkBase .. firstCriteriaXuFuID - 4); -- Caregiver Maximillian
    item:AddChildCritExtLinkFull(achievementID, 7, linkBase .. firstCriteriaXuFuID - 7); -- Zolla
    item:AddChildCritExtLinkFull(achievementID, 8, linkBase .. firstCriteriaXuFuID - 6); -- Thenia
    item:AddChildCritExtLinkFull(achievementID, 9, linkBase .. firstCriteriaXuFuID - 8); -- Stratios
    item:AddChildCritExtLinkFull(achievementID, 10, linkBase .. firstCriteriaXuFuID + 4); -- Glitterdust
    item:AddChildCritExtLinkFull(achievementID, 11, linkBase .. firstCriteriaXuFuID + 5); -- Faryl

    return item;
end

local function GetFEMetaLinks(achievementID)
    local linkBase = "https://www.wow-petguide.com/?m=FamilyExorcist&s=";
    local item = addon.Objects.MenuItem:NewExtLink(addon.L["XUFU"], linkBase);

    local criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 1);
    item:AddChild(GetFELinks(assetID, familyID.Aquatic, criteriaString));
    criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 2);
    item:AddChild(GetFELinks(assetID, familyID.Beast, criteriaString));
    criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 3);
    item:AddChild(GetFELinks(assetID, familyID.Critter, criteriaString));
    criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 4);
    item:AddChild(GetFELinks(assetID, familyID.Dragonkin, criteriaString));
    criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 5);
    item:AddChild(GetFELinks(assetID, familyID.Elemental, criteriaString));
    criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 6);
    item:AddChild(GetFELinks(assetID, familyID.Flying, criteriaString));
    criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 7);
    item:AddChild(GetFELinks(assetID, familyID.Humanoid, criteriaString));
    criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 8);
    item:AddChild(GetFELinks(assetID, familyID.Magic, criteriaString));
    criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 9);
    item:AddChild(GetFELinks(assetID, familyID.Mechanical, criteriaString));
    criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 10);
    item:AddChild(GetFELinks(assetID, familyID.Undead, criteriaString));

    return item;
end

local function GetAAotALinks(achievementID)
    local linkBase = "https://www.wow-petguide.com/index.php?m=AbhorrentAdversaries&s=";
    local item = addon.Objects.MenuItem:NewExtLink(addon.L["XUFU"], linkBase);

    item:AddChildCritExtLinkFull(achievementID, 1, linkBase .. 1199); -- Crystalsnap
    item:AddChildCritExtLinkFull(achievementID, 2, linkBase .. 1206); -- Briarpaw
    item:AddChildCritExtLinkFull(achievementID, 3, linkBase .. 1207); -- Chittermaw
    item:AddChildCritExtLinkFull(achievementID, 4, linkBase .. 1208); -- Mistwing
    item:AddChildCritExtLinkFull(achievementID, 5, linkBase .. 1204); -- Sewer Creeper
    item:AddChildCritExtLinkFull(achievementID, 6, linkBase .. 1205); -- The Countess
    item:AddChildCritExtLinkFull(achievementID, 7, linkBase .. 1200); -- Digallo
    item:AddChildCritExtLinkFull(achievementID, 8, linkBase .. 1202); -- Gelatinous
    item:AddChildCritExtLinkFull(achievementID, 9, linkBase .. 1201); -- Kostos
    item:AddChildCritExtLinkFull(achievementID, 10, linkBase .. 1203); -- Glurp

    return item;
end

function petBattles.Load(expansion)
    local catZones = expansion:AddCatPetBattles();
    catZones:AddAchievementIDs(14867);
    local achievement = catZones:AddNewAchievement(14625);
    achievement:AddRCMenExtra(GetBitSLinks(achievement.ID));
    achievement = catZones:AddNewAchievement(14868); -- Aquatic Apparitions
    achievement:AddRCMenExtra(GetFELinks(achievement.ID, familyID.Aquatic));
    achievement = catZones:AddNewAchievement(14869); -- Beast Busters
    achievement:AddRCMenExtra(GetFELinks(achievement.ID, familyID.Beast));
    achievement = catZones:AddNewAchievement(14870); -- Creepy Critters
    achievement:AddRCMenExtra(GetFELinks(achievement.ID, familyID.Critter));
    achievement = catZones:AddNewAchievement(14871); -- Deathly Dragonkin
    achievement:AddRCMenExtra(GetFELinks(achievement.ID, familyID.Dragonkin));
    achievement = catZones:AddNewAchievement(14872); -- Eerie Elementals
    achievement:AddRCMenExtra(GetFELinks(achievement.ID, familyID.Elemental));
    achievement = catZones:AddNewAchievement(14873); -- Flickering Fliers
    achievement:AddRCMenExtra(GetFELinks(achievement.ID, familyID.Flying));
    achievement = catZones:AddNewAchievement(14874); -- Haunted Humanoids
    achievement:AddRCMenExtra(GetFELinks(achievement.ID, familyID.Humanoid));
    achievement = catZones:AddNewAchievement(14875); -- Mummified Magics
    achievement:AddRCMenExtra(GetFELinks(achievement.ID, familyID.Magic));
    achievement = catZones:AddNewAchievement(14876); -- Macabre Mechanicals
    achievement:AddRCMenExtra(GetFELinks(achievement.ID, familyID.Mechanical));
    achievement = catZones:AddNewAchievement(14877); -- Unholy Undead
    achievement:AddRCMenExtra(GetFELinks(achievement.ID, familyID.Undead));
    achievement = catZones:AddNewAchievement(14879); -- Family Exorcist
    achievement:AddRCMenExtra(GetFEMetaLinks(achievement.ID));
    achievement = catZones:AddNewAchievement(14881); -- Abhorrent Adverdaries of the Afterlife
    achievement:AddRCMenExtra(GetAAotALinks(achievement.ID));
end