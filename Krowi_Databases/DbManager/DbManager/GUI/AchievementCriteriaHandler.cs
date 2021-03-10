using DbManager.DataManagers;
using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;
using DbManager.Objects;
using System.Net;

namespace DbManager.GUI
{
    public class AchievementCriteriaHandler
    {
        private AchievementDataManager achDatMan;
        private XuFuEncounterDataManager xuFuDatMan;

        public AchievementCriteriaHandler(SqliteConnection connection, AchievementDataManager achievementDataManager, XuFuEncounterDataManager xuFuEncounterDataManager)
        {
            DataManager = new PetBattleLinksDataManager(connection);
            achDatMan = achievementDataManager;
            xuFuDatMan = xuFuEncounterDataManager;
        }

        public PetBattleLinksDataManager DataManager { get; set; }

        public void Add(string records)
        {
            if (string.IsNullOrEmpty(records))
                MessageBox.Show("Nothing to add");

            var matches = Regex.Matches(records, @"(?<ID>(?:A|)\d{1,})\t(?<AchievementID>\d{1,}|nil)\t(?<CriteriaNumber>\d{1,})\t(?<Name>.*?)\t(?<ParentID>(?:(?:A|)\d{1,}|nil))\t(?<PetFamily>(?:.*?|nil))""");
            foreach (Match match in matches)
            {
                PetBattleLink parent = null;
                if (!string.IsNullOrEmpty(match.Groups["ParentID"].Value) && match.Groups["ParentID"].Value != "nil")
                {
                    parent = DataManager.GetWithID(match.Groups["ParentID"].Value);
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
                    achievement = achDatMan.GetWithID(int.Parse(match.Groups["AchievementID"].Value));

                DataManager.Add(petBattleLink, achievement);
            }
        }

        public void SyncExternalLinking(Achievement achievement)
        {
            var achievementCriterias = DataManager.GetWithAchievementID(achievement.ID);
            achievementCriterias.AddRange(DataManager.GetWithParentID($"A{achievement.ID}"));

            foreach (var achievementCriteria in achievementCriterias)
            {
                var xuFuEncounters = xuFuDatMan.GetMatches(achievementCriteria);
                if (xuFuEncounters.Count == 0)
                {
                    MessageBox.Show($"No match found (count 0) for {achievementCriteria.Name}");
                    continue;
                }

                XuFuEncounter xuFuEncounter = null;
                if (xuFuEncounters.Count > 1)
                {
                    WebClient x = new WebClient();
                    string source = x.DownloadString($"https://www.wowhead.com/achievement={achievement.ID}");
                    string name = Regex.Match(source, @"\<title\b[^>]*\>\s*(?<Title>[\s\S]*?) - Achievement - World of Warcraft\</title\>", RegexOptions.IgnoreCase).Groups["Title"].Value;
                    string description = Regex.Match(source, "<meta name=\"description\" content=\"(?<Description>.*?)\">", RegexOptions.IgnoreCase).Groups["Description"].Value;

                    var msBx = new Form2($"Please select one of the following options for the achievement criteria that best matches this achievement{Environment.NewLine}{Environment.NewLine}{name}{Environment.NewLine}{Environment.NewLine}{description}{Environment.NewLine}{Environment.NewLine}{string.Join(Environment.NewLine, xuFuEncounters)}", xuFuEncounters.Select(x => x.ID.ToString()).ToList());
                    msBx.ShowDialog();

                    xuFuEncounter = xuFuEncounters.Single(x => x.ID == Convert.ToInt32(msBx.Selection));
                }
                else
                    xuFuEncounter = xuFuEncounters[0];

                if (xuFuEncounter == null)
                {
                    MessageBox.Show($"No match found (null) for {achievementCriteria.Name}");
                    continue;
                }
                achievementCriteria.ExternalLink = $"https://www.wow-petguide.com/Encounter/{xuFuEncounter.ID}";
                DataManager.UpdateExternalLink(achievementCriteria);
            }
        }
    }
}