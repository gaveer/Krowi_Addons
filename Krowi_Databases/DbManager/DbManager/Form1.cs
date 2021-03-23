using DbManager.GUI;
using DbManager.Objects;
using Microsoft.Data.Sqlite;
using System;
using System.Windows.Forms;

namespace DbManager
{
    public partial class Form1 : Form
    {
        private FunctionHandler functionHandler;
        private AchievementCategoryHandler achievementCategoryHandler;
        private AchievementHandler achievementHandler;
        private XuFuEncounterHandler xuFuEncounterHandler;
        private AchievementCriteriaHandler achievementCriteriaHandler;
        private ExportHandler exportHandler;

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            txtCategoryName.GotFocus += TxtCategoryName_GotFocus;
            txtFunctionValue.GotFocus += TxtFunctionValue_GotFocus;
            txtAchievementID.GotFocus += TxtAchievementID_GotFocus;

            var connStrBuilder = new SqliteConnectionStringBuilder();
            connStrBuilder.DataSource = "../../../../Krowi_AchievementFilter.db";
            var connection = new SqliteConnection(connStrBuilder.ConnectionString);
            connection.Open();

            functionHandler = new FunctionHandler(connection, lsbFunctions);
            achievementCategoryHandler = new AchievementCategoryHandler(connection, tvwAchievementCategories, txtMapIDs, functionHandler);
            achievementHandler = new AchievementHandler(connection, lsbAchievements, achievementCategoryHandler);
            xuFuEncounterHandler = new XuFuEncounterHandler(connection, btnGetXuFuIDs, pgbXuFu);
            achievementCriteriaHandler = new AchievementCriteriaHandler(connection, achievementHandler.DataManager, xuFuEncounterHandler.DataManager);
            exportHandler = new ExportHandler(connection, functionHandler.DataManager, achievementCriteriaHandler.DataManager);

            achievementCategoryHandler.RefreshTreeView();
            functionHandler.RefreshListBox();

            btnAchievementCategoryMoveLeft.Text = char.ConvertFromUtf32(0x2190);
            btnAchievementCategoryMoveUp.Text = char.ConvertFromUtf32(0x2191);
            btnAchievementCategoryMoveDown.Text = char.ConvertFromUtf32(0x2193);
            btnAchievementCategoryMoveRight.Text = char.ConvertFromUtf32(0x2192);
            btnAchievementMoveUp.Text = char.ConvertFromUtf32(0x2191);
            btnAchievementMoveDown.Text = char.ConvertFromUtf32(0x2193);
        }

