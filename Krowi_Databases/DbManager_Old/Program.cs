using System;
using Microsoft.Data.Sqlite;
using System.Collections.Generic;

namespace DbManager
{
    public class Program
    {
        private static List<AchievementCategory> Categories = new List<AchievementCategory>();

        static void Main(string[] args)
        {
             var connectionStringBuilder = new SqliteConnectionStringBuilder();

            //Use DB in project directory.  If it does not exist, create it:
            connectionStringBuilder.DataSource = "../Krowi_AchievementFilter.db";

            using (var connection = new SqliteConnection(connectionStringBuilder.ConnectionString))
            {
                connection.Open();

                // GetAllCategories(connection);
                AddNewCategory(connection);
                //Create a table (drop if already exists first):
                
                // var delTableCmd = connection.CreateCommand();
                // delTableCmd.CommandText = "DROP TABLE IF EXISTS favorite_beers";
                // delTableCmd.ExecuteNonQuery();

                // var createTableCmd = connection.CreateCommand();
                // createTableCmd.CommandText = "CREATE TABLE favorite_beers(name VARCHAR(50))";
                // createTableCmd.ExecuteNonQuery();

                //Seed some data:
                // using (var transaction = connection.BeginTransaction())
                // {
                //     var insertCmd = connection.CreateCommand();

                //     insertCmd.CommandText = "INSERT INTO favorite_beers VALUES('LAGUNITAS IPA')";
                //     insertCmd.ExecuteNonQuery();

                //     insertCmd.CommandText = "INSERT INTO favorite_beers VALUES('JAI ALAI IPA')";
                //     insertCmd.ExecuteNonQuery();

                //     insertCmd.CommandText = "INSERT INTO favorite_beers VALUES('RANGER IPA')";
                //     insertCmd.ExecuteNonQuery();

                //     transaction.Commit();
                // }

                //Read the newly inserted data:
                // var selectCmd = connection.CreateCommand();
                // selectCmd.CommandText = "SELECT * FROM Achievement";

                // using (var reader = selectCmd.ExecuteReader())
                // {
                //     while (reader.Read())
                //     {
                //         var message = reader.GetString(0);
                //         Console.WriteLine(message);
                //     }
                // }
            }
        }

        private static void GetAllCategories(SqliteConnection connection)
        {
            var selectCmd = connection.CreateCommand();
            selectCmd.CommandText = @"WITH CTE_AchievementCategory(ID, ParentID, Location, LocationPath) AS (
                                    SELECT ID, ParentID, Location, substr('0' || Location, -2, 2)
                                    FROM AchievementCategory AC
                                    WHERE ParentID IS NULL
                                    UNION ALL
                                    SELECT AC.ID, AC.ParentID, AC.Location, CTEAC.LocationPath || '.' || substr('0' || AC.Location, -2, 2)
                                    FROM AchievementCategory AC INNER JOIN CTE_AchievementCategory CTEAC
                                    ON CTEAC.ID = AC.ParentID
                                    )
                                    SELECT
                                        AC.*, F.*, CTEAC.LocationPath
                                    FROM
                                        CTE_AchievementCategory CTEAC
                                        left join AchievementCategory AC
                                        on CTEAC.ID = AC.ID
                                        left join AchievementCategory P
                                        on AC.ParentID = P.ID
                                        left join Function F
                                        on AC.FunctionID = F.ID
                                    ORDER BY CTEAC.LocationPath";

            using (var reader = selectCmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    var category = new AchievementCategory(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), new Function(reader.GetInt32(6), reader.GetString(7)), reader.IsDBNull(5) ? 0 : reader.GetInt32(5), reader.IsDBNull(3) ? null : Categories.Find(c => c.ID == reader.GetInt32(3)));
                    Categories.Add(category);
                    var location = reader.GetString(8);
                    var padding = location.Length / 3;
                    var spacing = "";
                    for (int i = 0; i < padding; i++)
                    {
                        spacing += "-";
                    }
                    Console.WriteLine(spacing + category);
                }
            }
        }

        private static void AddNewCategory(SqliteConnection connection)
        {
            Console.Write("ID: ");
            int id = Convert.ToInt32(Console.ReadLine());
            Console.Write("Locaiton: ");
            int location = Convert.ToInt32(Console.ReadLine());
            Console.Write("Name: ");
            string name = Console.ReadLine();
            Console.Write("Parent ID: ");
            int parentID = Convert.ToInt32(Console.ReadLine());
            Console.Write("Function ID: ");
            int functionID = Convert.ToInt32(Console.ReadLine());
            Console.Write("Function Value: ");
            int functionValue = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine(id);
        }
    }
}