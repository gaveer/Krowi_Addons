using DbManagerWPF.DataManager;
using System;
using System.Collections.Generic;
using System.Linq;

namespace DbManagerWPF.Model
{
    public class Category : IComparable<Category>, IEquatable<Category>
    {
        private readonly IAchievementDM achievementDM;
        private readonly IUIMapDM uiMapDM;
        private IEnumerable<Achievement> achievements;
        private List<UIMap> uiMaps = new();

        public int ID { get; set; } = -1;
        public int Location { get; set; } = -1;
        public string Name { get; set; } = "";
        public Category Parent { get; set; } = null;
        public Function Function { get; set; } = null;
        public string FunctionValue { get; set; } = "";
        public bool IsLegacy { get; set; } = false;
        public bool IsActive { get; set; } = true;
        public bool CanMerge { get; set; } = false;
        public List<Category> Children { get; set; } = new List<Category>();

        public Category(IAchievementDM achievementDM, IUIMapDM uiMapDM)
        {
            this.achievementDM = achievementDM;
            this.uiMapDM = uiMapDM;
        }

        public IEnumerable<Achievement> GetAchievements()
        {
            if (achievements != null)
                return achievements;

            return achievementDM.GetWithCategory(this);
        }

        public void SetAchievements(IEnumerable<Achievement> achievements)
        {
            this.achievements = achievements;
        }

        public IEnumerable<UIMap> GetUIMaps(bool refresh = false)
        {
            if (!refresh)
                if (uiMaps.Any())
                    return uiMaps;

            uiMaps.Clear();

            var foundUIMaps = uiMapDM.GetWithCategory(this);
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
            return $"{Location} - {Name}{(IsLegacy ? " (Legacy)" : "")} ({ID}){(IsActive ? "" : " - INACTIVE")}{(CanMerge ? " - CAN MERGE" : "")}";
        }

        #region IComparable
        public int CompareTo(Category other)
        {
            if (other is null)
                return 1; // All instances are greater than null

            return ID.CompareTo(other.ID);
        }
        #endregion

        #region IEquatable
        public bool Equals(Category other)
        {
            return ID == other?.ID;
        }

        public override bool Equals(object obj)
        {
            if (ReferenceEquals(this, obj))
                return true;

            if (obj is not Category other)
                return false;

            return Equals(other);
        }

        public override int GetHashCode()
        {
            return ID.GetHashCode();
        }

        public static bool operator ==(Category left, Category right)
        {
            if (left is null)
                return right is null;

            return left.Equals(right);
        }

        public static bool operator !=(Category left, Category right)
        {
            return !(left == right);
        }

        public static bool operator <(Category left, Category right)
        {
            return left is null ? right is not null : left.CompareTo(right) < 0;
        }

        public static bool operator <=(Category left, Category right)
        {
            return left is null || left.CompareTo(right) <= 0;
        }

        public static bool operator >(Category left, Category right)
        {
            return left is not null && left.CompareTo(right) > 0;
        }

        public static bool operator >=(Category left, Category right)
        {
            return left is null ? right is null : left.CompareTo(right) >= 0;
        }
        #endregion
    }
}
