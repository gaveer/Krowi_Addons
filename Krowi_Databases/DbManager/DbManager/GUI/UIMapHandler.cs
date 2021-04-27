using DbManager.DataManagers;
using DbManager.Objects;
using System;
using System.ComponentModel;
using System.IO;
using System.Text.RegularExpressions;
using System.Windows.Forms;

namespace DbManager.GUI
{
    public class UIMapHandler : IGUIHandler
    {
        private readonly Button button;
        private readonly ProgressBar progressBar;
        private readonly UIMapDataManager dataManager;
        private readonly BackgroundWorker backgroundWorker;

        public UIMapHandler(Button button, ProgressBar progressBar, UIMapDataManager dataManager)
        {
            this.button = button;
            this.progressBar = progressBar;
            this.progressBar.Minimum = 1;
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
            var fileContent = reader.ReadToEnd();
            Regex.Replace(fileContent, "'", "''");
            var matches = Regex.Matches(fileContent, @"(?:(?:""|)(?<OriginalName>.*?)(?:""|)),(?<ID>\d*),.*?,.*?,.*?,.*?,.*?,.*?,.*?,.*?,.*?,.*?,.*?\n");
            for (int i = 0; i < matches.Count; i++)
            {
                backgroundWorker.ReportProgress(i + 1, matches.Count);
                int.TryParse(matches[i].Groups["ID"].Value, out int id);
                _ = id == 0 ? throw new IndexOutOfRangeException($"'{matches[i].Groups["ID"].Value}' is not a valid ID") : "";
                dataManager.Update(new UIMap(id, matches[i].Groups["OriginalName"].Value));
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
