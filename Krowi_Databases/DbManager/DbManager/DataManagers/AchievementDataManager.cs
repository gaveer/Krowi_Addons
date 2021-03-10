using DbManager.Objects;
using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.Text;

namespace DbManager.DataManagers
{
    public class AchievementDataManager
    {
        private SqliteConnection connection;

        public AchievementDataManager(SqliteConnection connection)
        {
            this.connection = connection;
        }

        public List<Achievement> GetWithCategory(AchievementCategory category)
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT
                                    A.ID, ACA.Location, ANO.ID, AHNWL.ID, A.Faction, AC.CovenantID
                                FROM
                                    Achievement A
                                    LEFT JOIN AchievementNotObtainable ANO
                                        ON A.ID = ANO.ID
                                    LEFT JOIN AchievementHasNoWowheadLink AHNWL
                                        ON A.ID = AHNWL.ID
                                    LEFT JOIN AchievementCategoryAchievement ACA
                                        ON A.ID = ACA.AchievementID
									LEFT JOIN AchievementCovenant AC
										ON A.ID = AC.AchievementID
                                WHERE
                                    ACA.CategoryID = @Category
                                ORDER BY
                                    ACA.Location ASC;";
            cmd.Parameters.AddWithValue("@Category", category.ID);

            var achievements = new List<Achievement>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                {
                    Covenant covenant = reader.IsDBNull(5) ? Covenant.NoCovenant : (Covenant)reader.GetInt32(5);
                    achievements.Add(new Achievement(reader.GetInt32(0), (Faction)reader.GetInt32(4), covenant, reader.GetInt32(1), reader.IsDBNull(2), reader.IsDBNull(3)));
                }

            return achievements;
        }

        public Achievement GetWithID(int ID)
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT
                                    A.ID, ACA.Location, ANO.ID, AHNWL.ID, A.Faction, AC.CovenantID
                                FROM
                                    Achievement A
                                    LEFT JOIN AchievementNotObtainable ANO
                                        ON A.ID = ANO.ID
                                    LEFT JOIN AchievementHasNoWowheadLink AHNWL
                                        ON A.ID = AHNWL.ID
                                    LEFT JOIN AchievementCategoryAchievement ACA
                                        ON A.ID = ACA.AchievementID
									LEFT JOIN AchievementCovenant AC
										ON A.ID = AC.AchievementID
                                WHERE
                                        A.ID = @ID
                                LIMIT 1;";
            cmd.Parameters.AddWithValue("@ID", ID);

            Achievement achievement = null;
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                {
                    Covenant covenant = reader.IsDBNull(5) ? Covenant.NoCovenant : (Covenant)reader.GetInt32(5);
                    achievement = new Achievement(reader.GetInt32(0), (Faction)reader.GetInt32(4), covenant, reader.GetInt32(1), reader.IsDBNull(2), reader.IsDBNull(3));
                }

            return achievement;
        }

        public void Add(Achievement achievement, AchievementCategory category)
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));
            _ = achievement ?? throw new ArgumentNullException(nameof(achievement));
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var sb = new StringBuilder();
            sb.AppendLine(@"INSERT OR REPLACE INTO Achievement (ID, Faction) VALUES (@ID, @Faction);");
            if (!achievement.Obtainable)
                sb.AppendLine(@"INSERT OR REPLACE INTO AchievementNotObtainable (ID) VALUES (@ID);");
            if (!achievement.HasWowheadLink)
                sb.AppendLine(@"INSERT OR REPLACE INTO AchievementHasNoWowheadLink (ID) VALUES (@ID);");
            if (achievement.Covenant != Covenant.NoCovenant)
                sb.AppendLine(@"INSERT OR REPLACE INTO AchievementCovenant (AchievementID, CovenantID) VALUES (@ID, @Covenant);");
            sb.AppendLine(@"INSERT OR REPLACE INTO AchievementCategoryAchievement (Location, CategoryID, AchievementID) VALUES (@Location, @CategoryID, @ID);");

            var cmd = connection.CreateCommand();
            cmd.CommandText = sb.ToString();
            cmd.Parameters.AddWithValue("@ID", achievement.ID);
            cmd.Parameters.AddWithValue("@Faction", (int)achievement.Faction);
            cmd.Parameters.AddWithValue("@Covenant", (int)achievement.Covenant);
            cmd.Parameters.AddWithValue("@Location", achievement.Location);
            cmd.Parameters.AddWithValue("@CategoryID", category.ID);

            cmd.ExecuteNonQuery();
        }

        public void Remove(Achievement achievement, AchievementCategory category)
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));
            _ = achievement ?? throw new ArgumentNullException(nameof(achievement));

            var isDuplicate = FindDuplicateIDs().Contains(achievement.ID);

            var sb = new StringBuilder();
            if (!isDuplicate)
            {
                if (!achievement.Obtainable)
                    sb.AppendLine(@"DELETE FROM AchievementNotObtainable WHERE ID = @ID;");
                if (!achievement.HasWowheadLink)
                    sb.AppendLine(@"DELETE FROM AchievementHasNoWowheadLink WHERE ID = @ID;");
                if (achievement.Covenant != Covenant.NoCovenant)
                    sb.AppendLine(@"DELETE FROM AchievementCovenant WHERE AchievementID = @ID;");
                sb.AppendLine(@"DELETE FROM AchievementCategoryAchievement WHERE AchievementID = @ID;");
                sb.AppendLine(@"DELETE FROM Achievement WHERE ID = @ID;");
            }
            else
                sb.AppendLine(@"DELETE FROM AchievementCategoryAchievement WHERE AchievementID = @ID AND CategoryID = @CategoryID;");

            var cmd = connection.CreateCommand();
            cmd.CommandText = sb.ToString();
            cmd.Parameters.AddWithValue("@ID", achievement.ID);
            cmd.Parameters.AddWithValue("@CategoryID", category.ID);
            cmd.ExecuteNonQuery();
        }

        public void UpdateLocations(Achievement selectedAchievement, List<Achievement> achievements)
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));
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

        public List<int> FindDuplicateIDs()
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "SELECT AchievementID, COUNT(*) C FROM AchievementCategoryAchievement GROUP BY AchievementID HAVING C > 1";

            var IDs = new List<int>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    IDs.Add(reader.GetInt32(0));

            return IDs;
        }

        public void Swap(Achievement achievement1, Achievement achievement2, AchievementCategory category)
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));
            _ = achievement1 ?? throw new ArgumentNullException(nameof(achievement1));
            _ = achievement2 ?? throw new ArgumentNullException(nameof(achievement2));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"UPDATE AchievementCategoryAchievement SET Location = @Location1 WHERE CategoryID = @CategoryID AND AchievementID = @AchievementID1;
                                UPDATE AchievementCategoryAchievement SET Location = @Location2 WHERE CategoryID = @CategoryID AND AchievementID = @AchievementID2;";
            cmd.Parameters.AddWithValue("@Location1", achievement2.Location);
            cmd.Parameters.AddWithValue("@CategoryID", category.ID);
            cmd.Parameters.AddWithValue("@AchievementID1", achievement1.ID);
            cmd.Parameters.AddWithValue("@Location2", achievement1.Location);
            cmd.Parameters.AddWithValue("@AchievementID2", achievement2.ID);

            cmd.ExecuteNonQuery();
        }
    }
}