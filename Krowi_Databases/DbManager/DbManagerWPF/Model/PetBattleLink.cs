using System;

namespace DbManagerWPF.Model
{
    public class PetBattleLink : IComparable<PetBattleLink>, IEquatable<PetBattleLink>
    {
        public string ID { get; set; }
        public int CriteriaNumber { get; set; }
        public string Name { get; set; }
        public PetBattleLink Parent { get; set; }
        public PetFamily Family { get; set; }
        public string ExternalLink { get; set; }

        public PetBattleLink() { }

        public override string ToString()
        {
            return $"{ID} - {CriteriaNumber} - {Name} - {ExternalLink}";
        }

        #region IComparable
        public int CompareTo(PetBattleLink other)
        {
            if (other is null)
                return 1; // All instances are greater than null

            return ID.CompareTo(other.ID);
        }
        #endregion

        #region IEquatable
        public bool Equals(PetBattleLink other)
        {
            return ID == other?.ID;
        }

        public override bool Equals(object obj)
        {
            if (ReferenceEquals(this, obj))
                return true;

            if (obj is not PetBattleLink other)
                return false;

            return Equals(other);
        }

        public override int GetHashCode()
        {
            return ID.GetHashCode();
        }

        public static bool operator ==(PetBattleLink left, PetBattleLink right)
        {
            if (left is null)
                return right is null;

            return left.Equals(right);
        }

        public static bool operator !=(PetBattleLink left, PetBattleLink right)
        {
            return !(left == right);
        }

        public static bool operator <(PetBattleLink left, PetBattleLink right)
        {
            return left is null ? right is not null : left.CompareTo(right) < 0;
        }

        public static bool operator <=(PetBattleLink left, PetBattleLink right)
        {
            return left is null || left.CompareTo(right) <= 0;
        }

        public static bool operator >(PetBattleLink left, PetBattleLink right)
        {
            return left is not null && left.CompareTo(right) > 0;
        }

        public static bool operator >=(PetBattleLink left, PetBattleLink right)
        {
            return left is null ? right is null : left.CompareTo(right) >= 0;
        }
        #endregion
    }
}