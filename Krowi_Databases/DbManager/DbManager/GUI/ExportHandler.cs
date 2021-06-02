using DbManager.DataManagers;
using DbManager.Objects;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

namespace DbManager.GUI
{
    public class ExportHandler
    {
        private readonly AchievementDataManager achDatMan;
        private readonly AchievementCategoryDataManager achCatDatMan;
        private readonly FunctionDataManager funDatMan;
        private readonly PetBattleLinksDataManager petBatLinDatMan;
        private readonly UIMapDataManager uiMapDatMan;

        public ExportHandler(AchievementDataManager achievementDataManager, AchievementCategoryDataManager achievementCategoryDataManager, FunctionDataManager functionDataManager, PetBattleLinksDataManager petBattleLinksDataManager, UIMapDataManager uiMapDataManager)
        {
            achDatMan = achievementDataManager;
            achCatDatMan = achievementCategoryDataManager;
            funDatMan = functionDataManager;
            petBatLinDatMan = petBattleLinksDataManager;
            uiMapDatMan = uiMapDataManager;
        }

        public void ExportAchievements()
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
            sb.AppendLine("local achievement = objects.Achievement;");
            sb.AppendLine("local data = addon.Data;");
            sb.AppendLine("data.ExportedAchievements = {};");
            sb.AppendLine("local exportedAchievements = data.ExportedAchievements;");
            sb.AppendLine("");
            sb.AppendLine("function exportedAchievements.Load(achievements)");
            sb.AppendLineTabbed(1, "for i, _ in next, achievements do");
            sb.AppendLineTabbed(2, "achievements[i] = nil;");
            sb.AppendLineTabbed(1, "end");
            sb.AppendLine("");

            var achievements = achDatMan.GetAll();
            foreach (var achievement in achievements)
            {
                var appendString = $"achievements[{achievement.ID}] = achievement:New(";
                appendString += achievement.ID; // ID
                appendString += ", ";
                appendString += achievement.Faction == Faction.NoFaction ? "nil" : $"faction.{achievement.Faction}"; // Faction
                appendString += ", ";
                appendString += achievement.Covenant == Covenant.NoCovenant ? "nil" : $"covenant.{achievement.Covenant}"; // Covenant
                appendString += ", ";
                appendString += achievement.Obtainable ? "nil" : "false"; // Obtainable
                appendString += ", ";
                appendString += achievement.HasWowheadLink ? "nil" : "false"; // HasWowheadLink
                appendString = TrimNils(appendString); // Remove unneccesary nils
                appendString += $"); -- {achievement.Name}";
                sb.AppendLineTabbed(1, appendString);
            }

            sb.AppendLine("end");

            using var file = new StreamWriter(@"../../../../../Krowi_AchievementFilter/Data/ExportedAchievements.lua");
            file.WriteLine(sb.ToString());
        }

