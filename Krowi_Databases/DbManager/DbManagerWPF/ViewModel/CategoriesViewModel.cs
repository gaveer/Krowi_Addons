using DbManagerWPF.Model;
using DbManagerWPF.View;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System.Windows.Input;

namespace DbManagerWPF.ViewModel
{
    public partial class MainWindowViewModel
    {
        #region Properties
        private ObservableCollection<Category> _Categories;
        public ObservableCollection<Category> Categories { get { return _Categories; } set { _Categories = value; NotifyPropertyChanged(); } }

        private Category _SelectedCategory;
        public Category SelectedCategory { get { return _SelectedCategory; } set { _SelectedCategory = value; NotifyPropertyChanged(); } }

        public TreeViewSelectionBehavior.IsChildOfPredicate CategoryHierarchyPredicate
        {
            get
            {
                return (object child, object parent) =>
                {
                    while (((Category)child).Parent != null)
                    {
                        if (((Category)child).Parent == (Category)parent)
                            return true;

                        child = ((Category)child).Parent;
                    }

                    return false;
                };
            }
        }

        public ICommand SelectedCategoryChangedCommand => new CommandHandler(() =>
        {
            CategoryNameEdit = SelectedCategory.Name;
            SelectedFunctionEdit = SelectedCategory.Function;
            FunctionValueEdit = SelectedCategory.FunctionValue;
            IsLegacyEdit = SelectedCategory.IsLegacy;
            IsActiveEdit = SelectedCategory.IsActive;
            CanMergeEdit = SelectedCategory.CanMerge;

            RefreshAchievementsView(SelectedCategory);
            RefreshCategoryUIMapView(SelectedCategory);
        }, () => true);

        public string CategoryNameNew { get; set; }

        public ObservableCollection<Function> Functions { get; set; }

        public Function SelectedFunctionNew { get; set; }

        public string FunctionValueNew { get; set; }

        public bool SelectedCategoryAsParent { get; set; }

        public bool IsLegacyNew { get; set; }

        public bool IsActiveNew { get; set; } = true;

        public bool CanMergeNew { get; set; }

        public ICommand AddNewCategoryCommand => new CommandHandler(() => AddNewCategory(), () => true);

        private string _CategoryNameEdit;
        public string CategoryNameEdit { get { return _CategoryNameEdit; } set { _CategoryNameEdit = value; NotifyPropertyChanged(); } }

        private Function _SelectedFunctionEdit;
        public Function SelectedFunctionEdit { get { return _SelectedFunctionEdit; } set { _SelectedFunctionEdit = value; NotifyPropertyChanged(); } }

        private string _FunctionValueEdit;
        public string FunctionValueEdit { get { return _FunctionValueEdit; } set { _FunctionValueEdit = value; NotifyPropertyChanged(); } }

        private bool _IsLegacyEdit;
        public bool IsLegacyEdit { get { return _IsLegacyEdit; } set { _IsLegacyEdit = value; NotifyPropertyChanged(); } }

        private bool _IsActiveEdit;
        public bool IsActiveEdit { get { return _IsActiveEdit; } set { _IsActiveEdit = value; NotifyPropertyChanged(); } }

        private bool _CanMergeEdit;
        public bool CanMergeEdit { get { return _CanMergeEdit; } set { _CanMergeEdit = value; NotifyPropertyChanged(); } }

        public ICommand MoveCategoryLeftCommand => new CommandHandler(() => MoveCategoryLeft(), () => SelectedCategory?.Parent != null);

        public ICommand MoveCategoryUpCommand => new CommandHandler(() => MoveCategoryUp(), () =>
        {
            if (SelectedCategory == null)
                return false;

            List<Category> categories = GetCategoryParentChildrenSafe(SelectedCategory).ToList();
            var selectedIndex = categories.FindIndex(x => x == SelectedCategory);

            if (selectedIndex <= 0)
                return false;

            return true;
        });

