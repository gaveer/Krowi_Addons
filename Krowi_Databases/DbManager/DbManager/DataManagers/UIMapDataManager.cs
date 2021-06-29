using DbManager.Objects;
using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;

namespace DbManager.DataManagers
{
    public class UIMapDataManager : DataManagerBase
    {
        public UIMapDataManager(SqliteConnection connection) : base(connection) { }

        public List<UIMap> GetAll()
        {
            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT
                                    MAP.ID, MAP.OriginalName, MAP.Name
                                FROM
                                    UIMap_AGT MAP
                                ORDER BY
                                    MAP.ID;";

            var uiMaps = new List<UIMap>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    uiMaps.Add(new UIMap(reader.GetInt32(0), reader.IsDBNull(1) ? null : reader.GetString(1), reader.IsDBNull(2) ? null : reader.GetString(2)));

            return uiMaps;
        }

        public List<UIMap> GetWithAchievement(Achievement achievement)
        {
            _ = achievement ?? throw new ArgumentNullException(nameof(achievement));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT
	                                MAP.ID, MAP.OriginalName, MAP.Name
                                FROM
	                                UIMap_AGT MAP
	                                LEFT JOIN UIMapAchievement MAPA
		                                ON MAP.ID == MAPA.UIMapID
                                WHERE
                                    MAPA.AchievementID = @AchievementID
                                ORDER BY
	                                MAP.ID;";
            cmd.Parameters.AddWithValue("@AchievementID", achievement.ID);

            var uiMaps = new List<UIMap>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    uiMaps.Add(new UIMap(reader.GetInt32(0), reader.IsDBNull(1) ? null : reader.GetString(1), reader.IsDBNull(2) ? null : reader.GetString(2)));

            return uiMaps;
        }

        public void Update(UIMap uiMap)
        {
            _ = uiMap.ID <= 0 ? throw new ArgumentException("Should be greater than 0", nameof(uiMap.ID)) : "";
            _ = uiMap.OriginalName ?? throw new ArgumentNullException(nameof(uiMap.OriginalName));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"INSERT OR REPLACE INTO UIMap_AGT VALUES (@ID, @OriginalName,
	                                CASE WHEN (SELECT COUNT(*) FROM UIMap_AGT WHERE ID = @ID) > 0 THEN
		                                (SELECT DateAdded FROM UIMap_AGT WHERE ID = @ID) ELSE DATETIME('now', 'localtime')
	                                END,
	                                CASE WHEN (SELECT OriginalName FROM UIMap_AGT WHERE ID = @ID) = @OriginalName THEN
		                                (SELECT DateChanged FROM UIMap_AGT WHERE ID = @ID) ELSE DATETIME('now', 'localtime')
	                                END,
	                                CASE WHEN (SELECT OriginalName FROM UIMap_AGT WHERE ID = @ID) != @OriginalName THEN
		                                (SELECT OriginalName FROM UIMap_AGT WHERE ID = @ID) ELSE (SELECT OldOriginalName FROM UIMap_AGT WHERE ID = @ID)
	                                END,
	                                (SELECT Name FROM UIMap_AGT WHERE ID = @ID), (SELECT Comment FROM UIMap_AGT WHERE ID = @ID));";
            cmd.Parameters.AddWithValue("@ID", uiMap.ID);
            cmd.Parameters.AddWithValue("@OriginalName", uiMap.OriginalName);

            cmd.ExecuteNonQuery();
        }
    }
}