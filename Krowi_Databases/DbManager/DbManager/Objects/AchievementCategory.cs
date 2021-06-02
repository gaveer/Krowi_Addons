using System;
using System.Collections.Generic;

namespace DbManager.Objects
{
    public class AchievementCategory : IComparable<AchievementCategory>, IEquatable<AchievementCategory>
    {
        public int ID { get; set; } = -1;
        public int Location { get; set; } = -1;
        public string Name { get; set; } = "";
        public AchievementCategory Parent { get; set; } = null;
        public Function Function { get; set; } = null;
        public string FunctionValue { get; set; } = "";
        public bool Legacy { get; set; } = false;
        public bool Active { get; set; } = true;
        public bool CanMerge { get; set; } = false;
        public List<Achievement> Achievements { get; set; } = new List<Achievement>();
        public List<AchievementCategory> Children { get; set; } = new List<AchievementCategory>();

        public AchievementCategory() { }

        //public AchievementCategory(int id, int location, string name, AchievementCategory parent, Function function, string functionValue, bool legacy, bool ignoreParentMapIDs, bool active, bool canMerge)
        //{
        //    ID = id;
        //    Location = location;
        //    Name = name;
        //    Parent = parent;
        //    Function = function;
        //    FunctionValue = functionValue;
        //    Legacy = legacy;
        //    Active = active;
        //    CanMerge = canMerge;
        //    Achievements = new List<Achievement>();
        //    Children = new List<AchievementCategory>();
        //    parent?.Children.Add(this);
        //}

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
