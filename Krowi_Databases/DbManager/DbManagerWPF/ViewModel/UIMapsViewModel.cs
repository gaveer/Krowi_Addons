using DbManagerWPF.Model;
using DbManagerWPF.View;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Input;

namespace DbManagerWPF.ViewModel
{
    public partial class MainWindowViewModel
    {
        #region Properties

        private ObservableCollection<UIMap> _UIMaps;
        public ObservableCollection<UIMap> UIMaps { get { return _UIMaps; } set { _UIMaps = value; NotifyPropertyChanged(); } }

        private UIMap _SelectedUIMap;
        public UIMap SelectedUIMap { get { return _SelectedUIMap; } set { _SelectedUIMap = value; NotifyPropertyChanged(); } }

        public TreeViewSelectionBehavior.IsChildOfPredicate UIMapHierarchyPredicate
        {
            get
            {
                return (object child, object parent) =>
                {
                    while (((UIMap)child).Parent != null)
                    {
                        if (((UIMap)child).Parent == (UIMap)parent)
                            return true;

                        child = ((UIMap)child).Parent;
                    }

                    return false;
                };
            }
        }

        public ICommand SelectedUIMapChangedCommand => new CommandHandler(() => { }, () => true);

        public ICommand MouseRightButtonDownAddUIMapToAchievementCommand => new CommandHandler(() => { AddUIMapToAchievement(); }, () => SelectedUIMap != null);

        public ICommand MoveUIMapCommand => new CommandHandler(() => MoveUIMap(), () => SelectedUIMap != null || uiMapToMove != null);
        //public ICommand PruneCategoriesCommand => new CommandHandler(() => PruneCategories(), () => true);

        public ICommand AddUIMapToCategoryCommand => new CommandHandler(() => AddUIMapToCategory(), () => SelectedCategory != null && SelectedUIMap != null);
        public ICommand RemoveUIMapFromCategoryCommand => new CommandHandler(() => RemoveUIMapFromCategory(), () => SelectedCategory != null && SelectedCategoryUIMap != null);
        public ICommand CopyUIMapFromParentToCategoryCommand => new CommandHandler(() => CopyUIMapFromParentToCategory(), () => SelectedCategory != null);

        private ObservableCollection<UIMap> _CategoryUIMaps;
        public ObservableCollection<UIMap> CategoryUIMaps { get { return _CategoryUIMaps; } set { _CategoryUIMaps = value; NotifyPropertyChanged(); } }

        private UIMap _SelectedCategoryUIMap;
        public UIMap SelectedCategoryUIMap { get { return _SelectedCategoryUIMap; } set { _SelectedCategoryUIMap = value; NotifyPropertyChanged(); } }

        public ICommand SelectedCategoryUIMapChangedCommand => new CommandHandler(() => { }, () => true);

        public ICommand AddUIMapToAchievementCommand => new CommandHandler(() => AddUIMapToAchievement(), () => SelectedAchievement != null && SelectedUIMap != null);
        public ICommand RemoveUIMapFromAchievementCommand => new CommandHandler(() => RemoveUIMapFromAchievement(), () => SelectedAchievement != null && SelectedAchievementUIMap != null);

        private ObservableCollection<UIMap> _AchievementUIMaps;
        public ObservableCollection<UIMap> AchievementUIMaps { get { return _AchievementUIMaps; } set { _AchievementUIMaps = value; NotifyPropertyChanged(); } }

        private UIMap _SelectedAchievementUIMap;
        public UIMap SelectedAchievementUIMap { get { return _SelectedAchievementUIMap; } set { _SelectedAchievementUIMap = value; NotifyPropertyChanged(); } }

        public ICommand SelectedAchievementUIMapChangedCommand => new CommandHandler(() => { }, () => true);
        #endregion

        private UIMap uiMapToMove;
        private UIMap uiMapToMoveTo;

        public void LoadUIMapViewModel()
        {
            RefreshUIMapView();
        }

        private void RefreshUIMapView()
        {
            UIMaps = new ObservableCollection<UIMap>(uiMapDM.GetAll(true));
        }

        private void RefreshCategoryUIMapsView(Category category, bool refresh = false)
        {
            if (category != null)
                CategoryUIMaps = new ObservableCollection<UIMap>(category.GetUIMaps(refresh));
        }

