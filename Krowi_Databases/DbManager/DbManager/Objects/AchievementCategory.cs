using System;
using System.Collections.Generic;

namespace DbManager.Objects
{
    public class AchievementCategory : IComparable<AchievementCategory>, IEquatable<AchievementCategory>
    {
        public int ID { get; set; }
        public int Location { get; set; }
        public string Name { get; set; }
        public bool IsLegacy { get; set; }
        public AchievementCategory Parent { get; set; }
        public Function Function { get; set; }
        public int FunctionValue { get; set; }
        public List<Achievement> Achievements { get; set; }
        public List<int> MapIDs { get; set; }

        public AchievementCategory(int id, int location, string name, Function function, int functionValue, AchievementCategory parent = null, bool isLegacy = false, List<int> uiMapID = null)
        {
            ID = id;
            Location = location;
            Name = name;
            IsLegacy = isLegacy;
            Parent = parent;
            Function = function;
            FunctionValue = functionValue;
            Achievements = new List<Achievement>();
            MapIDs = uiMapID ?? new List<int>();
        }

        public string GetParentNames()
        {
            string val = null;
            if (Parent != null)
            {
                val = Parent.GetParentNames();
                if (val == null)
                    val = $"{Parent.Name}";
                else
                    val = $"{Parent.Name} - {val}";
            }

            return val;
        }

        public override string ToString()
        {
            if (ID > 0)
            {
                var parentNames = GetParentNames();
                return $"{ID} - {Name}{(string.IsNullOrEmpty(parentNames) ? "" : $" - {parentNames}")}";
            }
            else
                return "";
        }

        public int CompareTo(AchievementCategory other)
        {
            return ID.CompareTo(other);
        }

        public bool Equals(AchievementCategory other)
        {
            return ID == other?.ID;
        }
    }
}
