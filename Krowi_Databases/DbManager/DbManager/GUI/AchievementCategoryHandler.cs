using DbManager.DataManagers;
using DbManager.Objects;
using Microsoft.Data.Sqlite;
using System;
using System.Linq;
using System.Windows.Forms;

namespace DbManager.GUI
{
    public class AchievementCategoryHandler
    {
        private TreeView tvwAchievementCategories;
        private AchievementCategoryDataManager achCatDatMan;
        private FunctionHandler functionHandler;

        public AchievementCategoryHandler(SqliteConnection connection, TreeView tvwAchievementCategories, FunctionHandler functionHandler)
        {
            this.tvwAchievementCategories = tvwAchievementCategories;
            achCatDatMan = new AchievementCategoryDataManager(connection);
            this.functionHandler = functionHandler;
        }

        public AchievementCategory GetSelectedAchievementCategory()
        {
            AchievementCategory selectedCategory = null;
            if (tvwAchievementCategories.SelectedNode != null)
                selectedCategory = ((AchievementCategoryTreeNode)tvwAchievementCategories.SelectedNode).AchievementCategory;

            return selectedCategory;
        }

        public AchievementCategoryTreeNode FindAchievementCategoryNode(TreeNodeCollection nodes, AchievementCategory category)
        {
            foreach (AchievementCategoryTreeNode node in nodes)
            {
                if (node.AchievementCategory.Equals(category))
                    return node;

                if (node.Nodes.Count > 0)
                {
                    var found = FindAchievementCategoryNode(node.Nodes, category);
                    if (found != null)
                        return found;
                }
            }

            return null;
        }

        public void RefreshTreeView()
        {
            // First get the selected category so we can select it again after the refresh
            var selectedCategory = GetSelectedAchievementCategory();

            tvwAchievementCategories.Nodes.Clear();

            var categories = achCatDatMan.GetAll();

            foreach (var category in categories)
            {
                if (category.Parent == null)
                    tvwAchievementCategories.Nodes.Add(new AchievementCategoryTreeNode(category));
                else
                {
                    var node = FindAchievementCategoryNode(tvwAchievementCategories.Nodes, category.Parent);
                    if (node != null)
                        node.Nodes.Add(new AchievementCategoryTreeNode(category));
                }
            }

            if (selectedCategory != null)
            {
                var node = FindAchievementCategoryNode(tvwAchievementCategories.Nodes, selectedCategory);
                if (node != null)
                    tvwAchievementCategories.SelectedNode = node;
            }
        }

        public void Add(bool asParent, string achievementCategoryName, int functionValue, bool isLegacy)
        {
            var function = functionHandler.GetSelectedFunction();
            if (function == null)
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

            int location = asParent ? 1 : selectedCategory.Location + 1;
            AchievementCategory parent = asParent ? selectedCategory : selectedCategory.Parent;

            var category = new AchievementCategory(-1, location, achievementCategoryName, function, functionValue, parent, isLegacy);
            achCatDatMan.Add(category);

            if (!asParent)
            {
                var node = FindAchievementCategoryNode(tvwAchievementCategories.Nodes, parent);
                TreeNodeCollection nodes = null;
                if (node != null && node.Nodes != null)
                    nodes = node.Nodes;
                else
                    nodes = tvwAchievementCategories.Nodes;

                nodes.Insert(tvwAchievementCategories.SelectedNode.Index + 1, new AchievementCategoryTreeNode(category)); // Need to add this to ensure correct location numbers

                var categories = nodes.Cast<AchievementCategoryTreeNode>().Select(x => x.AchievementCategory).ToList();

                achCatDatMan.UpdateLocations(achCatDatMan.GetLast(), categories);
            }

            RefreshTreeView();

            // Make sure the last added achievement category is selected
            category = achCatDatMan.GetLast();
            var selectNode = FindAchievementCategoryNode(tvwAchievementCategories.Nodes, category);
            tvwAchievementCategories.SelectedNode = selectNode;
        }

