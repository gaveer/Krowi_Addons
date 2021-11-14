using DbManagerWPF.DataManager;
using DbManagerWPF.Model;
using Microsoft.Data.Sqlite;
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
        private ObservableCollection<Achievement> _Achievements;
        public ObservableCollection<Achievement> Achievements { get { return _Achievements; } set { _Achievements = value; NotifyPropertyChanged(); } }

        private Achievement _SelectedAchievement;
        public Achievement SelectedAchievement { get { return _SelectedAchievement; } set { _SelectedAchievement = value; NotifyPropertyChanged(); } }

        public ICommand SelectedAchievementChangedCommand => new CommandHandler(() =>
        {
            AchievementIDEdit = SelectedAchievement?.ID.ToString();
            PointsEdit = SelectedAchievement?.Points.ToString();
            ObtainableEdit = SelectedAchievement?.Obtainable ?? false;
            WowheadLinkEdit = SelectedAchievement?.WowheadLink ?? false;
            switch (SelectedAchievement?.Faction)
            {
                case Faction.NoFaction:
                    FactionNoFactionEdit = true;
                    break;
                case Faction.Alliance:
                    FactionAllianceEdit = true;
                    break;
                case Faction.Horde:
                    FactionHordeEdit = true;
                    break;
                default:
                    FactionDefaultEdit = true;
                    break;
            }
            switch (SelectedAchievement?.Covenant)
            {
                case Covenant.NoCovenant:
                    CovenantNoCovenantEdit = true;
                    break;
                case Covenant.Kyrian:
                    CovenantKyrianEdit = true;
                    break;
                case Covenant.Venthyr:
                    CovenantVenthyrEdit = true;
                    break;
                case Covenant.NightFae:
                    CovenantNightFaeEdit = true;
                    break;
                case Covenant.Necrolord:
                    CovenantNecrolordEdit = true;
                    break;
                default:
                    CovenantDefaultEdit = true;
                    break;
            }

            RefreshAchievementUIMapsView(SelectedAchievement);
            RefreshAchievementEventsView(SelectedAchievement);
        }, () => true);

        private string achievementIDsNew;
        public string AchievementIDsNew { get { return achievementIDsNew; } set { achievementIDsNew = value; NotifyPropertyChanged(); } }

        public ICommand EnterNewCommand => new CommandHandler(() => AddNewAchievement(), () => true);

        public string PointsNew { get; set; }


        private bool obtainableNew = true;
        public bool ObtainableNew { get => obtainableNew; set { obtainableNew = value; NotifyPropertyChanged(); } }

        public bool WowheadLinkNew { get; set; } = true;

        public bool FactionDefaultNew { get; set; } = true;

        public bool FactionNoFactionNew { get; set; }

        public bool FactionAllianceNew { get; set; }

        public bool FactionHordeNew { get; set; }

        public bool CovenantDefaultNew { get; set; } = true;

        public bool CovenantNoCovenantNew { get; set; }

        public bool CovenantKyrianNew { get; set; }

        public bool CovenantVenthyrNew { get; set; }

        public bool CovenantNightFaeNew { get; set; }

        public bool CovenantNecrolordNew { get; set; }

        public ICommand AddNewAchievementCommand => new CommandHandler(() => AddNewAchievement(), () => true);

        private string _AchievementIDEdit;
        public string AchievementIDEdit { get { return _AchievementIDEdit; } set { _AchievementIDEdit = value; NotifyPropertyChanged(); } }

        private string _PointsEdit;
        public string PointsEdit { get { return _PointsEdit; } set { _PointsEdit = value; NotifyPropertyChanged(); } }

        private bool _ObtainableEdit;
        public bool ObtainableEdit { get { return _ObtainableEdit; } set { _ObtainableEdit = value; NotifyPropertyChanged(); } }

        private bool _WowheadLinkEdit;
        public bool WowheadLinkEdit { get { return _WowheadLinkEdit; } set { _WowheadLinkEdit = value; NotifyPropertyChanged(); } }

        private bool _FactionDefaultEdit;
        public bool FactionDefaultEdit { get { return _FactionDefaultEdit; } set { _FactionDefaultEdit = value; NotifyPropertyChanged(); } }

        private bool _FactionNoFactionEdit;
        public bool FactionNoFactionEdit { get { return _FactionNoFactionEdit; } set { _FactionNoFactionEdit = value; NotifyPropertyChanged(); } }

        private bool _FactionAllianceEdit;
        public bool FactionAllianceEdit { get { return _FactionAllianceEdit; } set { _FactionAllianceEdit = value; NotifyPropertyChanged(); } }

        private bool _FactionHordeEdit;
        public bool FactionHordeEdit { get { return _FactionHordeEdit; } set { _FactionHordeEdit = value; NotifyPropertyChanged(); } }

        private bool _CovenantDefaultEdit;
        public bool CovenantDefaultEdit { get { return _CovenantDefaultEdit; } set { _CovenantDefaultEdit = value; NotifyPropertyChanged(); } }

        private bool _CovenantNoCovenantEdit;
        public bool CovenantNoCovenantEdit { get { return _CovenantNoCovenantEdit; } set { _CovenantNoCovenantEdit = value; NotifyPropertyChanged(); } }

        private bool _CovenantKyrianEdit;
        public bool CovenantKyrianEdit { get { return _CovenantKyrianEdit; } set { _CovenantKyrianEdit = value; NotifyPropertyChanged(); } }

        private bool _CovenantVenthyrEdit;
        public bool CovenantVenthyrEdit { get { return _CovenantVenthyrEdit; } set { _CovenantVenthyrEdit = value; NotifyPropertyChanged(); } }

        private bool _CovenantNightFaeEdit;
        public bool CovenantNightFaeEdit { get { return _CovenantNightFaeEdit; } set { _CovenantNightFaeEdit = value; NotifyPropertyChanged(); } }

        private bool _CovenantNecrolordEdit;
        public bool CovenantNecrolordEdit { get { return _CovenantNecrolordEdit; } set { _CovenantNecrolordEdit = value; NotifyPropertyChanged(); } }

        public ICommand MoveAchievementUpCommand => new CommandHandler(() => MoveAchievementUp(), () =>
        {
            if (SelectedAchievement == null)
                return false;

            if (Achievements.First() == SelectedAchievement)
                return false;

            return true;
        });

        public ICommand MoveAchievementDownCommand => new CommandHandler(() => MoveAchievementDown(), () =>
        {
            if (SelectedAchievement == null)
                return false;

            if (Achievements.Last() == SelectedAchievement)
                return false;

            return true;
        });

        public ICommand MoveAchievementCommand => new CommandHandler(() => MoveAchievement(), () => SelectedAchievement != null || achievementToMove != null);

        public ICommand UpdateAchievementCommand => new CommandHandler(() => UpdateAchievement(), () => SelectedAchievement != null);

        public ICommand RemoveAchievementCommand => new CommandHandler(() => RemoveAchievement(), () => SelectedAchievement != null);

        public ICommand ValidateAchievementLocationsCommand => new CommandHandler(() => ValidateAchievementLocations(new List<Category>(Categories), 0), () => true);

        public ICommand FixAchievementLocationsCommand => new CommandHandler(() => FixAchievementLocations(), () => SelectedCategory != null && SelectedCategory.GetAchievements().Any());
        #endregion

        private Achievement achievementToMove;
        private Category categoryToMoveFrom;
        private Category categoryToMoveTo;

        public void RefreshAchievementsView(Category category)
        {
            Achievements = new ObservableCollection<Achievement>(category.GetAchievements());
            if (Achievements.Any())
                SelectedAchievement = Achievements.Last();
        }

        public void AddNewAchievement()
        {
            // Add new to database
            if (SelectedCategory == null)
            {
                MessageBox.Show("Please select a category.", "No category selected", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            if (string.IsNullOrEmpty(AchievementIDsNew.Trim()))
            {
                MessageBox.Show("Please enter (an) ID(s).", "No ID(s) entered", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            // Add a loop here to comma separate a list of achievements
            List<string> stringAchievementIDs;
            if (AchievementIDsNew.Contains(',')) // Multiple achievement IDs were entered
                stringAchievementIDs = AchievementIDsNew.Split(',').ToList();
            else
                stringAchievementIDs = new() { AchievementIDsNew };

            List<int> achievementIDs = new();
            foreach (var stringAchievementID in stringAchievementIDs)
            {
                if (!int.TryParse(stringAchievementID.Trim(), out int achievementID))
                {
                    MessageBox.Show("Please enter (a) valid ID(s).", "No valid ID(s) entered", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }
                achievementIDs.Add(achievementID);
            }

            foreach (var achievementID in achievementIDs)
            {
                int location = SelectedAchievement?.Location + 1 ?? 1;

                var faction = Faction.Unknown;
                if (FactionDefaultNew)
                    faction = achievementDM.GetFaction(achievementID);
                else if (FactionNoFactionNew)
                    faction = Faction.NoFaction;
                else if (FactionAllianceNew)
                    faction = Faction.Alliance;
                else if (FactionHordeNew)
                    faction = Faction.Horde;

                if (faction == Faction.Unknown)
                {
                    MessageBox.Show("No faction found for the entered ID.", "No faction found", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }

                var covenant = Covenant.Unknown;
                if (CovenantDefaultNew)
                    covenant = achievementDM.GetCovenant(achievementID);
                else if (CovenantNoCovenantNew)
                    covenant = Covenant.NoCovenant;
                else if (CovenantKyrianNew)
                    covenant = Covenant.Kyrian;
                else if (CovenantVenthyrNew)
                    covenant = Covenant.Venthyr;
                else if (CovenantNightFaeNew)
                    covenant = Covenant.NightFae;
                else if (CovenantNecrolordNew)
                    covenant = Covenant.Necrolord;

                if (covenant == Covenant.Unknown)
                {
                    MessageBox.Show("No covenant found for the entered ID.", "No covenant found", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }

                var parsed = int.TryParse(PointsNew?.Trim(), out int points);

                if (string.IsNullOrEmpty(PointsNew?.Trim()))
                    points = achievementDM.GetPoints(achievementID);
                else if (!parsed)
                {
                    MessageBox.Show("Please enter a valid integer for the points.", "No valid points entered", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }

                if (points < 0)
                {
                    MessageBox.Show("No points found for the entered ID.", "No points found", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }

                achievementDM.Add(achievementID, location, faction, covenant, points, ObtainableNew, WowheadLinkNew, SelectedCategory);

                // Update locations
                achievementDM.IncreaseLocations(SelectedCategory, Achievements, location);

                // Refresh view and select the new achievement
                RefreshAchievementsView(SelectedCategory);
                SelectedAchievement = Achievements.Single(x => x.ID == achievementID);
            }

            // Clear input fields
            AchievementIDsNew = null;
            PointsNew = null;
            ObtainableNew = true;
            WowheadLinkNew = true;
            FactionDefaultNew = true;
            CovenantDefaultNew = true;
        }

        public void MoveAchievementUp()
        {
            var selectedIndex = Achievements.IndexOf(SelectedAchievement);
            achievementDM.Swap(SelectedCategory, Achievements[selectedIndex - 1], Achievements[selectedIndex]);

            // Refresh view and select the previous achievement
            var selectedAchievement = SelectedAchievement;
            RefreshAchievementsView(SelectedCategory);
            SelectedAchievement = Achievements.Single(x => x == selectedAchievement);
        }

        public void MoveAchievementDown()
        {
            var selectedIndex = Achievements.IndexOf(SelectedAchievement);
            achievementDM.Swap(SelectedCategory, Achievements[selectedIndex], Achievements[selectedIndex + 1]);

            // Refresh view and select the previous achievement
            var selectedAchievement = SelectedAchievement;
            RefreshAchievementsView(SelectedCategory);
            SelectedAchievement = Achievements.Single(x => x == selectedAchievement);
        }

        public void MoveAchievement()
        {
            if (achievementToMove == null) // Prime the variables on 1st button click
            {
                achievementToMove = SelectedAchievement;
                categoryToMoveFrom = SelectedCategory;
                var result = MessageBox.Show("Selected achievement and category saved. To continu, select a different category and press the button again. Click cancel to reset the process.", "Move step 2", MessageBoxButton.OKCancel, MessageBoxImage.Warning);
                if (result == MessageBoxResult.Cancel)
                {
                    achievementToMove = null;
                    categoryToMoveFrom = null;
                    categoryToMoveTo = null;
                    return;
                }

            }
            else // Move the achievement on 2nd button click if all ok
            {
                categoryToMoveTo = SelectedCategory;

                if (categoryToMoveFrom == categoryToMoveTo)
                {
                    MessageBox.Show("Old and new category are the same. Please start again and select a different one.", "Same category", MessageBoxButton.OK, MessageBoxImage.Warning);
                    achievementToMove = null;
                    categoryToMoveFrom = null;
                    categoryToMoveTo = null;
                    return;
                }

                // Move achievement, no need to fix location in new category since achievement is added to the end
                var location = Achievements.Any() ? Achievements.Last().Location : 0;
                achievementDM.SetNewParentAndLocation(categoryToMoveFrom, achievementToMove, categoryToMoveTo, location + 1);

                // Fix locations in old category
                achievementDM.DecreaseLocations(categoryToMoveFrom, categoryToMoveFrom.GetAchievements(), achievementToMove.Location + 1);

                // Refresh view and select the previous achievement
                RefreshAchievementsView(SelectedCategory);
                SelectedAchievement = Achievements.Single(x => x == achievementToMove);

                achievementToMove = null;
                categoryToMoveFrom = null;
                categoryToMoveTo = null;
            }
        }

        public void UpdateAchievement()
        {
            // Update in database
            if (SelectedAchievement == null)
            {
                MessageBox.Show("Please select an achievement.", "No achievement selected", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            if (string.IsNullOrEmpty(AchievementIDEdit.Trim()))
            {
                MessageBox.Show("Please enter an ID.", "No ID entered", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            if (!int.TryParse(AchievementIDEdit.Trim(), out int achievementID))
            {
                MessageBox.Show("Please enter a valid ID.", "No valid ID entered", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            var faction = Faction.Unknown;
            if (FactionDefaultEdit)
                faction = achievementDM.GetFaction(achievementID);
            else if (FactionNoFactionEdit)
                faction = Faction.NoFaction;
            else if (FactionAllianceEdit)
                faction = Faction.Alliance;
            else if (FactionHordeEdit)
                faction = Faction.Horde;

            if (faction == Faction.Unknown)
            {
                MessageBox.Show("No faction found for the entered ID.", "No faction found", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            var covenant = Covenant.Unknown;
            if (CovenantDefaultEdit)
                covenant = achievementDM.GetCovenant(achievementID);
            else if (CovenantNoCovenantEdit)
                covenant = Covenant.NoCovenant;
            else if (CovenantKyrianEdit)
                covenant = Covenant.Kyrian;
            else if (CovenantVenthyrEdit)
                covenant = Covenant.Venthyr;
            else if (CovenantNightFaeEdit)
                covenant = Covenant.NightFae;
            else if (CovenantNecrolordEdit)
                covenant = Covenant.Necrolord;

            if (covenant == Covenant.Unknown)
            {
                MessageBox.Show("No covenant found for the entered ID.", "No covenant found", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            if (!int.TryParse(PointsEdit.Trim(), out int points))
            {
                MessageBox.Show("Please enter a valid integer for the points.", "No valid points entered", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            if (string.IsNullOrEmpty(PointsEdit.Trim()))
                points = achievementDM.GetPoints(achievementID);

            if (points < 0)
            {
                MessageBox.Show("No points found for the entered ID.", "No points found", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            achievementDM.Update(SelectedAchievement, achievementID, faction, covenant, points, ObtainableEdit, WowheadLinkEdit);

            // Refresh view and select the previous achievement
            var selectedAchievement = SelectedAchievement;
            RefreshAchievementsView(SelectedCategory);
            SelectedAchievement = Achievements.Single(x => x == selectedAchievement);
        }

        public void RemoveAchievement()
        {
            if (SelectedAchievement == null)
            {
                MessageBox.Show("Please select an achievement.", "No achievement selected", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            achievementDM.Remove(SelectedAchievement);

            // Update locations
            achievementDM.DecreaseLocations(SelectedCategory, Achievements, SelectedAchievement.Location + 1);

            // Refresh view and select the last achievement
            RefreshAchievementsView(SelectedCategory);
            SelectedAchievement = Achievements.Any() ? Achievements.Last() : null;
        }

        public bool ValidateAchievementLocations(List<Category> categories, int depth)
        {
            foreach (var category in categories)
            {
                var achievements = category.GetAchievements().ToList();

                if (achievements.Any())
                    for (int i = 0; i < achievements.Count; i++)
                        if (achievements[i].Location != i + 1)
                        {
                            MessageBox.Show($"{achievements[i].Name} ({achievements[i].ID}) in {category.Name} has a wrong location. '{i + 1}' expected but got '{achievements[i].Location}'.", "Invalid location", MessageBoxButton.OK, MessageBoxImage.Error);
                            SelectedCategory = category;
                            return false;
                        }

                var ok = ValidateAchievementLocations(category.Children, depth + 1);
                if (!ok)
                    return false;
            }

            if (depth == 0)
                MessageBox.Show("All achievements have a correct location.", "Locations valid", MessageBoxButton.OK, MessageBoxImage.Information);

            return true;
        }

        public void FixAchievementLocations()
        {
            for (int i = 0; i < Achievements.Count; i++)
                achievementDM.SetNewLocation(SelectedCategory, Achievements[i], i + 1);

            RefreshAchievementsView(SelectedCategory);
        }
    }
}