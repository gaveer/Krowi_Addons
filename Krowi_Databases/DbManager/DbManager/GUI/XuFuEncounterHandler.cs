using DbManager.DataManagers;
using DbManager.GUI.Custom;
using DbManager.Objects;
using System;
using System.ComponentModel;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Windows.Forms;

namespace DbManager.GUI
{
    public class XuFuEncounterHandler : IGUIHandler
    {
        private readonly Button button;
        private readonly TextProgressBar progressBar;
        private readonly XuFuEncounterDataManager dataManager;
        private readonly BackgroundWorker backgroundWorker;

        private string buttonText = "";

        public XuFuEncounterHandler(Button button, TextProgressBar progressBar, XuFuEncounterDataManager dataManager)
        {
            this.button = button;
            this.progressBar = progressBar;
            progressBar.Minimum = 1;
            this.dataManager = dataManager;

            backgroundWorker = new BackgroundWorker
            {
                WorkerReportsProgress = true
            };
            backgroundWorker.DoWork += BackgroundWorker_DoWork;
            backgroundWorker.ProgressChanged += BackgroundWorker_ProgressChanged;
            backgroundWorker.RunWorkerCompleted += BackgroundWorker_RunWorkerCompleted;
        }

        public IDataManager DataManager => dataManager;

        public void UpdateFromWeb()
        {
            buttonText = button.Text;
            button.Enabled = false;
            //button.Visible = false;
            //progressBar.Visible = true;
            backgroundWorker.RunWorkerAsync();
        }

        private void BackgroundWorker_DoWork(object sender, DoWorkEventArgs e)
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

                dataManager.Update(xuFuEncounter);
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

            return new XuFuEncounter(id, name2.Trim(), family, section.Trim());
        }

        private void BackgroundWorker_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            if (e.ProgressPercentage == 0)
                button.Text = $"Getting max ID ({(int)e.UserState})";
            else
            {
                button.Visible = false;
                progressBar.Visible = true;
                progressBar.Maximum = (int)e.UserState;
                progressBar.Value = e.ProgressPercentage;
            }
        }

        private void BackgroundWorker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            button.Text = buttonText;
            button.Enabled = true;
            button.Visible = true;
            progressBar.Visible = false;
        }
    }
}