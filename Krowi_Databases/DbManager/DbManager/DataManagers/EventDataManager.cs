using DbManager.Objects;
using Microsoft.Data.Sqlite;
using System.Collections.Generic;
using System.Linq;

namespace DbManager.DataManagers
{
    public class EventDataManager : DataManagerBase
    {
        private readonly List<Event> functions = new();

        public EventDataManager(SqliteConnection connection) : base(connection) { }

        public List<Function> GetAll(bool refresh = false)
        {
            if (!refresh)
                if (functions.Any())
                    return functions;

            var selectCmd = connection.CreateCommand();
            selectCmd.CommandText = @"  SELECT
                                            ID, Call, Description
                                        FROM
                                            Function";

            using (var reader = selectCmd.ExecuteReader())
            {
                functions.Clear();
                while (reader.Read())
                    functions.Add(new Event()
                    {
                        ID = reader.GetInt32(0),
                        Call = reader.GetString(1),
                        Description = reader.GetString(2)
                    });
            }

            return functions;
        }

        public Function GetLegacyFunction()
        {
            if (!functions.Any())
                GetAll();

            return functions.Single(x => x.ID == 5);
        }
    }
}