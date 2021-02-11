using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.Text;

namespace DbManager
{
    public class Achievement
    {
        public int ID { get; set; }
        public Faction Faction { get; set; }
        public int Location { get; set; }
        public bool Obtainable { get; set; }
        public bool HasWowheadLink { get; set; }

        public Achievement(int id, Faction faction, int location, bool obtainable = true, bool hasWowheadLink = true)
        {
            ID = id;
            Faction = faction;
            Location = location;
            Obtainable = obtainable;
            HasWowheadLink = hasWowheadLink;
        }

        public override string ToString()
        {
            return $"{ID} - {Enum.GetName(typeof(Faction), Faction)}{(Obtainable ? " - Obtainable" : "")}{(HasWowheadLink ? " - Wowhead" : "")}";
        }

        public static List<Achievement> GetWithCategory(SqliteConnection connection, AchievementCategory category)
        {
            _ = connection ?? throw new ArgumentNullException(nameof(connection));
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT
                                    A.ID, ACA.Location, ANO.ID, AHNWL.ID, A.Faction
                                FROM
                                    Achievement A
                                    LEFT JOIN AchievementNotObtainable ANO
                                        ON A.ID = ANO.ID
                                    LEFT JOIN AchievementHasNoWowheadLink AHNWL
                                        ON A.ID = AHNWL.ID
                                    LEFT JOIN AchievementCategoryAchievement ACA
                                        ON A.ID = ACA.AchievementID
                                    WHERE
                                        ACA.CategoryID = @Category
                                    ORDER BY
                                        ACA.Location ASC;";
            cmd.Parameters.AddWithValue("@Category", category.ID);

            var achievements = new List<Achievement>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    achievements.Add(new Achievement(reader.GetInt32(0), (Faction)reader.GetInt32(4), reader.GetInt32(1), reader.IsDBNull(2), reader.IsDBNull(3)));

            return achievements;
        }

        public static void Add(SqliteConnection connection, Achievement achievement, AchievementCategory category)
        {
            _ = connection ?? throw new ArgumentNullException(nameof(connection));
            _ = achievement ?? throw new ArgumentNullException(nameof(achievement));
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var sb = new StringBuilder();
            sb.AppendLine(@"INSERT OR REPLACE INTO Achievement (ID, Faction) VALUES (@ID, @Faction);");
            if (!achievement.Obtainable)
                sb.AppendLine(@"INSERT OR REPLACE INTO AchievementNotObtainable (ID) VALUES (@ID);");
            if (!achievement.HasWowheadLink)
                sb.AppendLine(@"INSERT OR REPLACE INTO AchievementHasNoWowheadLink (ID) VALUES (@ID);");
            sb.AppendLine(@"INSERT OR REPLACE INTO AchievementCategoryAchievement (Location, CategoryID, AchievementID) VALUES (@Location, @CategoryID, @ID);");

            var cmd = connection.CreateCommand();
            cmd.CommandText = sb.ToString();
            cmd.Parameters.AddWithValue("@ID", achievement.ID);
            cmd.Parameters.AddWithValue("@Faction", (int)achievement.Faction);
            cmd.Parameters.AddWithValue("@Location", achievement.Location);
            cmd.Parameters.AddWithValue("@CategoryID", category.ID);

            cmd.ExecuteNonQuery();
        }

        public static void Remove(SqliteConnection connection, Achievement achievement)
        {
            _ = connection ?? throw new ArgumentNullException(nameof(connection));
            _ = achievement ?? throw new ArgumentNullException(nameof(achievement));

            var sb = new StringBuilder();
            if (!achievement.Obtainable)
                sb.AppendLine(@"DELETE FROM AchievementNotObtainable WHERE ID = @ID;");
            if (!achievement.HasWowheadLink)
                sb.AppendLine(@"DELETE FROM AchievementHasNoWowheadLink WHERE ID = @ID;");
            sb.AppendLine(@"DELETE FROM AchievementCategoryAchievement WHERE AchievementID = @ID;");
            sb.AppendLine(@"DELETE FROM Achievement WHERE ID = @ID;");

            var cmd = connection.CreateCommand();
            cmd.CommandText = sb.ToString();
            cmd.Parameters.AddWithValue("@ID", achievement.ID);
            cmd.ExecuteNonQuery();
        }

        public static void UpdateLocations(SqliteConnection connection, Achievement selectedAchievement, List<Achievement> achievements)
        {
            _ = connection ?? throw new ArgumentNullException(nameof(connection));
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

        public static List<int> FindDuplicateIDs(SqliteConnection connection)
        {
            _ = connection ?? throw new ArgumentNullException(nameof(connection));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "SELECT AchievementID, COUNT(*) C FROM AchievementCategoryAchievement GROUP BY AchievementID HAVING C > 1";

            var IDs = new List<int>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    IDs.Add(reader.GetInt32(0));

            return IDs;
        }
    }
}