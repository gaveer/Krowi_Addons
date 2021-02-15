using System;
using Microsoft.Data.Sqlite;

namespace DbManager
{
    public class Function
    {
        public int ID { get; set; }
        public string Call { get; set; }

        public Function(int id, string call)
        {
            ID = id;
            Call = call;
        }
    }
}