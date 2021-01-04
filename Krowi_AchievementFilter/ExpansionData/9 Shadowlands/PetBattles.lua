local _, addon = ...; -- Global addon namespace
addon.Shadowlands.PetBattles = {}; -- Global expansion Pet Battles namespace
local petBattles = addon.Shadowlands.PetBattles; -- Local expansion Pet Battles namespace

local function GetLinks(achievementID, linkBase, firstCriteriaXuFuID)
    local xuFuLink = addon.Objects.XuFuLink:New(AF_XUFU, linkBase .. firstCriteriaXuFuID);
    xuFuLink:AddCriteriaFull(achievementID, 1, linkBase, firstCriteriaXuFuID); -- Sylla
    xuFuLink:AddCriteriaFull(achievementID, 2, linkBase, firstCriteriaXuFuID + 1); -- Eyegor
    xuFuLink:AddCriteriaFull(achievementID, 3, linkBase, firstCriteriaXuFuID + 2); -- Addius the Tormenter
    xuFuLink:AddCriteriaFull(achievementID, 4, linkBase, firstCriteriaXuFuID - 3); -- Rotgut
    xuFuLink:AddCriteriaFull(achievementID, 5, linkBase, firstCriteriaXuFuID - 2); -- Dundley Stickyfingers
    xuFuLink:AddCriteriaFull(achievementID, 6, linkBase, firstCriteriaXuFuID - 4); -- Caregiver Maximillian
    xuFuLink:AddCriteriaFull(achievementID, 7, linkBase, firstCriteriaXuFuID - 7); -- Zolla
    xuFuLink:AddCriteriaFull(achievementID, 8, linkBase, firstCriteriaXuFuID - 6); -- Thenia
    xuFuLink:AddCriteriaFull(achievementID, 9, linkBase, firstCriteriaXuFuID - 8); -- Stratios
    xuFuLink:AddCriteriaFull(achievementID, 10, linkBase, firstCriteriaXuFuID + 4); -- Glitterdust
    xuFuLink:AddCriteriaFull(achievementID, 11, linkBase, firstCriteriaXuFuID + 5); -- Faryl
    return xuFuLink;
end

function petBattles.Load(expansion)
    local linkBase = "https://www.wow-petguide.com/?m=FamilyExorcist&s=";
    local catZones = expansion:AddCatPetBattles();
    catZones:AddAchievementIDs(14867);
    catZones:AddAchievementFull(14868):AddXuFuLink(GetLinks(14868, linkBase, 1338)); -- Aquatic Apparitions
    catZones:AddAchievementFull(14869):AddXuFuLink(GetLinks(14869, linkBase, 1323)); -- Beast Busters
    catZones:AddAchievementFull(14870):AddXuFuLink(GetLinks(14870, linkBase, 1278)); -- Creepy Critters
    catZones:AddAchievementFull(14871):AddXuFuLink(GetLinks(14871, linkBase, 1233)); -- Deathly Dragonkin
    catZones:AddAchievementFull(14872):AddXuFuLink(GetLinks(14872, linkBase, 1308)); -- Eerie Elementals
    catZones:AddAchievementFull(14873):AddXuFuLink(GetLinks(14873, linkBase, 1248)); -- Flickering Fliers
    catZones:AddAchievementFull(14874):AddXuFuLink(GetLinks(14874, linkBase, 1218)); -- Haunted Humanoids
    catZones:AddAchievementFull(14875):AddXuFuLink(GetLinks(14875, linkBase, 1293)); -- Mummified Magics
    catZones:AddAchievementFull(14876):AddXuFuLink(GetLinks(14876, linkBase, 1353)); -- Macabre Mechanicals
    catZones:AddAchievementFull(14877):AddXuFuLink(GetLinks(14877, linkBase, 1263)); -- Unholy Undead
    catZones:AddAchievementFull(14879); -- Family Exorcist
    catZones:AddAchievementFull(14881); -- Abhorrent Adverdaries of the Afterlife
end