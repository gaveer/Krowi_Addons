using Microsoft.Data.Sqlite;
using System;

namespace DbManager.DataManagers
{
    public class DataManagerBase : IDataManager
    {
        protected SqliteConnection connection;

        protected DataManagerBase(SqliteConnection connection)
        {
            _ = connection ?? throw new ArgumentNullException(nameof(connection));

            this.connection = connection;
        }
    }
}