        public void ExportCategories()
        {
            var sb = new StringBuilder();
            sb.AppendLine($"-- [[ Exported at {DateTime.Now:yyyy-MM-dd HH-mm-ss} ]] --");
            sb.AppendLine($"-- [[ This code is automatically generated as an export from ]] --");
            sb.AppendLine($"-- [[ an SQLite database and is not meant for manual edit. ]] --");
            sb.AppendLine("");
            sb.AppendLine("-- [[ Namespaces ]] --");
            sb.AppendLine("local _, addon = ...;");
            sb.AppendLine("local objects = addon.Objects;");
            sb.AppendLine("local achievementCategory = objects.AchievementCategory;");
            sb.AppendLine("local data = addon.Data;");
            sb.AppendLine("data.ExportedCategories = {};");
            sb.AppendLine("local exportedCategories = data.ExportedCategories;");
            sb.AppendLine("");
            sb.AppendLine("local function InsertAndReturn(table, value)");
            sb.AppendLineTabbed(1, "tinsert(table, value);");
            sb.AppendLineTabbed(1, "return value;");
            sb.AppendLine("end");
            sb.AppendLine("");
            sb.AppendLine("function exportedCategories.Load(categories, achievements)");
            sb.AppendLineTabbed(1, "for i, _ in next, categories do");
            sb.AppendLineTabbed(2, "categories[i] = nil;");
            sb.AppendLineTabbed(1, "end");
            sb.AppendLine("");
            sb.AppendLineTabbed(1, "local tmpCategories = {};");

            var categories = achCatDatMan.GetAll();
            foreach (var category in categories)
            {
                if (!category.Active)
                    continue;

                //var mapIDs = achCatDatMan.GetMapIDs(category);

                var appendString = $"tmpCategories[{category.ID}] = InsertAndReturn(categories, achievementCategory:New("; // New
                appendString += category.Function.Call.Replace("%value%", category.FunctionValue); // Category name
                appendString += $"{(category.Legacy ? $" .. \" (\" .. {funDatMan.GetLegacyFunction().Call} .. \")\"" : "")}"; // Legacy if applicable
                //appendString += ", ";
                //appendString += $"{(mapIDs.Any() ? $"{{{string.Join(", ", mapIDs)}}}" : "nil")}"; // MapIDs
                //appendString += ", ";
                //appendString += $"{(category.IgnoreParentMapIDs ? "true" : "nil")}"; // IgnoreParentMapIDs
                appendString += ", ";
                appendString += $"{(category.CanMerge ? "true" : "nil")}"; // CanMergeChildren
                appendString = TrimNils(appendString); // Remove unneccesary nils
                appendString += $")); -- {category.Name}";
                sb.AppendLineTabbed(1, appendString);
                if (category.Parent != null)
                    sb.AppendLineTabbed(1, $"tmpCategories[{category.Parent.ID}]:AddCategory(tmpCategories[{category.ID}]);");
                if (category.Function.Description == "Current Zone")
                {
                    sb.AppendLineTabbed(1, $"tmpCategories[{category.ID}].AlwaysVisible = true;");
                    sb.AppendLineTabbed(1, $"tmpCategories[{category.ID}].HasFlexibleData = true;");
                    sb.AppendLineTabbed(1, $"local currentZoneCategory = tmpCategories[{category.ID}];");
                }
                if (category.Function.Description == "Coming in ")
                {
                    sb.AppendLineTabbed(1, $"local nextPatchCategory = tmpCategories[{category.ID}];");
                }

