using DbManagerWPF.Model;
using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.Linq;

namespace DbManagerWPF.DataManager
{
    public class CategoryDM : DataManagerBase
    {

        private readonly FunctionDM functionDM;
        private readonly List<Category> categories = new();

        public CategoryDM(SqliteConnection connection, FunctionDM functionDM) : base(connection)
        {
            this.functionDM = functionDM;
        }

        public List<Category> GetAll(bool refresh = false)
        {
            if (!refresh)
                if (categories.Any())
                    return categories;

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"WITH CTE_Category(ID, ParentID, Location, LocationPath) AS (
                                SELECT
                                    ID, ParentID, Location, substr('0' || Location, -2, 2)
                                FROM
                                    Category C
                                WHERE
                                    ParentID IS NULL
                                UNION ALL
                                SELECT
                                    C.ID, C.ParentID, C.Location, CTEC.LocationPath || '.' || substr('0' || C.Location, -2, 2)
                                FROM
                                    Category C
                                    INNER JOIN CTE_Category CTEC
                                        ON CTEC.ID = C.ParentID
                                )
                                SELECT
                                    C.ID, C.Location, C.Name, C.ParentID, C.FunctionID, C.FunctionValue, C.Legacy, C.Active, C.CanMerge,
                                    CTEC.LocationPath
                                FROM
                                    CTE_Category CTEC
                                    LEFT JOIN Category C
                                        ON CTEC.ID = C.ID
                                ORDER BY CTEC.LocationPath";

            Dictionary<int, Category> keyValuePairs = new();
            using (var reader = cmd.ExecuteReader())
            {
                categories.Clear();
                while (reader.Read())
                {
                    var category = new Category()
                    {
                        ID = reader.GetInt32(0),
                        Location = reader.GetInt32(1),
                        Name = reader.GetString(2),
                        Parent = reader.IsDBNull(3) ? null : keyValuePairs[reader.GetInt32(3)],
                        Function = functionDM.GetAll().Single(x => x.ID == reader.GetInt32(4)),
                        FunctionValue = reader.IsDBNull(5) ? null : reader.GetString(5),
                        IsLegacy = reader.GetBoolean(6),
                        IsActive = reader.GetBoolean(7),
                        CanMerge = reader.GetBoolean(8)
                    };
                    keyValuePairs.Add(category.ID, category);
                    if (category.Parent == null)
                        categories.Add(category);
                    category.Parent?.Children.Add(category);
                }
            }

            return categories;
        }

        public void Add(int location, string name, Category parent, Function function, string functionValue, bool isLegacy, bool isActive, bool canMerge)
        {
            if (location <= 0) throw new ArgumentOutOfRangeException(nameof(location));
            _ = name ?? throw new ArgumentNullException(nameof(name));
            if (name.Trim() == "") throw new ArgumentException("Can't be empty or only contain spaces", nameof(name));
            _ = function ?? throw new ArgumentNullException(nameof(function));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"INSERT INTO Category (Location, Name, ParentID, FunctionID, FunctionValue, Legacy, Active, CanMerge)
                                VALUES (@Location, @Name, @ParentID, @FunctionID, @FunctionValue, @Legacy, @Active, @CanMerge)";
            cmd.Parameters.AddWithValue("@Location", location);
            cmd.Parameters.AddWithValue("@Name", name);
            cmd.Parameters.AddWithValue("@ParentID", parent == null ? DBNull.Value : parent.ID);
            cmd.Parameters.AddWithValue("@FunctionID", function.ID);
            cmd.Parameters.AddWithValue("@FunctionValue", string.IsNullOrEmpty(functionValue) ? DBNull.Value : functionValue);
            cmd.Parameters.AddWithValue("@Legacy", isLegacy ? 1 : 0);
            cmd.Parameters.AddWithValue("@Active", isActive ? 1 : 0);
            cmd.Parameters.AddWithValue("@CanMerge", canMerge ? 1 : 0);

            cmd.ExecuteNonQuery();
        }

