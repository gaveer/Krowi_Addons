using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;

namespace DbManager
{
    public class AchievementCategory : IComparable<AchievementCategory>, IEquatable<AchievementCategory>, ICloneable
    {
        public int ID { get; set; }
        public int Location { get; set; }
        public string Name { get; set; }
        public AchievementCategory Parent { get; set; }
        public Function Function { get; set; }
        public int FunctionValue { get; set; }
        public List<Achievement> Achievements { get; set; }

        public AchievementCategory(int id, int location, string name, Function function, int functionValue, AchievementCategory parent = null)
        {
            ID = id;
            Location = location;
            Name = name;
            Parent = parent;
            Function = function;
            FunctionValue = functionValue;
            Achievements = new List<Achievement>();
        }

        public string GetParentNames()
        {
            string val = null;
            if (Parent != null)
            {
                val = Parent.GetParentNames();
                if (val == null)
                    val = $"{Parent.Name}";
                else
                    val = $"{Parent.Name} - {val}";
            }

            return val;
        }

        public override string ToString()
        {
            if (ID > 0)
            {
                var parentNames = GetParentNames();
                return $"{ID} - {Name}{(string.IsNullOrEmpty(parentNames) ? "" : $" - {parentNames}")}";
            }
            else
                return "";
        }

        public int CompareTo(AchievementCategory other)
        {
            return ID.CompareTo(other);
        }

        public bool Equals(AchievementCategory other)
        {
            return ID == other.ID;
        }

        public object Clone()
        {
            return MemberwiseClone();
        }

        public static List<AchievementCategory> GetAll(SqliteConnection connection)
        {
            if (connection == null)
                throw new ArgumentNullException(nameof(connection));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"WITH CTE_AchievementCategory(ID, ParentID, Location, LocationPath) AS (
                                SELECT ID, ParentID, Location, substr('0' || Location, -2, 2)
                                FROM AchievementCategory AC
                                WHERE ParentID IS NULL
                                UNION ALL
                                SELECT AC.ID, AC.ParentID, AC.Location, CTEAC.LocationPath || '.' || substr('0' || AC.Location, -2, 2)
                                FROM AchievementCategory AC INNER JOIN CTE_AchievementCategory CTEAC
                                ON CTEAC.ID = AC.ParentID
                                )
                                SELECT
                                    AC.ID, AC.Location, AC.Name, AC.ParentID, AC.FunctionID, AC.FunctionValue, F.ID, F.Call, CTEAC.LocationPath
                                FROM
                                    CTE_AchievementCategory CTEAC
                                    left join AchievementCategory AC
                                    on CTEAC.ID = AC.ID
                                    left join AchievementCategory P
                                    on AC.ParentID = P.ID
                                    left join Function F
                                    on AC.FunctionID = F.ID
                                ORDER BY CTEAC.LocationPath";

            var categories = new List<AchievementCategory>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    categories.Add(new AchievementCategory(reader.GetInt32(0), reader.GetInt32(1), reader.GetString(2), new Function(reader.GetInt32(6), reader.GetString(7)), reader.IsDBNull(5) ? -1 : reader.GetInt32(5), reader.IsDBNull(3) ? null : categories.Find(c => c.ID == reader.GetInt32(3))));

            return categories;
        }

        public static List<AchievementCategory> GetWithParent(SqliteConnection connection, AchievementCategory parent)
        {
            if (connection == null)
                throw new ArgumentNullException(nameof(connection));

            var cmd = connection.CreateCommand();
            if (parent != null)
            {
                cmd.CommandText = @"SELECT AC.ID, Location, Name, F.ID, F.Call, FunctionValue FROM AchievementCategory AC LEFT JOIN Function F ON AC.FunctionID = F.ID WHERE ParentID = @ParentID";
                cmd.Parameters.AddWithValue("@ParentID", parent.ID);
            }
            else
                cmd.CommandText = @"SELECT AC.ID, Location, Name, F.ID, F.Call, FunctionValue FROM AchievementCategory AC LEFT JOIN Function F ON AC.FunctionID = F.ID WHERE ParentID IS NULL";

            var categories = new List<AchievementCategory>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    categories.Add(new AchievementCategory(reader.GetInt32(0), reader.GetInt32(1), reader.GetString(2), new Function(reader.GetInt32(3), reader.GetString(4)), reader.IsDBNull(5) ? -1 : reader.GetInt32(5), parent));

            return categories;
        }

