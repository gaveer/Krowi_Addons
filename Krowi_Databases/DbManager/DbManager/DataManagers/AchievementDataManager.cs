using DbManager.Objects;
using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.Text;

namespace DbManager.DataManagers
{
    public class AchievementDataManager : DataManagerBase
    {
        public AchievementDataManager(SqliteConnection connection) : base(connection) { }

        public List<Achievement> GetWithCategory(AchievementCategory category)
        {
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT
                                    A.ID, A.FactionID, A.CovenantID, A.Obtainable, A.HasWowheadLink, ACA.Location, AGT.Name
                                FROM
                                    Achievement A
                                    LEFT JOIN AchievementCategoryAchievement ACA
                                        ON A.ID = ACA.AchievementID
                                    LEFT JOIN Achievement_AGT AGT
                                        ON A.ID = AGT.ID
                                WHERE
                                    ACA.CategoryID = @Category
                                ORDER BY
                                    ACA.Location ASC;";
            cmd.Parameters.AddWithValue("@Category", category.ID);

            var achievements = new List<Achievement>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    achievements.Add(new Achievement(reader.GetInt32(0), (Faction)reader.GetInt32(1), (Covenant)reader.GetInt32(2), reader.GetBoolean(3), reader.GetBoolean(4),  reader.GetInt32(5), reader.IsDBNull(6) ? null : reader.GetString(6)));

            return achievements;
        }

        public Achievement GetWithID(int ID)
        {
            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT
                                    A.ID, A.FactionID, A.CovenantID, A.Obtainable, A.HasWowheadLink, ACA.Location, AGT.Name
                                FROM
                                    Achievement A
                                    LEFT JOIN AchievementCategoryAchievement ACA
                                        ON A.ID = ACA.AchievementID
                                    LEFT JOIN Achievement_AGT AGT
                                        ON A.ID = AGT.ID
                                WHERE
                                    A.ID = @ID
                                LIMIT 1;";
            cmd.Parameters.AddWithValue("@ID", ID);

            Achievement achievement = null;
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    achievement = new Achievement(reader.GetInt32(0), (Faction)reader.GetInt32(1), (Covenant)reader.GetInt32(2), reader.GetBoolean(3), reader.GetBoolean(4), reader.GetInt32(5), reader.IsDBNull(6) ? null : reader.GetString(6));

            return achievement;
        }

