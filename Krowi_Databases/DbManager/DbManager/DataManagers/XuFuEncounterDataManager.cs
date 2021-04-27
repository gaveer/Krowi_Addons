using DbManager.Objects;
using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;

namespace DbManager.DataManagers
{
    public class XuFuEncounterDataManager : DataManagerBase
    {
        public XuFuEncounterDataManager(SqliteConnection connection) : base(connection) { }

        public void Update(XuFuEncounter xuFuEncounter)
        {
            _ = xuFuEncounter.ID <= 0 ? throw new ArgumentException("Should be greater than 0", nameof(xuFuEncounter.ID)) : "";
            _ = xuFuEncounter.Name ?? throw new ArgumentNullException(nameof(xuFuEncounter.Name));
            //_ = family ?? throw new ArgumentNullException(nameof(family));
            _ = xuFuEncounter.Section ?? throw new ArgumentNullException(nameof(xuFuEncounter.Section));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"INSERT OR REPLACE INTO XuFuEncounter_AGT VALUES (@ID, @Name, @PetFamilyID, @Section,
	                                CASE WHEN (SELECT COUNT(*) FROM XuFuEncounter_AGT WHERE ID = @ID) > 0 THEN
		                                (SELECT DateAdded FROM XuFuEncounter_AGT WHERE ID = @ID) ELSE DATETIME('now', 'localtime')
	                                END,
	                                CASE WHEN ((SELECT Name FROM XuFuEncounter_AGT WHERE ID = @ID) = @Name)
		                                        AND ((SELECT PetFamilyID FROM XuFuEncounter_AGT WHERE ID = @ID) = @PetFamilyID)
		                                        AND ((SELECT Section FROM XuFuEncounter_AGT WHERE ID = @ID) = @Section) THEN
		                                (SELECT DateChanged FROM XuFuEncounter_AGT WHERE ID = @ID) ELSE DATETIME('now', 'localtime')
	                                END,
	                                CASE WHEN (SELECT Name FROM XuFuEncounter_AGT WHERE ID = @ID) != @Name THEN
		                                (SELECT Name FROM XuFuEncounter_AGT WHERE ID = @ID) ELSE (SELECT OldName FROM XuFuEncounter_AGT WHERE ID = @ID)
	                                END,
	                                CASE WHEN (SELECT PetFamilyID FROM XuFuEncounter_AGT WHERE ID = @ID) != @PetFamilyID THEN
		                                (SELECT PetFamilyID FROM XuFuEncounter_AGT WHERE ID = @ID) ELSE (SELECT OldPetFamilyID FROM XuFuEncounter_AGT WHERE ID = @ID)
	                                END,
	                                CASE WHEN (SELECT Section FROM XuFuEncounter_AGT WHERE ID = @ID) != @Section THEN
		                                (SELECT Section FROM XuFuEncounter_AGT WHERE ID = @ID) ELSE (SELECT OldSection FROM XuFuEncounter_AGT WHERE ID = @ID)
	                                END);";
            cmd.Parameters.AddWithValue("@ID", xuFuEncounter.ID);
            cmd.Parameters.AddWithValue("@Name", xuFuEncounter.Name);
            cmd.Parameters.AddWithValue("@PetFamilyID", (int)xuFuEncounter.Family);
            cmd.Parameters.AddWithValue("@Section", xuFuEncounter.Section);

            cmd.ExecuteNonQuery();
        }

        public List<XuFuEncounter> GetMatches(PetBattleLink petBattleLink)
        {
            _ = petBattleLink ?? throw new ArgumentNullException(nameof(petBattleLink));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "SELECT ID, Name, PetFamilyID, Section FROM XuFuEncounter_AGT WHERE Name = @Name and PetFamilyID = @PetFamilyID";
            cmd.Parameters.AddWithValue("@Name", petBattleLink.Name);
            cmd.Parameters.AddWithValue("@PetFamilyID", (int)petBattleLink.Family);

            List<XuFuEncounter> output = new List<XuFuEncounter>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    output.Add(new XuFuEncounter(reader.GetInt32(0), reader.GetString(1), (PetFamily)reader.GetInt32(2), reader.GetString(3)));

            return output;
        }
    }
}