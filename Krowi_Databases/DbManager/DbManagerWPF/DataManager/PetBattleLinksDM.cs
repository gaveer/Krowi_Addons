using DbManagerWPF.Model;
using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;

namespace DbManagerWPF.DataManager
{
    public class PetBattleLinksDM : DataManagerBase
    {
        public PetBattleLinksDM(SqliteConnection connection) : base(connection) { }

        public void UpdateAGT(PetBattleLink petBattleLink, Achievement achievement)
        {
            _ = petBattleLink ?? throw new ArgumentNullException(nameof(petBattleLink));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"INSERT OR REPLACE INTO PetBattleLinks VALUES (@ID, @AchievementID, @CriteriaNum, @Name, @ParentID, @PetFamilyID,
		                            (SELECT ExternalLink FROM PetBattleLinks WHERE ID = @ID),
	                                CASE WHEN (SELECT COUNT(*) FROM PetBattleLinks WHERE ID = @ID) > 0 THEN
		                                (SELECT DateAdded FROM PetBattleLinks WHERE ID = @ID) ELSE DATETIME('now', 'localtime')
	                                END,
	                                CASE WHEN ((SELECT AchievementID FROM PetBattleLinks WHERE ID = @ID) = @AchievementID)
		                                        AND ((SELECT CriteriaNum FROM PetBattleLinks WHERE ID = @ID) = @CriteriaNum)
		                                        AND ((SELECT Name FROM PetBattleLinks WHERE ID = @ID) = @Name)
		                                        AND ((SELECT ParentID FROM PetBattleLinks WHERE ID = @ID) = @ParentID)
		                                        AND ((SELECT PetFamilyID FROM PetBattleLinks WHERE ID = @ID) = @PetFamilyID) THEN
		                                (SELECT DateChanged FROM PetBattleLinks WHERE ID = @ID) ELSE DATETIME('now', 'localtime')
	                                END,
	                                CASE WHEN (SELECT AchievementID FROM PetBattleLinks WHERE ID = @ID) != @AchievementID THEN
		                                (SELECT AchievementID FROM PetBattleLinks WHERE ID = @ID) ELSE (SELECT OldAchievementID FROM PetBattleLinks WHERE ID = @ID)
	                                END,
	                                CASE WHEN (SELECT CriteriaNum FROM PetBattleLinks WHERE ID = @ID) != @CriteriaNum THEN
		                                (SELECT CriteriaNum FROM PetBattleLinks WHERE ID = @ID) ELSE (SELECT OldCriteriaNum FROM PetBattleLinks WHERE ID = @ID)
	                                END,
	                                CASE WHEN (SELECT Name FROM PetBattleLinks WHERE ID = @ID) != @Name THEN
		                                (SELECT Name FROM PetBattleLinks WHERE ID = @ID) ELSE (SELECT OldName FROM PetBattleLinks WHERE ID = @ID)
	                                END,
	                                CASE WHEN (SELECT ParentID FROM PetBattleLinks WHERE ID = @ID) != @ParentID THEN
		                                (SELECT ParentID FROM PetBattleLinks WHERE ID = @ID) ELSE (SELECT OldParentID FROM PetBattleLinks WHERE ID = @ID)
	                                END,
	                                CASE WHEN (SELECT PetFamilyID FROM PetBattleLinks WHERE ID = @ID) != @PetFamilyID THEN
		                                (SELECT PetFamilyID FROM PetBattleLinks WHERE ID = @ID) ELSE (SELECT OldPetFamilyID FROM PetBattleLinks WHERE ID = @ID)
	                                END,
                                    (SELECT OldExternalLink FROM PetBattleLinks WHERE ID = @ID));";
            cmd.Parameters.AddWithValue("@ID", petBattleLink.ID);
            cmd.Parameters.AddWithValue("@AchievementID", achievement == null ? DBNull.Value : achievement.ID);
            cmd.Parameters.AddWithValue("@CriteriaNum", petBattleLink.CriteriaNumber);
            cmd.Parameters.AddWithValue("@Name", petBattleLink.Name);
            cmd.Parameters.AddWithValue("@ParentID", petBattleLink.Parent == null ? DBNull.Value : petBattleLink.Parent.ID);
            cmd.Parameters.AddWithValue("@PetFamilyID", (int)petBattleLink.Family);

