using DbManagerWPF.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows.Input;

namespace DbManagerWPF.ViewModel
{
    public partial class MainWindowViewModel
    {
        #region Properties
        public ICommand ExportAchievementsCommand => new CommandHandler(() => ExportAchievements(), () => true);

        public ICommand ExportNextPatchAchievementsCommand => new CommandHandler(() => ExportNextPatchAchievements(), () => true);

        public ICommand ExportCategoriesCommand => new CommandHandler(() => ExportCategories(), () => true);

        public ICommand ExportMapsCommand => new CommandHandler(() => ExportMaps(), () => true);

        public ICommand ExportPetBattlesCommand => new CommandHandler(() => ExportPetBattles(), () => true);

        public ICommand ExportEventsCommand => new CommandHandler(() => ExportEvents(), () => true);

        public ICommand ExportAllCommand => new CommandHandler(() => ExportAll(), () => true);
        #endregion

        #region ExportAchievements
        private void ExportAchievements()
        {
            var sb = new StringBuilder();
            sb.AppendLine($"-- [[ Exported at {DateTime.Now:yyyy-MM-dd HH-mm-ss} ]] --");
            sb.AppendLine($"-- [[ This code is automatically generated as an export from ]] --");
            sb.AppendLine($"-- [[ an SQLite database and is not meant for manual edit. ]] --");
            sb.AppendLine("");
            sb.AppendLine("-- [[ Namespaces ]] --");
            sb.AppendLine("local _, addon = ...;");
            sb.AppendLine("local objects = addon.Objects;");
            sb.AppendLine("local fac = objects.Faction;");
            sb.AppendLine("local cov = objects.Covenant;");
            sb.AppendLine("local ach = objects.Achievement;");
            sb.AppendLine("local data = addon.Data;");
            sb.AppendLine("data.ExportedAchievements = {};");
            sb.AppendLine("local exportedAchievements = data.ExportedAchievements;");
            sb.AppendLine("");
            sb.AppendLine("function exportedAchievements.Load(a)");
            sb.AppendLineTabbed(1, "for i, _ in next, a do");
            sb.AppendLineTabbed(2, "a[i] = nil;");
            sb.AppendLineTabbed(1, "end");
            sb.AppendLine("");

            var achievements = achievementDM.GetAll(true);
            foreach (var achievement in achievements)
            {
                var appendString = $"a[{achievement.ID}] = ach:New(";
                appendString += achievement.ID; // ID
                appendString += ", ";
                appendString += achievement.Points; // Points
                appendString += ", ";
                appendString += achievement.Faction == Faction.NoFaction ? "nil" : $"fac.{achievement.Faction}"; // Faction
                appendString += ", ";
                appendString += achievement.Covenant == Covenant.NoCovenant ? "nil" : $"cov.{achievement.Covenant}"; // Covenant
                appendString += ", ";
                appendString += achievement.Obtainable ? "nil" : "false"; // Obtainable
                appendString += ", ";
                appendString += achievement.WowheadLink ? "nil" : "false"; // HasWowheadLink
                appendString = TrimNils(appendString); // Remove unneccesary nils
                appendString += $"); -- {achievement.Name}";
                sb.AppendLineTabbed(1, appendString);
            }

            sb.AppendLine("end");

            using var file = new StreamWriter(@"../../../../../../Krowi_AchievementFilter/Data/ExportedAchievements.lua");
            file.WriteLine(sb.ToString());
        }
        #endregion

        #region ExportNextPatchAchievements
        private void ExportNextPatchAchievements()
        {
            var sb = new StringBuilder();
            sb.AppendLine($"-- [[ Exported at {DateTime.Now:yyyy-MM-dd HH-mm-ss} ]] --");
            sb.AppendLine($"-- [[ This code is automatically generated as an export from ]] --");
            sb.AppendLine($"-- [[ an SQLite database and is not meant for manual edit. ]] --");
            sb.AppendLine("");
            sb.AppendLine("-- [[ Namespaces ]] --");
            sb.AppendLine("local _, addon = ...;");
            sb.AppendLine("local data = addon.Data;");
            sb.AppendLine("data.ExportedNextPatchAchievements = {};");
            sb.AppendLine("local exportedNextPatchAchievements = data.ExportedNextPatchAchievements;");
            sb.AppendLine("");
            sb.AppendLine("function exportedNextPatchAchievements.Load(a)");
            sb.AppendLineTabbed(1, "for i, _ in next, a do");
            sb.AppendLineTabbed(2, "a[i] = nil;");
            sb.AppendLineTabbed(1, "end");
            sb.AppendLine("");

            var categories = categoryDM.GetAll(true);
            var category = categories.Single(x => x.ID == 883).Children.Single(x => x.ID == 799);

            ExportNextPatchAchievements(sb, category);

            sb.AppendLine("end");

            using var file = new StreamWriter(@"../../../../../../Krowi_AchievementFilter/Data/ExportedNextPatchAchievements.lua");
            file.WriteLine(sb.ToString());
        }

