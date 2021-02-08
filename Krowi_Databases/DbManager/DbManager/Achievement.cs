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

        public override string ToString()
        {
            return ID.ToString();
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
            cmd.CommandText = "SELECT A.ID AS ID, ANO.ID AS NotObtainable, AHNWL.ID AS HasNoWowheadLink, AHIATL.ID AS HasIATLink, ACA.CategoryID AS CategoryID FROM Achievement A LEFT JOIN AchievementNotObtainable ANO ON A.ID = ANO.ID LEFT JOIN AchievementHasNoWowheadLink AHNWL ON A.ID = AHNWL.ID LEFT JOIN AchievementHasIATLink AHIATL ON A.ID = AHIATL.ID LEFT JOIN AchievementCategoryAchievement ACA ON A.ID = ACA.AchievementID WHERE ACA.CategoryID = @Category";
            cmd.Parameters.AddWithValue("@Category", category.ID);

            var achievements = new List<Achievement>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    achievements.Add(new Achievement(reader.GetInt32(0), reader.IsDBNull(1), reader.IsDBNull(2), !reader.IsDBNull(3)));

            return achievements;
        }
    }
}