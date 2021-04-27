using DbManager.DataManagers;
using DbManager.Objects;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Windows.Forms;

namespace DbManager.GUI
{
    public class AchievementHandler : IGUIHandler
    {
        private readonly ListBox lsbAchievements;
        private readonly Button button;
        private readonly ProgressBar progressBar;
        private readonly AchievementDataManager dataManager;
        private readonly AchievementCategoryHandler achievementCategoryHandler;
        private readonly BackgroundWorker backgroundWorker;

        public AchievementHandler(ListBox lsbAchievements, Button button, ProgressBar progressBar, AchievementDataManager dataManager, AchievementCategoryHandler achievementCategoryHandler)
        {
            this.lsbAchievements = lsbAchievements;
            this.button = button;
            this.progressBar = progressBar;
            this.dataManager = dataManager;
            this.achievementCategoryHandler = achievementCategoryHandler;

            backgroundWorker = new BackgroundWorker
            {
                WorkerReportsProgress = true
            };
            backgroundWorker.DoWork += BackgroundWorker_DoWork;
            backgroundWorker.ProgressChanged += BackgroundWorker_ProgressChanged;
            backgroundWorker.RunWorkerCompleted += BackgroundWorker_RunWorkerCompleted;
        }

        public IDataManager DataManager => dataManager;

        public void RefreshListBox()
        {
            lsbAchievements.Items.Clear(); // Clear before adding new categories

            var category = achievementCategoryHandler.GetSelectedAchievementCategory();

            if (category == null)
                return; // Don't get achievements when there is no category selected

            var achievements = dataManager.GetWithCategory(category);

            foreach (var achievement in achievements)
                lsbAchievements.Items.Add(achievement);

            if (lsbAchievements.Items.Count > 0) // Select latest achievement
                lsbAchievements.SelectedIndex = lsbAchievements.Items.Count - 1;
        }

        public void Add(string achievementIDs, Faction faction, Covenant covenant, bool isObtainable, bool hasWowheadLink)
        {
            List<string> groups = achievementIDs.Split(',').ToList();
            groups = groups.Select(x => x.Trim()).ToList();
            groups = groups.Where(x => !string.IsNullOrEmpty(x)).ToList();
            List<(int ID, Faction Faction)> IDsAndFactions;
            if (groups[0].Contains("_"))
                IDsAndFactions = groups.Select(g => g.Split('_')).Select(g => (int.Parse(g[0]), (Faction)int.Parse(g[1]))).ToList();
            else
                IDsAndFactions = groups.Select(g => (int.Parse(g), Faction.Undefined)).ToList();

            foreach (var (ID, stringFaction) in IDsAndFactions)
            {
                if (stringFaction != Faction.Undefined)
                    faction = stringFaction;

                int location = lsbAchievements.Items.Count > 0 ? ((Achievement)lsbAchievements.SelectedItem).Location + 1 : 1;
                var category = achievementCategoryHandler.GetSelectedAchievementCategory();

                var achievement = new Achievement(ID, faction, covenant, isObtainable, hasWowheadLink, location);
                dataManager.Add(achievement, category);

                // Only insert and update locations if achievement is not added to the end of the list
                if (lsbAchievements.SelectedIndex >= 0 && ((Achievement)lsbAchievements.Items[lsbAchievements.Items.Count - 1]).Location <= location)
                {
                    lsbAchievements.Items.Insert(lsbAchievements.SelectedIndex, achievement);

                    dataManager.UpdateLocations(achievement, lsbAchievements.Items.Cast<Achievement>().ToList());
                }

                RefreshListBox();
            }
        }

        public void Remove()
        {
            dataManager.Remove((Achievement)lsbAchievements.SelectedItem, achievementCategoryHandler.GetSelectedAchievementCategory());

            RefreshListBox();
        }

        public void MoveUp()
        {
            if (lsbAchievements.SelectedIndex == 0) // Already top element so can't go up
                return;

            var selectedIndex = lsbAchievements.SelectedIndex;
            var achievement1 = (Achievement)lsbAchievements.SelectedItem;
            var achievement2 = (Achievement)lsbAchievements.Items[lsbAchievements.SelectedIndex - 1];
            dataManager.Swap(achievement1, achievement2, achievementCategoryHandler.GetSelectedAchievementCategory());

            RefreshListBox();

            lsbAchievements.SelectedIndex = selectedIndex - 1;
        }