        public static AchievementCategory GetLast(SqliteConnection connection)
        {
            if (connection == null)
                throw new ArgumentNullException(nameof(connection));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT AC.ID, Location, Name, F.ID, F.Call, FunctionValue, ParentID FROM AchievementCategory AC LEFT JOIN Function F ON AC.FunctionID = F.ID ORDER BY AC.ID DESC LIMIT 1";

            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    return new AchievementCategory(reader.GetInt32(0), reader.GetInt32(1), reader.GetString(2), new Function(reader.GetInt32(3), reader.GetString(4)), reader.IsDBNull(5) ? -1 : reader.GetInt32(5), reader.IsDBNull(6) ? null : GetAll(connection).Find(c => c.ID == reader.GetInt32(6)));

            return null;
        }

        public static void Add(SqliteConnection connection, AchievementCategory category)
        {
            if (connection == null)
                throw new ArgumentNullException(nameof(connection));
            if (category == null)
                throw new ArgumentNullException(nameof(category));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"INSERT INTO AchievementCategory (Location, Name, ParentID, FunctionID, FunctionValue) VALUES (@Location, @Name, @ParentID, @FunctionID, @FunctionValue)";
            cmd.Parameters.AddWithValue("@Location", category.Location);
            cmd.Parameters.AddWithValue("@Name", category.Name);
            cmd.Parameters.AddWithValue("@ParentID", category.Parent == null ? DBNull.Value : category.Parent.ID);
            cmd.Parameters.AddWithValue("@FunctionID", category.Function.ID);
            cmd.Parameters.AddWithValue("@FunctionValue", category.FunctionValue == -1 ? DBNull.Value : category.FunctionValue);

            cmd.ExecuteNonQuery();
        }

        public static void UpdateLocations(SqliteConnection connection, AchievementCategory selectedCategory, List<AchievementCategory> categories)
        {
            if (connection == null)
                throw new ArgumentNullException(nameof(connection));
            if (selectedCategory == null)
                throw new ArgumentNullException(nameof(selectedCategory));
            if (categories == null)
                throw new ArgumentNullException(nameof(categories));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"UPDATE AchievementCategory SET Location = @Location WHERE ID = @ID";
            for (int i = 0; i < categories.Count; i++)
                if (categories[i].Location >= selectedCategory.Location && categories[i] != selectedCategory)
                {
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@Location", i + 1);
                    cmd.Parameters.AddWithValue("@ID", categories[i].ID);

                    cmd.ExecuteNonQuery();
                }
        }

        public static void UpdateParent(SqliteConnection connection, AchievementCategory category, AchievementCategory parent, int location)
        {
            if (connection == null)
                throw new ArgumentNullException(nameof(connection));
            if (category == null)
                throw new ArgumentNullException(nameof(category));

            category.Parent = parent;
            category.Location = location;

            var cmd = connection.CreateCommand();
            if (parent != null)
            {
                cmd.CommandText = @"UPDATE AchievementCategory SET Location = @Location, ParentID = @ParentID WHERE ID = @ID";
                cmd.Parameters.AddWithValue("@ParentID", category.Parent.ID);
            }
            else
                cmd.CommandText = @"UPDATE AchievementCategory SET Location = @Location, ParentID = NULL WHERE ID = @ID";
            cmd.Parameters.AddWithValue("@Location", category.Location);
            cmd.Parameters.AddWithValue("@ID", category.ID);

            cmd.ExecuteNonQuery();
        }

        public static void Remove(SqliteConnection connection, AchievementCategory category)
        {
            if (connection == null)
                throw new ArgumentNullException(nameof(connection));
            if (category == null)
                throw new ArgumentNullException(nameof(category));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"DELETE FROM AchievementCategory WHERE ID = @ID";
            cmd.Parameters.AddWithValue("@ID", category.ID);

            cmd.ExecuteNonQuery();
        }

        public static void Swap(SqliteConnection connection, AchievementCategory category1, AchievementCategory category2)
        {
            if (connection == null)
                throw new ArgumentNullException(nameof(connection));
            if (category1 == null)
                throw new ArgumentNullException(nameof(category1));
            if (category2 == null)
                throw new ArgumentNullException(nameof(category2));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"UPDATE AchievementCategory SET Location = @Location WHERE ID = @ID";
            cmd.Parameters.AddWithValue("@Location", category2.Location);
            cmd.Parameters.AddWithValue("@ID", category1.ID);

            cmd.ExecuteNonQuery();

            cmd.Parameters.Clear();

            cmd.Parameters.AddWithValue("@Location", category1.Location);
            cmd.Parameters.AddWithValue("@ID", category2.ID);

            cmd.ExecuteNonQuery();
        }
    }
}
