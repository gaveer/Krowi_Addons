using System;

namespace DbManagerWPF.Model
{
    public class Event : IComparable<Event>, IEquatable<Event>
    {
        public int ID { get; set; } = -1;
        public string Title { get; set; } = "";
        public string Icon { get; set; } = "";
        public UIMap UIMap { get; set; } = null;
        public int TotalDuration { get; set; } = 0;

        public Event() { }

        public override string ToString()
        {
            return $"{Title}";
        }

        #region IComparable
        public int CompareTo(Event other)
        {
            if (other is null)
                return 1; // All instances are greater than null

            return ID.CompareTo(other.ID);
        }
        #endregion

        #region IEquatable
        public bool Equals(Event other)
        {
            return ID == other?.ID;
        }

        public override bool Equals(object obj)
        {
            if (ReferenceEquals(this, obj))
                return true;

            if (obj is not Event other)
                return false;

            return Equals(other);
        }

        public override int GetHashCode()
        {
            return ID.GetHashCode();
        }

        public static bool operator ==(Event left, Event right)
        {
            if (left is null)
                return right is null;

            return left.Equals(right);
        }

        public static bool operator !=(Event left, Event right)
        {
            return !(left == right);
        }

        public static bool operator <(Event left, Event right)
        {
            return left is null ? right is not null : left.CompareTo(right) < 0;
        }

        public static bool operator <=(Event left, Event right)
        {
            return left is null || left.CompareTo(right) <= 0;
        }

        public static bool operator >(Event left, Event right)
        {
            return left is not null && left.CompareTo(right) > 0;
        }

        public static bool operator >=(Event left, Event right)
        {
            return left is null ? right is null : left.CompareTo(right) >= 0;
        }
        #endregion
    }
}