        private void RefreshAchievementUIMapsView(Achievement achievement, bool refresh = false)
        {
            if (achievement != null)
                AchievementUIMaps = new ObservableCollection<UIMap>(achievement.GetUIMaps(refresh));
        }

        public void MoveUIMap()
        {
            if (uiMapToMove == null) // Prime the variables on 1st button click
            {
                uiMapToMove = SelectedUIMap;
                var result = MessageBox.Show("Selected UIMap saved. To continu, select a different UIMap and press the button again. Click cancel to reset the process.", "Move step 2", MessageBoxButton.OKCancel, MessageBoxImage.Warning);
                if (result == MessageBoxResult.Cancel)
                {
                    uiMapToMove = null;
                    uiMapToMoveTo = null;
                    return;
                }
            }
            else // Move the UIMap on 2nd button click if all ok
            {
                uiMapToMoveTo = SelectedUIMap;

                if (uiMapToMoveTo == uiMapToMove)
                {
                    MessageBox.Show("UIMap to move and new UIMap are the same. Please start again and select a different one.", "Same UIMap", MessageBoxButton.OK, MessageBoxImage.Warning);
                    uiMapToMove = null;
                    uiMapToMoveTo = null;
                    return;
                }

                // Do the move here
                uiMapDM.SetNewParent(uiMapToMove, uiMapToMoveTo);

                // Refresh view and select the previous achievement
                RefreshUIMapView();
                RefreshCategoryUIMapsView(SelectedCategory, true);
                RefreshAchievementUIMapsView(SelectedAchievement, true);
                SelectedUIMap = UIMaps.Find(uiMapToMove.ID);

                uiMapToMove = null;
                uiMapToMoveTo = null;
            }
        }

        //public void PruneCategories()
        //{
        //    foreach (var category in Categories)
        //        if (!PruneCategory(category))
        //            break;

        //    RefreshCategoriesView();
        //}

        //private bool PruneCategory(Category category)
        //{
        //    var uiMaps = category.GetUIMaps();

        //    if (uiMaps.Any())
        //        foreach (var uiMap in uiMaps)
        //            foreach (var child in uiMap.Children)
        //                if (!RemoveCategoryUIMapChildren(category, child))
        //                    return false;

        //    foreach (var child in category.Children)
        //        if (!PruneCategory(child))
        //            return false;

        //    return true;
        //}

        //private bool RemoveCategoryUIMapChildren(Category category, UIMap uiMap)
        //{
        //    foreach (var child in uiMap.Children)
        //        RemoveCategoryUIMapChildren(category, child);

        //    var result = MessageBox.Show($"Remove UIMap '{uiMap}' from '{category}'?", "Prune Category UIMap", MessageBoxButton.YesNoCancel, MessageBoxImage.Question);
        //    if (result == MessageBoxResult.Yes)
        //        uiMapDM.RemoveFromCategory(category, uiMap);
        //    else if (result == MessageBoxResult.Cancel)
        //        return false;

        //    return true;
        //}

        public void AddUIMapToCategory()
        {
            uiMapDM.AddToCategory(SelectedCategory, SelectedUIMap);

            RefreshCategoryUIMapsView(SelectedCategory, true);
        }

        public void RemoveUIMapFromCategory()
        {
            uiMapDM.RemoveFromCategory(SelectedCategory, SelectedCategoryUIMap);

            RefreshCategoryUIMapsView(SelectedCategory, true);
        }

        public void CopyUIMapFromParentToCategory()
        {
            var parentUIMaps = SelectedCategory.Parent.GetUIMaps(true);
            foreach (var uiMap in parentUIMaps)
                uiMapDM.AddToCategory(SelectedCategory, uiMap);

            RefreshCategoryUIMapsView(SelectedCategory, true);
        }

        public void AddUIMapToAchievement()
        {
            uiMapDM.AddToAchievement(SelectedAchievement, SelectedUIMap);

            RefreshAchievementUIMapsView(SelectedAchievement, true);
        }

        public void RemoveUIMapFromAchievement()
        {
            uiMapDM.RemoveFromAchievement(SelectedAchievement, SelectedAchievementUIMap);

            RefreshAchievementUIMapsView(SelectedAchievement, true);
        }
    }
}