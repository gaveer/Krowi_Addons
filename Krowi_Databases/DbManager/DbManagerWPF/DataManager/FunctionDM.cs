using DbManagerWPF.Model;
using Microsoft.Data.Sqlite;
using System.Collections.Generic;
using System.Linq;

namespace DbManagerWPF.DataManager
{
    public class FunctionDM : DataManagerBase
    {
        private readonly List<Function> functions = new();

        public FunctionDM(SqliteConnection connection) : base(connection) { }

        public IEnumerable<Function> GetAll(bool refresh = false)
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
                    functions.Add(new Function()
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

        public Function GetCurrentZoneFunction()
        {
            if (!functions.Any())
                GetAll();

            return functions.Single(x => x.ID == 21);
        }

        public Function GetSelectedZoneFunction()
        {
            if (!functions.Any())
                GetAll();

            return functions.Single(x => x.ID == 27);
        }

        public Function GetComingInFunction()
        {
            if (!functions.Any())
                GetAll();

            return functions.Single(x => x.ID == 23);
        }

        public Function GetExcludedFunction()
        {
            if (!functions.Any())
                GetAll();

            return functions.Single(x => x.ID == 34);
        }

        public Function Get10PlayerFunction()
        {
            if (!functions.Any())
                GetAll();

            return functions.Single(x => x.ID == 6);
        }

        public Function Get25PlayerFunction()
        {
            if (!functions.Any())
                GetAll();

            return functions.Single(x => x.ID == 7);
        }

        public Function GetTabEventsFunction()
        {
            if (!functions.Any())
                GetAll();

            return functions.Single(x => x.ID == 37);
        }

        public Function GetTabExpansionsFunction()
        {
            if (!functions.Any())
                GetAll();

            return functions.Single(x => x.ID == 38);
        }

        public Function GetFocusedFunction()
        {
            if (!functions.Any())
                GetAll();

            return functions.Single(x => x.ID == 44);
        }
    }
}