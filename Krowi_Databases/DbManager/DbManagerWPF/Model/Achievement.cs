using System;

namespace DbManagerWPF.Model
{
    public class Achievement : IComparable<Achievement>, IEquatable<Achievement>
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public Faction Faction { get; set; }
        public int Points { get; set; }
        public Covenant Covenant { get; set; }
        //public AchievementFlags Flags { get; }
        public int Location { get; set; }
        public bool Obtainable { get; set; }
        public bool WowheadLink { get; set; }

        //public Achievement(int id, Faction faction, Covenant covenant, bool obtainable, bool hasWowheadLink, int location, string name) : this(id, name, null, faction, -1, covenant, AchievementFlags.NO_FLAGS, obtainable, hasWowheadLink, location) { }

        //public Achievement(int id, string name, string description, Faction faction, int points, Covenant covenant, AchievementFlags flags) : this(id, name, description, faction, points, covenant, flags, true, true, -1) { }

        //public Achievement(int id, string name, string description, Faction faction, int points, Covenant covenant, AchievementFlags flags, bool obtainable, bool hasWowheadLink, int location)
        //{
        //    ID = id;
        //    Name = name;
        //    Description = description;
        //    Faction = faction;
        //    Points = points;
        //    Covenant = covenant;
        //    Flags = flags;
        //    Obtainable = obtainable;
        //    HasWowheadLink = hasWowheadLink;
        //    Location = location;
        //}

        public Achievement() { }

        public override string ToString()
        {
            return $"{Location} - {Name} ({ID}) - {Enum.GetName(typeof(Faction), Faction)}{(Covenant != Covenant.NoCovenant ? $" - {Covenant}" : "")}{(Obtainable ? " - Obtainable" : "")}{(WowheadLink ? " - Wowhead" : "")}";
        }

        public int CompareTo(Achievement other)
        {
            return ID.CompareTo(other);
        }

        public bool Equals(Achievement other)
        {
            return ID == other?.ID;
        }
    }
}