        public ICommand MoveCategoryDownCommand => new CommandHandler(() => MoveCategoryDown(), () =>
        {
            if (SelectedCategory == null)
                return false;

            List<Category> categories = GetCategoryParentChildrenSafe(SelectedCategory).ToList();
            var selectedIndex = categories.FindIndex(x => x == SelectedCategory);

            if (selectedIndex >= categories.Count - 1)
                return false;

            return true;
        });

        public ICommand MoveCategoryRightCommand => new CommandHandler(() => MoveCategoryRight(), () =>
        {
            if (SelectedCategory == null)
                return false;

            List<Category> categories = GetCategoryParentChildrenSafe(SelectedCategory).ToList();
            var selectedIndex = categories.FindIndex(x => x == SelectedCategory);

            if (selectedIndex <= 0)
                return false;

            return true;
        });

        public ICommand UpdateCategoryCommand => new CommandHandler(() => UpdateCategory(), () => SelectedCategory != null);

        public ICommand RemoveCategoryCommand => new CommandHandler(() => RemoveCategory(), () => SelectedCategory != null);

        public ICommand ValidateCategoryLocationsCommand => new CommandHandler(() => ValidateCategoryLocations(new List<Category>(Categories), 0), () => true);
        #endregion

        public void LoadCategoriesViewModel()
        {
            Functions = new ObservableCollection<Function>(functionDM.GetAll());
            RefreshCategoriesView();
        }

        private void RefreshCategoriesView()
        {
            Categories = new ObservableCollection<Category>(categoryDM.GetAll(true));
        }

        private IEnumerable<Category> GetCategoryParentChildrenSafe(Category category)
        {
            if (category.Parent != null)
                return category.Parent.Children;

            return Categories;
        }

        private IEnumerable<Category> GetParentChildrenSafe(Category parent)
        {
            if (parent != null)
                return parent.Children;

            return Categories;
        }

