using System;

namespace DbManagerWPF.Model
{
    public class XuFuEncounter : IComparable<XuFuEncounter>, IEquatable<XuFuEncounter>
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public PetFamily Family { get; set; }
        public string Section { get; set; }


        public XuFuEncounter() { }

        public override string ToString()
        {
            return $"{ID} - {Name} - {Family} - {Section}";
        }

        #region IComparable
        public int CompareTo(XuFuEncounter other)
        {
            if (other is null)
                return 1; // All instances are greater than null

            return ID.CompareTo(other.ID);
        }
        #endregion

        #region IEquatable
        public bool Equals(XuFuEncounter other)
        {
            return ID == other?.ID;
        }

        public override bool Equals(object obj)
        {
            if (ReferenceEquals(this, obj))
                return true;

            if (obj is not XuFuEncounter other)
                return false;

            return Equals(other);
        }

        public override int GetHashCode()
        {
            return ID.GetHashCode();
        }

        public static bool operator ==(XuFuEncounter left, XuFuEncounter right)
        {
            if (left is null)
                return right is null;

            return left.Equals(right);
        }

        public static bool operator !=(XuFuEncounter left, XuFuEncounter right)
        {
            return !(left == right);
        }

        public static bool operator <(XuFuEncounter left, XuFuEncounter right)
        {
            return left is null ? right is not null : left.CompareTo(right) < 0;
        }

        public static bool operator <=(XuFuEncounter left, XuFuEncounter right)
        {
            return left is null || left.CompareTo(right) <= 0;
        }

        public static bool operator >(XuFuEncounter left, XuFuEncounter right)
        {
            return left is not null && left.CompareTo(right) > 0;
        }

        public static bool operator >=(XuFuEncounter left, XuFuEncounter right)
        {
            return left is null ? right is null : left.CompareTo(right) >= 0;
        }
        #endregion
    }
}
