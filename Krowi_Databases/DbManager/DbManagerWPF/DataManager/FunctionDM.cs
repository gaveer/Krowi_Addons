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

        private Function GetXFunction(int id)
        {
            if (!functions.Any())
                GetAll();

            return functions.Single(x => x.ID == id);
        }

        public Function GetLegacyFunction()
        {
            return GetXFunction(5);
        }

        public Function GetCurrentZoneFunction()
        {
            return GetXFunction(21);
        }

        public Function GetSelectedZoneFunction()
        {
            return GetXFunction(27);
        }

        public Function GetComingInFunction()
        {
            return GetXFunction(23);
        }

        public Function GetExcludedFunction()
        {
            return GetXFunction(34);
        }

        public Function Get10PlayerFunction()
        {
            return GetXFunction(6);
        }

        public Function Get25PlayerFunction()
        {
            return GetXFunction(7);
        }

        public Function GetTabEventsFunction()
        {
            return GetXFunction(37);
        }

        public Function GetTabExpansionsFunction()
        {
            return GetXFunction(38);
        }

        public Function GetFocusedFunction()
        {
            return GetXFunction(44);
        }

        public Function GetTabPvPFunction()
        {
            return GetXFunction(45);
        }

        public Function GetTabSpecialsFunction()
        {
            return GetXFunction(46);
        }
    }
}