        private void ExportNextPatchAchievements(StringBuilder sb, Category category)
        {
            foreach (var subCategory in category.Children)
            {
                ExportNextPatchAchievements(sb, subCategory);

                var achievements = achievementDM.GetWithCategory(subCategory);
                foreach (var achievement in achievements)
                {
                    var achievementAGT = achievementDM.GetWithAGTID(achievement);
                    var name = Regex.Replace(achievementAGT.Name, "^\"", "");
                    name = Regex.Replace(name, "\"$", "");
                    var description = Regex.Replace(achievementAGT.Description, "^\"", "");
                    description = Regex.Replace(description, "\"$", "");
                    description = Regex.Replace(description, "(\"){2,}", "\\\"");
                    var rewardText = Regex.Replace(achievementAGT.RewardText, "^\"", "");
                    rewardText = Regex.Replace(rewardText, "\"$", "");
                    var line = $"a[{achievementAGT.ID}] = {{{achievementAGT.ID}, \"{name}\", {achievementAGT.Points}, \"{description}\", {achievementAGT.Flags}, {achievementAGT.IconFileID}, \"{rewardText}\"}};";
                    sb.AppendLineTabbed(1, line);
                }
            }
        }
        #endregion

        #region ExportCategories
        private void ExportCategories()
        {
            var sb = new StringBuilder();
            sb.AppendLine($"-- [[ Exported at {DateTime.Now:yyyy-MM-dd HH-mm-ss} ]] --");
            sb.AppendLine($"-- [[ This code is automatically generated as an export from ]] --");
            sb.AppendLine($"-- [[ an SQLite database and is not meant for manual edit. ]] --");
            sb.AppendLine("");
            sb.AppendLine("-- [[ Namespaces ]] --");
            sb.AppendLine("local _, addon = ...;");
            sb.AppendLine("local objects = addon.Objects;");
            sb.AppendLine("local cat = objects.AchievementCategory;");
            sb.AppendLine("local data = addon.Data;");
            sb.AppendLine("data.ExportedCategories = {};");
            sb.AppendLine("local exportedCategories = data.ExportedCategories;");
            sb.AppendLine("");
            sb.AppendLine("local function AddC(c1, c2)");
            sb.AppendLineTabbed(1, "c1:AddCategory(c2)");
            sb.AppendLine("end");
            sb.AppendLine("");
            sb.AppendLine("local function AddA(c, a)");
            sb.AppendLineTabbed(1, "c:AddAchievement(a)");
            sb.AppendLine("end");
            sb.AppendLine("");
            sb.AppendLine("function exportedCategories.Load(a)");
            sb.AppendLineTabbed(1, "local tmp = {};");

            var categories = categoryDM.GetAll(true);
            foreach (var category in categories)
                ExportCategory(sb, category);

            sb.AppendLine("");
            sb.AppendLineTabbed(1, "return tabExpansionsCategories.Children, tabEventsCategories.Children, currentZoneCategory, selectedZoneCategory, focusedCategory, excludedCategory, nextPatchCategory;");
            sb.AppendLine("end");

            using var file = new StreamWriter(@"../../../../../../Krowi_AchievementFilter/Data/ExportedCategories.lua");
            file.WriteLine(sb.ToString());
        }

