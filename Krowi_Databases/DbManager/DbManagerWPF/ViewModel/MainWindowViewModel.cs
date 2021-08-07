using DbManagerWPF.DataManager;
using Microsoft.Data.Sqlite;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace DbManagerWPF.ViewModel
{
    public partial class MainWindowViewModel : INotifyPropertyChanged
    {
        private FunctionDM functionDM;
        private UIMapDM uiMapDM;
        private EventDM eventDM;
        private AchievementDM achievementDM;
        private CategoryDM categoryDM;
        private PetBattleLinksDM petBattleLinksDM;
        private XuFuEncounterDM xuFuEncounterDM;

        public MainWindowViewModel()
        {
            var connStrBuilder = new SqliteConnectionStringBuilder();
            connStrBuilder.DataSource = "../../../../../Krowi_AchievementFilter.db";
            var connection = new SqliteConnection(connStrBuilder.ConnectionString);
            connection.Open();

            functionDM = new FunctionDM(connection);
            uiMapDM = new UIMapDM(connection);
            eventDM = new EventDM(connection, uiMapDM);
            achievementDM = new AchievementDM(connection, uiMapDM, eventDM);
            categoryDM = new CategoryDM(connection, functionDM, achievementDM, uiMapDM, eventDM);
            petBattleLinksDM = new PetBattleLinksDM(connection);
            xuFuEncounterDM = new XuFuEncounterDM(connection);

            LoadCategoriesViewModel();
            LoadUIMapViewModel();
            LoadEventsViewModel();
            LoadImportViewModel();
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void NotifyPropertyChanged([CallerMemberName] string propertyName = "")
        {
            var handler = PropertyChanged;
            if (handler != null)
                handler(this, new PropertyChangedEventArgs(propertyName));
        }

    }
}