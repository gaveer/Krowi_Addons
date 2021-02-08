using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DbManager
{
    public partial class Form1
    {
        private void lsbAchievementCategories2_SelectedIndexChanged(object sender, EventArgs e)
        {
            var achievements = Achievement.GetWithCategory(Connection, (AchievementCategory)lsbAchievementCategories2.SelectedItem);

            lsbAchievements.Items.Clear(); // Clear before adding new categories
            foreach (var achievement in achievements)
                lsbAchievements.Items.Add(achievement);

            if (lsbAchievements.Items.Count > 0)
                lsbAchievements.SelectedIndex = lsbAchievements.Items.Count - 1;
        }

        private void btnAchievementAdd_Click(object sender, EventArgs e)
        {

        }

        private void btnAchievementRemove_Click(object sender, EventArgs e)
        {

        }
    }
}