        private void ExportCategory(StringBuilder sb, Category category)
        {
            if (!category.IsActive)
                return;

            var appendString = $"tmp[{category.ID}] = ";
            //appendString += category.Parent == null ? "IaR(c, " : "";
            appendString += "cat:New(";
            appendString += category.Function.Call.Replace("%value%", category.FunctionValue); // Category name
            appendString += $"{(category.IsLegacy ? $" .. \" (\" .. {functionDM.GetLegacyFunction().Call} .. \")\"" : "")}"; // Legacy if applicable
            appendString += ", ";
            appendString += $"{(category.CanMerge ? "true" : "nil")}"; // CanMerge
            appendString = TrimNils(appendString); // Remove unneccesary nils
            //appendString += category.Parent == null ? ")" : "";
            appendString += $"); -- {category.Name}";
            sb.AppendLineTabbed(1, appendString);
            if (category.Parent != null)
                sb.AppendLineTabbed(1, $"AddC(tmp[{category.Parent.ID}], tmp[{category.ID}]);");
            if (category.Function == functionDM.GetTabExpansionsFunction())
            {
                sb.AppendLineTabbed(1, $"tmp[{category.ID}].IsTab = true;");
                sb.AppendLineTabbed(1, $"local tabExpansionsCategories = tmp[{category.ID}];");
            }
            if (category.Function == functionDM.GetTabEventsFunction())
            {
                sb.AppendLineTabbed(1, $"tmp[{category.ID}].IsTab = true;");
                sb.AppendLineTabbed(1, $"local tabEventsCategories = tmp[{category.ID}];");
            }
            if (category.Function == functionDM.GetCurrentZoneFunction())
            {
                sb.AppendLineTabbed(1, $"tmp[{category.ID}].AlwaysVisible = true;");
                sb.AppendLineTabbed(1, $"tmp[{category.ID}].HasFlexibleData = true;");
                sb.AppendLineTabbed(1, $"local currentZoneCategory = tmp[{category.ID}];");
            }
            if (category.Function == functionDM.GetSelectedZoneFunction())
            {
                sb.AppendLineTabbed(1, $"tmp[{category.ID}].HasFlexibleData = true;");
                sb.AppendLineTabbed(1, $"local selectedZoneCategory = tmp[{category.ID}];");
            }
            if (category.Function == functionDM.GetFocusedFunction())
            {
                sb.AppendLineTabbed(1, $"tmp[{category.ID}].HasFlexibleData = true;");
                sb.AppendLineTabbed(1, $"local focusedCategory = tmp[{category.ID}];");
            }
            if (category.Function == functionDM.GetExcludedFunction())
            {
                sb.AppendLineTabbed(1, $"tmp[{category.ID}].HasFlexibleData = true;");
                sb.AppendLineTabbed(1, $"local excludedCategory = tmp[{category.ID}];");
            }
            if (category.Function == functionDM.GetComingInFunction())
                sb.AppendLineTabbed(1, $"local nextPatchCategory = tmp[{category.ID}];");

            var achievements = achievementDM.GetWithCategory(category);
            foreach (var achievement in achievements)
                sb.AppendLineTabbed(1, $"AddA(tmp[{category.ID}], a[{achievement.ID}]); -- {achievement.Name}");

