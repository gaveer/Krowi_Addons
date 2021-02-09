using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace DbManager
{
    public partial class Form1 : Form
    {
        static readonly SqliteConnectionStringBuilder ConnStrBuilder = new SqliteConnectionStringBuilder();
        static SqliteConnection Connection;

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            ConnStrBuilder.DataSource = "../../../../Krowi_AchievementFilter.db";

            Connection = new SqliteConnection(ConnStrBuilder.ConnectionString);
            Connection.Open();

            RefreshCategories(Connection);
            RefreshFunctions(Connection);
        }

        private void RefreshFunctions(SqliteConnection connection)
        {
            if (connection == null)
                throw new ArgumentNullException(nameof(connection));

            var selectedID = lsbFunctions.SelectedItem != null ? ((Function)lsbFunctions.SelectedItem).ID : -1;

            var functions = Function.GetAll(connection);
            lsbFunctions.Items.Clear(); // Clear before adding new functions
            lsbFunctions.Items.Add(new Function(-1, null)); // Empty Function
            foreach (var function in functions)
                lsbFunctions.Items.Add(function);

            lsbFunctions.SelectedIndex = 0;
            if (selectedID > 0)
                foreach (Function item in lsbFunctions.Items)
                    if (item.ID == selectedID)
                    {
                        lsbFunctions.SelectedItem = item;
                        break;
                    }
        }

        private void RefreshCategories(SqliteConnection connection)
        {
            if (connection == null)
                throw new ArgumentNullException(nameof(connection));

            var achievementCategoriesListBoxes = new List<ListBox> { lsbAchievementCategories1 };

            foreach (var listBox in achievementCategoriesListBoxes)
            {
                var selectedID = listBox.SelectedItem != null ? ((AchievementCategory)listBox.SelectedItem).ID : -1;

                var categories = AchievementCategory.GetAll(connection);
                listBox.Items.Clear(); // Clear before adding new categories
                listBox.Items.Add(new AchievementCategory(-1, 0, null, null, 0)); // Empty Category
                foreach (var category in categories)
                    listBox.Items.Add(category);

                if (listBox.Items.Count > 0)
                    listBox.SelectedIndex = 0;
                if (selectedID > 0)
                    foreach (AchievementCategory item in listBox.Items)
                        if (item.ID == selectedID)
                        {
                            listBox.SelectedItem = item;
                            break;
                        }
            }
        }

        #region AchievementCategory
        private void btnAchievementCategoryAdd_Click(object sender, EventArgs e)
        {
            int location = cbxCategoryAsParent.Checked ? 1 : ((AchievementCategory)lsbAchievementCategories1.SelectedItem).Location + 1;
            AchievementCategory parent = cbxCategoryAsParent.Checked ? (AchievementCategory)lsbAchievementCategories1.SelectedItem : ((AchievementCategory)lsbAchievementCategories1.SelectedItem).Parent;

            var category = new AchievementCategory(-1, location, txtCategoryName.Text, (Function)lsbFunctions.SelectedItem, string.IsNullOrEmpty(txtFunctionValue.Text) ? -1 : Convert.ToInt32(txtFunctionValue.Text), parent, cbxLegacyCategory.Checked);
            AchievementCategory.Add(Connection, category);

            if (!cbxCategoryAsParent.Checked)
            {
                lsbAchievementCategories1.Items.Insert(lsbAchievementCategories1.SelectedIndex + 1, category);

                var categories = lsbAchievementCategories1.Items.Cast<AchievementCategory>().Where(x => x.Parent == ((AchievementCategory)lsbAchievementCategories1.SelectedItem).Parent).ToList();

                AchievementCategory.UpdateLocations(Connection, AchievementCategory.GetLast(Connection), categories);
            }

            RefreshCategories(Connection);

            cbxCategoryAsParent.Checked = false;
            txtCategoryName.Clear();
            txtFunctionValue.Clear();
            cbxLegacyCategory.Checked = false;

            // Overwrite the refresh set index to select the new category
            category = AchievementCategory.GetLast(Connection);
            foreach (AchievementCategory item in lsbAchievementCategories1.Items)
                if (item.ID == category.ID)
                {
                    lsbAchievementCategories1.SelectedItem = item;
                    break;
                }
        }

        private void btnAchievementCategoryRemove_Click(object sender, EventArgs e)
        {
            var removedCategory = (AchievementCategory)lsbAchievementCategories1.SelectedItem;
            AchievementCategory.Remove(Connection, (AchievementCategory)lsbAchievementCategories1.SelectedItem);

            lsbAchievementCategories1.Items.RemoveAt(lsbAchievementCategories1.SelectedIndex);

            var categories = lsbAchievementCategories1.Items.Cast<AchievementCategory>().Where(x => x.Parent == removedCategory.Parent).ToList();

            AchievementCategory.UpdateLocations(Connection, removedCategory, categories);

            RefreshCategories(Connection);
        }

        private void btnAchievementCategoryMoveRight_Click(object sender, EventArgs e)
        {
            var selectedCategory = (AchievementCategory)lsbAchievementCategories1.SelectedItem;

            var index = lsbAchievementCategories1.SelectedIndex - 1;
            if (index < 0)
                return;

            //if (selectedCategory.Parent == ((AchievementCategory)lsbAchievementCategories1.Items[index]).Parent)
            //    return;

            var categories = lsbAchievementCategories1.Items.Cast<AchievementCategory>().Where(x => x.Parent == selectedCategory.Parent && x.ID > 0).ToList();

            var filteredIndex = categories.FindIndex(x => x == selectedCategory);

            if (filteredIndex == 0)
                return;

            AchievementCategory.UpdateParent(Connection, selectedCategory, categories[filteredIndex - 1], ((AchievementCategory)lsbAchievementCategories1.Items[index]).Location + 1);

            categories.RemoveAt(filteredIndex);

            AchievementCategory.UpdateLocations(Connection, categories[filteredIndex - 1], categories);

            RefreshCategories(Connection);
        }

        private void btnAchievementCategoryMoveLeft_Click(object sender, EventArgs e)
        {
            var selectedCategory = (AchievementCategory)lsbAchievementCategories1.SelectedItem;
            AchievementCategory oldCategory = (AchievementCategory)selectedCategory.Clone();

            if (selectedCategory.Parent == null)
                return;

            AchievementCategory.UpdateParent(Connection, selectedCategory, selectedCategory.Parent.Parent, selectedCategory.Parent.Location + 1);

            // Update the locations for the new level
            var categories = lsbAchievementCategories1.Items.Cast<AchievementCategory>().Where(x => x.Parent == selectedCategory.Parent).ToList();

            AchievementCategory.UpdateLocations(Connection, selectedCategory, categories);

            // Update locations for the previous level
            categories = lsbAchievementCategories1.Items.Cast<AchievementCategory>().Where(x => x.Parent == oldCategory.Parent).ToList();

            AchievementCategory.UpdateLocations(Connection, oldCategory, categories);

            RefreshCategories(Connection);
        }

        private void btnAchievementCategoryMoveDown_Click(object sender, EventArgs e)
        {
            var selectedCategory = (AchievementCategory)lsbAchievementCategories1.SelectedItem;
            var categories = lsbAchievementCategories1.Items.Cast<AchievementCategory>().Where(x => x.Parent == selectedCategory.Parent && x.ID > 0).ToList();

            var filteredIndex = categories.FindIndex(x => x == selectedCategory);

            if (filteredIndex == categories.Count - 1) // Already top element so can't go up
                return;

            AchievementCategory.Swap(Connection, categories[filteredIndex], categories[filteredIndex + 1]);

            RefreshCategories(Connection);
        }

        private void btnAchievementCategoryMoveUp_Click(object sender, EventArgs e)
        {
            var selectedCategory = (AchievementCategory)lsbAchievementCategories1.SelectedItem;
            var categories = lsbAchievementCategories1.Items.Cast<AchievementCategory>().Where(x => x.Parent == selectedCategory.Parent && x.ID > 0).ToList();

            var filteredIndex = categories.FindIndex(x => x == selectedCategory);

            if (filteredIndex == 0) // Already top element so can't go up
                return;

            AchievementCategory.Swap(Connection, categories[filteredIndex], categories[filteredIndex - 1]);

            RefreshCategories(Connection);
        }
        #endregion

        #region Achievement
        private void lsbAchievementCategories1_SelectedIndexChanged(object sender, EventArgs e)
        {
            RefreshAchievements(Connection);
        }

        private void btnAchievementAdd_Click(object sender, EventArgs e)
        {
            List<int> IDs = txtAchievementID.Text.Split(',').Select(int.Parse).ToList();
            foreach (var ID in IDs)
            {
                Faction faction = Faction.NoFaction;
                if (rdbAlliance.Checked)
                    faction = Faction.Alliance;
                else if (rdbHorde.Checked)
                    faction = Faction.Horde;

                int location = lsbAchievements.Items.Count > 0 ? ((Achievement)lsbAchievements.SelectedItem).Location + 1 : 1;
                AchievementCategory category = (AchievementCategory)lsbAchievementCategories1.SelectedItem;

                var achievement = new Achievement(ID, faction, location, cbxObtainable.Checked, cbxHasWowheadLink.Checked, cbxHasIATLink.Checked);
                Achievement.Add(Connection, achievement, category);

                Achievement.UpdateLocations(Connection, achievement, lsbAchievements.Items.Cast<Achievement>().ToList());

                RefreshAchievements(Connection);
            }

            txtAchievementID.Clear();
            cbxObtainable.Checked = true;
            cbxHasWowheadLink.Checked = true;
            cbxHasIATLink.Checked = false;
            rdbNoFaction.Checked = true;
        }

        private void btnAchievementRemove_Click(object sender, EventArgs e)
        {
            Achievement.Remove(Connection, (Achievement)lsbAchievements.SelectedItem);

            RefreshAchievements(Connection);
        }

        private void RefreshAchievements(SqliteConnection connection)
        {
            var achievements = Achievement.GetWithCategory(connection, (AchievementCategory)lsbAchievementCategories1.SelectedItem);

            lsbAchievements.Items.Clear(); // Clear before adding new categories
            foreach (var achievement in achievements)
                lsbAchievements.Items.Add(achievement);

            if (lsbAchievements.Items.Count > 0)
                lsbAchievements.SelectedIndex = lsbAchievements.Items.Count - 1;
        }
        #endregion

        private void btnExport_Click(object sender, EventArgs e)
        {
            var sb = new StringBuilder();
            sb.AppendLine($"-- [[ Exported at {DateTime.Now.ToString("yyyy-MM-dd HH-mm-ss")} ]] --");
            sb.AppendLine($"-- [[ This code is automatically generated as an export from a SQLite database ]] --");
            sb.AppendLine($"-- [[ and is not meant for manual edit. ]] --");
            sb.AppendLine("");
            sb.AppendLine("-- [[ Namespaces ]] --");
            sb.AppendLine("local _, addon = ...;");
            sb.AppendLine("local objects = addon.Objects;");
            sb.AppendLine("local achievementCategory = objects.AchievementCategory;");
            sb.AppendLine("local achievement = objects.Achievement;");
            sb.AppendLine("addon.ExportedData = {};");
            sb.AppendLine("local exportedData = addon.ExportedData");
            sb.AppendLine("");
            sb.AppendLine("local function InsertAndReturn(table, value)");
            sb.AppendLineTabbed(1, "tinsert(table, value);");
            sb.AppendLineTabbed(1, "return value;");
            sb.AppendLine("end");
            sb.AppendLine("");
            sb.AppendLine("function exportedData.Load(categories, achievements)");
            sb.AppendLineTabbed(1, "for i, _ in next, categories do");
            sb.AppendLineTabbed(2, "categories[i] = nil;");
            sb.AppendLineTabbed(1, "end");
            sb.AppendLineTabbed(1, "for i, _ in next, achievements do");
            sb.AppendLineTabbed(2, "achievements[i] = nil;");
            sb.AppendLineTabbed(1, "end");
            sb.AppendLine("");
            sb.AppendLineTabbed(1, "local tmpCategories = {};");

            var categories = AchievementCategory.GetAll(Connection);
            foreach (var category in categories)
            {
                sb.AppendLineTabbed(1, $"tmpCategories[{category.ID}] = InsertAndReturn(categories, achievementCategory:New({category.Function.Call.Replace("id", category.FunctionValue.ToString())}{(category.IsLegacy ? $" .. \" (\" .. {lsbFunctions.Items.Cast<Function>().Single(x => x.ID == 5).Call} .. \")\"" : "")})); -- {category.Name}");
                if (category.Parent != null)
                    sb.AppendLineTabbed(1, $"tmpCategories[{category.Parent.ID}]:AddCategory(tmpCategories[{category.ID}]);");

                var achievements = Achievement.GetWithCategory(Connection, category);
                foreach (var achievement in achievements)
                {
                    if (achievement.Faction == Faction.Alliance)
                        sb.AppendLineTabbed(1, "if addon.Faction.IsAlliance then");
                    else if (achievement.Faction == Faction.Horde)
                        sb.AppendLineTabbed(1, "if addon.Faction.IsHorde then");
                    sb.AppendLineTabbed(achievement.Faction == Faction.NoFaction ? 1 : 2, $"tmpCategories[{category.ID}]:AddAchievement(InsertAndReturn(achievements, achievement:New({achievement.ID}, {(achievement.Obtainable ? "nil" : "false")}, {(achievement.HasWowheadLink ? "nil" : "false")}, {(achievement.HasIATLink ? "true" : "nil")})));");
                    if (achievement.Faction != Faction.NoFaction)
                        sb.AppendLineTabbed(1, "end");
                }
            }

            sb.AppendLine("end");

            using var file = new StreamWriter(@"../../../../../Krowi_AchievementFilter/Data/ExportedData.lua");
            file.WriteLine(sb.ToString());
        }
    }

    public static class Extensions
    {
        public static StringBuilder AppendLineTabbed(this StringBuilder stringBuilder, int numberOfTabs, string text)
        {
            for (int i = 0; i < numberOfTabs; i++)
                stringBuilder.Append("    ");
            stringBuilder.AppendLine(text);
            return stringBuilder;
        }
    }
}