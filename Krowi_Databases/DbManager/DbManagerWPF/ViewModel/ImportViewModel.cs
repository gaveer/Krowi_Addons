using DbManagerWPF.Model;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Windows.Input;

namespace DbManagerWPF.ViewModel
{
    public partial class MainWindowViewModel
    {
        #region Properties
        public ICommand ImportAchievementsCommand => new CommandHandler(() => ImportAchievements(), () => !backgroundWorker.IsBusy);
        public ICommand ImportUIMapsCommand => new CommandHandler(() => ImportUIMaps(), () => !backgroundWorker.IsBusy);
        public ICommand ImportXuFuEncountersCommand => new CommandHandler(() => ImportXuFuEncounters(), () => !backgroundWorker.IsBusy);

        private string _ImportText;
        public string ImportText { get { return _ImportText; } set { _ImportText = value; NotifyPropertyChanged(); } }

        private int _ImportValue;
        public int ImportValue { get { return _ImportValue; } set { _ImportValue = value; NotifyPropertyChanged(); } }

        private int _ImportMax;
        public int ImportMax { get { return _ImportMax; } set { _ImportMax = value; NotifyPropertyChanged(); } }
        #endregion

        private BackgroundWorker backgroundWorker;

        private enum ImportTask
        {
            Achievements,
            UIMaps,
            XuFuEncounters
        }

        public void LoadImportViewModel()
        {
            backgroundWorker = new BackgroundWorker
            {
                WorkerReportsProgress = true
            };
            backgroundWorker.DoWork += BackgroundWorker_DoWork;
            backgroundWorker.ProgressChanged += BackgroundWorker_ProgressChanged;
            backgroundWorker.RunWorkerCompleted += BackgroundWorker_RunWorkerCompleted;

            ImportValue = 0;
            ImportMax = 1;
        }

        private void ImportAchievements()
        {
            OpenFileDialog fileDialog = new()
            {
                InitialDirectory = @"C:\Users\Frederik\Downloads",
                Filter = "csv files (*.csv)|*.csv|All files (*.*)|*.*"
            };

            if (fileDialog.ShowDialog() == true)
                backgroundWorker.RunWorkerAsync((ImportTask.Achievements, fileDialog));
        }

        private void ImportUIMaps()
        {
            OpenFileDialog fileDialog = new()
            {
                InitialDirectory = @"C:\Users\Frederik\Downloads",
                Filter = "csv files (*.csv)|*.csv|All files (*.*)|*.*"
            };

            if (fileDialog.ShowDialog() == true)
                backgroundWorker.RunWorkerAsync((ImportTask.UIMaps, fileDialog));
        }

        private void ImportXuFuEncounters()
        {
            backgroundWorker.RunWorkerAsync((ImportTask.XuFuEncounters, new OpenFileDialog()));
        }

        private void BackgroundWorker_DoWork(object sender, DoWorkEventArgs e)
        {
            var arguments = ((ImportTask Task, OpenFileDialog FileDialog))e.Argument;

            switch (arguments.Task)
            {
                case ImportTask.Achievements:
                    ImportAchievements_DoWork(arguments.FileDialog);
                    break;
                case ImportTask.UIMaps:
                    ImportUIMaps_DoWork(arguments.FileDialog);
                    break;
                case ImportTask.XuFuEncounters:
                    ImportXuFuEncounters_DoWork();
                    break;
            }
        }