        public void Add(Achievement achievement, AchievementCategory category)
        {
            _ = achievement ?? throw new ArgumentNullException(nameof(achievement));
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var sb = new StringBuilder();
            sb.AppendLine(@"INSERT OR REPLACE INTO Achievement (ID, FactionID, CovenantID, Obtainable, HasWowheadLink)
                            VALUES (@ID, @FactionID, @CovenantID, @Obtainable, @HasWowheadLink);");
            sb.AppendLine(@"INSERT OR REPLACE INTO AchievementCategoryAchievement (Location, CategoryID, AchievementID)
                            VALUES (@Location, @CategoryID, @ID);");

            var cmd = connection.CreateCommand();
            cmd.CommandText = sb.ToString();
            cmd.Parameters.AddWithValue("@ID", achievement.ID);
            cmd.Parameters.AddWithValue("@FactionID", (int)achievement.Faction);
            cmd.Parameters.AddWithValue("@CovenantID", (int)achievement.Covenant);
            cmd.Parameters.AddWithValue("@Obtainable", achievement.Obtainable ? 1 : 0);
            cmd.Parameters.AddWithValue("@HasWowheadLink", achievement.HasWowheadLink ? 1 : 0);
            cmd.Parameters.AddWithValue("@Location", achievement.Location);
            cmd.Parameters.AddWithValue("@CategoryID", category.ID);

            cmd.ExecuteNonQuery();
        }

        public void Remove(Achievement achievement, AchievementCategory category)
        {
            _ = achievement ?? throw new ArgumentNullException(nameof(achievement));

            var sb = new StringBuilder();
            sb.AppendLine(@"DELETE FROM AchievementCategoryAchievement WHERE AchievementID = @ID AND CategoryID = @CategoryID;");
            sb.AppendLine(@"DELETE FROM Achievement WHERE ID = @ID;");

            var cmd = connection.CreateCommand();
            cmd.CommandText = sb.ToString();
            cmd.Parameters.AddWithValue("@ID", achievement.ID);
            cmd.Parameters.AddWithValue("@CategoryID", category.ID);
            cmd.ExecuteNonQuery();
        }

        public void UpdateLocations(Achievement selectedAchievement, List<Achievement> achievements)
        {
            _ = selectedAchievement ?? throw new ArgumentNullException(nameof(selectedAchievement));
            _ = achievements ?? throw new ArgumentNullException(nameof(achievements));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"UPDATE AchievementCategoryAchievement SET Location = @Location WHERE AchievementID = @AchievementID";
            for (int i = 0; i < achievements.Count; i++)
                if (achievements[i].Location >= selectedAchievement.Location && achievements[i] != selectedAchievement)
                {
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@Location", i + 1);
                    cmd.Parameters.AddWithValue("@AchievementID", achievements[i].ID);

                    cmd.ExecuteNonQuery();
                }
        }

        public void Swap(Achievement achievement1, Achievement achievement2, AchievementCategory category)
        {
            _ = achievement1 ?? throw new ArgumentNullException(nameof(achievement1));
            _ = achievement2 ?? throw new ArgumentNullException(nameof(achievement2));
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"UPDATE
                                    AchievementCategoryAchievement
                                SET
                                    Location = @Location1
                                WHERE
                                    CategoryID = @CategoryID AND
                                    AchievementID = @AchievementID1;
                                UPDATE
                                    AchievementCategoryAchievement
                                SET
                                    Location = @Location2
                                WHERE
                                    CategoryID = @CategoryID AND
                                    AchievementID = @AchievementID2;";

            cmd.Parameters.AddWithValue("@Location1", achievement2.Location);
            cmd.Parameters.AddWithValue("@CategoryID", category.ID);
            cmd.Parameters.AddWithValue("@AchievementID1", achievement1.ID);
            cmd.Parameters.AddWithValue("@Location2", achievement1.Location);
            cmd.Parameters.AddWithValue("@AchievementID2", achievement2.ID);

            cmd.ExecuteNonQuery();
        }

        public void UpdateAGT(Achievement achievement, int category_AGT_ID, int uiOrder)
        {
            var cmd = connection.CreateCommand();
            cmd.CommandText = @"INSERT OR REPLACE INTO Achievement_AGT VALUES (@ID, @Name, @Description, @FactionID, @Category_AGT_ID, @Points, @UIOrder, @CovenantID, @HIDE_INCOMPLETE, @TRACKING_FLAG,
	                                CASE WHEN (SELECT COUNT(*) FROM Achievement_AGT WHERE ID = @ID) > 0 THEN
		                                (SELECT DateAdded FROM Achievement_AGT WHERE ID = @ID) ELSE DATETIME('now', 'localtime')
	                                END,
	                                CASE WHEN ((SELECT Name FROM Achievement_AGT WHERE ID = @ID) = @Name)
		                                        AND ((SELECT Description FROM Achievement_AGT WHERE ID = @ID) = @Description)
		                                        AND ((SELECT FactionID FROM Achievement_AGT WHERE ID = @ID) = @FactionID)
		                                        AND ((SELECT Category_AGT_ID FROM Achievement_AGT WHERE ID = @ID) = @Category_AGT_ID)
		                                        AND ((SELECT Points FROM Achievement_AGT WHERE ID = @ID) = @Points)
		                                        AND ((SELECT UIOrder FROM Achievement_AGT WHERE ID = @ID) = @UIOrder)
		                                        AND ((SELECT CovenantID FROM Achievement_AGT WHERE ID = @ID) = @CovenantID)
		                                        AND ((SELECT HIDE_INCOMPLETE FROM Achievement_AGT WHERE ID = @ID) = @HIDE_INCOMPLETE)
		                                        AND ((SELECT TRACKING_FLAG FROM Achievement_AGT WHERE ID = @ID) = @TRACKING_FLAG) THEN
		                                (SELECT DateChanged FROM Achievement_AGT WHERE ID = @ID) ELSE DATETIME('now', 'localtime')
	                                END);";
            cmd.Parameters.AddWithValue("@ID", achievement.ID);
            cmd.Parameters.AddWithValue("@Name", achievement.Name);
            cmd.Parameters.AddWithValue("@Description", achievement.Description != null ? achievement.Description : DBNull.Value);
            cmd.Parameters.AddWithValue("@FactionID", (int)achievement.Faction);
            cmd.Parameters.AddWithValue("@Category_AGT_ID", category_AGT_ID);
            cmd.Parameters.AddWithValue("@Points", achievement.Points);
            cmd.Parameters.AddWithValue("@UIOrder", uiOrder);
            cmd.Parameters.AddWithValue("@CovenantID", (int)achievement.Covenant);
            cmd.Parameters.AddWithValue("@HIDE_INCOMPLETE", achievement.Flags.HasFlag(AchievementFlags.HIDE_INCOMPLETE) ? 1 : 0);
            cmd.Parameters.AddWithValue("@TRACKING_FLAG", achievement.Flags.HasFlag(AchievementFlags.TRACKING_FLAG) ? 1 : 0);

            cmd.ExecuteNonQuery();
        }
    }
}