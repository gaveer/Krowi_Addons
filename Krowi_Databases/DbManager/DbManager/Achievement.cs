using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DbManager
{
    public class Achievement
    {
        public int ID { get; set; }
        public Faction Faction { get; set; }
        public int Location { get; set; }
        public bool Obtainable { get; set; }
        public bool HasWowheadLink { get; set; }
        public bool HasIATLink { get; set; }

        public Achievement(int id, Faction faction, int location, bool obtainable = true, bool hasWowheadLink = true, bool hasIATLink = false)
        {
            ID = id;
            Faction = faction;
            Location = location;
            Obtainable = obtainable;
            HasWowheadLink = hasWowheadLink;
            HasIATLink = hasIATLink;
        }

        public override string ToString()
        {
            return $"{ID} - {Enum.GetName(typeof(Faction), Faction)}{(Obtainable ? " - Obtainable" : "")}{(HasWowheadLink ? " - Wowhead" : "")}{(HasIATLink ? " - IAT" : "")}";
        }

        public static List<Achievement> GetWithCategory(SqliteConnection connection, AchievementCategory category)
        {
            if (connection == null)
                throw new ArgumentNullException(nameof(connection));
            if (category == null)
                throw new ArgumentNullException(nameof(category));
            if (connection == null)
                throw new ArgumentNullException(nameof(connection));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "SELECT A.ID, ACA.Location, ANO.ID, AHNWL.ID, AHIATL.ID, A.Faction FROM Achievement A LEFT JOIN AchievementNotObtainable ANO ON A.ID = ANO.ID LEFT JOIN AchievementHasNoWowheadLink AHNWL ON A.ID = AHNWL.ID LEFT JOIN AchievementHasIATLink AHIATL ON A.ID = AHIATL.ID LEFT JOIN AchievementCategoryAchievement ACA ON A.ID = ACA.AchievementID WHERE ACA.CategoryID = @Category ORDER BY ACA.Location ASC";
            cmd.Parameters.AddWithValue("@Category", category.ID);

            var achievements = new List<Achievement>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    achievements.Add(new Achievement(reader.GetInt32(0), (Faction)reader.GetInt32(5), reader.GetInt32(1), reader.IsDBNull(2), reader.IsDBNull(3), !reader.IsDBNull(4)));

            return achievements;
        }

        public static void Add(SqliteConnection connection, Achievement achievement, AchievementCategory category)
        {
            if (connection == null)
                throw new ArgumentNullException(nameof(connection));
            if (achievement == null)
                throw new ArgumentNullException(nameof(achievement));
            if (category == null)
                throw new ArgumentNullException(nameof(category));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"INSERT OR REPLACE INTO Achievement (ID, Faction) VALUES (@ID, @Faction)";
            cmd.Parameters.AddWithValue("@ID", achievement.ID);
            cmd.Parameters.AddWithValue("@Faction", (int)achievement.Faction);

            cmd.ExecuteNonQuery();

            if (!achievement.Obtainable)
            {
                cmd.CommandText = @"INSERT OR REPLACE INTO AchievementNotObtainable (ID) VALUES (@ID)";

                cmd.ExecuteNonQuery();
            }

            if (!achievement.HasWowheadLink)
            {
                cmd.CommandText = @"INSERT OR REPLACE INTO AchievementHasNoWowheadLink (ID) VALUES (@ID)";

                cmd.ExecuteNonQuery();
            }

            if (achievement.HasIATLink)
            {
                cmd.CommandText = @"INSERT OR REPLACE INTO AchievementHasIATLink (ID) VALUES (@ID)";

                cmd.ExecuteNonQuery();
            }

            cmd.CommandText = @"INSERT OR REPLACE INTO AchievementCategoryAchievement (Location, CategoryID, AchievementID) VALUES (@Location, @CategoryID, @ID)";
            cmd.Parameters.AddWithValue("@Location", achievement.Location);
            cmd.Parameters.AddWithValue("@CategoryID", category.ID);

            cmd.ExecuteNonQuery();
        }

        public static void UpdateLocations(SqliteConnection connection, Achievement selectedAchievement, List<Achievement> achievements)
        {
            if (connection == null)
                throw new ArgumentNullException(nameof(connection));
            if (selectedAchievement == null)
                throw new ArgumentNullException(nameof(selectedAchievement));
            if (achievements == null)
                throw new ArgumentNullException(nameof(achievements));

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

        public static void Remove(SqliteConnection connection, Achievement achievement)
        {
            var cmd = connection.CreateCommand();
            cmd.Parameters.AddWithValue("@ID", achievement.ID);

            if (!achievement.Obtainable)
            {
                cmd.CommandText = @"DELETE FROM AchievementNotObtainable WHERE ID = @ID";
                cmd.ExecuteNonQuery();
            }

            if (!achievement.HasWowheadLink)
            {
                cmd.CommandText = @"DELETE FROM AchievementHasNoWowheadLink WHERE ID = @ID";
                cmd.ExecuteNonQuery();
            }

            if (achievement.HasIATLink)
            {
                cmd.CommandText = @"DELETE FROM AchievementHasIATLink WHERE ID = @ID";
                cmd.ExecuteNonQuery();
            }

            cmd.CommandText = @"DELETE FROM AchievementCategoryAchievement WHERE AchievementID = @ID";
            cmd.ExecuteNonQuery();

            cmd.CommandText = @"DELETE FROM Achievement WHERE ID = @ID";
            cmd.ExecuteNonQuery();
        }

        public static List<int> FindDuplicateIDs(SqliteConnection connection)
        {
            if (connection == null)
                throw new ArgumentNullException(nameof(connection));

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