        public void MoveDown()
        {
            if (lsbAchievements.SelectedIndex == lsbAchievements.Items.Count - 1) // Already bottom element so can't go down
                return;

            var selectedIndex = lsbAchievements.SelectedIndex;
            var achievement1 = (Achievement)lsbAchievements.SelectedItem;
            var achievement2 = (Achievement)lsbAchievements.Items[lsbAchievements.SelectedIndex + 1];
            dataManager.Swap(achievement1, achievement2, achievementCategoryHandler.GetSelectedAchievementCategory());

            RefreshListBox();

            lsbAchievements.SelectedIndex = selectedIndex + 1;
        }

        public void UpdateFromFile()
        {
            using OpenFileDialog fileDialog = new OpenFileDialog();
            fileDialog.InitialDirectory = @"C:\Users\Frederik\Downloads";
            fileDialog.Filter = "csv files (*.csv)|*.csv|All files (*.*)|*.*";
            if (fileDialog.ShowDialog() == DialogResult.OK)
            {
                button.Enabled = false;
                button.Visible = false;
                progressBar.Visible = true;
                backgroundWorker.RunWorkerAsync(fileDialog);
            }
        }

        private void BackgroundWorker_DoWork(object sender, DoWorkEventArgs e)
        {
            var fileDialog = (OpenFileDialog)e.Argument;
            var fileStream = fileDialog.OpenFile();
            using StreamReader reader = new StreamReader(fileStream);
            reader.ReadLine(); // Skip 1st line (header)
            List<string> lines = new List<string>();
            string line;
            while ((line = reader.ReadLine()) != null)
                lines.Add(line);

            for (int i = 0; i < lines.Count; i++)
            {
                var count = lines[i].Count(x => x == '"');
                if (count % 2 != 0)
                {
                    lines[i + 1] = $"{lines[i]}{lines[i + 1]}";
                    lines[i] = null;
                }
            }
            lines = lines.Where(x => x != null).ToList();

            List<string> flagss = new List<string>();
            for (int i = 0; i < lines.Count; i++)
            {
                backgroundWorker.ReportProgress(i + 1, lines.Count);
                Regex.Replace(lines[i], "'", "''");
                var matches = Regex.Matches(lines[i], @"(?:,|\n|^)(""(?:(?:"""")*[^""]*)*""|[^"",\n]*|(?:\n|$))");

                int offset = matches.Count == 17 ? 0 : -1; // Should be 17 but description can be empty

                int.TryParse(matches[3 + offset].Groups[matches[3 + offset].Groups.Count - 1].Value, out int id);
                var name = matches[1 + offset].Groups[matches[1 + offset].Groups.Count - 1].Value;
                var description = offset == 0 ? matches[0].Groups[matches[0].Groups.Count - 1].Value : null;
                int.TryParse(matches[5 + offset].Groups[matches[5 + offset].Groups.Count - 1].Value, out int factionID);
                var faction = (Faction)factionID;
                int.TryParse(matches[7 + offset].Groups[matches[7 + offset].Groups.Count - 1].Value, out int category);
                int.TryParse(matches[9 + offset].Groups[matches[9 + offset].Groups.Count - 1].Value, out int points);
                var flags = (AchievementFlags)Enum.Parse(typeof(AchievementFlags), matches[10 + offset].Groups[matches[10 + offset].Groups.Count - 1].Value);
                int.TryParse(matches[16 + offset].Groups[matches[16 + offset].Groups.Count - 1].Value, out int covenantID);
                var covenant = (Covenant)covenantID;

                if (id == 0)
                    continue;

                dataManager.UpdateAGT(new Achievement(id, name, description, faction, points, covenant, flags), category);
            }
        }

        private void BackgroundWorker_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            progressBar.Maximum = (int)e.UserState;
            progressBar.Value = e.ProgressPercentage;
        }

        private void BackgroundWorker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            button.Enabled = true;
            button.Visible = true;
            progressBar.Visible = false;
        }
    }
}