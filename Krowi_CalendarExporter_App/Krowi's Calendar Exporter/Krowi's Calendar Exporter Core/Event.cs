using System;

namespace Krowi_Calendar_Exporter_Core
{
    public class Event : IEquatable<Event>
    {
        public string Title { get; }
        public DateTime StartTime { get; }
        public DateTime EndTime { get; }
        public string RunTime
        {
            get
            {
                return $"{StartTime.ToString("yyyy-MM-dd HH:mm")} - {EndTime.ToString("yyyy-MM-dd HH:mm")}";
            }
        }

        public Event(string title, DateTime startTime, DateTime endTime)
        {
            Title = title;
            StartTime = startTime;
            EndTime = endTime;
        }

        public bool Equals(Event other)
        {
            return Title == other.Title && RunTime == other.RunTime;
        }

        public override int GetHashCode()
        {
            return Title.GetHashCode() ^ RunTime.GetHashCode();
        }
    }
}