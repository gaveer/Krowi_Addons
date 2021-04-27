using DbManager.DataManagers;
using DbManager.GUI.Custom;
using DbManager.Objects;
using System;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Windows.Forms;

namespace DbManager.GUI
{
    public class PetBattleLinksHandler : IGUIHandler
    {
        private readonly PetBattleLinksDataManager dataManager;
        private readonly AchievementDataManager achievementDataManager;
        private readonly XuFuEncounterDataManager xuFuEncounterDataManager;

        public PetBattleLinksHandler(PetBattleLinksDataManager dataManager, AchievementDataManager achievementDataManager, XuFuEncounterDataManager xuFuEncounterDataManager)
        {
            this.dataManager = dataManager;
            this.achievementDataManager = achievementDataManager;
            this.xuFuEncounterDataManager = xuFuEncounterDataManager;
        }

        public IDataManager DataManager => dataManager;

        public void ImportFromText(string records)
        {
            if (string.IsNullOrEmpty(records))
                MessageBox.Show("Nothing to add");

            var matches = Regex.Matches(records, @"(?<ID>(?:A|)\d{1,})\t(?<AchievementID>\d{1,}|nil)\t(?<CriteriaNumber>\d{1,})\t(?<Name>.*?)\t(?<ParentID>(?:(?:A|)\d{1,}|nil))\t(?<PetFamily>(?:.*?|nil))""");
            foreach (Match match in matches)
            {
                PetBattleLink parent = null;
                if (!string.IsNullOrEmpty(match.Groups["ParentID"].Value) && match.Groups["ParentID"].Value != "nil")
                {
                    parent = dataManager.GetWithID(match.Groups["ParentID"].Value);
                    if (parent == null)
                    {
                        MessageBox.Show($"{match.Groups["ParentID"].Value} not found");
                        return;
                    }
                }
                Enum.TryParse(match.Groups["PetFamily"].Value, out PetFamily family);
                var petBattleLink = new PetBattleLink(match.Groups["ID"].Value, int.Parse(match.Groups["CriteriaNumber"].Value), match.Groups["Name"].Value, parent, null, family);
                Achievement achievement = null;
                if (match.Groups["AchievementID"].Value != "nil")
                    achievement = achievementDataManager.GetWithID(int.Parse(match.Groups["AchievementID"].Value));

                dataManager.Update(petBattleLink, achievement);
            }
        }

        public void SyncExternalLinking(Achievement achievement)
        {
            var petBattleLinks = dataManager.GetWithAchievementID(achievement.ID);
            petBattleLinks.AddRange(dataManager.GetWithParentID($"A{achievement.ID}"));

            foreach (var petBattleLink in petBattleLinks)
            {
                var xuFuEncounters = xuFuEncounterDataManager.GetMatches(petBattleLink);
                if (xuFuEncounters.Count == 0)
                {
                    MessageBox.Show($"No match found (count 0) for {petBattleLink.Name}");
                    continue;
                }

                XuFuEncounter xuFuEncounter = null;
                if (xuFuEncounters.Count > 1)
                {
                    WebClient x = new WebClient();
                    string source = x.DownloadString($"https://www.wowhead.com/achievement={achievement.ID}");
                    string name = Regex.Match(source, @"\<title\b[^>]*\>\s*(?<Title>[\s\S]*?) - Achievement - World of Warcraft\</title\>", RegexOptions.IgnoreCase).Groups["Title"].Value;
                    string description = Regex.Match(source, "<meta name=\"description\" content=\"(?<Description>.*?)\">", RegexOptions.IgnoreCase).Groups["Description"].Value;

                    var msBx = new CustomMessageBox($"Please select one of the following options for the achievement criteria that best matches this achievement{Environment.NewLine}{Environment.NewLine}{name}{Environment.NewLine}{Environment.NewLine}{description}{Environment.NewLine}{Environment.NewLine}{string.Join(Environment.NewLine, xuFuEncounters)}", xuFuEncounters.Select(x => x.ID.ToString()).ToList());
                    msBx.ShowDialog();

                    xuFuEncounter = xuFuEncounters.Single(x => x.ID == Convert.ToInt32(msBx.Selection));
                }
                else
                    xuFuEncounter = xuFuEncounters[0];

                if (xuFuEncounter == null)
                {
                    MessageBox.Show($"No match found (null) for {petBattleLink.Name}");
                    continue;
                }
                petBattleLink.ExternalLink = $"https://www.wow-petguide.com/Encounter/{xuFuEncounter.ID}";
                dataManager.UpdateExternalLink(petBattleLink);
            }
        }
    }
}