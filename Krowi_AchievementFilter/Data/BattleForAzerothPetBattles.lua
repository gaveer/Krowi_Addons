-- [[ Namespaces ]] --
local _, addon = ...;
addon.BattleForAzerothPetBattles = {};
local petBattles = addon.BattleForAzerothPetBattles;

local familyID = {
    Aquatic = 982,
    Beast = 952,
    Critter = 862,
    Dragonkin = 772,
    Elemental = 922,
    Flying = 802,
    Humanoid = 742,
    Magic = 892,
    Mechanical = 1012,
    Undead = 832
}

local function GetBoZaKTLinks(achievementID)
    local linkBase = "https://www.wow-petguide.com/index.php?m=ShadowlandsWQs&s=";
    local item = addon.Objects.MenuItem:NewExtLink(addon.L["Xu-Fu's Pet Guides"], linkBase);

    item:AddChildCritExtLinkFull(achievementID, 1, linkBase .. 712); -- Crab People
    item:AddChildCritExtLinkFull(achievementID, 2, linkBase .. 707); -- This Little Piggy Has Sharp Tusks
    item:AddChildCritExtLinkFull(achievementID, 3, linkBase .. 706); -- Automated Chaos
    item:AddChildCritExtLinkFull(achievementID, 4, linkBase .. 711); -- Night Horrors
    item:AddChildCritExtLinkFull(achievementID, 5, linkBase .. 710); -- Rogue Azerite
    item:AddChildCritExtLinkFull(achievementID, 6, linkBase .. 709); -- What's the Buzz?
    item:AddChildCritExtLinkFull(achievementID, 7, linkBase .. 705); -- Sea Creatures Are Weird
    item:AddChildCritExtLinkFull(achievementID, 8, linkBase .. 704); -- Captured Evil
    item:AddChildCritExtLinkFull(achievementID, 9, linkBase .. 701); -- Not So Bad Down Here
    item:AddChildCritExtLinkFull(achievementID, 10, linkBase .. 702); -- Unbreakable
    item:AddChildCritExtLinkFull(achievementID, 11, linkBase .. 699); -- That's a Big Carcass
    item:AddChildCritExtLinkFull(achievementID, 12, linkBase .. 700); -- Strange Looking Dogs
    item:AddChildCritExtLinkFull(achievementID, 13, linkBase .. 720); -- Marshdwellers
    item:AddChildCritExtLinkFull(achievementID, 14, linkBase .. 719); -- Crawg in the Bog
    item:AddChildCritExtLinkFull(achievementID, 15, linkBase .. 722); -- Pack Leader
    item:AddChildCritExtLinkFull(achievementID, 16, linkBase .. 721); -- Accidental Dread
    item:AddChildCritExtLinkFull(achievementID, 17, linkBase .. 724); -- Keeyo's Champions of Vol'dun
    item:AddChildCritExtLinkFull(achievementID, 18, linkBase .. 727); -- Snakes on a Terrace
    item:AddChildCritExtLinkFull(achievementID, 19, linkBase .. 726); -- What Do You Mean, Mind Controlling Plants?
    item:AddChildCritExtLinkFull(achievementID, 20, linkBase .. 725); -- Desert Survivors
    item:AddChildCritExtLinkFull(achievementID, 21, linkBase .. 717); -- Critters are Friends, Not Food
    item:AddChildCritExtLinkFull(achievementID, 22, linkBase .. 714); -- Add More to the Collection
    item:AddChildCritExtLinkFull(achievementID, 23, linkBase .. 716); -- You've Never Seen Jammer Upset
    item:AddChildCritExtLinkFull(achievementID, 24, linkBase .. 715); -- Small Beginnings

    return item;
end

