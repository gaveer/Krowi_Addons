using DbManager.DataManagers;
using DbManager.Objects;
using Microsoft.Data.Sqlite;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace DbManager.GUI
{
    public class AchievementHandler
    {
        private ListBox lsbAchievements;
        private AchievementCategoryHandler achievementCategoryHandler;

        public AchievementHandler(SqliteConnection connection, ListBox lsbAchievements, AchievementCategoryHandler achievementCategoryHandler)
        {
            this.lsbAchievements = lsbAchievements;
            DataManager = new AchievementDataManager(connection);
            this.achievementCategoryHandler = achievementCategoryHandler;
        }

        public AchievementDataManager DataManager { get; }

        public void RefreshListBox()
        {
            lsbAchievements.Items.Clear(); // Clear before adding new categories

            var category = achievementCategoryHandler.GetSelectedAchievementCategory();

            if (category == null)
                return; // Don't get achievements when there is no category selected

            var achievements = DataManager.GetWithCategory(category);

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

                var achievement = new Achievement(ID, faction, covenant, location, isObtainable, hasWowheadLink);
                DataManager.Add(achievement, category);

                // Only insert and update locations if achievement is not added to the end of the list
                if (lsbAchievements.SelectedIndex >= 0 && ((Achievement)lsbAchievements.Items[lsbAchievements.Items.Count - 1]).Location <= location)
                {
                    lsbAchievements.Items.Insert(lsbAchievements.SelectedIndex, achievement);

                    DataManager.UpdateLocations(achievement, lsbAchievements.Items.Cast<Achievement>().ToList());
                }

                RefreshListBox();
            }
        }

        public void Remove()
        {
            DataManager.Remove((Achievement)lsbAchievements.SelectedItem, achievementCategoryHandler.GetSelectedAchievementCategory());

            RefreshListBox();
        }

        public void MoveUp()
        {
            if (lsbAchievements.SelectedIndex == 0) // Already top element so can't go up
                return;

            var selectedIndex = lsbAchievements.SelectedIndex;
            var achievement1 = (Achievement)lsbAchievements.SelectedItem;
            var achievement2 = (Achievement)lsbAchievements.Items[lsbAchievements.SelectedIndex - 1];
            DataManager.Swap(achievement1, achievement2, achievementCategoryHandler.GetSelectedAchievementCategory());

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
            DataManager.Swap(achievement1, achievement2, achievementCategoryHandler.GetSelectedAchievementCategory());

            RefreshListBox();

            lsbAchievements.SelectedIndex = selectedIndex + 1;
        }
    }
}