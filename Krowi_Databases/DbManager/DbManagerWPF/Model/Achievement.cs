using DbManagerWPF.DataManager;
using System;
using System.Collections.Generic;
using System.Linq;

namespace DbManagerWPF.Model
{
    public class Achievement : IComparable<Achievement>, IEquatable<Achievement>
    {
        private readonly IUIMapDM uiMapDM;
        private List<UIMap> uiMaps = new();

        public int ID { get; set; }
        public int Location { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public Faction Faction { get; set; }
        public Covenant Covenant { get; set; }
        public int Points { get; set; }
        public AchievementFlags Flags { get; set; }
        public bool Obtainable { get; set; }
        public bool WowheadLink { get; set; }

        public Achievement(IUIMapDM uiMapDM)
        {
            this.uiMapDM = uiMapDM;
        }

        public IEnumerable<UIMap> GetUIMaps(bool refresh = false)
        {
            if (!refresh)
                if (uiMaps.Any())
                    return uiMaps;

            uiMaps.Clear();

            var foundUIMaps = uiMapDM.GetWithAchievement(this);
            foreach (var uiMap in foundUIMaps)
                uiMaps.Add(uiMapDM.GetAll().Find(uiMap.ID));

            return uiMaps;
        }

        public void SetUIMaps(IEnumerable<UIMap> uiMaps)
        {
            this.uiMaps = uiMaps.ToList();
        }

        public override string ToString()
        {
            var faction = "";
            switch (Faction)
            {
                case Faction.Alliance:
                case Faction.Horde:
                    faction = $" - {Faction}";
                    break;
            }

            var covenant = "";
            switch (Covenant)
            {
                case Covenant.Kyrian:
                case Covenant.Venthyr:
                case Covenant.NightFae:
                case Covenant.Necrolord:
                    covenant = $" - {Covenant}";
                    break;
            }

            return $"{Location} - {Name} ({ID}) - (P-{Points}){faction}{covenant}{(Obtainable ? "" : " - NOT OBTAINABLE")}{(WowheadLink ? "" : " - NO WOWHEAD LINK")}";
        }

        #region IComparable
        public int CompareTo(Achievement other)
        {
            if (other is null)
                return 1; // All instances are greater than null

            return ID.CompareTo(other.ID);
        }
        #endregion

        #region IEquatable
        public bool Equals(Achievement other)
        {
            return ID == other?.ID;
        }

        public override bool Equals(object obj)
        {
            if (ReferenceEquals(this, obj))
                return true;

            if (obj is not Achievement other)
                return false;

            return Equals(other);
        }

        public override int GetHashCode()
        {
            return ID.GetHashCode();
        }

        public static bool operator ==(Achievement left, Achievement right)
        {
            if (left is null)
                return right is null;

            return left.Equals(right);
        }

        public static bool operator !=(Achievement left, Achievement right)
        {
            return !(left == right);
        }

        public static bool operator <(Achievement left, Achievement right)
        {
            return left is null ? right is not null : left.CompareTo(right) < 0;
        }

        public static bool operator <=(Achievement left, Achievement right)
        {
            return left is null || left.CompareTo(right) <= 0;
        }

        public static bool operator >(Achievement left, Achievement right)
        {
            return left is not null && left.CompareTo(right) > 0;
        }

        public static bool operator >=(Achievement left, Achievement right)
        {
            return left is null ? right is null : left.CompareTo(right) >= 0;
        }
        #endregion
    }
}