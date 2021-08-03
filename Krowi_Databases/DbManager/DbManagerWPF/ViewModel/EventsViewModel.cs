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
        private ObservableCollection<Event> _Events;
        public ObservableCollection<Event> Events { get { return _Events; } set { _Events = value; NotifyPropertyChanged(); } }

        private Event _SelectedEvent;
        public Event SelectedEvent { get { return _SelectedEvent; } set { _SelectedEvent = value; NotifyPropertyChanged(); } }

        public ICommand SelectedEventChangedCommand => new CommandHandler(() => { }, () => true);

        public ICommand MouseRightButtonDownAddEventToAchievementCommand => new CommandHandler(() => { AddEventToAchievement(); }, () => SelectedEvent != null);

        public ICommand AddEventToCategoryCommand => new CommandHandler(() => AddEventToCategory(), () => SelectedCategory != null && SelectedEvent != null);
        public ICommand RemoveEventFromCategoryCommand => new CommandHandler(() => RemoveEventFromCategory(), () => SelectedCategory != null && SelectedCategoryEvent != null);

        private ObservableCollection<Event> _CategoryEvents;
        public ObservableCollection<Event> CategoryEvents { get { return _CategoryEvents; } set { _CategoryEvents = value; NotifyPropertyChanged(); } }

        private Event _SelectedCategoryEvent;
        public Event SelectedCategoryEvent { get { return _SelectedCategoryEvent; } set { _SelectedCategoryEvent = value; NotifyPropertyChanged(); } }

        public ICommand SelectedCategoryEventChangedCommand => new CommandHandler(() => { }, () => true);

        public ICommand AddEventToAchievementCommand => new CommandHandler(() => AddEventToAchievement(), () => SelectedAchievement != null && SelectedEvent != null);
        public ICommand RemoveEventFromAchievementCommand => new CommandHandler(() => RemoveEventFromAchievement(), () => SelectedAchievement != null && SelectedAchievementEvent != null);

        private ObservableCollection<Event> _AchievementEvents;
        public ObservableCollection<Event> AchievementEvents { get { return _AchievementEvents; } set { _AchievementEvents = value; NotifyPropertyChanged(); } }

        private Event _SelectedAchievementEvent;
        public Event SelectedAchievementEvent { get { return _SelectedAchievementEvent; } set { _SelectedAchievementEvent = value; NotifyPropertyChanged(); } }

        public ICommand SelectedAchievementEventChangedCommand => new CommandHandler(() => { }, () => true);
        #endregion

        public void LoadEventsViewModel()
        {
            RefreshEventView();
        }

        private void RefreshEventView()
        {
            Events = new ObservableCollection<Event>(eventDM.GetAll(true));
        }

        private void RefreshCategoryEvenstView(Category category, bool refresh = false)
        {
            if (category != null)
                CategoryEvents = new ObservableCollection<Event>(category.GetEvents(refresh));
        }

        private void RefreshAchievementEventsView(Achievement achievement, bool refresh = false)
        {
            if (achievement != null)
                AchievementEvents = new ObservableCollection<Event>(achievement.GetEvents(refresh));
        }

        public void AddEventToCategory()
        {
            eventDM.AddToCategory(SelectedCategory, SelectedEvent);

            RefreshCategoryEvenstView(SelectedCategory, true);
        }

        public void RemoveEventFromCategory()
        {
            eventDM.RemoveFromCategory(SelectedCategory, SelectedCategoryEvent);

            RefreshCategoryEvenstView(SelectedCategory, true);
        }

        public void AddEventToAchievement()
        {
            eventDM.AddToAchievement(SelectedAchievement, SelectedEvent);

            RefreshAchievementEventsView(SelectedAchievement, true);
        }

        public void RemoveEventFromAchievement()
        {
            eventDM.RemoveFromAchievement(SelectedAchievement, SelectedAchievementEvent);

            RefreshAchievementEventsView(SelectedAchievement, true);
        }
    }
}