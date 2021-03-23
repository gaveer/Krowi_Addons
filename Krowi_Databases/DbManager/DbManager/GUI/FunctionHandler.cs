using DbManager.DataManagers;
using DbManager.Objects;
using Microsoft.Data.Sqlite;
using System.Windows.Forms;

namespace DbManager.GUI
{
    public class FunctionHandler
    {
        private readonly ListBox lsbFunctions;

        public FunctionHandler(SqliteConnection connection, ListBox lsbFunctions)
        {
            this.lsbFunctions = lsbFunctions;
            DataManager = new FunctionDataManager(connection);
        }

        public FunctionDataManager DataManager { get; }

        public void RefreshListBox()
        {
            // First get the selected function so we can select it again after the refresh
            var selectedID = lsbFunctions.SelectedItem != null ? ((Function)lsbFunctions.SelectedItem).ID : -1;

            lsbFunctions.Items.Clear(); // Clear before adding new functions

            var functions = DataManager.GetAll();

            lsbFunctions.Items.Add(new Function(-1, null, null)); // Empty Function
            foreach (var function in functions)
                lsbFunctions.Items.Add(function);

            // Select the previous selected function again
            lsbFunctions.SelectedIndex = 0;
            if (selectedID > 0)
                foreach (Function item in lsbFunctions.Items)
                    if (item.ID == selectedID)
                    {
                        lsbFunctions.SelectedItem = item;
                        break;
                    }
        }

        public Function GetSelectedFunction()
        {
            return (Function)lsbFunctions.SelectedItem;
        }
    }
}