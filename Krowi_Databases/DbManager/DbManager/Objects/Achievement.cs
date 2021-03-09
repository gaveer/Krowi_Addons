using System;

namespace DbManager.Objects
{
    public class Achievement
    {
        public int ID { get; set; }
        public Faction Faction { get; set; }
        public Covenant Covenant { get; set; }
        public int Location { get; set; }
        public bool Obtainable { get; set; }
        public bool HasWowheadLink { get; set; }

        public Achievement(int id, Faction faction, Covenant covenant, int location, bool obtainable = true, bool hasWowheadLink = true)
        {
            ID = id;
            Faction = faction;
            Covenant = covenant;
            Location = location;
            Obtainable = obtainable;
            HasWowheadLink = hasWowheadLink;
        }

        public override string ToString()
        {
            return $"{ID} - {Enum.GetName(typeof(Faction), Faction)}{(Covenant != Covenant.NoCovenant ? $" - {Covenant}" : "")}{(Obtainable ? " - Obtainable" : "")}{(HasWowheadLink ? " - Wowhead" : "")}";
        }
    }
}