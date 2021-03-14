using DbManager.Objects;
using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.Text;

namespace DbManager.DataManagers
{
    public class AchievementCategoryDataManager
    {
        private SqliteConnection connection;

        public AchievementCategoryDataManager(SqliteConnection connection)
        {
            this.connection = connection;
        }

        public List<AchievementCategory> GetAll()
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"WITH CTE_AchievementCategory(ID, ParentID, Location, LocationPath) AS (
                                SELECT
                                    ID, ParentID, Location, substr('0' || Location, -2, 2)
                                FROM
                                    AchievementCategory AC
                                WHERE
                                    ParentID IS NULL
                                UNION ALL
                                SELECT
                                    AC.ID, AC.ParentID, AC.Location, CTEAC.LocationPath || '.' || substr('0' || AC.Location, -2, 2)
                                FROM
                                    AchievementCategory AC
                                    INNER JOIN CTE_AchievementCategory CTEAC
                                        ON CTEAC.ID = AC.ParentID
                                )
                                SELECT
                                    AC.ID, AC.Location, AC.Name, AC.ParentID, AC.FunctionID, AC.FunctionValue, F.ID, F.Call, CTEAC.LocationPath, ACIL.ID, F.Description
                                FROM
                                    CTE_AchievementCategory CTEAC
                                    LEFT JOIN AchievementCategory AC
                                        ON CTEAC.ID = AC.ID
                                    LEFT JOIN AchievementCategory P
                                        ON AC.ParentID = P.ID
                                    LEFT JOIN Function F
                                        ON AC.FunctionID = F.ID
                                    LEFT JOIN AchievementCategoryIsLegacy ACIL
                                        ON AC.ID = ACIL.ID
                                ORDER BY CTEAC.LocationPath";

            var categories = new List<AchievementCategory>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    categories.Add(new AchievementCategory(reader.GetInt32(0), reader.GetInt32(1), reader.GetString(2), new Function(reader.GetInt32(6), reader.GetString(7), reader.GetString(10)), reader.IsDBNull(5) ? -1 : reader.GetInt32(5), reader.IsDBNull(3) ? null : categories.Find(c => c.ID == reader.GetInt32(3)), !reader.IsDBNull(9)));

