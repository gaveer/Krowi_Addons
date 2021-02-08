using System;
using System.Linq;

namespace DbManager
{
    public partial class Form1
    {
        private void btnAchievementCategoryAdd_Click(object sender, EventArgs e)
        {
            int location = cbxCategoryAsParent.Checked ? 1 : ((AchievementCategory)lsbAchievementCategories1.SelectedItem).Location + 1;
            AchievementCategory parent = cbxCategoryAsParent.Checked ? (AchievementCategory)lsbAchievementCategories1.SelectedItem : ((AchievementCategory)lsbAchievementCategories1.SelectedItem).Parent;

            var category = new AchievementCategory(-1, location, txtCategoryName.Text, (Function)lsbFunctions.SelectedItem, string.IsNullOrEmpty(txtFunctionValue.Text) ? -1 : Convert.ToInt32(txtFunctionValue.Text), parent);
            AchievementCategory.Add(Connection, category);

            if (!cbxCategoryAsParent.Checked)
            {
                lsbAchievementCategories1.Items.Insert(lsbAchievementCategories1.SelectedIndex + 1, category);

                var categories = lsbAchievementCategories1.Items.Cast<AchievementCategory>().Where(x => x.Parent == ((AchievementCategory)lsbAchievementCategories1.SelectedItem).Parent).ToList();

                AchievementCategory.UpdateLocations(Connection, AchievementCategory.GetLast(Connection), categories);
            }

            RefreshCategories(Connection);
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
    }
}