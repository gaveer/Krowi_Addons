-- [[ Namespaces ]] --
local _, addon = ...;
addon.ShadowlandsPetBattles = {};
local petBattles = addon.ShadowlandsPetBattles;

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

function petBattles.LoadRCMenExtra(rcMenExtras)
    rcMenExtras[14625] = GetBitSLinks(14625); -- Battle in the Shadowlands
    rcMenExtras[14868] = GetFELinks(14868, familyID.Aquatic); -- Aquatic Apparitions
    rcMenExtras[14869] = GetFELinks(14869, familyID.Beast); -- Beast Busters
    rcMenExtras[14870] = GetFELinks(14870, familyID.Critter); -- Creepy Critters
    rcMenExtras[14871] = GetFELinks(14871, familyID.Dragonkin); -- Deathly Dragonkin
    rcMenExtras[14872] = GetFELinks(14872, familyID.Elemental); -- Eerie Elementals
    rcMenExtras[14873] = GetFELinks(14873, familyID.Flying); -- Flickering Fliers
    rcMenExtras[14874] = GetFELinks(14874, familyID.Humanoid); -- Haunted Humanoids
    rcMenExtras[14875] = GetFELinks(14875, familyID.Magic); -- Mummified Magics
    rcMenExtras[14876] = GetFELinks(14876, familyID.Mechanical); -- Macabre Mechanicals
    rcMenExtras[14877] = GetFELinks(14877, familyID.Undead); -- Unholy Undead
    rcMenExtras[14879] = GetFEMetaLinks(14879); -- Family Exorcist
    rcMenExtras[14881] = GetAAotALinks(14881); -- Abhorrent Adverdaries of the Afterlife
end