            return categories;
        }

        public List<int> GetMapIDs(AchievementCategory category)
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "SELECT UIMapID FROM AchievementCategoryUIMap WHERE AchievementCategoryID == @AchievementCategoryID";
            cmd.Parameters.AddWithValue("@AchievementCategoryID", category.ID);

            var mapIDs = new List<int>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    mapIDs.Add(reader.GetInt32(0));

            return mapIDs;
        }

        public List<AchievementCategory> GetWithParent(AchievementCategory parent)
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));

            var cmd = connection.CreateCommand();
            if (parent != null)
            {
                cmd.CommandText = "SELECT AC.ID, Location, Name, F.ID, F.Call, FunctionValue FROM AchievementCategory AC LEFT JOIN Function F ON AC.FunctionID = F.ID WHERE ParentID = @ParentID";
                cmd.Parameters.AddWithValue("@ParentID", parent.ID);
            }
            else
                cmd.CommandText = "SELECT AC.ID, Location, Name, F.ID, F.Call, FunctionValue, F.Description FROM AchievementCategory AC LEFT JOIN Function F ON AC.FunctionID = F.ID WHERE ParentID IS NULL";

            var categories = new List<AchievementCategory>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    categories.Add(new AchievementCategory(reader.GetInt32(0), reader.GetInt32(1), reader.GetString(2), new Function(reader.GetInt32(3), reader.GetString(4), reader.GetString(6)), reader.IsDBNull(5) ? -1 : reader.GetInt32(5), parent));

            return categories;
        }

        public AchievementCategory GetLast()
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "SELECT AC.ID, Location, Name, F.ID, F.Call, FunctionValue, ParentID, F.Description FROM AchievementCategory AC LEFT JOIN Function F ON AC.FunctionID = F.ID ORDER BY AC.ID DESC LIMIT 1";

            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    return new AchievementCategory(reader.GetInt32(0), reader.GetInt32(1), reader.GetString(2), new Function(reader.GetInt32(3), reader.GetString(4), reader.GetString(7)), reader.IsDBNull(5) ? -1 : reader.GetInt32(5), reader.IsDBNull(6) ? null : GetAll().Find(c => c.ID == reader.GetInt32(6)));

            return null;
        }

        public void Add(AchievementCategory category)
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "INSERT INTO AchievementCategory (Location, Name, ParentID, FunctionID, FunctionValue) VALUES (@Location, @Name, @ParentID, @FunctionID, @FunctionValue)";
            cmd.Parameters.AddWithValue("@Location", category.Location);
            cmd.Parameters.AddWithValue("@Name", category.Name);
            cmd.Parameters.AddWithValue("@ParentID", category.Parent == null ? DBNull.Value : category.Parent.ID);
            cmd.Parameters.AddWithValue("@FunctionID", category.Function.ID);
            cmd.Parameters.AddWithValue("@FunctionValue", category.FunctionValue == -1 ? DBNull.Value : category.FunctionValue);

            cmd.ExecuteNonQuery();

            if (category.IsLegacy)
            {
                cmd.CommandText = "INSERT INTO AchievementCategoryIsLegacy (ID) VALUES (@ID)";
                cmd.Parameters.AddWithValue("@ID", GetLast().ID);

                cmd.ExecuteNonQuery();
            }

            if (category.MapIDs != null)
            {
                foreach (var mapID in category.MapIDs)
                {
                    cmd.CommandText = "INSERT INTO AchievementCategoryUIMap (AchievementCategoryID, UIMapID) VALUES(@AchievementCategoryID, @UIMapID)";
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@AchievementCategoryID", GetLast().ID);
                    cmd.Parameters.AddWithValue("@UIMapID", mapID);

                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void UpdateMapIDs(AchievementCategory selectedCategory, List<int> mapIDs)
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));
            _ = selectedCategory ?? throw new ArgumentNullException(nameof(selectedCategory));
            _ = mapIDs ?? throw new ArgumentNullException(nameof(mapIDs));

            var cmd = connection.CreateCommand();

            cmd.CommandText = "DELETE FROM AchievementCategoryUIMap WHERE AchievementCategoryID = @AchievementCategoryID";
            cmd.Parameters.AddWithValue("@AchievementCategoryID", selectedCategory.ID);

            cmd.ExecuteNonQuery();

            foreach (var mapID in mapIDs)
            {
                cmd.CommandText = "INSERT INTO AchievementCategoryUIMap (AchievementCategoryID, UIMapID) VALUES(@AchievementCategoryID, @UIMapID)";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@AchievementCategoryID", selectedCategory.ID);
                cmd.Parameters.AddWithValue("@UIMapID", mapID);

                cmd.ExecuteNonQuery();
            }
        }

        public void UpdateLocations(AchievementCategory selectedCategory, List<AchievementCategory> categories)
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));
            _ = selectedCategory ?? throw new ArgumentNullException(nameof(selectedCategory));
            _ = categories ?? throw new ArgumentNullException(nameof(categories));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "UPDATE AchievementCategory SET Location = @Location WHERE ID = @ID";
            for (int i = 0; i < categories.Count; i++)
                if (categories[i].Location >= selectedCategory.Location && categories[i] != selectedCategory)
                {
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@Location", i + 1);
                    cmd.Parameters.AddWithValue("@ID", categories[i].ID);

                    cmd.ExecuteNonQuery();
                }
        }

        public void UpdateParent(AchievementCategory category, AchievementCategory parent, int location)
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));
            _ = category ?? throw new ArgumentNullException(nameof(category));

            category.Parent = parent;
            category.Location = location;

            var cmd = connection.CreateCommand();
            if (parent != null)
            {
                cmd.CommandText = "UPDATE AchievementCategory SET Location = @Location, ParentID = @ParentID WHERE ID = @ID";
                cmd.Parameters.AddWithValue("@ParentID", category.Parent.ID);
            }
            else
                cmd.CommandText = "UPDATE AchievementCategory SET Location = @Location, ParentID = NULL WHERE ID = @ID";

            cmd.Parameters.AddWithValue("@Location", category.Location);
            cmd.Parameters.AddWithValue("@ID", category.ID);

            cmd.ExecuteNonQuery();
        }

        public void Remove(AchievementCategory category)
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var sb = new StringBuilder();
            if (category.IsLegacy)
                sb.AppendLine("DELETE FROM AchievementCategoryIsLegacy WHERE ID = @ID;");
            sb.AppendLine("DELETE FROM AchievementCategory WHERE ID = @ID;");

            var cmd = connection.CreateCommand();
            cmd.CommandText = sb.ToString();
            cmd.Parameters.AddWithValue("@ID", category.ID);

            cmd.ExecuteNonQuery();
        }

        public void Swap(AchievementCategory category1, AchievementCategory category2)
        {
            _ = connection ?? throw new NullReferenceException(nameof(connection));
            _ = category1 ?? throw new ArgumentNullException(nameof(category1));
            _ = category2 ?? throw new ArgumentNullException(nameof(category2));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"UPDATE AchievementCategory SET Location = @Location1 WHERE ID = @ID1;
                                UPDATE AchievementCategory SET Location = @Location2 WHERE ID = @ID2;";
            cmd.Parameters.AddWithValue("@Location1", category2.Location);
            cmd.Parameters.AddWithValue("@ID1", category1.ID);
            cmd.Parameters.AddWithValue("@Location2", category1.Location);
            cmd.Parameters.AddWithValue("@ID2", category2.ID);

            cmd.ExecuteNonQuery();
        }
    }
}