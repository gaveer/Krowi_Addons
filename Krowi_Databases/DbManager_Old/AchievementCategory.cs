using System;
using Microsoft.Data.Sqlite;
using System.Collections.Generic;

namespace DbManager
{
    public class AchievementCategory
    {
        public int ID { get; set; }
        public string Location { get; set; }
        public string Name { get; set; }
        public AchievementCategory Parent { get; set; }
        public Function Function { get; set; }
        public int FunctionValue { get; set; }
        public List<Achievement> Achievements {get; set; }

        public AchievementCategory(int id, string location, string name, Function function, int functionValue, AchievementCategory parent = null)
        {
            ID = id;
            Location = location;
            Name = name;
            Parent = parent;
            Function = function;
            FunctionValue = functionValue;
            Achievements = new List<Achievement>();
        }

        public void AddAchievement(int id)
        {
            Achievements.Add(new Achievement(id));
        }

        public string GetParentNames()
        {
            string val = null;
            if (Parent != null)
            {
                val = Parent.GetParentNames();
                val = $"{Parent.Name} - {val}";
            }

            return val;
        }

        public override string ToString()
        {
            return $"{ID} - {Name} - {GetParentNames()}";
        }
    }
}