local function GetFBLinks(achievementID, firstCriteriaXuFuID, headerName)
    if headerName == nil then
        headerName = addon.L["Xu-Fu's Pet Guides"];
    end
    local linkBase = "https://www.wow-petguide.com/?m=FamilyBattler&s=";
    local item = addon.Objects.MenuItem:NewExtLink(headerName, linkBase .. firstCriteriaXuFuID);

    -- Offsets are based on wow-petguide.com IDs
    item:AddChildCritExtLinkFull(achievementID, 1, linkBase .. firstCriteriaXuFuID); -- Captain Hermes
    item:AddChildCritExtLinkFull(achievementID, 2, linkBase .. firstCriteriaXuFuID - 6); -- Eddie Fixit
    item:AddChildCritExtLinkFull(achievementID, 3, linkBase .. firstCriteriaXuFuID - 1); -- Dilbert McClint
    item:AddChildCritExtLinkFull(achievementID, 4, linkBase .. firstCriteriaXuFuID - 2); -- Fizzie Sparkwhistle
    item:AddChildCritExtLinkFull(achievementID, 5, linkBase .. firstCriteriaXuFuID - 3); -- Michael Skarn
    item:AddChildCritExtLinkFull(achievementID, 6, linkBase .. firstCriteriaXuFuID - 7); -- Ellie Vern
    item:AddChildCritExtLinkFull(achievementID, 7, linkBase .. firstCriteriaXuFuID - 8); -- Leana Darkwind
    item:AddChildCritExtLinkFull(achievementID, 8, linkBase .. firstCriteriaXuFuID - 11); -- Kwint
    item:AddChildCritExtLinkFull(achievementID, 9, linkBase .. firstCriteriaXuFuID - 13); -- Delia Hanako
    item:AddChildCritExtLinkFull(achievementID, 10, linkBase .. firstCriteriaXuFuID - 12); -- Burly
    item:AddChildCritExtLinkFull(achievementID, 11, linkBase .. firstCriteriaXuFuID + 8); -- Lozu
    item:AddChildCritExtLinkFull(achievementID, 12, linkBase .. firstCriteriaXuFuID + 10); -- Grady Prett
    item:AddChildCritExtLinkFull(achievementID, 13, linkBase .. firstCriteriaXuFuID + 9); -- Korval Darkbeard
    item:AddChildCritExtLinkFull(achievementID, 14, linkBase .. firstCriteriaXuFuID + 12); -- Keeyo
    item:AddChildCritExtLinkFull(achievementID, 15, linkBase .. firstCriteriaXuFuID + 15); -- Sizzik
    item:AddChildCritExtLinkFull(achievementID, 16, linkBase .. firstCriteriaXuFuID + 13); -- Kusa
    item:AddChildCritExtLinkFull(achievementID, 17, linkBase .. firstCriteriaXuFuID + 5); -- Karaga
    item:AddChildCritExtLinkFull(achievementID, 18, linkBase .. firstCriteriaXuFuID + 2); -- Talia Sparkbrow
    item:AddChildCritExtLinkFull(achievementID, 19, linkBase .. firstCriteriaXuFuID + 3); -- Zujai

    return item;
end

local function GetFBMetaLinks(achievementID)
    local linkBase = "https://www.wow-petguide.com/?m=FamilyBattler&s=";
    local item = addon.Objects.MenuItem:NewExtLink(addon.L["Xu-Fu's Pet Guides"], linkBase);

    local criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 1);
    item:AddChild(GetFBLinks(assetID, familyID.Aquatic, criteriaString));
    criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 2);
    item:AddChild(GetFBLinks(assetID, familyID.Beast, criteriaString));
    criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 3);
    item:AddChild(GetFBLinks(assetID, familyID.Critter, criteriaString));
    criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 4);
    item:AddChild(GetFBLinks(assetID, familyID.Dragonkin, criteriaString));
    criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 5);
    item:AddChild(GetFBLinks(assetID, familyID.Elemental, criteriaString));
    criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 6);
    item:AddChild(GetFBLinks(assetID, familyID.Flying, criteriaString));
    criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 7);
    item:AddChild(GetFBLinks(assetID, familyID.Humanoid, criteriaString));
    criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 8);
    item:AddChild(GetFBLinks(assetID, familyID.Magic, criteriaString));
    criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 9);
    item:AddChild(GetFBLinks(assetID, familyID.Mechanical, criteriaString));
    criteriaString, _, _, _, _, _, _, assetID = GetAchievementCriteriaInfo(achievementID, 10);
    item:AddChild(GetFBLinks(assetID, familyID.Undead, criteriaString));

    return item;
end