                var achievements = achDatMan.GetWithCategory(category);
                foreach (var achievement in achievements)
                    sb.AppendLineTabbed(1, $"tmpCategories[{category.ID}]:AddAchievement(achievements[{achievement.ID}]) -- {achievement.Name}");
            }

            sb.AppendLine("");
            sb.AppendLineTabbed(1, "return currentZoneCategory, nextPatchCategory;");
            sb.AppendLine("end");

            using var file = new StreamWriter(@"../../../../../Krowi_AchievementFilter/Data/ExportedCategories.lua");
            file.WriteLine(sb.ToString());
        }

        public void ExportMaps()
        {
            //var sb = new StringBuilder();
            //sb.AppendLine($"-- [[ Exported at {DateTime.Now:yyyy-MM-dd HH-mm-ss} ]] --");
            //sb.AppendLine($"-- [[ This code is automatically generated as an export from ]] --");
            //sb.AppendLine($"-- [[ an SQLite database and is not meant for manual edit. ]] --");
            //sb.AppendLine("");
            //sb.AppendLine("-- [[ Namespaces ]] --");
            //sb.AppendLine("local _, addon = ...;");
            //sb.AppendLine("local data = addon.Data;");
            //sb.AppendLine("data.Maps = {};");
            //sb.AppendLine("local maps = data.Maps;");
            //sb.AppendLine("");
            //sb.AppendLine("function maps.Load(maps, achievements)");
            //sb.AppendLineTabbed(1, "for i, _ in next, maps do");
            //sb.AppendLineTabbed(2, "maps[i] = nil;");
            //sb.AppendLineTabbed(1, "end");
            //sb.AppendLine("");

            ////var categories = achCatDatMan.GetAll();
            ////var category = categories.Single(x => x.ID == 799);

            ////ExportNextPatchAchievements(sb, category);

            //var maps = uiMapDatMan.GetAll();
            //maps = maps.Take(5).ToList();

            //var categories = achCatDatMan.GetAll();
            //foreach (var category in categories)
            //{
            //    category.Achievements = achDatMan.GetWithCategory(category);
            //    foreach (var achievement in category.Achievements)
            //    {
            //        achievement.UIMaps = uiMapDatMan.GetWithAchievement(achievement);
            //    }
            //}


            //foreach (var map in maps)
            //{
            //    sb.AppendTabbed(1, $"maps[{map.ID}] = {{Achievements = {{");
            //    foreach (var category in categories)
            //    {
            //        foreach (var achievement in category.Achievements)
            //        {
            //            foreach (var achievementUIMap in achievement.UIMaps)
            //            {
            //                if (achievementUIMap.ID == map.ID)
            //                    sb.Append($"achievements[{achievement.ID}], ");
            //            }
            //        }

            //    }
            //    sb.AppendLine("}};");
            //}

            //sb.AppendLine("end");

            //using var file = new StreamWriter(@"../../../../../Krowi_AchievementFilter/Data/ExportedMaps.lua");
            //file.WriteLine(sb.ToString());
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
            sb.AppendLine("local data = addon.Data;");
            sb.AppendLine("data.ExportedData = {};");
            sb.AppendLine("local exportedData = data.ExportedData;");
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
                if (!category.Active)
                    continue;

                //var mapIDs = achCatDatMan.GetMapIDs(category);

                var appendString = $"tmpCategories[{category.ID}] = InsertAndReturn(categories, achievementCategory:New("; // New
                appendString += category.Function.Call.Replace("%value%", category.FunctionValue); // Category name
                appendString += $"{(category.Legacy ? $" .. \" (\" .. {funDatMan.GetLegacyFunction().Call} .. \")\"" : "")}"; // Legacy if applicable
                //appendString += ", ";
                //appendString += $"{(mapIDs.Any() ? $"{{{string.Join(", ", mapIDs)}}}" : "nil")}"; // MapIDs
                //appendString += ", ";
                //appendString += $"{(category.IgnoreParentMapIDs ? "true" : "nil")}"; // IgnoreParentMapIDs
                appendString += ", ";
                appendString += $"{(category.CanMerge ? "true" : "nil")}"; // CanMergeChildren
                appendString = TrimNils(appendString); // Remove unneccesary nils
                appendString += $")); -- {category.Name}";
                sb.AppendLineTabbed(1, appendString);
                if (category.Parent != null)
                    sb.AppendLineTabbed(1, $"tmpCategories[{category.Parent.ID}]:AddCategory(tmpCategories[{category.ID}]);");
                if (category.Function.Description == "Current Zone")
                {
                    sb.AppendLineTabbed(1, $"tmpCategories[{category.ID}].AlwaysVisible = true;");
                    sb.AppendLineTabbed(1, $"tmpCategories[{category.ID}].HasFlexibleData = true;");
                    sb.AppendLineTabbed(1, $"local currentZoneCategory = tmpCategories[{category.ID}];");
                }
                if (category.Function.Description == "Coming in ")
                {
                    sb.AppendLineTabbed(1, $"local nextPatchCategory = tmpCategories[{category.ID}];");
                }

                var achievements = achDatMan.GetWithCategory(category);
                foreach (var achievement in achievements)
                {
                    appendString = $"tmpCategories[{category.ID}]:AddAchievement(InsertAndReturn(achievements, achievement:New(";
                    appendString += achievement.ID; // ID
                    appendString += ", ";
                    appendString += achievement.Faction == Faction.NoFaction ? "nil" : $"faction.{achievement.Faction}"; // Faction
                    appendString += ", ";
                    appendString += achievement.Covenant == Covenant.NoCovenant ? "nil" : $"covenant.{achievement.Covenant}"; // Covenant
                    appendString += ", ";
                    appendString += achievement.Obtainable ? "nil" : "false"; // Obtainable
                    appendString += ", ";
                    appendString += achievement.HasWowheadLink ? "nil" : "false"; // HasWowheadLink
                    appendString = TrimNils(appendString); // Remove unneccesary nils
                    appendString += $")));";
                    sb.AppendLineTabbed(1, appendString);
                }
            }

            sb.AppendLine("");
            sb.AppendLineTabbed(1, "return currentZoneCategory, nextPatchCategory;");
            sb.AppendLine("end");

            using var file = new StreamWriter(@"../../../../../Krowi_AchievementFilter/Data/ExportedData.lua");
            file.WriteLine(sb.ToString());
        }

        public void ExportNextPatch()
        {
            var sb = new StringBuilder();
            sb.AppendLine($"-- [[ Exported at {DateTime.Now:yyyy-MM-dd HH-mm-ss} ]] --");
            sb.AppendLine($"-- [[ This code is automatically generated as an export from ]] --");
            sb.AppendLine($"-- [[ an SQLite database and is not meant for manual edit. ]] --");
            sb.AppendLine("");
            sb.AppendLine("-- [[ Namespaces ]] --");
            sb.AppendLine("local _, addon = ...;");
            sb.AppendLine("local data = addon.Data;");
            sb.AppendLine("data.NextPatch = {};");
            sb.AppendLine("local nextPatch = data.NextPatch;");
            sb.AppendLine("");
            sb.AppendLine("function nextPatch.Load(achievements)");
            sb.AppendLineTabbed(1, "for i, _ in next, achievements do");
            sb.AppendLineTabbed(2, "achievements[i] = nil;");
            sb.AppendLineTabbed(1, "end");
            sb.AppendLine("");

            var categories = achCatDatMan.GetAll();
            var category = categories.Single(x => x.ID == 799);

            ExportNextPatchAchievements(sb, category);

            sb.AppendLine("end");

            using var file = new StreamWriter(@"../../../../../Krowi_AchievementFilter/Data/ExportedNextPatch.lua");
            file.WriteLine(sb.ToString());
        }

        private void ExportNextPatchAchievements(StringBuilder sb, AchievementCategory category)
        {
            foreach (var subCategory in category.Children)
            {
                ExportNextPatchAchievements(sb, subCategory);

                var achievements = achDatMan.GetWithCategory(subCategory);
                foreach (var achievement in achievements)
                {
                    var achievementAGT = achDatMan.GetWithAGTID(achievement);
                    var name = Regex.Replace(achievementAGT.Name, "^\"", "");
                    name = Regex.Replace(name, "\"$", "");
                    var description = Regex.Replace(achievementAGT.Description, "^\"", "");
                    description = Regex.Replace(description, "\"$", "");
                    description = Regex.Replace(description, "(\"){2,}", "\\\"");
                    var rewardText = Regex.Replace(achievementAGT.RewardText, "^\"", "");
                    rewardText = Regex.Replace(rewardText, "\"$", "");
                    var line = $"achievements[{achievementAGT.ID}] = {{{achievementAGT.ID}, \"{name}\", {achievementAGT.Points}, \"{description}\", {achievementAGT.Flags}, {achievementAGT.IconFileID}, \"{rewardText}\"}};";
                    sb.AppendLineTabbed(1, line);
                }
            }
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
            sb.AppendLine("local data = addon.Data;");
            sb.AppendLine("data.ExportedPetBattles = {};");
            sb.AppendLine("local exportedPetBattles = data.ExportedPetBattles;");
            sb.AppendLine("");
            sb.AppendLine("function exportedPetBattles.Load(rcMenExtras)");
            sb.AppendLineTabbed(1, "for i, _ in next, rcMenExtras do");
            sb.AppendLineTabbed(2, "rcMenExtras[i] = nil;");
            sb.AppendLineTabbed(1, "end");
            sb.AppendLine("");
            sb.AppendLineTabbed(1, "local url = \"https://www.wow-petguide.com/\";");
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
                                string externalLink;
                                if (criterion.ExternalLink.Contains("https://www.wow-petguide.com"))
                                    externalLink = criterion.ExternalLink.Replace("https://www.wow-petguide.com/", "url .. \"");
                                else
                                    externalLink = $"\"{criterion.ExternalLink}";

                                var list = $"rcMenExtras[{achievement.ID}]";
                                sb.AppendTabbed(1, $"{list} = objects.MenuItem:NewExtLink(addon.L[\"Xu-Fu's Pet Guides\"]");
                                sb.Append(", ");
                                sb.Append(externalLink);
                                sb.AppendLine($"\"); -- {criterion.Name}");

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

                    string externalLink;
                    if (criterion.ExternalLink.Contains("https://www.wow-petguide.com"))
                        externalLink = criterion.ExternalLink.Replace("https://www.wow-petguide.com/", "url .. \"");
                    else
                        externalLink = $"\"{criterion.ExternalLink}";

                    if (criterion.ID.StartsWith("C"))
                        sb.AppendLineTabbed(indent, $"{list}:AddChildExtLinkFull({criterion.Name}, {externalLink}\");");
                    else
                        sb.AppendLineTabbed(indent, $"{list}:AddChildCritExtLinkFull({achievementID}, {criterion.CriteriaNumber}, {externalLink}\");");

                    GetSubCriteria(sb, criterion.ID.Substring(1), subCriteria, list: assign);
                }
            }
        }

        private string TrimNils(string input)
        {
            while (input.EndsWith(", nil"))
                input = input.Substring(0, input.Length - 5);

            return input;
        }
    }
}