        public void IncreaseLocations(List<Category> categories, int firstLocation)
        {
            _ = categories ?? throw new ArgumentNullException(nameof(categories));
            if (firstLocation <= 0) throw new ArgumentOutOfRangeException(nameof(firstLocation));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "UPDATE Category SET Location = Location + 1 WHERE ID = @ID";
            foreach (var category in categories)
            {
                if (category.Location >= firstLocation)
                {
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@ID", category.ID);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void DecreaseLocations(List<Category> categories, int firstLocation)
        {
            _ = categories ?? throw new ArgumentNullException(nameof(categories));
            if (firstLocation <= 0) throw new ArgumentOutOfRangeException(nameof(firstLocation));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "UPDATE Category SET Location = Location - 1 WHERE ID = @ID";
            foreach (var category in categories)
            {
                if (category.Location >= firstLocation)
                {
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@ID", category.ID);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public Category GetLast()
        {
            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT *, max(ID) FROM Category";

            using (var reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    return new Category()
                    {
                        ID = reader.GetInt32(0),
                        Location = reader.GetInt32(1),
                        Name = reader.GetString(2),
                        Parent = reader.IsDBNull(3) ? null : categories.Find(reader.GetInt32(3)),
                        Function = functionDM.GetAll().Single(x => x.ID == reader.GetInt32(4)),
                        FunctionValue = reader.IsDBNull(5) ? null : reader.GetString(5),
                        IsLegacy = reader.GetBoolean(6),
                        IsActive = reader.GetBoolean(7),
                        CanMerge = reader.GetBoolean(8)
                    };
                }
            }

            return null;
        }

        public void Remove(Category category)
        {
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"DELETE FROM Category WHERE ID = @ID";
            cmd.Parameters.AddWithValue("@ID", category.ID);

            cmd.ExecuteNonQuery();
        }

        public void Swap(Category category1, Category category2)
        {
            _ = category1 ?? throw new ArgumentNullException(nameof(category1));
            _ = category2 ?? throw new ArgumentNullException(nameof(category2));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"UPDATE Category SET Location = @Location1 WHERE ID = @ID1;
                                UPDATE Category SET Location = @Location2 WHERE ID = @ID2;";
            cmd.Parameters.AddWithValue("@Location1", category2.Location);
            cmd.Parameters.AddWithValue("@ID1", category1.ID);
            cmd.Parameters.AddWithValue("@Location2", category1.Location);
            cmd.Parameters.AddWithValue("@ID2", category2.ID);

            cmd.ExecuteNonQuery();
        }

        public void SetNewParentAndLocation(Category category, Category parent, int location)
        {
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var cmd = connection.CreateCommand();
            if (parent != null)
            {
                cmd.CommandText = "UPDATE Category SET Location = @Location, ParentID = @ParentID WHERE ID = @ID";
                cmd.Parameters.AddWithValue("@ParentID", parent.ID);
            }
            else
                cmd.CommandText = "UPDATE Category SET Location = @Location, ParentID = NULL WHERE ID = @ID";

            cmd.Parameters.AddWithValue("@Location", location);
            cmd.Parameters.AddWithValue("@ID", category.ID);

            cmd.ExecuteNonQuery();
        }

        public void Update(Category category, string name, Function function, string functionValue, bool isLegacy, bool isActive, bool canMerge)
        {
            _ = category ?? throw new ArgumentNullException(nameof(category));
            _ = name ?? throw new ArgumentNullException(nameof(name));
            if (name.Trim() == "") throw new ArgumentException("Can't be empty or only contain spaces", nameof(name));
            _ = function ?? throw new ArgumentNullException(nameof(function));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"UPDATE Category SET Name = @Name, FunctionID = @FunctionID, FunctionValue = @FunctionValue, Legacy = @Legacy, Active = @Active, CanMerge = @CanMerge
                                WHERE ID = @ID";
            cmd.Parameters.AddWithValue("@Name", name);
            cmd.Parameters.AddWithValue("@FunctionID", function.ID);
            cmd.Parameters.AddWithValue("@FunctionValue", string.IsNullOrEmpty(functionValue) ? DBNull.Value : functionValue);
            cmd.Parameters.AddWithValue("@Legacy", isLegacy ? 1 : 0);
            cmd.Parameters.AddWithValue("@Active", isActive ? 1 : 0);
            cmd.Parameters.AddWithValue("@CanMerge", canMerge ? 1 : 0);
            cmd.Parameters.AddWithValue("@ID", category.ID);

            cmd.ExecuteNonQuery();
        }
    }
}