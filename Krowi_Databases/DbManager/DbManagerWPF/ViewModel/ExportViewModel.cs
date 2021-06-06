using DbManagerWPF.Model;
using System;
using System.IO;
using System.Text;
using System.Windows.Input;

namespace DbManagerWPF.ViewModel
{
    public partial class MainWindowViewModel
    {
        #region Properties
        public ICommand ExportAchievementsCommand => new CommandHandler(() => ExportAchievements(), () => true);
        #endregion

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

            var achievements = achievementDM.GetAll();
            foreach (var achievement in achievements)
            {
                var appendString = $"achievements[{achievement.ID}] = achievement:New(";
                appendString += achievement.ID; // ID
                appendString += ", ";
                appendString += achievement.Points; // Points
                appendString += ", ";
                appendString += achievement.Faction == Faction.NoFaction ? "nil" : $"faction.{achievement.Faction}"; // Faction
                appendString += ", ";
                appendString += achievement.Covenant == Covenant.NoCovenant ? "nil" : $"covenant.{achievement.Covenant}"; // Covenant
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

        private string TrimNils(string input)
        {
            while (input.EndsWith(", nil"))
                input = input[0..^5];

            return input;
        }
    }
}