        public void Remove()
        {
            var selectedCategory = GetSelectedAchievementCategory();
            if (selectedCategory == null)
            {
                MessageBox.Show("No category selected!" + Environment.NewLine + Environment.NewLine + "Category is not added.", "No category", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            achCatDatMan.Remove(selectedCategory);

            var node = tvwAchievementCategories.SelectedNode.Parent;
            TreeNodeCollection nodes = null;
            if (node != null && node.Nodes != null)
                nodes = node.Nodes;
            else
                nodes = tvwAchievementCategories.Nodes;

            tvwAchievementCategories.SelectedNode.Remove();

            var categories = nodes.Cast<AchievementCategoryTreeNode>().Select(x => x.AchievementCategory).ToList();
            achCatDatMan.UpdateLocations(selectedCategory, categories);

            RefreshTreeView();
        }

        public void MoveUp()
        {
            var selectedCategory = GetSelectedAchievementCategory();

            var node = tvwAchievementCategories.SelectedNode.Parent;
            TreeNodeCollection nodes = null;
            if (node != null && node.Nodes != null)
                nodes = node.Nodes;
            else
                nodes = tvwAchievementCategories.Nodes;

            var categories = nodes.Cast<AchievementCategoryTreeNode>().Select(x => x.AchievementCategory).ToList();

            var filteredIndex = categories.FindIndex(x => x == selectedCategory);

            if (filteredIndex == 0) // Already top element so can't go up
                return;

            achCatDatMan.Swap(categories[filteredIndex], categories[filteredIndex - 1]);

            RefreshTreeView();
        }

        public void MoveDown()
        {
            var selectedCategory = GetSelectedAchievementCategory();

            var node = tvwAchievementCategories.SelectedNode.Parent;
            TreeNodeCollection nodes = null;
            if (node != null && node.Nodes != null)
                nodes = node.Nodes;
            else
                nodes = tvwAchievementCategories.Nodes;

            var categories = nodes.Cast<AchievementCategoryTreeNode>().Select(x => x.AchievementCategory).ToList();

            var filteredIndex = categories.FindIndex(x => x == selectedCategory);

            if (filteredIndex == categories.Count - 1) // Already bottom element so can't go down
                return;

            achCatDatMan.Swap(categories[filteredIndex], categories[filteredIndex + 1]);

            RefreshTreeView();
        }

        public void MoveLeft()
        {
            var parentNode = (AchievementCategoryTreeNode)tvwAchievementCategories.SelectedNode.Parent;
            if (parentNode?.AchievementCategory is null)
                return;

            var selectedCategory = GetSelectedAchievementCategory();

            achCatDatMan.UpdateParent(selectedCategory, selectedCategory.Parent.Parent, selectedCategory.Parent.Location + 1);

            var node = parentNode.Parent;
            TreeNodeCollection nodes = null;
            if (node != null && node.Nodes != null)
                nodes = node.Nodes;
            else
                nodes = tvwAchievementCategories.Nodes;

            nodes.Insert(parentNode.Index + 1, new AchievementCategoryTreeNode(selectedCategory)); // Need to add this to ensure correct location numbers

            var categories = nodes.Cast<AchievementCategoryTreeNode>().Select(x => x.AchievementCategory).ToList();

            achCatDatMan.UpdateLocations(selectedCategory, categories);

            var nextNode = (AchievementCategoryTreeNode)tvwAchievementCategories.SelectedNode.NextNode;
            if (nextNode is not null)
            {
                tvwAchievementCategories.SelectedNode.Remove();
                var prevNode = (AchievementCategoryTreeNode)nextNode.PrevNode;
                if (prevNode?.AchievementCategory is not null)
                {
                    var categories2 = prevNode.Parent.Nodes.Cast<AchievementCategoryTreeNode>().Select(x => x.AchievementCategory).ToList();
                    achCatDatMan.UpdateLocations(prevNode.AchievementCategory, categories2);
                }
                else // removed item was 1st element so we use next element and adjust from a fictional 1st element
                {
                    var categories2 = nextNode.Parent.Nodes.Cast<AchievementCategoryTreeNode>().Select(x => x.AchievementCategory).ToList();
                    achCatDatMan.UpdateLocations(new AchievementCategory(-1, -1, "TEMP", null, -1), categories2);
                }
            }

            RefreshTreeView();
        }

        public void MoveRight()
        {
            var prevNode = (AchievementCategoryTreeNode)tvwAchievementCategories.SelectedNode.PrevNode;
            if (prevNode?.AchievementCategory is null)
                return;

            var selectedCategory = GetSelectedAchievementCategory();

            var location = 1;
            if (prevNode.Nodes.Count > 0)
                location = ((AchievementCategoryTreeNode)prevNode.Nodes[prevNode.Nodes.Count - 1]).AchievementCategory.Location + 1;

            achCatDatMan.UpdateParent(selectedCategory, prevNode.AchievementCategory, location);

            var node = tvwAchievementCategories.SelectedNode.Parent;
            TreeNodeCollection nodes = null;
            if (node != null && node.Nodes != null)
                nodes = node.Nodes;
            else
                nodes = tvwAchievementCategories.Nodes;

            tvwAchievementCategories.SelectedNode.Remove();

            var categories = nodes.Cast<AchievementCategoryTreeNode>().Select(x => x.AchievementCategory).ToList();

            achCatDatMan.UpdateLocations(prevNode.AchievementCategory, categories);

            RefreshTreeView();
        }
    }
}