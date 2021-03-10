using DbManager.Objects;
using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;

namespace DbManager.DataManagers
{
    public class PetBattleLinksDataManager
    {
        private SqliteConnection connection;

        public PetBattleLinksDataManager(SqliteConnection connection)
        {
            this.connection = connection;
        }

        public void Add(PetBattleLink petBattleLink, Achievement achievement)
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));
            _ = petBattleLink ?? throw new ArgumentNullException(nameof(petBattleLink));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "INSERT OR REPLACE INTO PetBattleLinks (ID, AchievementID, CriteriaNum, Name, ParentID, ExternalLink, PetFamilyID) VALUES(@ID, @AchievementID, @CriteriaNum, @Name, @ParentID, @ExternalLink, @PetFamilyID);";
            cmd.Parameters.AddWithValue("@ID", petBattleLink.ID);
            cmd.Parameters.AddWithValue("@AchievementID", achievement == null ? DBNull.Value : achievement.ID);
            cmd.Parameters.AddWithValue("@CriteriaNum", petBattleLink.CriteriaNumber);
            cmd.Parameters.AddWithValue("@Name", petBattleLink.Name);
            cmd.Parameters.AddWithValue("@ParentID", petBattleLink.Parent == null ? DBNull.Value : petBattleLink.Parent.ID);
            cmd.Parameters.AddWithValue("@ExternalLink", string.IsNullOrEmpty(petBattleLink.ExternalLink) ? DBNull.Value : petBattleLink.ExternalLink);
            cmd.Parameters.AddWithValue("@PetFamilyID", (int)petBattleLink.Family);

            cmd.ExecuteNonQuery();
        }

        public PetBattleLink GetWithID(string ID)
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "SELECT ID, CriteriaNum, Name, ParentID, ExternalLink, PetFamilyID FROM PetBattleLinks WHERE ID = @ID ORDER BY CriteriaNum";
            cmd.Parameters.AddWithValue("@ID", ID);

            PetBattleLink output = null;
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    output = new PetBattleLink(reader.GetString(0), reader.GetInt32(1), reader.GetString(2), reader.IsDBNull(3) ? null : GetWithID(reader.GetString(3)), reader.IsDBNull(4) ? null : reader.GetString(4), reader.IsDBNull(5) ? PetFamily.Undefined : (PetFamily)reader.GetInt32(5));

            return output;
        }

        public List<PetBattleLink> GetWithParentID(string parentID)
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "SELECT ID, CriteriaNum, Name, ParentID, ExternalLink, PetFamilyID FROM PetBattleLinks WHERE ParentID = @ParentID ORDER BY CriteriaNum";
            cmd.Parameters.AddWithValue("@ParentID", parentID);

            List<PetBattleLink> output = new List<PetBattleLink>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    output.Add(new PetBattleLink(reader.GetString(0), reader.GetInt32(1), reader.GetString(2), reader.IsDBNull(3) ? null : GetWithID(reader.GetString(3)), reader.IsDBNull(4) ? null : reader.GetString(4), reader.IsDBNull(5) ? PetFamily.Undefined : (PetFamily)reader.GetInt32(5)));

            return output;
        }

        public List<PetBattleLink> GetWithAchievementID(int achievementID)
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "SELECT ID, CriteriaNum, Name, ParentID, ExternalLink, PetFamilyID FROM PetBattleLinks WHERE AchievementID = @AchievementID ORDER BY CriteriaNum";
            cmd.Parameters.AddWithValue("@AchievementID", achievementID);

            List<PetBattleLink> output = new List<PetBattleLink>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    output.Add(new PetBattleLink(reader.GetString(0), reader.GetInt32(1), reader.GetString(2), reader.IsDBNull(3) ? null : GetWithID(reader.GetString(3)), reader.IsDBNull(4) ? null : reader.GetString(4), reader.IsDBNull(5) ? PetFamily.Undefined : (PetFamily)reader.GetInt32(5)));

            return output;
        }

        public void UpdateExternalLink(PetBattleLink achievementCriteria)
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));
            _ = achievementCriteria ?? throw new ArgumentNullException(nameof(achievementCriteria));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "UPDATE PetBattleLinks SET ExternalLink = @ExternalLink WHERE ID = @ID;";
            cmd.Parameters.AddWithValue("@ID", achievementCriteria.ID);
            cmd.Parameters.AddWithValue("@ExternalLink", string.IsNullOrEmpty(achievementCriteria.ExternalLink) ? DBNull.Value : achievementCriteria.ExternalLink);

            cmd.ExecuteNonQuery();
        }
    }
}