        #region Facus and Selection Changed
        private void TxtCategoryName_GotFocus(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtCategoryName.Text))
                txtCategoryName.Text = Clipboard.GetText();
        }

        private void TxtFunctionValue_GotFocus(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtFunctionValue.Text))
                txtFunctionValue.Text = Clipboard.GetText();
        }

        private void TxtAchievementID_GotFocus(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtAchievementID.Text))
                txtAchievementID.Text = Clipboard.GetText();
        }

        private void TvwAchievementCategories_AfterSelect(object sender, TreeViewEventArgs e)
        {
            achievementHandler.RefreshListBox();

            var category = achievementCategoryHandler.GetSelectedAchievementCategory();
            category.MapIDs = achievementCategoryHandler.DataManager.GetMapIDs(category);
            txtMapIDs.Text = string.Join(", ", category.MapIDs);
        }

        private void LsbFunctions_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtCategoryName.Text))
                txtCategoryName.Text = ((Function)lsbFunctions.SelectedItem).Description;
        }

        private void LsbAchievements_SelectedIndexChanged(object sender, EventArgs e)
        {
            var achievement = (Achievement)lsbAchievements.SelectedItem;

            cbxObtainable.Checked = achievement.Obtainable;
            cbxHasWowheadLink.Checked = achievement.HasWowheadLink;

            if (achievement.Faction == Faction.NoFaction)
                rdbNoFaction.Checked = true;
            else if (achievement.Faction == Faction.Alliance)
                rdbAlliance.Checked = true;
            else if (achievement.Faction == Faction.Horde)
                rdbHorde.Checked = true;

            if (achievement.Covenant == Covenant.NoCovenant)
                rdbNoCovenant.Checked = true;
            else if (achievement.Covenant == Covenant.Kyrian)
                rdbKyrian.Checked = true;
            else if (achievement.Covenant == Covenant.Venthyr)
                rdbVenthyr.Checked = true;
            else if (achievement.Covenant == Covenant.NightFae)
                rdbNightFae.Checked = true;
            else if (achievement.Covenant == Covenant.Necrolord)
                rdbNecrolord.Checked = true;

            btnSyncExternalLinking.Enabled = achievement != null;
        }
        #endregion

        #region AchievementCategory
        private void btnAchievementCategoryAdd_Click(object sender, EventArgs e)
        {
            var functionValue = string.IsNullOrEmpty(txtFunctionValue.Text) ? -1 : Convert.ToInt32(txtFunctionValue.Text);
            achievementCategoryHandler.Add(cbxCategoryAsParent.Checked, txtCategoryName.Text, functionValue, cbxLegacyCategory.Checked, txtMapIDs.Text);

            cbxCategoryAsParent.Checked = false;
            txtCategoryName.Clear();
            txtFunctionValue.Clear();
            cbxLegacyCategory.Checked = false;
        }

        private void btnAchievementCategoryRemove_Click(object sender, EventArgs e)
        {
            achievementCategoryHandler.Remove();
        }

        private void btnAchievementCategoryMoveRight_Click(object sender, EventArgs e)
        {
            achievementCategoryHandler.MoveRight();
        }

        private void btnAchievementCategoryMoveLeft_Click(object sender, EventArgs e)
        {
            achievementCategoryHandler.MoveLeft();
        }

        private void btnAchievementCategoryMoveDown_Click(object sender, EventArgs e)
        {
            achievementCategoryHandler.MoveDown();
        }

        private void btnAchievementCategoryMoveUp_Click(object sender, EventArgs e)
        {
            achievementCategoryHandler.MoveUp();
        }
        #endregion

        #region Achievement
        private void BtnAchievementAdd_Click(object sender, EventArgs e)
        {
            Faction faction = Faction.NoFaction;
            if (rdbAlliance.Checked)
                faction = Faction.Alliance;
            else if (rdbHorde.Checked)
                faction = Faction.Horde;

            Covenant covenant = Covenant.NoCovenant;
            if (rdbKyrian.Checked)
                covenant = Covenant.Kyrian;
            else if (rdbVenthyr.Checked)
                covenant = Covenant.Venthyr;
            else if (rdbNightFae.Checked)
                covenant = Covenant.NightFae;
            else if (rdbNecrolord.Checked)
                covenant = Covenant.Necrolord;

            achievementHandler.Add(txtAchievementID.Text, faction, covenant, cbxObtainable.Checked, cbxHasWowheadLink.Checked);

            txtAchievementID.Clear();
            cbxObtainable.Checked = true;
            cbxHasWowheadLink.Checked = true;
            rdbNoFaction.Checked = true;
            rdbNoCovenant.Checked = true;
        }

        private void BtnAchievementRemove_Click(object sender, EventArgs e)
        {
            achievementHandler.Remove();
        }

        private void BtnAchievementMoveUp_Click(object sender, EventArgs e)
        {
            achievementHandler.MoveUp();
        }

        private void BtnAchievementMoveDown_Click(object sender, EventArgs e)
        {
            achievementHandler.MoveDown();
        }
        #endregion

        private void BtnExport_Click(object sender, EventArgs e)
        {
            exportHandler.ExportAchievementFilter();
        }

        private void BtnGetXuFuIDs_Click(object sender, EventArgs e)
        {
            xuFuEncounterHandler.UpdateEncountersFromWeb();
        }

        private void BtnImportWoWPetBattleCriteria_Click(object sender, EventArgs e)
        {
            achievementCriteriaHandler.Add(txtAchCrit.Text);
        }

        private void BtnSyncExternalLinking_Click(object sender, EventArgs e)
        {
            achievementCriteriaHandler.SyncExternalLinking((Achievement)lsbAchievements.SelectedItem);
        }

        private void BtnExportPetBattles_Click(object sender, EventArgs e)
        {
            exportHandler.ExportPetBattles();
        }

        private void BtnUpdateMapIDs_Click(object sender, EventArgs e)
        {
            achievementCategoryHandler.UpdateMapIDs(txtMapIDs.Text);
        }
    }
}