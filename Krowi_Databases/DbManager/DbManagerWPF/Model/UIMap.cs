using System;
using System.Collections.Generic;

namespace DbManagerWPF.Model
{
    public class UIMap : IComparable<UIMap>, IEquatable<UIMap>
    {
        public int ID { get; set; } = -1;
        public string Name { get; set; } = "";
        public string Comment { get; set; } = "";
        public UIMap Parent { get; set; } = null;
        public List<UIMap> Children { get; set; } = new List<UIMap>();

        public UIMap() { }

        public override string ToString()
        {
            return $"{ID} - {Name} - {Comment}";
        }

        #region IComparable
        public int CompareTo(UIMap other)
        {
            if (other is null)
                return 1; // All instances are greater than null

            return ID.CompareTo(other.ID);
        }
        #endregion

        #region IEquatable
        public bool Equals(UIMap other)
        {
            return ID == other?.ID;
        }

        public override bool Equals(object obj)
        {
            if (ReferenceEquals(this, obj))
                return true;

            if (obj is not UIMap other)
                return false;

            return Equals(other);
        }

        public override int GetHashCode()
        {
            return ID.GetHashCode();
        }

        public static bool operator ==(UIMap left, UIMap right)
        {
            if (left is null)
                return right is null;

            return left.Equals(right);
        }

        public static bool operator !=(UIMap left, UIMap right)
        {
            return !(left == right);
        }

        public static bool operator <(UIMap left, UIMap right)
        {
            return left is null ? right is not null : left.CompareTo(right) < 0;
        }

        public static bool operator <=(UIMap left, UIMap right)
        {
            return left is null || left.CompareTo(right) <= 0;
        }

        public static bool operator >(UIMap left, UIMap right)
        {
            return left is not null && left.CompareTo(right) > 0;
        }

        public static bool operator >=(UIMap left, UIMap right)
        {
            return left is null ? right is null : left.CompareTo(right) >= 0;
        }
        #endregion
    }
}