            cmd.ExecuteNonQuery();
        }

        public PetBattleLink GetWithID(string ID)
        {
            var cmd = connection.CreateCommand();
            cmd.CommandText = "SELECT ID, CriteriaNum, Name, ParentID, ExternalLink, PetFamilyID FROM PetBattleLinks WHERE ID = @ID ORDER BY CriteriaNum";
            cmd.Parameters.AddWithValue("@ID", ID);

            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    return new PetBattleLink()
                    {
                        ID = reader.GetString(0),
                        CriteriaNumber = reader.GetInt32(1),
                        Name = reader.GetString(2),
                        Parent = reader.IsDBNull(3) ? null : GetWithID(reader.GetString(3)),
                        ExternalLink = reader.IsDBNull(4) ? null : reader.GetString(4),
                        Family = reader.IsDBNull(5) ? PetFamily.Undefined : (PetFamily)reader.GetInt32(5)
                    };

            return null;
        }

        private List<PetBattleLink> Get(SqliteCommand cmd)
        {
            List<PetBattleLink> output = new List<PetBattleLink>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    output.Add(new PetBattleLink()
                    {
                        ID = reader.GetString(0),
                        CriteriaNumber = reader.GetInt32(1),
                        Name = reader.GetString(2),
                        Parent = reader.IsDBNull(3) ? null : GetWithID(reader.GetString(3)),
                        ExternalLink = reader.IsDBNull(4) ? null : reader.GetString(4),
                        Family = reader.IsDBNull(5) ? PetFamily.Undefined : (PetFamily)reader.GetInt32(5)
                    });

            return output;
        }

        public List<PetBattleLink> GetWithParentID(string parentID)
        {
            var cmd = connection.CreateCommand();
            cmd.CommandText = "SELECT ID, CriteriaNum, Name, ParentID, ExternalLink, PetFamilyID FROM PetBattleLinks WHERE ParentID = @ParentID ORDER BY CriteriaNum";
            cmd.Parameters.AddWithValue("@ParentID", parentID);

            return Get(cmd);
        }

        public List<PetBattleLink> GetWithAchievementID(int achievementID)
        {
            var cmd = connection.CreateCommand();
            cmd.CommandText = "SELECT ID, CriteriaNum, Name, ParentID, ExternalLink, PetFamilyID FROM PetBattleLinks WHERE AchievementID = @AchievementID ORDER BY CriteriaNum";
            cmd.Parameters.AddWithValue("@AchievementID", achievementID);

            return Get(cmd);
        }

        public void UpdateExternalLink(PetBattleLink petBattleLink)
        {
            _ = petBattleLink ?? throw new ArgumentNullException(nameof(petBattleLink));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"UPDATE PetBattleLinks
                                SET
                                    ExternalLink = @ExternalLink
                                    DateChanged = CASE WHEN (SELECT ExternalLink FROM PetBattleLinks WHERE ID = @ID) = @ExternalLink THEN
                                            (SELECT DateChanged FROM PetBattleLinks WHERE ID = @ID) ELSE DATETIME('now', 'localtime')
	                                    END,
	                                OldExternalLink = CASE WHEN (SELECT ExternalLink FROM PetBattleLinks WHERE ID = @ID) != @ExternalLink THEN
		                                    (SELECT ExternalLink FROM PetBattleLinks WHERE ID = @ID) ELSE (SELECT OldExternalLink FROM PetBattleLinks WHERE ID = @ID)
	                                    END,
                                WHERE
                                    ID = @ID;";
            cmd.Parameters.AddWithValue("@ID", petBattleLink.ID);
            cmd.Parameters.AddWithValue("@ExternalLink", string.IsNullOrEmpty(petBattleLink.ExternalLink) ? DBNull.Value : petBattleLink.ExternalLink);

            cmd.ExecuteNonQuery();
        }
    }
}
