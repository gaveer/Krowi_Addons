using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DbManager
{
    public class Function
    {
        public int ID { get; set; }
        public string Call { get; set; }
        public string Description { get; set; }

        public Function(int id, string call, string description = null)
        {
            ID = id;
            Call = call;
            Description = description;
        }

        public override string ToString()
        {
            if (ID > 0)
                return $"{ID} - {Call}{(string.IsNullOrEmpty(Description)?"":$" - {Description}")}";
            else
                return "";
        }

        public static List<Function> GetAll(SqliteConnection connection)
        {
            var functions = new List<Function>();
            var selectCmd = connection.CreateCommand();
            selectCmd.CommandText = @"SELECT ID, Call, Description FROM Function";

            using (var reader = selectCmd.ExecuteReader())
            {
                functions.Clear();
                while (reader.Read())
                {
                    var function = new Function(reader.GetInt32(0), reader.GetString(1), reader.IsDBNull(2) ? null : reader.GetString(2));
                    functions.Add(function);
                    Console.WriteLine(function);
                }
            }

            return functions;
        }
    }
}