            foreach (var child in category.Children)
                ExportCategory(sb, child);
        }
        #endregion

        #region ExportMaps
        private void ExportMaps()
        {
            SortedDictionary<(UIMap UIMap, Function Function), List<Achievement>> keyValuePairs = new();
            var uiMaps = uiMapDM.GetAll();
            foreach (var uiMap in uiMaps)
                AddKeys(keyValuePairs, uiMap);

            var categories = categoryDM.GetAll();
            foreach (var category in categories)
                LinkAchievementsToMaps(keyValuePairs, category);

            // At this point we have all data

            var sb = new StringBuilder();
            sb.AppendLine($"-- [[ Exported at {DateTime.Now:yyyy-MM-dd HH-mm-ss} ]] --");
            sb.AppendLine($"-- [[ This code is automatically generated as an export from ]] --");
            sb.AppendLine($"-- [[ an SQLite database and is not meant for manual edit. ]] --");
            sb.AppendLine("");
            sb.AppendLine("-- [[ Namespaces ]] --");
            sb.AppendLine("local _, addon = ...;");
            sb.AppendLine("local data = addon.Data;");
            sb.AppendLine("data.ExportedMaps = {};");
            sb.AppendLine("local exportedMaps = data.ExportedMaps;");
            sb.AppendLine("");
            sb.AppendLine("function exportedMaps.Load(m, a)");
            sb.AppendLineTabbed(1, "for i, _ in next, m do");
            sb.AppendLineTabbed(2, "m[i] = nil;");
            sb.AppendLineTabbed(1, "end");
            sb.AppendLine("");

            UIMap prevUIMap = null;
            foreach (var keyValuePair in keyValuePairs)
            {
                if (keyValuePair.Value.Any() && keyValuePair.Key.UIMap.ID > 0)
                {
                    if (prevUIMap != keyValuePair.Key.UIMap)
                        sb.AppendTabbed(1, $"m[{keyValuePair.Key.UIMap.ID}] = {{");
                    else
                        sb.AppendTabbed(1, $"m[{keyValuePair.Key.UIMap.ID}].");

                    sb.Append("Achievements");
                    if (keyValuePair.Key.Function == functionDM.Get10PlayerFunction())
                        sb.Append("10");
                    else if (keyValuePair.Key.Function == functionDM.Get25PlayerFunction())
                        sb.Append("25");
                    sb.Append(" = {");
                    foreach (var achievement in keyValuePair.Value)
                        sb.Append($"a[{achievement.ID}], ");
                    sb.Remove(sb.Length - 2, 2);
                    if (prevUIMap != keyValuePair.Key.UIMap)
                        sb.Append("}");
                    sb.Append("}");
                    sb.AppendLine($"; -- {keyValuePair.Key.UIMap.Name}");

                    prevUIMap = keyValuePair.Key.UIMap;
                }

            }

            sb.AppendLine("end");

            using var file = new StreamWriter(@"../../../../../../Krowi_AchievementFilter/Data/ExportedMaps.lua");
            file.WriteLine(sb.ToString());
        }

        private void AddKeys(SortedDictionary<(UIMap, Function), List<Achievement>> keyValuePairs, UIMap uiMap)
        {
            keyValuePairs.Add((uiMap, null), new List<Achievement>());

            foreach (var child in uiMap.Children)
                AddKeys(keyValuePairs, child);
        }

        private void LinkAchievementsToMaps(SortedDictionary<(UIMap, Function), List<Achievement>> keyValuePairs, Category category)
        {
            var categoryUIMaps = category.GetUIMaps(true);
            var achievements = category.GetAchievements();

            foreach (var achievement in achievements)
            {
                foreach (var categoryUIMap in categoryUIMaps)
                    LinkMaps(keyValuePairs, category, categoryUIMap, achievement);

                var achievementUIMaps = achievement.GetUIMaps(true);
                foreach (var achievementUIMap in achievementUIMaps)
                    LinkMaps(keyValuePairs, category, achievementUIMap, achievement);
            }

            foreach (var child in category.Children)
                LinkAchievementsToMaps(keyValuePairs, child);
        }

        private void LinkMaps(SortedDictionary<(UIMap, Function), List<Achievement>> keyValuePairs, Category category, UIMap uiMap, Achievement achievement)
        {
            if (category.Function == functionDM.Get10PlayerFunction() || category.Function == functionDM.Get25PlayerFunction())
            {
                if (!keyValuePairs.ContainsKey((uiMap, category.Function)))
                    keyValuePairs.Add((uiMap, category.Function), new List<Achievement>());

                if (!keyValuePairs[(uiMap, category.Function)].Contains(achievement))
                    keyValuePairs[(uiMap, category.Function)].Add(achievement);
            }
            else
            {
                if (!keyValuePairs[(uiMap, null)].Contains(achievement))
                    keyValuePairs[(uiMap, null)].Add(achievement);
            }

            foreach (var child in uiMap.Children)
                LinkMaps(keyValuePairs, category, child, achievement);
        }
        #endregion

        #region ExportPetBattles
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
            sb.AppendLine("local menItm = objects.MenuItem;");
            sb.AppendLine("local data = addon.Data;");
            sb.AppendLine("data.ExportedPetBattles = {};");
            sb.AppendLine("local exportedPetBattles = data.ExportedPetBattles;");
            sb.AppendLine("");
            sb.AppendLine("local function AddEL(m, t, e)");
            sb.AppendLineTabbed(1, "m:AddExtLinkFull(t, e)");
            sb.AppendLine("end");
            sb.AppendLine("");
            sb.AppendLine("local function AddCEL(m, a, c, e)");
            sb.AppendLineTabbed(1, "m:AddCritExtLinkFull(a, c, e)");
            sb.AppendLineTabbed(1, "return m;");
            sb.AppendLine("end");
            sb.AppendLine("");
            sb.AppendLine("function exportedPetBattles.Load(m)");
            sb.AppendLineTabbed(1, "for i, _ in next, m do");
            sb.AppendLineTabbed(2, "m[i] = nil;");
            sb.AppendLineTabbed(1, "end");
            sb.AppendLine("");
            sb.AppendLineTabbed(1, "local url = \"https://www.wow-petguide.com/\";");
            sb.AppendLine("");

            var categories = categoryDM.GetAll(true);
            foreach (var category in categories)
                ExportPetBattles(sb, category);

            sb.AppendLine("end");

            using var file = new StreamWriter(@"../../../../../../Krowi_AchievementFilter/Data/ExportedPetBattles.lua");
            file.WriteLine(sb.ToString());
        }

        private void ExportPetBattles(StringBuilder sb, Category category)
        {
            var achievements = achievementDM.GetWithCategory(category);
            foreach (var achievement in achievements)
            {
                var criteria = petBattleLinksDM.GetWithAchievementID(achievement.ID);
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

                            var list = $"m[{achievement.ID}]";
                            sb.AppendTabbed(1, $"{list} = menItm:NewExtLink(addon.L[\"Xu-Fu's Pet Guides\"]");
                            sb.Append(", ");
                            sb.Append(externalLink);
                            sb.AppendLine($"\"); -- {criterion.Name}");

                            var subCriteria = petBattleLinksDM.GetWithParentID(criterion.ID);
                            GetSubCriteria(sb, criterion.ID.Substring(1), subCriteria, list: list);
                        }
                    }
                }
            }

            foreach (var child in category.Children)
                ExportPetBattles(sb, child);
        }

        private void GetSubCriteria(StringBuilder sb, string achievementID, List<PetBattleLink> criteria, string assign = "", string list = "")
        {
            foreach (var criterion in criteria)
            {
                if (!string.IsNullOrEmpty(criterion.ExternalLink))
                {
                    var subCriteria = petBattleLinksDM.GetWithParentID(criterion.ID);

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
                        sb.AppendLineTabbed(indent, $"AddEL({list}, {criterion.Name}, {externalLink}\");");
                    else
                        sb.AppendLineTabbed(indent, $"AddCEL({list}, {achievementID}, {criterion.CriteriaNumber}, {externalLink}\");");

                    GetSubCriteria(sb, criterion.ID.Substring(1), subCriteria, list: assign);
                }
            }
        }
        #endregion

        #region ExportEvents
        private void ExportEvents()
        {
            ExportCalendarEvents();
            ExportWorldEvents();
        }

        private void ExportCalendarEvents()
        {
            SortedDictionary<Event, List<(Category Category, Achievement Achievement)>> keyValuePairs = new();
            var events = eventDM.GetAll();
            foreach (var @event in events)
                keyValuePairs.Add(@event, new List<(Category Category, Achievement Achievement)>());

            var categories = categoryDM.GetAll();
            foreach (var category in categories)
                LinkAchievementsToEvents(keyValuePairs, category);

            // At this point we have all data

            var sb = new StringBuilder();
            sb.AppendLine($"-- [[ Exported at {DateTime.Now:yyyy-MM-dd HH-mm-ss} ]] --");
            sb.AppendLine($"-- [[ This code is automatically generated as an export from ]] --");
            sb.AppendLine($"-- [[ an SQLite database and is not meant for manual edit. ]] --");
            sb.AppendLine("");
            sb.AppendLine("-- [[ Namespaces ]] --");
            sb.AppendLine("local _, addon = ...;");
            sb.AppendLine("local diagnostics = addon.Diagnostics;");
            sb.AppendLine("local objects = addon.Objects;");
            sb.AppendLine("local event = objects.Event;");
            sb.AppendLine("local data = addon.Data;");
            sb.AppendLine("data.ExportedCalendarEvents = {};");
            sb.AppendLine("local exportedCalendarEvents = data.ExportedCalendarEvents;");
            sb.AppendLine("");
            sb.AppendLine("function exportedCalendarEvents.Load(e)");
            sb.AppendLineTabbed(1, "for i, _ in next, e do");
            sb.AppendLineTabbed(2, "e[i] = nil;");
            sb.AppendLineTabbed(1, "end");
            sb.AppendLine("");

            string appendString;
            foreach (var keyValuePair in keyValuePairs)
            {
                if (keyValuePair.Value.Any() && keyValuePair.Key.ID > 0 && keyValuePair.Key.UIMap == null)
                {
                    appendString = $"e[{keyValuePair.Key.ID}] = event:New({keyValuePair.Key.ID}, {keyValuePair.Key.Icon}";
                    //appendString += ", ";
                    //appendString += $"{(keyValuePair.Key.UIMap != null ? keyValuePair.Key.UIMap.ID : "nil")}";
                    //appendString += ", ";
                    //appendString += $"{(keyValuePair.Key.TotalDuration != 0 ? keyValuePair.Key.TotalDuration : "nil")}";
                    //appendString = TrimNils(appendString); // Remove unneccesary nils
                    appendString += $"); -- {keyValuePair.Key.Title}";
                    sb.AppendLineTabbed(1, appendString);
                }
            }

            sb.AppendLine("end");
            sb.AppendLine("");
            //sb.AppendLine("local function AddA(e, a)");
            //sb.AppendLineTabbed(1, "e:AddAchievement(a);");
            //sb.AppendLine("end");
            //sb.AppendLine("");

            //sb.AppendLine("function exportedEvents.LoadAchievements(e, a)");
            //sb.AppendLineTabbed(1, $"if e == nil or (type(e) == \"table\" and #e == 0) then");
            //sb.AppendLineTabbed(2, $"exportedEvents.Load(e);");
            //sb.AppendLineTabbed(1, $"end");
            //sb.AppendLine("");

            //foreach (var keyValuePair in keyValuePairs)
            //{
            //    if (keyValuePair.Value.Any() && keyValuePair.Key.ID > 0)
            //    {
            //        foreach (var achievement in keyValuePair.Value)
            //            sb.AppendLineTabbed(1, $"AddA(e[{keyValuePair.Key.ID}], a[{achievement.ID}]); -- {achievement.Name}");
            //    }

            //}

            sb.AppendLine("function exportedCalendarEvents.LoadCategories(e, a)");
            appendString = "if ";
            foreach (var keyValuePair in keyValuePairs)
                if (keyValuePair.Value.Any() && keyValuePair.Key.ID > 0 && keyValuePair.Key.UIMap == null)
                    appendString += $"e[{keyValuePair.Key.ID}] == nil or ";
            appendString = Trim(appendString, " or ");
            appendString += " then";
            sb.AppendLineTabbed(1, appendString);
            sb.AppendLineTabbed(2, $"exportedCalendarEvents.Load(e);");
            sb.AppendLineTabbed(1, $"end");
            sb.AppendLine("");

            foreach (var keyValuePair in keyValuePairs)
                if (keyValuePair.Value.Any() && keyValuePair.Key.ID > 0 && keyValuePair.Key.UIMap == null)
                {
                    appendString = $"e[{keyValuePair.Key.ID}].Category = ";
                    appendString = GetCategoryPath(keyValuePair.Value[0].Category, appendString);
                    appendString += $"; -- {keyValuePair.Value[0].Category.Name}";
                    sb.AppendLineTabbed(1, appendString);
                }

            sb.AppendLine("end");
            AddInjects(keyValuePairs, sb, "exportedCalendarEvents", true, "Calendar Events");

            using var file = new StreamWriter(@"../../../../../../Krowi_AchievementFilter/Data/ExportedCalendarEvents.lua");
            file.WriteLine(sb.ToString());
        }

        private void LinkAchievementsToEvents(SortedDictionary<Event, List<(Category Category, Achievement Achievement)>> keyValuePairs, Category category)
        {
            var categoryEvents = category.GetEvents(true);
            var achievements = category.GetAchievements();

            foreach (var achievement in achievements)
            {
                foreach (var categoryEvent in categoryEvents)
                    keyValuePairs[categoryEvent].Add((category, achievement));

                var achievementEvents = achievement.GetEvents(true);
                foreach (var achievementEvent in achievementEvents)
                    keyValuePairs[achievementEvent].Add((category, achievement));
            }

            foreach (var child in category.Children)
                LinkAchievementsToEvents(keyValuePairs, child);
        }

        private void ExportWorldEvents()
        {
            SortedDictionary<Event, List<(Category Category, Achievement Achievement)>> keyValuePairs = new();
            var events = eventDM.GetAll();
            foreach (var @event in events)
                keyValuePairs.Add(@event, new List<(Category Category, Achievement Achievement)>());

            var categories = categoryDM.GetAll();
            foreach (var category in categories)
                LinkAchievementsToEvents(keyValuePairs, category);

            // At this point we have all data

            var sb = new StringBuilder();
            sb.AppendLine($"-- [[ Exported at {DateTime.Now:yyyy-MM-dd HH-mm-ss} ]] --");
            sb.AppendLine($"-- [[ This code is automatically generated as an export from ]] --");
            sb.AppendLine($"-- [[ an SQLite database and is not meant for manual edit. ]] --");
            sb.AppendLine("");
            sb.AppendLine("-- [[ Namespaces ]] --");
            sb.AppendLine("local _, addon = ...;");
            sb.AppendLine("local diagnostics = addon.Diagnostics;");
            sb.AppendLine("local objects = addon.Objects;");
            sb.AppendLine("local event = objects.Event;");
            sb.AppendLine("local data = addon.Data;");
            sb.AppendLine("data.ExportedWorldEvents = {};");
            sb.AppendLine("local exportedWorldEvents = data.ExportedWorldEvents;");
            sb.AppendLine("");
            sb.AppendLine("function exportedWorldEvents.Load(e)");
            sb.AppendLineTabbed(1, "for i, _ in next, e do");
            sb.AppendLineTabbed(2, "e[i] = nil;");
            sb.AppendLineTabbed(1, "end");
            sb.AppendLine("");

            string appendString;
            foreach (var keyValuePair in keyValuePairs)
            {
                if (keyValuePair.Value.Any() && keyValuePair.Key.ID > 0 && keyValuePair.Key.UIMap != null)
                {
                    appendString = $"e[{keyValuePair.Key.ID}] = event:New({keyValuePair.Key.ID}, {keyValuePair.Key.Icon}, addon.L[\"{ keyValuePair.Key.Title}\"]"; // {keyValuePair.Value[0].Category.Function.Call.Replace("%value%", keyValuePair.Value[0].Category.FunctionValue)}
                    appendString += ", ";
                    appendString += $"{(keyValuePair.Key.UIMap != null ? keyValuePair.Key.UIMap.ID : "nil")}";
                    appendString += ", ";
                    appendString += $"{(keyValuePair.Key.TotalDuration != 0 ? keyValuePair.Key.TotalDuration : "nil")}";
                    appendString = TrimNils(appendString); // Remove unneccesary nils
                    appendString += $"); -- {keyValuePair.Key.Title}";
                    sb.AppendLineTabbed(1, appendString);
                }
            }

            sb.AppendLine("end");
            sb.AppendLine("");
            //sb.AppendLine("local function AddA(e, a)");
            //sb.AppendLineTabbed(1, "e:AddAchievement(a);");
            //sb.AppendLine("end");
            //sb.AppendLine("");

            //sb.AppendLine("function exportedEvents.LoadAchievements(e, a)");
            //sb.AppendLineTabbed(1, $"if e == nil or (type(e) == \"table\" and #e == 0) then");
            //sb.AppendLineTabbed(2, $"exportedEvents.Load(e);");
            //sb.AppendLineTabbed(1, $"end");
            //sb.AppendLine("");

            //foreach (var keyValuePair in keyValuePairs)
            //{
            //    if (keyValuePair.Value.Any() && keyValuePair.Key.ID > 0)
            //    {
            //        foreach (var achievement in keyValuePair.Value)
            //            sb.AppendLineTabbed(1, $"AddA(e[{keyValuePair.Key.ID}], a[{achievement.ID}]); -- {achievement.Name}");
            //    }

            //}

            sb.AppendLine("function exportedWorldEvents.LoadCategories(e, a)");
            appendString = "if ";
            foreach (var keyValuePair in keyValuePairs)
                if (keyValuePair.Value.Any() && keyValuePair.Key.ID > 0 && keyValuePair.Key.UIMap != null)
                    appendString += $"e[{keyValuePair.Key.ID}] == nil or ";
            appendString = Trim(appendString, " or ");
            appendString += " then";
            sb.AppendLineTabbed(1, appendString);
            sb.AppendLineTabbed(2, $"exportedWorldEvents.Load(e);");
            sb.AppendLineTabbed(1, $"end");
            sb.AppendLine("");

            foreach (var keyValuePair in keyValuePairs)
                if (keyValuePair.Value.Any() && keyValuePair.Key.ID > 0 && keyValuePair.Key.UIMap != null)
                {
                    appendString = $"e[{keyValuePair.Key.ID}].Category = ";
                    appendString = GetCategoryPath(keyValuePair.Value[0].Category, appendString);
                    appendString += $"; -- {keyValuePair.Value[0].Category.Name}";
                    sb.AppendLineTabbed(1, appendString);
                }

            sb.AppendLine("end");
            AddInjects(keyValuePairs, sb, "exportedWorldEvents", false, "World Events");

            using var file = new StreamWriter(@"../../../../../../Krowi_AchievementFilter/Data/ExportedWorldEvents.lua");
            file.WriteLine(sb.ToString());
        }

        private static void AddInjects(SortedDictionary<Event, List<(Category Category, Achievement Achievement)>> keyValuePairs, StringBuilder sb, string nameSpace, bool uiMapIsNull, string tableName)
        {
            sb.AppendLine("");

            sb.AppendLine($"function {nameSpace}.InjectOptions()");
            sb.AppendLineTabbed(1, "local defaults = {};");
            foreach (var keyValuePair in keyValuePairs)
                if (keyValuePair.Value.Any() && keyValuePair.Key.ID > 0 && (keyValuePair.Key.UIMap == null) == uiMapIsNull)
                    sb.AppendLineTabbed(1, $"defaults[{keyValuePair.Key.ID}] = true;");
            sb.AppendLine("");
            sb.AppendLineTabbed(1, $"addon.Options.InjectDefaults(defaults, \"{tableName.Replace(" ", "")}\", \"EventAlert\");");
            sb.AppendLine("");
            sb.AppendLineTabbed(1, "local optionsTable = {");
            sb.AppendLineTabbed(2, $"name = addon.L[\"{tableName}\"],");
            sb.AppendLineTabbed(2, "type = \"group\",");
            sb.AppendLineTabbed(2, "inline = true,");
            sb.AppendLineTabbed(2, "args = {");
            foreach (var keyValuePair in keyValuePairs)
                if (keyValuePair.Value.Any() && keyValuePair.Key.ID > 0 && (keyValuePair.Key.UIMap == null) == uiMapIsNull)
                {
                    sb.AppendLineTabbed(3, $"E{keyValuePair.Key.ID} = {{");
                    sb.AppendLineTabbed(4, "type = \"toggle\",");
                    sb.AppendLineTabbed(4, $"name = addon.L[\"{ keyValuePair.Key.Title}\"],");
                    sb.AppendLineTabbed(4, $"get = function() return addon.Options.db.EventAlert.{tableName.Replace(" ", "")}[{keyValuePair.Key.ID}]; end,");
                    sb.AppendLineTabbed(4, "set = function()");
                    sb.AppendLineTabbed(5, $"addon.Options.db.EventAlert.{tableName.Replace(" ", "")}[{keyValuePair.Key.ID}] = not addon.Options.db.EventAlert.{tableName.Replace(" ", "")}[{keyValuePair.Key.ID}];");
                    sb.AppendLineTabbed(5, $"addon.Options.Debug(addon.L[\"{ keyValuePair.Key.Title}\"], addon.Options.db.EventAlert.{tableName.Replace(" ", "")}[{keyValuePair.Key.ID}]);");
                    sb.AppendLineTabbed(4, "end");
                    sb.AppendLineTabbed(3, "},");
                }
            sb.AppendLineTabbed(2, "}");
            sb.AppendLineTabbed(1, "};");
            sb.AppendLine("");
            sb.AppendLineTabbed(1, $"addon.Options.InjectOptionsTable(optionsTable, \"{tableName.Replace(" ", "")}\", \"EventAlert\", \"args\", \"General\", \"args\");");
            sb.AppendLine("end");
        }

        private string GetCategoryPath(Category category, string appendString)
        {
            var categoryIDs = new List<int>();
            Category parent = category.Parent;

            while (parent != null)
            {
                categoryIDs.Add(parent.Children.IndexOf(category) + 1);
                category = parent;
                parent = parent.Parent;
            }

            switch (category.ID)
            {
                case 883:
                    appendString += "data.CategoriesExpansions";
                    break;
                case 884:
                    appendString += "data.CategoriesEvents";
                    break;
                default:
                    break;
            }

            for (int i = categoryIDs.Count - 1; i >= 0; i--)
                appendString += $"{(i == categoryIDs.Count - 1 ? "" : ".Children")}[{categoryIDs[i]}]";

            return appendString;
        }

        //private void LinkAchievementsToWorldEvents(SortedDictionary<Event, List<(Category Category, Achievement Achievement)>> keyValuePairs, Category category)
        //{
        //    var categoryEvents = category.GetEvents(true);
        //    var achievements = category.GetAchievements();

        //    foreach (var achievement in achievements)
        //    {
        //        foreach (var categoryEvent in categoryEvents)
        //            keyValuePairs[categoryEvent].Add((category, achievement));

        //        var achievementEvents = achievement.GetEvents(true);
        //        foreach (var achievementEvent in achievementEvents)
        //            keyValuePairs[achievementEvent].Add((category, achievement));
        //    }

        //    foreach (var child in category.Children)
        //        LinkAchievementsToWorldEvents(keyValuePairs, child);
        //}
        #endregion

        private void ExportAll()
        {
            ExportAchievements();
            ExportNextPatchAchievements();
            ExportCategories();
            ExportMaps();
            ExportPetBattles();
            ExportEvents();
        }

        private string TrimNils(string input)
        {
            return Trim(input, ", nil");
        }

        private string Trim(string input, string trim)
        {
            while (input.EndsWith(trim))
                input = input[0..^trim.Length];

            return input;
        }
    }
}