using DbManagerWPF.Model;
using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;

namespace DbManagerWPF.DataManager
{
    public class AchievementDM : DataManagerBase
    {
        public AchievementDM(SqliteConnection connection) : base(connection) { }

        public List<Achievement> GetWithCategory(Category category)
        {
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT
                                    A.ID, A.FactionID, A.CovenantID, A.Obtainable, A.WowheadLink, CA.Location, AGT.Name
                                FROM
                                    Achievement A
                                    LEFT JOIN CategoryAchievement CA
                                        ON A.ID = CA.AchievementID
                                    LEFT JOIN Achievement_AGT AGT
                                        ON A.ID = AGT.ID
                                WHERE
                                    CA.CategoryID = @Category
                                ORDER BY
                                    CA.Location ASC;";
            cmd.Parameters.AddWithValue("@Category", category.ID);

            var achievements = new List<Achievement>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    achievements.Add(new Achievement()
                    {
                        ID = reader.GetInt32(0),
                        Faction = (Faction)reader.GetInt32(1),
                        Covenant = (Covenant)reader.GetInt32(2),
                        Obtainable = reader.GetBoolean(3),
                        WowheadLink = reader.GetBoolean(4),
                        Location = reader.GetInt32(5),
                        Name = reader.IsDBNull(6) ? null : reader.GetString(6)
                    });

            return achievements;
        }
    }
}