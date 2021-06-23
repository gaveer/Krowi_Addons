using DbManagerWPF.Model;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.ComponentModel;
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
        public ICommand ImportAchievementsCommand => new CommandHandler(() => ImportAchievements(), () => !backgroundWorker.IsBusy);

        private string _ImportAchievementsText;
        public string ImportAchievementsText { get { return _ImportAchievementsText; } set { _ImportAchievementsText = value; NotifyPropertyChanged(); } }

        private int _ImportAchievementsValue;
        public int ImportAchievementsValue { get { return _ImportAchievementsValue; } set { _ImportAchievementsValue = value; NotifyPropertyChanged(); } }

        private int _ImportAchievementsMax;
        public int ImportAchievementsMax { get { return _ImportAchievementsMax; } set { _ImportAchievementsMax = value; NotifyPropertyChanged(); } }
        #endregion

        private BackgroundWorker backgroundWorker;

        public void LoadImportViewModel()
        {
            backgroundWorker = new BackgroundWorker
            {
                WorkerReportsProgress = true
            };
            backgroundWorker.DoWork += BackgroundWorker_DoWork;
            backgroundWorker.ProgressChanged += BackgroundWorker_ProgressChanged;
            backgroundWorker.RunWorkerCompleted += BackgroundWorker_RunWorkerCompleted;

            ImportAchievementsValue = 0;
            ImportAchievementsMax = 1;
        }

        private void ImportAchievements()
        {
            OpenFileDialog fileDialog = new()
            {
                InitialDirectory = @"C:\Users\Frederik\Downloads",
                Filter = "csv files (*.csv)|*.csv|All files (*.*)|*.*"
            };

            if (fileDialog.ShowDialog() == true)
                backgroundWorker.RunWorkerAsync(fileDialog);
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

                var description = offset == 0 ? matches[0].Groups[matches[0].Groups.Count - 1].Value : null;
                var name = matches[1 + offset].Groups[matches[1 + offset].Groups.Count - 1].Value;
                var rewardText = matches[2 + offset].Groups[matches[2 + offset].Groups.Count - 1].Value;
                int.TryParse(matches[3 + offset].Groups[matches[3 + offset].Groups.Count - 1].Value, out int id);
                int.TryParse(matches[5 + offset].Groups[matches[5 + offset].Groups.Count - 1].Value, out int factionID);
                var faction = (Faction)factionID;
                int.TryParse(matches[7 + offset].Groups[matches[7 + offset].Groups.Count - 1].Value, out int category);
                int.TryParse(matches[9 + offset].Groups[matches[9 + offset].Groups.Count - 1].Value, out int points);
                var flags = (AchievementFlags)Enum.Parse(typeof(AchievementFlags), matches[10 + offset].Groups[matches[10 + offset].Groups.Count - 1].Value);
                int.TryParse(matches[11 + offset].Groups[matches[11 + offset].Groups.Count - 1].Value, out int uiOrder);
                int.TryParse(matches[12 + offset].Groups[matches[12 + offset].Groups.Count - 1].Value, out int iconFileID);
                int.TryParse(matches[16 + offset].Groups[matches[16 + offset].Groups.Count - 1].Value, out int covenantID);
                var covenant = (Covenant)covenantID;

                if (id == 0)
                    continue;

                var achievement = new Achievement(uiMapDM)
                {
                    ID = id,
                    Name = name,
                    Description = description,
                    Faction = faction,
                    Covenant = covenant,
                    Points = points,
                    Flags = flags
                };
                achievementDM.UpdateAGT(achievement, rewardText, category, uiOrder, iconFileID);
            }
        }

        private void BackgroundWorker_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            ImportAchievementsMax = (int)e.UserState;
            ImportAchievementsValue = e.ProgressPercentage;
            ImportAchievementsText = $"{ImportAchievementsValue} / {ImportAchievementsMax}";
        }

        private void BackgroundWorker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {

        }
    }
}