local function GetMMoMLinks(achievementID)
    local linkBase = "https://www.wow-petguide.com/index.php?m=Mechagon&s=";
    local item = addon.Objects.MenuItem:NewExtLink(addon.L["Xu-Fu's Pet Guides"], linkBase);

    item:AddChildCritExtLinkFull(achievementID, 1, linkBase .. 1095); -- Gnomefeaster
    item:AddChildCritExtLinkFull(achievementID, 2, linkBase .. 1099); -- Sputtertube
    item:AddChildCritExtLinkFull(achievementID, 3, linkBase .. 1096); -- Goldenbot XD
    item:AddChildCritExtLinkFull(achievementID, 4, linkBase .. 1100); -- Creakclank
    item:AddChildCritExtLinkFull(achievementID, 5, linkBase .. 1097); -- CK-9 Micro-Oppression Unit
    item:AddChildCritExtLinkFull(achievementID, 6, linkBase .. 1101); -- Unit 35
    item:AddChildCritExtLinkFull(achievementID, 7, linkBase .. 1098); -- Unit 6
    item:AddChildCritExtLinkFull(achievementID, 8, linkBase .. 1114); -- Unit 17

    return item;
end

local function GetNNoNLinks(achievementID)
    local linkBase = "https://www.wow-petguide.com/index.php?m=Nazjatar&s=";
    local item = addon.Objects.MenuItem:NewExtLink(addon.L["Xu-Fu's Pet Guides"], linkBase);

    item:AddChildCritExtLinkFull(achievementID, 1, linkBase .. 1102); -- Prince Wiggletail
    item:AddChildCritExtLinkFull(achievementID, 2, linkBase .. 1108); -- Chomp
    item:AddChildCritExtLinkFull(achievementID, 3, linkBase .. 1103); -- Silence
    item:AddChildCritExtLinkFull(achievementID, 4, linkBase .. 1109); -- Shadowspike Lurker
    item:AddChildCritExtLinkFull(achievementID, 5, linkBase .. 1104); -- Pearlhusk Crawler
    item:AddChildCritExtLinkFull(achievementID, 6, linkBase .. 1110); -- Elderspawn of Nalaada
    item:AddChildCritExtLinkFull(achievementID, 7, linkBase .. 1105); -- Ravenous Scalespawn
    item:AddChildCritExtLinkFull(achievementID, 8, linkBase .. 1111); -- Mindshackle
    item:AddChildCritExtLinkFull(achievementID, 9, linkBase .. 1106); -- Kelpstone
    item:AddChildCritExtLinkFull(achievementID, 10, linkBase .. 1112); -- Voltgorger
    item:AddChildCritExtLinkFull(achievementID, 11, linkBase .. 1107); -- Frenzied Knifefang
    item:AddChildCritExtLinkFull(achievementID, 12, linkBase .. 1113); -- Giant Opaline Conch

    return item;
end

function petBattles.LoadRCMenExtra(rcMenExtras)
    rcMenExtras[12936] = GetBoZaKTLinks(12936); -- Battle on Zandalar and Kul Tiras
    rcMenExtras[13280] = GetFBLinks(13280, familyID.Aquatic); -- Hobbyist Aquarist
    rcMenExtras[13270] = GetFBLinks(13270, familyID.Beast); -- Beast Mode
    rcMenExtras[13271] = GetFBLinks(13271, familyID.Critter); -- Critters With Huge Teeth
    rcMenExtras[13272] = GetFBLinks(13272, familyID.Dragonkin); -- Dragons Make Everything Better
    rcMenExtras[13273] = GetFBLinks(13273, familyID.Elemental); -- Element of Success
    rcMenExtras[13274] = GetFBLinks(13274, familyID.Flying); -- Fun With Flying
    rcMenExtras[13281] = GetFBLinks(13281, familyID.Humanoid); -- Human Resources
    rcMenExtras[13275] = GetFBLinks(13275, familyID.Magic); -- Magician's Secrets
    rcMenExtras[13277] = GetFBLinks(13277, familyID.Mechanical); -- Machine Learning
    rcMenExtras[13278] = GetFBLinks(13278, familyID.Undead); -- Not Quite Dead Yet
    rcMenExtras[13279] = GetFBMetaLinks(13279); -- Family Battler
    rcMenExtras[13625] = GetMMoMLinks(13625); -- Mighty Minions of Mechagon
    rcMenExtras[13626] = GetNNoNLinks(13626); -- Nautical Nuisances of Nazjatar
end