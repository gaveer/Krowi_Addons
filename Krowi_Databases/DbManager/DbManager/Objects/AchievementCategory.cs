using System;
using System.Collections.Generic;

namespace DbManager.Objects
{
    public class AchievementCategory : IComparable<AchievementCategory>, IEquatable<AchievementCategory>
    {
        public int ID { get; }
        public int Location { get; set; }
        public string Name { get; }
        public AchievementCategory Parent { get; set; }
        public Function Function { get; }
        public string FunctionValue { get; }
        public bool Legacy { get; }
        public List<Achievement> Achievements { get; }
        public bool IgnoreParentMapIDs { get; }
        public List<int> MapIDs { get; set; }
        public bool Active { get; set; }
        public bool CanMerge { get; set; }
        public List<AchievementCategory> Children { get; }

        public AchievementCategory(int id, int location, string name, AchievementCategory parent, Function function, string functionValue, bool legacy, bool ignoreParentMapIDs, bool active, bool canMerge, List<int> uiMapID = null)
        {
            ID = id;
            Location = location;
            Name = name;
            Parent = parent;
            Function = function;
            FunctionValue = functionValue;
            Legacy = legacy;
            Achievements = new List<Achievement>();
            IgnoreParentMapIDs = ignoreParentMapIDs;
            MapIDs = uiMapID ?? new List<int>();
            Active = active;
            CanMerge = canMerge;
            Children = new List<AchievementCategory>();
            parent?.Children.Add(this);
        }

        public override string ToString()
        {
            if (ID > 0)
                return $"{ID} - {Name}{(Active ? "" : " - INACTIVE")}{(CanMerge ? " - CAN MERGE" : "")}";
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
