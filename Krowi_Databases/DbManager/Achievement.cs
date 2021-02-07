using System;
using Microsoft.Data.Sqlite;

namespace DbManager
{
    public class Achievement
    {
        public int ID { get; set; }
        public bool Obtainable { get; set; }
        public bool HasWowheadLink { get; set; }
        public bool HasIATLink { get; set; }

        public Achievement(int id, bool obtainable = true, bool hasWowheadLink = true, bool hasIATLink = false)
        {
            ID = id;
            Obtainable = obtainable;
            HasWowheadLink = hasWowheadLink;
            HasIATLink = hasIATLink;
        }
    }
}