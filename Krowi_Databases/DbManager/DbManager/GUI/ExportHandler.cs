using DbManager.DataManagers;
using DbManager.Objects;
using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace DbManager.GUI
{
    public class ExportHandler
    {
        private AchievementDataManager achDatMan;
        private AchievementCategoryDataManager achCatDatMan;
        private FunctionDataManager funDatMan;
        private PetBattleLinksDataManager achCritDatMan;

        public ExportHandler(SqliteConnection connection, FunctionDataManager functionDataManager, PetBattleLinksDataManager achievementCriteriaDataManager)
        {
            achDatMan = new AchievementDataManager(connection);
            achCatDatMan = new AchievementCategoryDataManager(connection);
            funDatMan = functionDataManager;
            achCritDatMan = achievementCriteriaDataManager;
        }

        public void ExportAchievementFilter()
        {
            var sb = new StringBuilder();
            sb.AppendLine($"-- [[ Exported at {DateTime.Now.ToString("yyyy-MM-dd HH-mm-ss")} ]] --");
            sb.AppendLine($"-- [[ This code is automatically generated as an export from a SQLite database ]] --");
            sb.AppendLine($"-- [[ and is not meant for manual edit. ]] --");
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

            var duplicates = achDatMan.FindDuplicateIDs();
            var categories = achCatDatMan.GetAll();
            foreach (var category in categories)
            {
                sb.AppendLineTabbed(1, $"tmpCategories[{category.ID}] = InsertAndReturn(categories, achievementCategory:New({category.Function.Call.Replace("id", category.FunctionValue.ToString())}{(category.IsLegacy ? $" .. \" (\" .. {funDatMan.GetLegacyFunction().Call} .. \")\"" : "")})); -- {category.Name}");
                if (category.Parent != null)
                    sb.AppendLineTabbed(1, $"tmpCategories[{category.Parent.ID}]:AddCategory(tmpCategories[{category.ID}]);");

                var achievements = achDatMan.GetWithCategory(category);
                foreach (var achievement in achievements)
                {
                    var covenant = achievement.Covenant == Covenant.NoCovenant ? "nil" : $"covenant.{achievement.Covenant}";
                    sb.AppendLineTabbed(/*achievement.Faction == Faction.NoFaction ?*/ 1/* : 2*/, $"tmpCategories[{category.ID}]:AddAchievement(InsertAndReturn(achievements, achievement:New({achievement.ID}, {(achievement.Faction == Faction.NoFaction ? "nil" : $"faction.{achievement.Faction}")}, {covenant}, {(achievement.Obtainable ? "nil" : "false")}, {(achievement.HasWowheadLink ? "nil" : "false")}, {(duplicates.Any(x => x == achievement.ID) ? $"tmpCategories[{category.ID}]" : "nil")})));"); // {(achievement.HasIATLink ? "true" : "nil")}

                    // new
                    //sb.AppendTabbed(achievement.Faction == Faction.NoFaction ? 1 : 2, $"tmpCategories[{category.ID}]:AddAchievement(InsertAndReturn(achievements, achievement:NewFromTable{{id = {achievement.ID}");
                    //if (!achievement.Obtainable)
                    //    sb.Append(", obtainable = false");
                    //if (!achievement.HasWowheadLink)
                    //    sb.Append(", hasWowheadLink = false");
                    //if (achievement.HasIATLink)
                    //    sb.Append(", hasIATLink = true");
                    //if (duplicates.Any(x => x == achievement.ID))
                    //    sb.Append($", category = tmpCategories[{category.ID}]");
                    //sb.AppendLine("}));");

                    //if (achievement.Faction != Faction.NoFaction)
                    //    sb.AppendLineTabbed(1, "end");

                    //var criteria = achCritDatMan.GetWithAchievementID(achievement.ID);
                    //if (criteria.Any())
                    //{
                    //    sb.AppendLineTabbed(1, $"rcMenExtras[{achievement.ID}] = objects.MenuItem:New({{Text = addon.L[\"Xu-Fu's Pet Guides\"]}});");
                    //    foreach (var crit in criteria)
                    //    {
                    //        var subCriteria = achCritDatMan.GetWithParentID(crit.ID);

                    //        if (!string.IsNullOrEmpty(crit.ExternalLink) || subCriteria.Any())
                    //            sb.AppendLineTabbed(1, $"rcMenExtras[{achievement.ID}]:AddChildCritExtLinkFull({achievement.ID}, {crit.CriteriaNumber}, \"{crit.ExternalLink ?? subCriteria[0].ExternalLink}\");");

                    //        // moet nog de subcriteria toevoegen
                    //    }
                    //}
                }
            }

            sb.AppendLine("end");

            using var file = new StreamWriter(@"../../../../../Krowi_AchievementFilter/Data/ExportedData.lua");
            file.WriteLine(sb.ToString());
        }

        public void ExportPetBattles()
        {
            var sb = new StringBuilder();
            sb.AppendLine($"-- [[ Exported at {DateTime.Now.ToString("yyyy-MM-dd HH-mm-ss")} ]] --");
            sb.AppendLine($"-- [[ This code is automatically generated as an export from a SQLite database ]] --");
            sb.AppendLine($"-- [[ and is not meant for manual edit. ]] --");
            sb.AppendLine("");
            sb.AppendLine("-- [[ Namespaces ]] --");
            sb.AppendLine("local _, addon = ...;");
            sb.AppendLine("local objects = addon.Objects;");
            sb.AppendLine("addon.ExportedPetBattles = {};");
            sb.AppendLine("local exportedPetBattles = addon.ExportedPetBattles");
            sb.AppendLine("");
            sb.AppendLine("local function GetAchievementName(achievementID)");
            sb.AppendLineTabbed(1, "local _, name = GetAchievementInfo(achievementID);");
            sb.AppendLineTabbed(1, "return name;");
            sb.AppendLine("end");
            sb.AppendLine("");
            sb.AppendLine("function exportedPetBattles.Load(rcMenExtras)");
            sb.AppendLineTabbed(1, "for i, _ in next, rcMenExtras do");
            sb.AppendLineTabbed(2, "rcMenExtras[i] = nil;");
            sb.AppendLineTabbed(1, "end");
            sb.AppendLine("");
            //sb.AppendLineTabbed(1, "local tmpCategories = {};");

            var categories = achCatDatMan.GetAll();
            foreach (var category in categories)
            {
                var achievements = achDatMan.GetWithCategory(category);
                foreach (var achievement in achievements)
                {
                    var criteria = achCritDatMan.GetWithAchievementID(achievement.ID);
                    if (criteria.Any())
                    {
                        foreach (var crit in criteria)
                        {
                            if (!string.IsNullOrEmpty(crit.ExternalLink))
                            {
                                var list = $"rcMenExtras[{achievement.ID}]";
                                sb.AppendLineTabbed(1, $"{list} = objects.MenuItem:NewExtLink(addon.L[\"Xu-Fu's Pet Guides\"], \"{criteria[0].ExternalLink}\");");

                                var subCriteria = achCritDatMan.GetWithParentID(crit.ID);
                                GetSubCriteria(sb, crit.ID.Substring(1), subCriteria, list: list);
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
            foreach (var crit in criteria)
            {
                if (!string.IsNullOrEmpty(crit.ExternalLink))
                {
                    var subCriteria = achCritDatMan.GetWithParentID(crit.ID);

                    var indent = 1;
                    if (subCriteria.Any())
                    {
                        assign = $"temp{crit.ID}";
                        sb.AppendTabbed(1, $"local {assign} = ");
                        indent = 0;
                    }

                    if (crit.ID.StartsWith("C"))
                        sb.AppendLineTabbed(indent, $"{list}:AddChildExtLinkFull({crit.Name}, \"{crit.ExternalLink}\");");
                    else
                    {
                        //if (crit.CriteriaNumber == 0)
                        //{
                        //    string criteriaID = "";
                        //if (crit.ID.StartsWith("A")) // Achievement, nothing changes below
                        //    achievementID = crit.ID.Substring(1);
                        //    sb.AppendLineTabbed(indent, $"{list}:AddChildExtLinkFull(GetAchievementName({criteriaID}), \"{crit.ExternalLink}\");");
                        //}
                        //else
                        sb.AppendLineTabbed(indent, $"{list}:AddChildCritExtLinkFull({achievementID}, {crit.CriteriaNumber}, \"{crit.ExternalLink}\");");
                    }

                    GetSubCriteria(sb, crit.ID.Substring(1), subCriteria, list: assign);
                }
            }
        }
    }
}