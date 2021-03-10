using DbManager.Objects;
using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.Linq;

namespace DbManager.DataManagers
{
    public class FunctionDataManager
    {
        private SqliteConnection connection;

        public FunctionDataManager(SqliteConnection connection)
        {
            this.connection = connection;
        }

        public List<Function> Functions { get; private set; } = new List<Function>();

        public List<Function> GetAll()
        {
            _ = connection ?? throw new ArgumentNullException(nameof(connection));

            var selectCmd = connection.CreateCommand();
            selectCmd.CommandText = @"SELECT ID, Call, Description FROM Function";

            using (var reader = selectCmd.ExecuteReader())
            {
                Functions.Clear();
                while (reader.Read())
                {
                    var function = new Function(reader.GetInt32(0), reader.GetString(1), reader.IsDBNull(2) ? null : reader.GetString(2));
                    Functions.Add(function);
                    Console.WriteLine(function);
                }
            }

            return Functions;
        }

        public Function GetLegacyFunction()
        {
            if (Functions.Count == 0)
                GetAll();

            return Functions.Single(x => x.ID == 5);
        }
    }
}