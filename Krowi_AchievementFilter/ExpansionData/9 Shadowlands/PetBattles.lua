local _, addon = ...; -- Global addon namespace
addon.Shadowlands.PetBattles = {}; -- Global expansion Pet Battles namespace
local petBattles = addon.Shadowlands.PetBattles; -- Local expansion Pet Battles namespace

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

local function GetFELinks(achievementID, firstCriteriaXuFuID, headerName)
    if headerName == nil then
        headerName = AF_XUFU;
    end
    local linkBase = "https://www.wow-petguide.com/?m=FamilyExorcist&s=";
    local item = addon.Objects.AchievementRightClickMenuItem:NewExtLink(headerName, linkBase .. firstCriteriaXuFuID);

    -- Offsets are based on wow-petguide.com IDs
    item:AddChildAchCritInfoExtLinkFull(achievementID, 1, linkBase .. firstCriteriaXuFuID); -- Sylla
    item:AddChildAchCritInfoExtLinkFull(achievementID, 2, linkBase .. firstCriteriaXuFuID + 1); -- Eyegor
    item:AddChildAchCritInfoExtLinkFull(achievementID, 3, linkBase .. firstCriteriaXuFuID + 2); -- Addius the Tormenter
    item:AddChildAchCritInfoExtLinkFull(achievementID, 4, linkBase .. firstCriteriaXuFuID - 3); -- Rotgut
    item:AddChildAchCritInfoExtLinkFull(achievementID, 5, linkBase .. firstCriteriaXuFuID - 2); -- Dundley Stickyfingers
    item:AddChildAchCritInfoExtLinkFull(achievementID, 6, linkBase .. firstCriteriaXuFuID - 4); -- Caregiver Maximillian
    item:AddChildAchCritInfoExtLinkFull(achievementID, 7, linkBase .. firstCriteriaXuFuID - 7); -- Zolla
    item:AddChildAchCritInfoExtLinkFull(achievementID, 8, linkBase .. firstCriteriaXuFuID - 6); -- Thenia
    item:AddChildAchCritInfoExtLinkFull(achievementID, 9, linkBase .. firstCriteriaXuFuID - 8); -- Stratios
    item:AddChildAchCritInfoExtLinkFull(achievementID, 10, linkBase .. firstCriteriaXuFuID + 4); -- Glitterdust
    item:AddChildAchCritInfoExtLinkFull(achievementID, 11, linkBase .. firstCriteriaXuFuID + 5); -- Faryl

    return item;
end

local function GetFEMetaLinks(achievementID)
    local linkBase = "https://www.wow-petguide.com/?m=FamilyExorcist&s=";
    local item = addon.Objects.AchievementRightClickMenuItem:NewExtLink(AF_XUFU, linkBase);

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

local function GetAAotALinks(achievementID, firstCriteriaXuFuID)
    local linkBase = "https://www.wow-petguide.com/index.php?m=AbhorrentAdversaries&s=";
    local item = addon.Objects.AchievementRightClickMenuItem:NewExtLink(AF_XUFU, linkBase);

    item:AddChildAchCritInfoExtLinkFull(achievementID, 1, linkBase .. firstCriteriaXuFuID); -- Crystalsnap
    item:AddChildAchCritInfoExtLinkFull(achievementID, 2, linkBase .. firstCriteriaXuFuID + 7); -- Briarpaw
    item:AddChildAchCritInfoExtLinkFull(achievementID, 3, linkBase .. firstCriteriaXuFuID + 8); -- Chittermaw
    item:AddChildAchCritInfoExtLinkFull(achievementID, 4, linkBase .. firstCriteriaXuFuID + 9); -- Mistwing
    item:AddChildAchCritInfoExtLinkFull(achievementID, 5, linkBase .. firstCriteriaXuFuID + 5); -- Sewer Creeper
    item:AddChildAchCritInfoExtLinkFull(achievementID, 6, linkBase .. firstCriteriaXuFuID + 6); -- The Countess
    item:AddChildAchCritInfoExtLinkFull(achievementID, 7, linkBase .. firstCriteriaXuFuID + 1); -- Digallo
    item:AddChildAchCritInfoExtLinkFull(achievementID, 8, linkBase .. firstCriteriaXuFuID + 3); -- Gelatinous
    item:AddChildAchCritInfoExtLinkFull(achievementID, 9, linkBase .. firstCriteriaXuFuID + 2); -- Kostos
    item:AddChildAchCritInfoExtLinkFull(achievementID, 10, linkBase .. firstCriteriaXuFuID + 4); -- Glurp

    return item;
end

function petBattles.Load(expansion)
    local catZones = expansion:AddCatPetBattles();
    catZones:AddAchievementIDs(14867);
    catZones:AddAchievementFull(14868):AddRCMenExtra(GetFELinks(14868, familyID.Aquatic)); -- Aquatic Apparitions
    catZones:AddAchievementFull(14869):AddRCMenExtra(GetFELinks(14869, familyID.Beast)); -- Beast Busters
    catZones:AddAchievementFull(14870):AddRCMenExtra(GetFELinks(14870, familyID.Critter)); -- Creepy Critters
    catZones:AddAchievementFull(14871):AddRCMenExtra(GetFELinks(14871, familyID.Dragonkin)); -- Deathly Dragonkin
    catZones:AddAchievementFull(14872):AddRCMenExtra(GetFELinks(14872, familyID.Elemental)); -- Eerie Elementals
    catZones:AddAchievementFull(14873):AddRCMenExtra(GetFELinks(14873, familyID.Flying)); -- Flickering Fliers
    catZones:AddAchievementFull(14874):AddRCMenExtra(GetFELinks(14874, familyID.Humanoid)); -- Haunted Humanoids
    catZones:AddAchievementFull(14875):AddRCMenExtra(GetFELinks(14875, familyID.Magic)); -- Mummified Magics
    catZones:AddAchievementFull(14876):AddRCMenExtra(GetFELinks(14876, familyID.Mechanical)); -- Macabre Mechanicals
    catZones:AddAchievementFull(14877):AddRCMenExtra(GetFELinks(14877, familyID.Undead)); -- Unholy Undead
    catZones:AddAchievementFull(14879):AddRCMenExtra(GetFEMetaLinks(14879)); -- Family Exorcist
    catZones:AddAchievementFull(14881):AddRCMenExtra(GetAAotALinks(14881, 1199)); -- Abhorrent Adverdaries of the Afterlife
end