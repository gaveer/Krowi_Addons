using System;

namespace DbManagerWPF.Model
{
    public class Function : IComparable<Function>, IEquatable<Function>
    {
        public int ID { get; set; } = -1;
        public string Call { get; set; } = "";
        public string Description { get; set; } = "";

        public Function() { }

        public override string ToString()
        {
            return $"{Description}";
        }

        #region IComparable
        public int CompareTo(Function other)
        {
            if (other is null)
                return 1; // All instances are greater than null

            return ID.CompareTo(other.ID);
        }
        #endregion

        #region IEquatable
        public bool Equals(Function other)
        {
            return ID == other?.ID;
        }

        public override bool Equals(object obj)
        {
            if (ReferenceEquals(this, obj))
                return true;

            if (obj is not Function other)
                return false;

            return Equals(other);
        }

        public override int GetHashCode()
        {
            return ID.GetHashCode();
        }

        public static bool operator ==(Function left, Function right)
        {
            if (left is null)
                return right is null;

            return left.Equals(right);
        }

        public static bool operator !=(Function left, Function right)
        {
            return !(left == right);
        }

        public static bool operator <(Function left, Function right)
        {
            return left is null ? right is not null : left.CompareTo(right) < 0;
        }

        public static bool operator <=(Function left, Function right)
        {
            return left is null || left.CompareTo(right) <= 0;
        }

        public static bool operator >(Function left, Function right)
        {
            return left is not null && left.CompareTo(right) > 0;
        }

        public static bool operator >=(Function left, Function right)
        {
            return left is null ? right is null : left.CompareTo(right) >= 0;
        }
        #endregion
    }
}