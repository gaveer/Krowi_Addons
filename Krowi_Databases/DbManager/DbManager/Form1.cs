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

        #region AchievementCategory
        private AchievementCategory GetSelectedAchievementCategory()
        {
            AchievementCategory selectedCategory = null;
            if (treeView1.SelectedNode != null)
                selectedCategory = ((AchievementCategoryTreeNode)treeView1.SelectedNode).AchievementCategory;

            return selectedCategory;
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

            var selectedCategory = GetSelectedAchievementCategory();

            var categories = AchievementCategory.GetAll(connection);

            treeView1.Nodes.Clear();
            foreach (var category in categories)
            {
                if (category.Parent == null)
                    treeView1.Nodes.Add(new AchievementCategoryTreeNode(category));
                else
                {
                    var node = FindTreeNode(treeView1.Nodes, category.Parent);
                    node.Nodes.Add(new AchievementCategoryTreeNode(category));
                }
            }

            if (selectedCategory != null)
            {
                var node = FindTreeNode(treeView1.Nodes, selectedCategory);
                if (node != null)
                    treeView1.SelectedNode = node;
            }

        }

        private AchievementCategoryTreeNode FindTreeNode(TreeNodeCollection nodes, AchievementCategory category)
        {
            foreach (AchievementCategoryTreeNode node in nodes)
            {
                if (node.AchievementCategory.Equals(category))
                    return node;

                if (node.Nodes.Count > 0)
                {
                    var found = FindTreeNode(node.Nodes, category);
                    if (found != null)
                        return found;
                }
            }

            return null;
        }

        private void btnAchievementCategoryAdd_Click(object sender, EventArgs e)
        {
            if (lsbFunctions.SelectedIndex == 0)
            {
                MessageBox.Show("Invalid function selected!" + Environment.NewLine + Environment.NewLine + "Category is not added.", "Invalid function", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            var selectedCategory = GetSelectedAchievementCategory();
            if (selectedCategory == null)
            {
                MessageBox.Show("No category selected!" + Environment.NewLine + Environment.NewLine + "Category is not added.", "No category", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            int location = cbxCategoryAsParent.Checked ? 1 : selectedCategory.Location + 1;
            AchievementCategory parent = cbxCategoryAsParent.Checked ? selectedCategory : selectedCategory.Parent;

            var category = new AchievementCategory(-1, location, txtCategoryName.Text, (Function)lsbFunctions.SelectedItem, string.IsNullOrEmpty(txtFunctionValue.Text) ? -1 : Convert.ToInt32(txtFunctionValue.Text), parent, cbxLegacyCategory.Checked);
            AchievementCategory.Add(Connection, category);

            if (!cbxCategoryAsParent.Checked)
            {
                var node = FindTreeNode(treeView1.Nodes, parent);
                TreeNodeCollection nodes = null;
                if (node != null && node.Nodes != null)
                    nodes = node.Nodes;
                else
                    nodes = treeView1.Nodes;

                nodes.Insert(treeView1.SelectedNode.Index + 1, new AchievementCategoryTreeNode(category)); // Need to add this to ensure correct location numbers

                var categories = nodes.Cast<AchievementCategoryTreeNode>().Select(x => x.AchievementCategory).ToList();

                AchievementCategory.UpdateLocations(Connection, AchievementCategory.GetLast(Connection), categories);
            }

            RefreshCategories(Connection);

            cbxCategoryAsParent.Checked = false;
            txtCategoryName.Clear();
            txtFunctionValue.Clear();
            cbxLegacyCategory.Checked = false;

            // Overwrite the refresh set index to select the new category
            category = AchievementCategory.GetLast(Connection);
            var selectNode = FindTreeNode(treeView1.Nodes, category);
            treeView1.SelectedNode = selectNode;
        }

        private void btnAchievementCategoryRemove_Click(object sender, EventArgs e)
        {
            var selectedCategory = GetSelectedAchievementCategory();
            if (selectedCategory == null)
            {
                MessageBox.Show("No category selected!" + Environment.NewLine + Environment.NewLine + "Category is not added.", "No category", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            AchievementCategory.Remove(Connection, selectedCategory);

            var node = treeView1.SelectedNode.Parent;
            TreeNodeCollection nodes = null;
            if (node != null && node.Nodes != null)
                nodes = node.Nodes;
            else
                nodes = treeView1.Nodes;

            treeView1.SelectedNode.Remove();

            var categories = nodes.Cast<AchievementCategoryTreeNode>().Select(x => x.AchievementCategory).ToList();
            AchievementCategory.UpdateLocations(Connection, selectedCategory, categories);

            RefreshCategories(Connection);
        }

        private void btnAchievementCategoryMoveRight_Click(object sender, EventArgs e)
        {
            var prevNode = (AchievementCategoryTreeNode)treeView1.SelectedNode.PrevNode;
            if (prevNode?.AchievementCategory is null)
                return;

            var selectedCategory = GetSelectedAchievementCategory();

            var location = 1;
            if (prevNode.Nodes.Count > 0)
                location = ((AchievementCategoryTreeNode)prevNode.Nodes[prevNode.Nodes.Count - 1]).AchievementCategory.Location + 1;

            AchievementCategory.UpdateParent(Connection, selectedCategory, prevNode.AchievementCategory, location);

            var node = treeView1.SelectedNode.Parent;
            TreeNodeCollection nodes = null;
            if (node != null && node.Nodes != null)
                nodes = node.Nodes;
            else
                nodes = treeView1.Nodes;

            treeView1.SelectedNode.Remove();

            var categories = nodes.Cast<AchievementCategoryTreeNode>().Select(x => x.AchievementCategory).ToList();

            AchievementCategory.UpdateLocations(Connection, prevNode.AchievementCategory, categories);

            RefreshCategories(Connection);
        }

        private void btnAchievementCategoryMoveLeft_Click(object sender, EventArgs e)
        {
            var parentNode = (AchievementCategoryTreeNode)treeView1.SelectedNode.Parent;
            if (parentNode?.AchievementCategory is null)
                return;

            var selectedCategory = GetSelectedAchievementCategory();

            AchievementCategory.UpdateParent(Connection, selectedCategory, selectedCategory.Parent.Parent, selectedCategory.Parent.Location + 1);

            var node = parentNode.Parent;
            TreeNodeCollection nodes = null;
            if (node != null && node.Nodes != null)
                nodes = node.Nodes;
            else
                nodes = treeView1.Nodes;

            nodes.Insert(parentNode.Index + 1, new AchievementCategoryTreeNode(selectedCategory)); // Need to add this to ensure correct location numbers

            var categories = nodes.Cast<AchievementCategoryTreeNode>().Select(x => x.AchievementCategory).ToList();

            AchievementCategory.UpdateLocations(Connection, selectedCategory, categories);

            var nextNode = (AchievementCategoryTreeNode)treeView1.SelectedNode.NextNode;
            if (nextNode is not null)
            {
                treeView1.SelectedNode.Remove();
                var prevNode = (AchievementCategoryTreeNode)nextNode.PrevNode;
                if (prevNode?.AchievementCategory is not null)
                {
                    var categories2 = prevNode.Parent.Nodes.Cast<AchievementCategoryTreeNode>().Select(x => x.AchievementCategory).ToList();
                    AchievementCategory.UpdateLocations(Connection, prevNode.AchievementCategory, categories2);
                }
                else // removed item was 1st element so we use next element and adjust from a fictional 1st element
                {
                    var categories2 = nextNode.Parent.Nodes.Cast<AchievementCategoryTreeNode>().Select(x => x.AchievementCategory).ToList();
                    AchievementCategory.UpdateLocations(Connection, new AchievementCategory(-1, -1, "TEMP", null, -1), categories2);
                }
            }

            RefreshCategories(Connection);
        }

        private void btnAchievementCategoryMoveDown_Click(object sender, EventArgs e)
        {
            var selectedCategory = GetSelectedAchievementCategory();

            var node = treeView1.SelectedNode.Parent;
            TreeNodeCollection nodes = null;
            if (node != null && node.Nodes != null)
                nodes = node.Nodes;
            else
                nodes = treeView1.Nodes;

            var categories = nodes.Cast<AchievementCategoryTreeNode>().Select(x => x.AchievementCategory).ToList();

            var filteredIndex = categories.FindIndex(x => x == selectedCategory);

            if (filteredIndex == categories.Count - 1) // Already top element so can't go up
                return;

            AchievementCategory.Swap(Connection, categories[filteredIndex], categories[filteredIndex + 1]);

            RefreshCategories(Connection);
        }

        private void btnAchievementCategoryMoveUp_Click(object sender, EventArgs e)
        {
            var selectedCategory = GetSelectedAchievementCategory();

            var node = treeView1.SelectedNode.Parent;
            TreeNodeCollection nodes = null;
            if (node != null && node.Nodes != null)
                nodes = node.Nodes;
            else
                nodes = treeView1.Nodes;

            var categories = nodes.Cast<AchievementCategoryTreeNode>().Select(x => x.AchievementCategory).ToList();

            var filteredIndex = categories.FindIndex(x => x == selectedCategory);

            if (filteredIndex == 0) // Already top element so can't go up
                return;

            AchievementCategory.Swap(Connection, categories[filteredIndex], categories[filteredIndex - 1]);

            RefreshCategories(Connection);
        }
        #endregion

        #region Achievement
        private void RefreshAchievements(SqliteConnection connection)
        {
            lsbAchievements.Items.Clear(); // Clear before adding new categories

            var category = GetSelectedAchievementCategory();

            if (category != null)
            {
                var achievements = Achievement.GetWithCategory(connection, category);

                foreach (var achievement in achievements)
                    lsbAchievements.Items.Add(achievement);

                if (lsbAchievements.Items.Count > 0) // Select latest achievement
                    lsbAchievements.SelectedIndex = lsbAchievements.Items.Count - 1;
            }
        }

        private void treeView1_AfterSelect(object sender, TreeViewEventArgs e)
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
                var category = GetSelectedAchievementCategory();

                var achievement = new Achievement(ID, faction, location, cbxObtainable.Checked, cbxHasWowheadLink.Checked);
                Achievement.Add(Connection, achievement, category);

                Achievement.UpdateLocations(Connection, achievement, lsbAchievements.Items.Cast<Achievement>().ToList());

                RefreshAchievements(Connection);
            }

            txtAchievementID.Clear();
            cbxObtainable.Checked = true;
            cbxHasWowheadLink.Checked = true;
            rdbNoFaction.Checked = true;
        }

        private void btnAchievementRemove_Click(object sender, EventArgs e)
        {
            Achievement.Remove(Connection, (Achievement)lsbAchievements.SelectedItem);

            RefreshAchievements(Connection);
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

            var duplicates = Achievement.FindDuplicateIDs(Connection);
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

                    sb.AppendLineTabbed(achievement.Faction == Faction.NoFaction ? 1 : 2, $"tmpCategories[{category.ID}]:AddAchievement(InsertAndReturn(achievements, achievement:New({achievement.ID}, {(achievement.Obtainable ? "nil" : "false")}, {(achievement.HasWowheadLink ? "nil" : "false")}, nil, {(duplicates.Any(x => x == achievement.ID) ? $"tmpCategories[{category.ID}]" : "nil")})));"); // {(achievement.HasIATLink ? "true" : "nil")}

                    // new
                    //sb.AppendTabbed(achievement.Faction == Faction.NoFaction ? 1 : 2, $"tmpCategories[{category.ID}]:AddAchievement(InsertAndReturn(achievements, achievement:NewFromTable{{id = {achievement.ID}");
                    //if (!achievement.Obtainable)
                    //    sb.Append(", obtainable = false");
                    //if (!achievement.HasWowheadLink)
                    //    sb.Append(", hasWowheadLink = false");
                    //if (achievement.HasIATLink)
                    //    sb.Append(", hasIATLink = true");
                    //if (duplicates.Any(x => x == achievement.ID))
                    //    sb.Append($", category = tmpCategories[{category.ID}]");
                    //sb.AppendLine("}));");

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

        public static StringBuilder AppendTabbed(this StringBuilder stringBuilder, int numberOfTabs, string text)
        {
            for (int i = 0; i < numberOfTabs; i++)
                stringBuilder.Append("    ");
            stringBuilder.Append(text);
            return stringBuilder;
        }
    }
}