using System;
using System.Collections.Generic;

namespace DbManagerWPF.Model
{
    public class Category : IComparable<Category>, IEquatable<Category>
    {
        public int ID { get; set; } = -1;
        public int Location { get; set; } = -1;
        public string Name { get; set; } = "";
        public Category Parent { get; set; } = null;
        public Function Function { get; set; } = null;
        public string FunctionValue { get; set; } = "";
        public bool IsLegacy { get; set; } = false;
        public bool IsActive { get; set; } = true;
        public bool CanMerge { get; set; } = false;
        public List<Achievement> Achievements { get; set; } = new List<Achievement>();
        public List<Category> Children { get; set; } = new List<Category>();

        public Category() { }

        public override string ToString()
        {
            if (ID > 0)
                return $"{Location} - {Name}{(IsLegacy ? " (Legacy)" : "")} ({ID}){(IsActive ? "" : " - INACTIVE")}{(CanMerge ? " - CAN MERGE" : "")}";
            else
                return "";
        }

        public int CompareTo(Category other)
        {
            return ID.CompareTo(other);
        }

        public bool Equals(Category other)
        {
            return ID == other?.ID;
        }
    }
}
