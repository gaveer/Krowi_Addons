using DbManagerWPF.DataManager;
using DbManagerWPF.Model;
using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
            ObtainableEdit = SelectedAchievement?.Obtainable ?? false;
            WowheadLinkEdit = SelectedAchievement?.WowheadLink ?? false;
        }, () => true);

        public string AchievementIDsNew { get; set; }

        public bool ObtainableNew { get; set; }

        public bool WowheadLinkNew { get; set; }

        public bool FactionDefaultNew { get; set; }

        public bool FactionNoFactionNew { get; set; }

        public bool FactionAllianceNew { get; set; }

        public bool FactionHordeNew { get; set; }

        public bool CovenantDefaultNew { get; set; }

        public bool CovenantNoCovenantNew { get; set; }

        public bool CovenantKyrianNew { get; set; }

        public bool CovenantVenthyrNew { get; set; }

        public bool CovenantNightFaeNew { get; set; }

        public bool CovenantNecrolordNew { get; set; }

        public ICommand AddNewAchievementCommand => new CommandHandler(() => AddNewAchievement(), () => true);

        private string _AchievementIDEdit;
        public string AchievementIDEdit { get { return _AchievementIDEdit; } set { _AchievementIDEdit = value; NotifyPropertyChanged(); } }

        private bool _ObtainableEdit;
        public bool ObtainableEdit { get { return _ObtainableEdit; } set { _ObtainableEdit = value; NotifyPropertyChanged(); } }

        private bool _WowheadLinkEdit;
        public bool WowheadLinkEdit { get { return _WowheadLinkEdit; } set { _WowheadLinkEdit = value; NotifyPropertyChanged(); } }
        #endregion

        private AchievementDM achievementDM;

        public void LoadAchievementsViewModel(SqliteConnection connection)
        {
            achievementDM = new AchievementDM(connection);
        }

        public void SetAchievements(Category category)
        {
            Achievements = new ObservableCollection<Achievement>(achievementDM.GetWithCategory(category));
        }

        public void AddNewAchievement()
        {

        }
    }
}