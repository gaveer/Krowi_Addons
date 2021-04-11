using DbManager.DataManagers;
using DbManager.Objects;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace DbManager.GUI
{
    public class ExportHandler
    {
        private readonly AchievementDataManager achDatMan;
        private readonly AchievementCategoryDataManager achCatDatMan;
        private readonly FunctionDataManager funDatMan;
        private readonly PetBattleLinksDataManager petBatLinDatMan;

        public ExportHandler(AchievementDataManager achievementDataManager, AchievementCategoryDataManager achievementCategoryDataManager, FunctionDataManager functionDataManager, PetBattleLinksDataManager petBattleLinksDataManager)
        {
            achDatMan = achievementDataManager;
            achCatDatMan = achievementCategoryDataManager;
            funDatMan = functionDataManager;
            petBatLinDatMan = petBattleLinksDataManager;
        }

        public void ExportAchievementFilter()
        {
            var sb = new StringBuilder();
            sb.AppendLine($"-- [[ Exported at {DateTime.Now:yyyy-MM-dd HH-mm-ss} ]] --");
            sb.AppendLine($"-- [[ This code is automatically generated as an export from ]] --");
            sb.AppendLine($"-- [[ an SQLite database and is not meant for manual edit. ]] --");
            sb.AppendLine("");
            sb.AppendLine("-- [[ Namespaces ]] --");
            sb.AppendLine("local _, addon = ...;");
            sb.AppendLine("local objects = addon.Objects;");
            sb.AppendLine("local faction = objects.Faction;");
            sb.AppendLine("local covenant = objects.Covenant;");
            sb.AppendLine("local achievementCategory = objects.AchievementCategory;");
            sb.AppendLine("local achievement = objects.Achievement;");
            sb.AppendLine("addon.ExportedData = {};");
            sb.AppendLine("local exportedData = addon.ExportedData");
            sb.AppendLine("");
            sb.AppendLine("local function InsertAndReturn(table, value)");
            sb.AppendLineTabbed(1, "tinsert(table, value);");
            sb.AppendLineTabbed(1, "return value;");
            sb.AppendLine("end");
            sb.AppendLine("");
            sb.AppendLine("function exportedData.Load(categories, achievements)");
            sb.AppendLineTabbed(1, "for i, _ in next, categories do");
            sb.AppendLineTabbed(2, "categories[i] = nil;");
            sb.AppendLineTabbed(1, "end");
            sb.AppendLineTabbed(1, "for i, _ in next, achievements do");
            sb.AppendLineTabbed(2, "achievements[i] = nil;");
            sb.AppendLineTabbed(1, "end");
            sb.AppendLine("");
            sb.AppendLineTabbed(1, "local tmpCategories = {};");

            var categories = achCatDatMan.GetAll();
            foreach (var category in categories)
            {
                var mapIDs = achCatDatMan.GetMapIDs(category);

                sb.AppendTabbed(1, $"tmpCategories[{category.ID}] = InsertAndReturn(categories, achievementCategory:New("); // New
                sb.Append(category.Function.Call.Replace("id", category.FunctionValue.ToString())); // Category name
                sb.Append($"{(category.IsLegacy ? $" .. \" (\" .. {funDatMan.GetLegacyFunction().Call} .. \")\"" : "")}"); // Legacy if applicable
                sb.Append(", ");
                sb.Append($"{(mapIDs.Any() ? $"{{{string.Join(", ", mapIDs)}}}" : "nil")}"); // MapIDs
                sb.Append(", ");
                sb.Append($"{(category.IgnoreParentMapIDs ? "true" : "nil")}"); // IgnoreParentMapIDs
                sb.AppendLine($")); -- {category.Name}");
                if (category.Parent != null)
                    sb.AppendLineTabbed(1, $"tmpCategories[{category.Parent.ID}]:AddCategory(tmpCategories[{category.ID}]);");
                if (category.Function.Description == "Current Zone")
                {
                    sb.AppendLineTabbed(1, $"tmpCategories[{category.ID}].AlwaysVisible = true;");
                    sb.AppendLineTabbed(1, $"tmpCategories[{category.ID}].HasFlexibleData = true;");
                    sb.AppendLineTabbed(1, $"local currentZoneCategory = tmpCategories[{category.ID}];");
                }

                var achievements = achDatMan.GetWithCategory(category);
                foreach (var achievement in achievements)
                {
                    sb.AppendTabbed(1, $"tmpCategories[{category.ID}]:AddAchievement(InsertAndReturn(achievements, achievement:New(");
                    sb.Append(achievement.ID); // ID
                    sb.Append(", ");
                    sb.Append($"tmpCategories[{category.ID}]"); // Category
                    sb.Append(", ");
                    sb.Append(achievement.Faction == Faction.NoFaction ? "nil" : $"faction.{achievement.Faction}"); // Faction
                    sb.Append(", ");
                    sb.Append(achievement.Covenant == Covenant.NoCovenant ? "nil" : $"covenant.{achievement.Covenant}"); // Covenant
                    sb.Append(", ");
                    sb.Append(achievement.Obtainable ? "nil" : "false"); // Obtainable
                    sb.Append(", ");
                    sb.Append(achievement.HasWowheadLink ? "nil" : "false"); // HasWowheadLink
                    sb.AppendLine($")));");
                }
            }

            sb.AppendLine("");
            sb.AppendLineTabbed(1, "return currentZoneCategory;");
            sb.AppendLine("end");

            using var file = new StreamWriter(@"../../../../../Krowi_AchievementFilter/Data/ExportedData.lua");
            file.WriteLine(sb.ToString());
        }

        public void ExportPetBattles()
        {
            var sb = new StringBuilder();
            sb.AppendLine($"-- [[ Exported at {DateTime.Now:yyyy-MM-dd HH-mm-ss} ]] --");
            sb.AppendLine($"-- [[ This code is automatically generated as an export from ]] --");
            sb.AppendLine($"-- [[ an SQLite database and is not meant for manual edit. ]] --");
            sb.AppendLine("");
            sb.AppendLine("-- [[ Namespaces ]] --");
            sb.AppendLine("local _, addon = ...;");
            sb.AppendLine("local objects = addon.Objects;");
            sb.AppendLine("addon.ExportedPetBattles = {};");
            sb.AppendLine("local exportedPetBattles = addon.ExportedPetBattles");
            sb.AppendLine("");
            sb.AppendLine("function exportedPetBattles.Load(rcMenExtras)");
            sb.AppendLineTabbed(1, "for i, _ in next, rcMenExtras do");
            sb.AppendLineTabbed(2, "rcMenExtras[i] = nil;");
            sb.AppendLineTabbed(1, "end");
            sb.AppendLine("");

            var categories = achCatDatMan.GetAll();
            foreach (var category in categories)
            {
                var achievements = achDatMan.GetWithCategory(category);
                foreach (var achievement in achievements)
                {
                    var criteria = petBatLinDatMan.GetWithAchievementID(achievement.ID);
                    if (criteria.Any())
                    {
                        foreach (var criterion in criteria)
                        {
                            if (!string.IsNullOrEmpty(criterion.ExternalLink))
                            {
                                var list = $"rcMenExtras[{achievement.ID}]";
                                sb.AppendLineTabbed(1, $"{list} = objects.MenuItem:NewExtLink(addon.L[\"Xu-Fu's Pet Guides\"], \"{criteria[0].ExternalLink}\"); -- {criteria[0].Name}");

                                var subCriteria = petBatLinDatMan.GetWithParentID(criterion.ID);
                                GetSubCriteria(sb, criterion.ID.Substring(1), subCriteria, list: list);
                            }
                        }
                    }
                }
            }

            sb.AppendLine("end");

            using var file = new StreamWriter(@"../../../../../Krowi_AchievementFilter/Data/ExportedPetBattles.lua");
            file.WriteLine(sb.ToString());
        }

        private void GetSubCriteria(StringBuilder sb, string achievementID, List<PetBattleLink> criteria, string assign = "", string list = "")
        {
            foreach (var criterion in criteria)
            {
                if (!string.IsNullOrEmpty(criterion.ExternalLink))
                {
                    var subCriteria = petBatLinDatMan.GetWithParentID(criterion.ID);

                    var indent = 1;
                    if (subCriteria.Any())
                    {
                        assign = $"temp{criterion.ID}";
                        sb.AppendTabbed(1, $"local {assign} = ");
                        indent = 0;
                    }

                    if (criterion.ID.StartsWith("C"))
                        sb.AppendLineTabbed(indent, $"{list}:AddChildExtLinkFull({criterion.Name}, \"{criterion.ExternalLink}\");");
                    else
                        sb.AppendLineTabbed(indent, $"{list}:AddChildCritExtLinkFull({achievementID}, {criterion.CriteriaNumber}, \"{criterion.ExternalLink}\");");

                    GetSubCriteria(sb, criterion.ID.Substring(1), subCriteria, list: assign);
                }
            }
        }
    }
}