        private void AddNewCategory()
        {
            // Add new to database
            if (SelectedCategory == null)
            {
                MessageBox.Show("Please select a category.", "No category selected", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            if (string.IsNullOrEmpty(CategoryNameNew))
            {
                MessageBox.Show("Please enter a category name.", "No category name entered", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            if (SelectedFunctionNew == null)
            {
                MessageBox.Show("Please select a function.", "No function selected", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            var location = SelectedCategoryAsParent ? 1 : SelectedCategory.Location + 1;
            var parent = SelectedCategoryAsParent ? SelectedCategory : SelectedCategory.Parent;
            categoryDM.Add(location, CategoryNameNew.Trim(), parent, SelectedFunctionNew, FunctionValueNew, IsLegacyNew, IsActiveNew, CanMergeNew);

            // Update locations
            IEnumerable<Category> categories = GetParentChildrenSafe(parent);
            categoryDM.IncreaseLocations(categories, location);

            // Refresh view and select the new category
            RefreshCategoriesView();
            var category = categoryDM.GetLast();
            category = Categories.Find(category.ID);
            SelectedCategory = category;

            // Clear input fields
            CategoryNameNew = null;
            SelectedFunctionNew = null;
            FunctionValueNew = null;
            SelectedCategoryAsParent = false;
            IsLegacyNew = false;
            IsActiveNew = true;
            CanMergeNew = false;
        }

        private void MoveCategoryLeft()
        {
            // Update new locations
            IEnumerable<Category> categories = GetCategoryParentChildrenSafe(SelectedCategory.Parent);
            categoryDM.IncreaseLocations(categories, SelectedCategory.Parent.Location + 1);

            // Set new
            categoryDM.SetNewParentAndLocation(SelectedCategory, SelectedCategory.Parent.Parent, SelectedCategory.Parent.Location + 1);

            // Update old locations
            categories = SelectedCategory.Parent.Children;
            categoryDM.DecreaseLocations(categories, SelectedCategory.Location + 1);

            // Refresh view and select the previous category
            var selectedCategory = SelectedCategory;
            RefreshCategoriesView();
            SelectedCategory = Categories.Find(selectedCategory.ID);
        }

        private void MoveCategoryUp()
        {
            List<Category> categories = GetCategoryParentChildrenSafe(SelectedCategory).ToList();
            var selectedIndex = categories.FindIndex(x => x == SelectedCategory);

            categoryDM.Swap(categories[selectedIndex - 1], categories[selectedIndex]);

            // Refresh view and select the previous category
            var selectedCategory = SelectedCategory;
            RefreshCategoriesView();
            SelectedCategory = Categories.Find(selectedCategory.ID);
        }

        private void MoveCategoryDown()
        {
            List<Category> categories = GetCategoryParentChildrenSafe(SelectedCategory).ToList();
            var selectedIndex = categories.FindIndex(x => x == SelectedCategory);

            categoryDM.Swap(categories[selectedIndex], categories[selectedIndex + 1]);

            // Refresh view and select the previous category
            var selectedCategory = SelectedCategory;
            RefreshCategoriesView();
            SelectedCategory = Categories.Find(selectedCategory.ID);
        }

        private void MoveCategoryRight()
        {
            List<Category> categories = GetCategoryParentChildrenSafe(SelectedCategory).ToList();
            var selectedIndex = categories.FindIndex(x => x == SelectedCategory);

            var location = categories[selectedIndex - 1].Children.Any() ? categories[selectedIndex - 1].Children.Last().Location + 1 : 1;
            categoryDM.SetNewParentAndLocation(categories[selectedIndex], categories[selectedIndex - 1], location);

            // Update old locations
            categoryDM.DecreaseLocations(categories, SelectedCategory.Location + 1);

            // Refresh view and select the previous category
            var selectedCategory = SelectedCategory;
            RefreshCategoriesView();
            SelectedCategory = Categories.Find(selectedCategory.ID);
        }

        private void UpdateCategory()
        {
            // Update in database
            if (SelectedCategory == null)
            {
                MessageBox.Show("Please select a category.", "No category selected", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            if (string.IsNullOrEmpty(CategoryNameEdit))
            {
                MessageBox.Show("Please enter a category name.", "No category name entered", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            if (SelectedFunctionEdit == null)
            {
                MessageBox.Show("Please select a function.", "No function selected", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            categoryDM.Update(SelectedCategory, CategoryNameEdit.Trim(), SelectedFunctionEdit, FunctionValueEdit, IsLegacyEdit, IsActiveEdit, CanMergeEdit);

            // Refresh view and select the previous category
            var selectedCategory = SelectedCategory;
            RefreshCategoriesView();
            SelectedCategory = Categories.Find(selectedCategory.ID);
        }

        private void RemoveCategory()
        {
            // Remove from database
            if (SelectedCategory == null)
            {
                MessageBox.Show("Please select a category.", "No category selected", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            if (SelectedCategory.Children.Any())
            {
                MessageBox.Show("Please remove child categories first.", "Remove child category", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            if (SelectedCategory.GetAchievements().Any())
            {
                MessageBox.Show("Please remove achievements first.", "Remove achievements", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            categoryDM.Remove(SelectedCategory);

            // Update locations
            IEnumerable<Category> categories = GetCategoryParentChildrenSafe(SelectedCategory);
            categoryDM.DecreaseLocations(categories, SelectedCategory.Location + 1);

            // Refresh view and select the parent category
            var selectedCategory = SelectedCategory;
            RefreshCategoriesView();
            if (selectedCategory.Parent != null)
                SelectedCategory = Categories.Find(selectedCategory.Parent.ID);
        }

        private void ValidateCategoryLocations(List<Category> categories, int depth)
        {
            for (int i = 0; i < categories.Count; i++)
            {
                if (categories[i].Location != i + 1)
                    MessageBox.Show($"{categories[i].Name} has a wrong location. '{i + 1}' expected but got '{categories[i].Location}'.", "Invalid location", MessageBoxButton.OK, MessageBoxImage.Error);

                ValidateCategoryLocations(categories[i].Children, depth + 1);
            }

            if (depth == 0)
                MessageBox.Show("All categories have a correct location.", "Locations valid", MessageBoxButton.OK, MessageBoxImage.Information);
        }
    }
}