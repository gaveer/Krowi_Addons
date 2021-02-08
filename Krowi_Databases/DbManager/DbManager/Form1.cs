using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.Windows.Forms;

namespace DbManager
{
    public partial class Form1 : Form
    {
        static readonly SqliteConnectionStringBuilder ConnStrBuilder = new SqliteConnectionStringBuilder();
        static SqliteConnection Connection;

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            ConnStrBuilder.DataSource = "../../../../Krowi_AchievementFilter.db";

            Connection = new SqliteConnection(ConnStrBuilder.ConnectionString);
            Connection.Open();

            RefreshCategories(Connection);
            RefreshFunctions(Connection);
        }

        private void RefreshFunctions(SqliteConnection connection)
        {
            if (connection == null)
                throw new ArgumentNullException(nameof(connection));

            var selectedID = lsbFunctions.SelectedItem != null ? ((Function)lsbFunctions.SelectedItem).ID : -1;

            var functions = Function.GetAll(connection);
            lsbFunctions.Items.Clear(); // Clear before adding new functions
            lsbFunctions.Items.Add(new Function(-1, null)); // Empty Function
            foreach (var function in functions)
                lsbFunctions.Items.Add(function);

            lsbFunctions.SelectedIndex = 0;
            if (selectedID > 0)
                foreach (Function item in lsbFunctions.Items)
                    if (item.ID == selectedID)
                    {
                        lsbFunctions.SelectedItem = item;
                        break;
                    }
        }

        private void RefreshCategories(SqliteConnection connection)
        {
            if (connection == null)
                throw new ArgumentNullException(nameof(connection));

            var achievementCategoriesListBoxes = new List<ListBox> { lsbAchievementCategories1, lsbAchievementCategories2 };

            foreach (var listBox in achievementCategoriesListBoxes)
            {
                var selectedID = listBox.SelectedItem != null ? ((AchievementCategory)listBox.SelectedItem).ID : -1;

                var categories = AchievementCategory.GetAll(connection);
                listBox.Items.Clear(); // Clear before adding new categories
                listBox.Items.Add(new AchievementCategory(-1, 0, null, null, 0)); // Empty Category
                foreach (var category in categories)
                    listBox.Items.Add(category);

                if (listBox.Items.Count > 0)
                    listBox.SelectedIndex = 0;
                if (selectedID > 0)
                    foreach (AchievementCategory item in listBox.Items)
                        if (item.ID == selectedID)
                        {
                            listBox.SelectedItem = item;
                            break;
                        }
            }
        }
    }
}