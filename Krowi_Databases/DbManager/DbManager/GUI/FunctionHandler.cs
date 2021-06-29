using DbManager.DataManagers;
using DbManager.Objects;
using Microsoft.Data.Sqlite;
using System.Windows.Forms;

namespace DbManager.GUI
{
    public class FunctionHandler
    {
        private readonly ComboBox comboBox;
        private readonly FunctionDataManager dataManager;

        public FunctionHandler(ComboBox comboBox, FunctionDataManager dataManager)
        {
            this.comboBox = comboBox;
            this.dataManager = dataManager;
        }

        public IDataManager DataManager => dataManager;

        public void RefreshComboBox()
        {
            // First get the selected function so we can select it again after the refresh
            var selectedID = comboBox.SelectedItem != null ? ((Function)comboBox.SelectedItem).ID : -1;

            comboBox.Items.Clear(); // Clear before adding new functions

            var functions = ((FunctionDataManager)DataManager).GetAll();

            comboBox.Items.Add(new Function()); // Empty Function
            foreach (var function in functions)
                comboBox.Items.Add(function);

            // Select the previous selected function again
            comboBox.SelectedIndex = 0;
            if (selectedID > 0)
                foreach (Function item in comboBox.Items)
                    if (item.ID == selectedID)
                    {
                        comboBox.SelectedItem = item;
                        break;
                    }
        }

        public Function GetSelectedFunction()
        {
            return (Function)comboBox.SelectedItem;
        }
    }
}