        private void ImportAchievements_DoWork(OpenFileDialog fileDialog)
        {
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

                var achievement = new Achievement(uiMapDM, eventDM)
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

        private void ImportUIMaps_DoWork(OpenFileDialog fileDialog)
        {
            var fileStream = fileDialog.OpenFile();
            using StreamReader reader = new StreamReader(fileStream);
            reader.ReadLine(); // Skip 1st line (header)
            var fileContent = reader.ReadToEnd();
            Regex.Replace(fileContent, "'", "''");
            var matches = Regex.Matches(fileContent, @"(?:(?:""|)(?<OriginalName>.*?)(?:""|)),(?<ID>\d*),.*?,.*?,.*?,.*?,.*?,.*?,.*?,.*?,.*?,.*?,.*?\n");
            for (int i = 0; i < matches.Count; i++)
            {
                backgroundWorker.ReportProgress(i + 1, matches.Count);
                int.TryParse(matches[i].Groups["ID"].Value, out int id);
                _ = id == 0 ? throw new IndexOutOfRangeException($"'{matches[i].Groups["ID"].Value}' is not a valid ID") : "";
                uiMapDM.UpdateAGT(id, matches[i].Groups["OriginalName"].Value);
            }
        }

        private void ImportXuFuEncounters_DoWork()
        {
            WebClient webClient = new WebClient();

            // Get max id as this is variable
            var j = 10000;
            var prevID = 0;
            var lower = prevID;
            var upper = j;
            while (prevID != j)
            {
                backgroundWorker.ReportProgress(0, j);
                prevID = j;
                int checkFails = 0;
                for (int i = j; i < j + 5; i++)
                {
                    if (GetXuFuEncounter(webClient, i) == null)
                        checkFails += 1;
                    else
                        break;
                }

                if (checkFails >= 5)
                {
                    upper = j;
                    j = lower + (j - lower) / 2;
                }
                else
                {
                    lower = j;
                    j += (upper - j) / 2;
                }
            }

            // Get all id's and add/update to database
            var addedCounter = 0;
            for (int i = 1; i <= j; i++)
            {
                backgroundWorker.ReportProgress(i, j);

                // Get info from webpage
                var xuFuEncounter = GetXuFuEncounter(webClient, i);
                if (xuFuEncounter == null)
                    continue;

                xuFuEncounterDM.UpdateAGT(xuFuEncounter);
                addedCounter++;
            }
        }

        private XuFuEncounter GetXuFuEncounter(WebClient webClient, int id)
        {
            string source = webClient.DownloadString($"https://en.wow-petguide.com//Encounter/{id}");
            source = WebUtility.HtmlDecode(source);
            string name = Regex.Match(source, @"\<title\b[^>]*\>\s*Xu-Fu Strategy vs\. (?<Title>[\s\S]*?)\</title\>", RegexOptions.IgnoreCase).Groups["Title"].Value;
            string sourceFamily = Regex.Match(source, "<link rel=\"alternate\" hreflang=\"en\" href=\"https://www.wow-petguide.com/Strategy/.*?/(?<Alternate>.*?)\">", RegexOptions.IgnoreCase).Groups["Alternate"].Value;
            string name2 = Regex.Match(source, @"""activebutton.*?>(?<Name>.*?)<", RegexOptions.IgnoreCase).Groups["Name"].Value;
            string section = null;
            var sections = Regex.Matches(source, "highlight\".*?>(?<Highlight>.*?)<");
            foreach (Match item in sections)
                section += $"{item.Groups["Highlight"].Value}; ";
            section?.Trim();
            //bool ignore = Regex.Match(source, "highlight\" href=\"/Section/35/Falcosaur_Team_Rumble").Success;

            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(name2) || string.IsNullOrEmpty(section) /*|| ignore*/) // Skip if the page is no encounter
                return null;

            // Process webpage info
            //sourceFamily = sourceFamily.Substring(Math.Min(name.Length + 1, sourceFamily.Length)).Replace("_", " ").Trim();
            sourceFamily = sourceFamily.Split('-').Last();

            Enum.TryParse(sourceFamily, out PetFamily family);

            return new XuFuEncounter()
            {
                ID = id,
                Name = name2.Trim(),
                Family = family,
                Section = section.Trim()
            };
        }

        private void BackgroundWorker_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            ImportMax = (int)e.UserState;
            ImportValue = e.ProgressPercentage;
            ImportText = $"{ImportValue} / {ImportMax}";
        }

        private void BackgroundWorker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {

        }
    }
}