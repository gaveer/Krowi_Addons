using Krowi_Calendar_Exporter_Core;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Resources;
using System.Runtime.CompilerServices;
using System.Text.RegularExpressions;

namespace Windows_App
{
    public class MainWindowViewModel : INotifyPropertyChanged
    {
        private ResourceManager resourceManager;

        public MainWindowViewModel()
        {
            var culture = "en-US";

            switch (culture)
            {
                case "en-US":
                    resourceManager = Krowi_Calendar_Exporter_Core.Localization.Dutch.ResourceManager;
                    break;
                default:
                    resourceManager = Krowi_Calendar_Exporter_Core.Localization.English.ResourceManager;
                    break;
            }
        }

        public string Monday => resourceManager.GetString("Monday");
        public string Tuesday => resourceManager.GetString("Tuesday");
        public string Wednesday => resourceManager.GetString("Wednesday");
        public string Thursday => resourceManager.GetString("Thursday");
        public string Friday => resourceManager.GetString("Friday");
        public string Saturday => resourceManager.GetString("Saturday");
        public string Sunday => resourceManager.GetString("Sunday");

        private string currentMonth;
        public string CurrentMonth
        {
            get
            {
                return currentMonth;
            }
            set
            {
                currentMonth = value;
                NotifyPropertyChanged();
            }
        }

        private List<Event> events;
        public List<Event> Events
        {
            get
            {
                return events;
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void NotifyPropertyChanged([CallerMemberName] string propertyName = "")
        {
            var handler = PropertyChanged;
            if (handler != null)
                handler(this, new PropertyChangedEventArgs(propertyName));
        }

        public void GetEvents()
        {
            var fileContent = File.ReadAllText(@"E:\World of Warcraft\_retail_\WTF\Account\133658957#1\SavedVariables\Krowi_CalendarExporter.lua");
            var matches = Regex.Matches(fileContent, @"startTime.*?\n.*?(\d+).*?\n.*?(\d+).*?\n.*?(\d+).*?\n.*?(\d+).*?\n.*?(\d+).*?\n.*?(\d+)(?:.*?\n)*?.*?endTime.*?\n.*?(\d+).*?\n.*?(\d+).*?\n.*?(\d+).*?\n.*?(\d+).*?\n.*?(\d+).*?\n.*?(\d+)(?:.*?\n)*?.*?title.*? = (.*?)\n");
            events = new List<Event>();
            foreach (Match match in matches)
            {
                int.TryParse(match.Groups[1].Value, out int startTimeDay);
                int.TryParse(match.Groups[3].Value, out int startTimeMonth);
                int.TryParse(match.Groups[4].Value, out int startTimeMinute);
                int.TryParse(match.Groups[5].Value, out int startTimeHour);
                int.TryParse(match.Groups[6].Value, out int startTimeYear);
                var startTime = new DateTime(startTimeYear, startTimeMonth, startTimeDay, startTimeHour, startTimeMinute, 0);

                int.TryParse(match.Groups[7].Value, out int endTimeDay);
                int.TryParse(match.Groups[9].Value, out int endTimeMonth);
                int.TryParse(match.Groups[10].Value, out int endTimeMinute);
                int.TryParse(match.Groups[11].Value, out int endTimeHour);
                int.TryParse(match.Groups[12].Value, out int endTimeYear);
                var endTime = new DateTime(endTimeYear, endTimeMonth, endTimeDay, endTimeHour, endTimeMinute, 0);

                var title = match.Groups[13].Value;
                title = title.Trim();
                title = title.Trim(',');
                title = title.Trim('"');

                events.Add(new Event(title, startTime, endTime));
                events = events.OrderBy(e => e.StartTime).ToList();
                events = events.Distinct(null).ToList();
            }
        }
    }
}