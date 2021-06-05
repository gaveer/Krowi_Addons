using DbManagerWPF.Model;
using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DbManagerWPF.DataManager
{
    public class UIMapDM : DataManagerBase, IUIMapDM
    {
        private readonly List<UIMap> uiMaps = new();

        public UIMapDM(SqliteConnection connection) : base(connection) { }

        public IEnumerable<UIMap> GetAll(bool refresh = false)
        {
            if (!refresh)
                if (uiMaps.Any())
                    return uiMaps;

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"WITH CTE_UIMap(ID, ParentID) AS (
                                SELECT
	                                ID, ParentID
                                FROM
	                                UIMap_AGT M
                                WHERE
	                                ParentID IS NULL
                                UNION ALL
                                SELECT
	                                M.ID, M.ParentID
                                FROM
	                                UIMap_AGT M
	                                INNER JOIN CTE_UIMap CTEM
		                                ON CTEM.ID = M.ParentID
                                )
                                SELECT
	                                M.ID, M.Name, M.ParentID, M.OriginalName, M.Comment
                                FROM
	                                CTE_UIMap CTEM
	                                LEFT JOIN UIMap_AGT M
		                                ON CTEM.ID = M.ID;";
            Dictionary<int, UIMap> keyValuePairs = new();
            using (var reader = cmd.ExecuteReader())
            {
                uiMaps.Clear();
                while (reader.Read())
                {
                    var uiMap = new UIMap()
                    {
                        ID = reader.GetInt32(0),
                        Name = reader.IsDBNull(1) ? reader.GetString(3) : reader.GetString(1),
                        Parent = reader.IsDBNull(2) ? null : keyValuePairs[reader.GetInt32(2)],
                        Comment = reader.IsDBNull(4) ? "" : reader.GetString(4)
                    };
                    keyValuePairs.Add(uiMap.ID, uiMap);
                    if (uiMap.Parent == null)
                        uiMaps.Add(uiMap);
                    uiMap.Parent?.Children.Add(uiMap);
                }
            }

            return uiMaps;
        }

        public void SetNewParent(UIMap uiMap, UIMap newParent)
        {
            _ = uiMap ?? throw new ArgumentNullException(nameof(uiMap));
            _ = newParent ?? throw new ArgumentNullException(nameof(newParent));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "UPDATE UIMap_AGT SET ParentID = @ParentID WHERE ID = @ID";

            cmd.Parameters.AddWithValue("@ParentID", newParent.ID);
            cmd.Parameters.AddWithValue("@ID", uiMap.ID);

            cmd.ExecuteNonQuery();
        }

        public IEnumerable<UIMap> GetWithCategory(Category category)
        {
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"WITH CTE_UIMap(ID, ParentID) AS (
                                SELECT
	                                ID, ParentID
                                FROM
	                                UIMap_AGT M
                                WHERE
	                                ParentID IS NULL
                                UNION ALL
                                SELECT
	                                M.ID, M.ParentID
                                FROM
	                                UIMap_AGT M
	                                INNER JOIN CTE_UIMap CTEM
		                                ON CTEM.ID = M.ParentID
                                )
                                SELECT
	                                M.ID, M.Name, M.ParentID, M.OriginalName, M.Comment
                                FROM
	                                CTE_UIMap CTEM
	                                LEFT JOIN UIMap_AGT M
		                                ON CTEM.ID = M.ID
	                                LEFT JOIN CategoryUIMap CM
		                                ON CTEM.ID = CM.UIMapID
                                WHERE CM.CategoryID = @Category;";
            cmd.Parameters.AddWithValue("@Category", category.ID);

            List<UIMap> uiMaps = new();
            Dictionary<int, UIMap> keyValuePairs = new();
            using (var reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    var key = reader.IsDBNull(2) ? 0 : reader.GetInt32(2);
                    keyValuePairs.TryGetValue(key, out UIMap parent);
                    var uiMap = new UIMap()
                    {
                        ID = reader.GetInt32(0),
                        Name = reader.IsDBNull(1) ? reader.GetString(3) : reader.GetString(1),
                        Parent = parent,
                        Comment = reader.IsDBNull(4) ? "" : reader.GetString(4)
                    };
                    if (!keyValuePairs.ContainsKey(uiMap.ID))
                        keyValuePairs.Add(uiMap.ID, uiMap);
                    if (uiMap.Parent == null)
                        uiMaps.Add(uiMap);
                    uiMap.Parent?.Children.Add(uiMap);
                }
            }

            return uiMaps;
        }


        public IEnumerable<UIMap> GetWithAchievement(Achievement achievement)
        {
            _ = achievement ?? throw new ArgumentNullException(nameof(achievement));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"WITH CTE_UIMap(ID, ParentID) AS (
                                SELECT
	                                ID, ParentID
                                FROM
	                                UIMap_AGT M
                                WHERE
	                                ParentID IS NULL
                                UNION ALL
                                SELECT
	                                M.ID, M.ParentID
                                FROM
	                                UIMap_AGT M
	                                INNER JOIN CTE_UIMap CTEM
		                                ON CTEM.ID = M.ParentID
                                )
                                SELECT
	                                M.ID, M.Name, M.ParentID, M.OriginalName, M.Comment
                                FROM
	                                CTE_UIMap CTEM
	                                LEFT JOIN UIMap_AGT M
		                                ON CTEM.ID = M.ID
	                                LEFT JOIN AchievementUIMap AM
		                                ON CTEM.ID = AM.UIMapID
                                WHERE AM.AchievementID = @Achievement;";
            cmd.Parameters.AddWithValue("@Achievement", achievement.ID);

            List<UIMap> uiMaps = new();
            Dictionary<int, UIMap> keyValuePairs = new();
            using (var reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    var key = reader.IsDBNull(2) ? 0 : reader.GetInt32(2);
                    keyValuePairs.TryGetValue(key, out UIMap parent);
                    var uiMap = new UIMap()
                    {
                        ID = reader.GetInt32(0),
                        Name = reader.IsDBNull(1) ? reader.GetString(3) : reader.GetString(1),
                        Parent = parent,
                        Comment = reader.IsDBNull(4) ? "" : reader.GetString(4)
                    };
                    keyValuePairs.Add(uiMap.ID, uiMap);
                    if (uiMap.Parent == null)
                        uiMaps.Add(uiMap);
                    uiMap.Parent?.Children.Add(uiMap);
                }
            }

            return uiMaps;
        }

        public void RemoveFromCategory(Category category, UIMap uiMap)
        {
            _ = category ?? throw new ArgumentNullException(nameof(category));
            _ = uiMap ?? throw new ArgumentNullException(nameof(uiMap));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"DELETE FROM CategoryUIMap WHERE CategoryID = @CategoryID AND UIMapID = @UIMapID";
            cmd.Parameters.AddWithValue("@CategoryID", category.ID);
            cmd.Parameters.AddWithValue("@UIMapID", uiMap.ID);

            cmd.ExecuteNonQuery();
        }

        public void AddToCategory(Category category, UIMap uiMap)
        {
            _ = category ?? throw new ArgumentNullException(nameof(category));
            _ = uiMap ?? throw new ArgumentNullException(nameof(uiMap));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"INSERT INTO CategoryUIMap (CategoryID, UIMapID) VALUES (@CategoryID, @UIMapID)";
            cmd.Parameters.AddWithValue("@CategoryID", category.ID);
            cmd.Parameters.AddWithValue("@UIMapID", uiMap.ID);

            cmd.ExecuteNonQuery();
        }
    }
}