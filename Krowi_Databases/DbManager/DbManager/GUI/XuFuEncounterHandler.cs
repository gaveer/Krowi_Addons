using DbManager.DataManagers;
using DbManager.Objects;
using Microsoft.Data.Sqlite;
using System;
using System.ComponentModel;
using System.Net;
using System.Text.RegularExpressions;
using System.Windows.Forms;
using System.Linq;

namespace DbManager.GUI
{
    public class XuFuEncounterHandler
    {
        private Button btnXuFu;
        private ProgressBar pgbXuFu;
        private BackgroundWorker worker;
        private string buttonText;

        public XuFuEncounterHandler(SqliteConnection connection, Button btnXuFu, ProgressBar pgbXuFu)
        {
            DataManager = new XuFuEncounterDataManager(connection);
            this.btnXuFu = btnXuFu;
            this.pgbXuFu = pgbXuFu;
            buttonText = btnXuFu.Text;

            worker = new BackgroundWorker();
            worker.WorkerReportsProgress = true;
            worker.DoWork += Worker_DoWork;
            worker.ProgressChanged += Worker_ProgressChanged;
            worker.RunWorkerCompleted += Worker_RunWorkerCompleted;
            pgbXuFu.Minimum = 1;
            pgbXuFu.Maximum = 1500; // 1500
        }

        public XuFuEncounterDataManager DataManager { get; set; }

        public void UpdateEncountersFromWeb()
        {
            btnXuFu.Enabled = false;
            worker.RunWorkerAsync();
        }

        private void Worker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            btnXuFu.Enabled = true;
        }

        private void Worker_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            btnXuFu.Text = $"{buttonText} ({e.UserState}/{e.ProgressPercentage})";
            pgbXuFu.Value = e.ProgressPercentage;
        }

        private void Worker_DoWork(object sender, DoWorkEventArgs e)
        {
            var addedCounter = 0;
            for (int i = pgbXuFu.Minimum; i <= pgbXuFu.Maximum; i++)
            {
                worker.ReportProgress(i, addedCounter);

                // Get info from webpage
                WebClient x = new WebClient();
                string source = x.DownloadString($"https://en.wow-petguide.com//Encounter/{i}");
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
                    continue;

                // Process webpage info
                //sourceFamily = sourceFamily.Substring(Math.Min(name.Length + 1, sourceFamily.Length)).Replace("_", " ").Trim();
                sourceFamily = sourceFamily.Split('-').Last();

                Enum.TryParse(sourceFamily, out PetFamily family);

                DataManager.Add(new XuFuEncounter(i, name2, family, section));
                addedCounter++;
            }
        }

    }
}