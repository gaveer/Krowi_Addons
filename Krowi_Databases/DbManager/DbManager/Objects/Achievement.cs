using System;

namespace DbManager.Objects
{
    public class Achievement
    {
        public int ID { get; }
        public string Name { get; }
        public string Description { get; }
        public Faction Faction { get; }
        public int Points { get; }
        public Covenant Covenant { get; }
        public AchievementFlags Flags { get; }
        public int Location { get; }
        public bool Obtainable { get; }
        public bool HasWowheadLink { get; }

        public Achievement(int id, Faction faction, Covenant covenant, bool obtainable, bool hasWowheadLink, int location) : this(id, null, null, faction, -1, covenant, AchievementFlags.NO_FLAGS, obtainable, hasWowheadLink, location) { }

        public Achievement(int id, string name, string description, Faction faction, int points, Covenant covenant, AchievementFlags flags) : this(id, name, description, faction, points, covenant, flags, true, true, -1) { }

        public Achievement(int id, string name, string description, Faction faction, int points, Covenant covenant, AchievementFlags flags, bool obtainable, bool hasWowheadLink, int location)
        {
            ID = id;
            Name = name;
            Description = description;
            Faction = faction;
            Points = points;
            Covenant = covenant;
            Flags = flags;
            Obtainable = obtainable;
            HasWowheadLink = hasWowheadLink;
            Location = location;
        }

        public override string ToString()
        {
            return $"{ID} - {Enum.GetName(typeof(Faction), Faction)}{(Covenant != Covenant.NoCovenant ? $" - {Covenant}" : "")}{(Obtainable ? " - Obtainable" : "")}{(HasWowheadLink ? " - Wowhead" : "")}";
        }
    }
}