using DbManager.Objects;
using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;

namespace DbManager.DataManagers
{
    public class XuFuEncounterDataManager : DataManagerBase
    {
        public XuFuEncounterDataManager(SqliteConnection connection) : base(connection) { }

        public void Add(XuFuEncounter xuFuEncounter)
        {
            _ = xuFuEncounter ?? throw new ArgumentNullException(nameof(xuFuEncounter));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "INSERT OR REPLACE INTO XuFuEncounter (ID, Name, PetFamilyID, Section) VALUES (@ID, @Name, @PetFamilyID, @Section)";
            cmd.Parameters.AddWithValue("@ID", xuFuEncounter.ID);
            cmd.Parameters.AddWithValue("@Name", xuFuEncounter.Name);
            cmd.Parameters.AddWithValue("@PetFamilyID", (int)xuFuEncounter.Family);
            cmd.Parameters.AddWithValue("@Section", xuFuEncounter.Section);


            cmd.ExecuteNonQuery();
        }

        public List<XuFuEncounter> GetMatches(PetBattleLink achievementCriteria)
        {
            _ = achievementCriteria ?? throw new ArgumentNullException(nameof(achievementCriteria));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "SELECT ID, Name, PetFamilyID, Section FROM XuFuEncounter WHERE Name = @Name and PetFamilyID = @PetFamilyID";
            cmd.Parameters.AddWithValue("@Name", achievementCriteria.Name);
            cmd.Parameters.AddWithValue("@PetFamilyID", (int)achievementCriteria.Family);

            List<XuFuEncounter> output = new List<XuFuEncounter>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    output.Add(new XuFuEncounter(reader.GetInt32(0), reader.GetString(1), (PetFamily)reader.GetInt32(2), reader.GetString(3)));

            return output;
        }
    }
}