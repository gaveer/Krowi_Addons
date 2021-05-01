using DbManager.Objects;
using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DbManager.DataManagers
{
    public class AchievementCategoryDataManager : DataManagerBase
    {
        private readonly FunctionDataManager functionDataManager;
        private readonly List<AchievementCategory> categories = new List<AchievementCategory>();

        public AchievementCategoryDataManager(SqliteConnection connection) : base(connection) { }

        public AchievementCategoryDataManager(SqliteConnection connection, FunctionDataManager functionDataManager) : base(connection)
        {
            this.functionDataManager = functionDataManager;
        }

        public List<AchievementCategory> GetAll(bool refresh = false)
        {
            if (!refresh)
                if (categories.Any())
                    return categories;

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
                                    AC.ID, AC.Location, AC.Name, AC.ParentID, AC.FunctionID, AC.FunctionValue, AC.Legacy, AC.IgnoreParentMapIDs, AC.Active, AC.CanMerge,
                                    CTEAC.LocationPath
                                FROM
                                    CTE_AchievementCategory CTEAC
                                    LEFT JOIN AchievementCategory AC
                                        ON CTEAC.ID = AC.ID
                                ORDER BY CTEAC.LocationPath";

            using (var reader = cmd.ExecuteReader())
            {
                categories.Clear();
                while (reader.Read())
                {
                    var parent = reader.IsDBNull(3) ? null : categories.Single(x => x.ID == reader.GetInt32(3));
                    var function = functionDataManager.GetAll().Single(x => x.ID == reader.GetInt32(4));
                    var functionValue = reader.IsDBNull(5) ? null : reader.GetString(5);
                    categories.Add(new AchievementCategory(reader.GetInt32(0), reader.GetInt32(1), reader.GetString(2), parent, function, functionValue, reader.GetBoolean(6), reader.GetBoolean(7), reader.GetBoolean(8), reader.GetBoolean(9)));
                }
            }

            return categories;
        }

        public List<int> GetMapIDs(AchievementCategory category)
        {
            var cmd = connection.CreateCommand();
            cmd.CommandText = "SELECT UIMapID FROM AchievementCategoryUIMap WHERE AchievementCategoryID == @AchievementCategoryID ORDER BY UIMapID";
            cmd.Parameters.AddWithValue("@AchievementCategoryID", category.ID);

            var mapIDs = new List<int>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    mapIDs.Add(reader.GetInt32(0));

            return mapIDs;
        }

        public AchievementCategory GetLast()
        {
            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT
                                    AC.ID, AC.Location, AC.Name, AC.ParentID, AC.FunctionID, AC.FunctionValue, AC.Legacy, AC.IgnoreParentMapIDs, AC.Active, AC.CanMerge
                                FROM
                                    AchievementCategory AC
                                ORDER BY AC.ID DESC
                                LIMIT 1";

            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                {
                    var parent = reader.IsDBNull(3) ? null : categories.Single(x => x.ID == reader.GetInt32(3));
                    var function = functionDataManager.GetAll().Single(x => x.ID == reader.GetInt32(4));
                    var functionValue = reader.IsDBNull(5) ? null : reader.GetString(5);
                    return new AchievementCategory(reader.GetInt32(0), reader.GetInt32(1), reader.GetString(2), parent, function, functionValue, reader.GetBoolean(6), reader.GetBoolean(7), reader.GetBoolean(8), reader.GetBoolean(9));
                }

            return null;
        }

        public void Add(AchievementCategory category)
        {
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"INSERT INTO AchievementCategory (Location, Name, ParentID, FunctionID, FunctionValue, Legacy, IgnoreParentMapIDs, Active, CanMerge)
                                VALUES (@Location, @Name, @ParentID, @FunctionID, @FunctionValue, @Legacy, @IgnoreParentMapIDs, @Active, @CanMerge)";
            cmd.Parameters.AddWithValue("@Location", category.Location);
            cmd.Parameters.AddWithValue("@Name", category.Name);
            cmd.Parameters.AddWithValue("@ParentID", category.Parent == null ? DBNull.Value : category.Parent.ID);
            cmd.Parameters.AddWithValue("@FunctionID", category.Function.ID);
            cmd.Parameters.AddWithValue("@FunctionValue", string.IsNullOrEmpty( category.FunctionValue ) ? DBNull.Value : category.FunctionValue);
            cmd.Parameters.AddWithValue("@Legacy", category.Legacy ? 1 : 0);
            cmd.Parameters.AddWithValue("@IgnoreParentMapIDs", category.IgnoreParentMapIDs ? 1 : 0);
            cmd.Parameters.AddWithValue("@Active", category.Active ? 1 : 0);
            cmd.Parameters.AddWithValue("@CanMerge", category.CanMerge ? 1 : 0);

            cmd.ExecuteNonQuery();
        }

        public void UpdateMapIDs(AchievementCategory selectedCategory, List<int> mapIDs)
        {
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
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var sb = new StringBuilder();
            sb.AppendLine("DELETE FROM AchievementCategoryUIMap WHERE AchievementCategoryID = @ID;");
            sb.AppendLine("DELETE FROM AchievementCategory WHERE ID = @ID;");

            var cmd = connection.CreateCommand();
            cmd.CommandText = sb.ToString();
            cmd.Parameters.AddWithValue("@ID", category.ID);

            cmd.ExecuteNonQuery();
        }

        public void Swap(AchievementCategory category1, AchievementCategory category2)
        {
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

        public void ChangeActiveState(AchievementCategory category)
        {
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "UPDATE AchievementCategory SET Active = @Active WHERE ID = @ID";
            cmd.Parameters.AddWithValue("@Active", category.Active ? 1 : 0);
            cmd.Parameters.AddWithValue("@ID", category.ID);

            cmd.ExecuteNonQuery();
        }

        public void ChangeCanMergeState(AchievementCategory category)
        {
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "UPDATE AchievementCategory SET CanMerge = @CanMerge WHERE ID = @ID";
            cmd.Parameters.AddWithValue("@CanMerge", category.CanMerge ? 1 : 0);
            cmd.Parameters.AddWithValue("@ID", category.ID);

            cmd.ExecuteNonQuery();
        }
    }
}