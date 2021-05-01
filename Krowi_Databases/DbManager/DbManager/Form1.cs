using DbManager.DataManagers;
using DbManager.GUI;
using DbManager.Objects;
using Microsoft.Data.Sqlite;
using System;
using System.Drawing;
using System.IO;
using System.Net;
using System.Text.RegularExpressions;
using System.Windows.Forms;

namespace DbManager
{
    public partial class Form1 : Form
    {
        private FunctionDataManager functionDataManager;
        private FunctionHandler functionHandler;
        private AchievementCategoryDataManager achievementCategoryDataManager;
        private AchievementCategoryHandler achievementCategoryHandler;

        private ExportHandler exportHandler;

        private AchievementDataManager achievementDataManager;
        private AchievementHandler achievementHandler;
        private PetBattleLinksDataManager petBattleLinksDataManager;
        private PetBattleLinksHandler petBattleLinksHandler;
        private XuFuEncounterDataManager xuFuEncounterDataManager;
        private XuFuEncounterHandler xuFuEncounterHandler;
        private UIMapDataManager uiMapDataManager;
        private UIMapHandler uiMapHandler;

        private bool triggerActiveChange;
        private bool triggerCanMergeChange;

        public Form1()
        {
            InitializeComponent();
            AlignControls();
        }

        #region Controls Alignment

        private void AlignControls()
        {
            var width = 200;
            var gbxOffset = 6;
            var btnOffset = 6;
            var firstButtonYOffset = 19;
            var btnHeight = 23;

            AlignAchievementCategoryControls(width, gbxOffset, btnOffset, firstButtonYOffset, btnHeight);

            AlignAchievementControls(width, gbxOffset, btnOffset, firstButtonYOffset, btnHeight);

            AlignPetBattleControls(width, gbxOffset, btnOffset, firstButtonYOffset);

            AlignImportExportControls(width, gbxOffset, btnOffset, firstButtonYOffset);

            pnlGroupBoxes.Width = gbxAchievementCategory.Right + gbxOffset / 2;
            Height = gbxImportExport.RectangleToScreen(gbxImportExport.ClientRectangle).Bottom + RectangleToScreen(ClientRectangle).Top - Top + tabKrowisAchievementFilter.Margin.Bottom + tabKrowisAchievementFilter.Padding.Bottom + tabControl1.Margin.Bottom + tabControl1.Padding.Y;
        }

        private void AlignAchievementCategoryControls(int width, int gbxOffset, int btnOffset, int firstButtonYOffset, int btnHeight)
        {
            gbxAchievementCategory.Location = new Point(gbxOffset, gbxOffset / 2);
            gbxAchievementCategory.Width = width;

            lblCategoryName.Location = new Point(btnOffset + 1, firstButtonYOffset + 5); // 1st button needs more
            txtCategoryName.Location = new Point(gbxAchievementCategory.Width / 2 + btnOffset / 2 + 1, firstButtonYOffset + 1); // 1st button needs more
            txtCategoryName.Width = (gbxAchievementCategory.Width - btnOffset * 3) / 2 - 2;
            txtCategoryName.Height = btnHeight - 2;

            cbxFunctions.Location = new Point(btnOffset + 1, txtCategoryName.Bottom + btnOffset);
            cbxFunctions.Width = gbxAchievementCategory.Width - btnOffset * 2 - 2;
            cbxFunctions.Height = btnHeight - 2;

            lblFunctionValue.Location = new Point(lblCategoryName.Left, cbxFunctions.Bottom + btnOffset * 2 - 1);
            txtFunctionValue.Location = new Point(txtCategoryName.Left, cbxFunctions.Bottom + btnOffset + 1);
            txtFunctionValue.Width = txtCategoryName.Width;
            txtFunctionValue.Height = btnHeight - 2;

            cbxCategoryAsParent.Location = new Point(lblFunctionValue.Left + btnOffset / 2, txtFunctionValue.Bottom + btnOffset * 2 - 1);

            cbxLegacyCategory.Location = new Point(cbxCategoryAsParent.Left, cbxCategoryAsParent.Bottom + btnOffset);

            btnAchievementCategoryAdd.Location = new Point(btnOffset, cbxLegacyCategory.Bottom + btnOffset);
            btnAchievementCategoryAdd.Width = (gbxAchievementCategory.Width - btnOffset * 3) / 2;
            btnAchievementCategoryRemove.Location = new Point(txtCategoryName.Left - 1, btnAchievementCategoryAdd.Top);
            btnAchievementCategoryRemove.Width = btnAchievementCategoryAdd.Width;

            btnAchievementCategoryMoveLeft.Location = new Point(btnAchievementCategoryAdd.Left, btnAchievementCategoryAdd.Bottom + btnOffset);
            btnAchievementCategoryMoveLeft.Width = (gbxAchievementCategory.Width - btnOffset * 5) / 4 + 1;
            btnAchievementCategoryMoveUp.Location = new Point(btnAchievementCategoryMoveLeft.Right + btnOffset - 1, btnAchievementCategoryMoveLeft.Top);
            btnAchievementCategoryMoveUp.Width = btnAchievementCategoryMoveLeft.Width;
            btnAchievementCategoryMoveDown.Location = new Point(btnAchievementCategoryMoveUp.Right + btnOffset, btnAchievementCategoryMoveLeft.Top);
            btnAchievementCategoryMoveDown.Width = btnAchievementCategoryMoveLeft.Width;
            btnAchievementCategoryMoveRight.Location = new Point(btnAchievementCategoryMoveDown.Right + btnOffset - 1, btnAchievementCategoryMoveLeft.Top);
            btnAchievementCategoryMoveRight.Width = btnAchievementCategoryMoveLeft.Width;

            cbxIsActive.Location = new Point(cbxLegacyCategory.Left, btnAchievementCategoryMoveLeft.Bottom + btnOffset * 2 - 1);

            cbxCanMerge.Location = new Point(cbxLegacyCategory.Left, cbxIsActive.Bottom + btnOffset);

            lblMapIDs.Location = new Point(lblCategoryName.Left, cbxCanMerge.Bottom + btnOffset + 5);
            txtMapIDs.Location = new Point(txtCategoryName.Left, cbxCanMerge.Bottom + btnOffset + 1);
            txtMapIDs.Width = txtCategoryName.Width;
            txtMapIDs.Height = btnHeight - 2;

            btnUpdateMapIDs.Location = new Point(btnAchievementCategoryAdd.Left, txtMapIDs.Bottom + btnOffset + 1);
            btnUpdateMapIDs.Width = gbxAchievementCategory.Width - btnOffset * 2;

            gbxAchievementCategory.Height = btnUpdateMapIDs.Bottom + btnOffset;
        }

        private void AlignAchievementControls(int width, int gbxOffset, int btnOffset, int firstButtonYOffset, int btnHeight)
        {
            // gbxAchievement
            gbxAchievement.Location = new Point(gbxAchievementCategory.Left, gbxAchievementCategory.Bottom + gbxOffset);
            gbxAchievement.Width = width;

            lblAchievementID.Location = new Point(btnOffset + 1, firstButtonYOffset + 5); // 1st button needs more
            txtAchievementID.Location = new Point(gbxAchievement.Width / 2 + btnOffset / 2 + 1, firstButtonYOffset + 1); // 1st button needs more
            txtAchievementID.Width = (gbxAchievement.Width - btnOffset * 3) / 2 - 2;
            txtAchievementID.Height = btnHeight - 2;

            cbxObtainable.Location = new Point(lblAchievementID.Left + btnOffset / 2, txtAchievementID.Bottom + btnOffset * 2 - 1);
            cbxWowheadLink.Location = new Point(txtAchievementID.Left, txtAchievementID.Bottom + btnOffset * 2 - 1);

            // gbxAchievementFaction
            gbxAchievementFaction.Location = new Point(btnOffset + 1, cbxObtainable.Bottom + btnOffset);
            gbxAchievementFaction.Width = gbxAchievement.Width - btnOffset * 2 - 2;

            rdbNoFaction.Location = new Point(btnOffset, firstButtonYOffset);

            rdbAlliance.Location = new Point(btnOffset, rdbNoFaction.Bottom + btnOffset);

            rdbHorde.Location = new Point(gbxAchievementFaction.Width / 2 + btnOffset / 2 + 1, rdbNoFaction.Bottom + btnOffset);

            gbxAchievementFaction.Height = rdbAlliance.Bottom + btnOffset;

            // gbxAchievementCovenant
            gbxAchievementCovenant.Location = new Point(btnOffset + 1, gbxAchievementFaction.Bottom + gbxOffset);
            gbxAchievementCovenant.Width = gbxAchievement.Width - btnOffset * 2 - 2;

            rdbNoCovenant.Location = new Point(btnOffset, firstButtonYOffset);

            rdbKyrian.Location = new Point(rdbNoCovenant.Left, rdbNoCovenant.Bottom + btnOffset);

            rdbVenthyr.Location = new Point(gbxAchievementCovenant.Width / 2 + btnOffset / 2 + 1, rdbKyrian.Top);

            rdbNightFae.Location = new Point(rdbNoCovenant.Left, rdbKyrian.Bottom + btnOffset);

            rdbNecrolord.Location = new Point(rdbVenthyr.Left, rdbNightFae.Top);

            gbxAchievementCovenant.Height = rdbNightFae.Bottom + btnOffset;

            // gbxAchievement
            btnAchievementAdd.Location = new Point(btnOffset, gbxAchievementCovenant.Bottom + btnOffset);
            btnAchievementAdd.Width = (gbxAchievement.Width - btnOffset * 3) / 2;
            btnAchievementRemove.Location = new Point(gbxAchievement.Width / 2 + btnOffset / 2, btnAchievementAdd.Top);
            btnAchievementRemove.Width = btnAchievementAdd.Width;

            btnAchievementMoveUp.Location = new Point(btnAchievementAdd.Left, btnAchievementAdd.Bottom + btnOffset);
            btnAchievementMoveUp.Width = btnAchievementAdd.Width;
            btnAchievementMoveDown.Location = new Point(btnAchievementRemove.Left, btnAchievementMoveUp.Top);
            btnAchievementMoveDown.Width = btnAchievementAdd.Width;

            gbxAchievement.Height = btnAchievementMoveUp.Bottom + btnOffset;
        }

        private void AlignPetBattleControls(int width, int gbxOffset, int btnOffset, int firstButtonYOffset)
        {
            gbxPetBattles.Location = new Point(gbxAchievement.Left, gbxAchievement.Bottom + gbxOffset);
            gbxPetBattles.Width = width;

            txtWoWPetBattleCriteria.Location = new Point(btnOffset + 1, firstButtonYOffset + 1); // 1st button needs more
            txtWoWPetBattleCriteria.Width = gbxPetBattles.Width - btnOffset * 2 - 2;
            txtWoWPetBattleCriteria.Height = btnImportWoWPetBattleCriteria.Height * 2 + btnOffset - 2;

            btnImportWoWPetBattleCriteria.Location = new Point(txtWoWPetBattleCriteria.Left - 1, txtWoWPetBattleCriteria.Bottom + btnOffset + 1);
            btnImportWoWPetBattleCriteria.Width = txtWoWPetBattleCriteria.Width + 2;

            btnSyncExternalLinking.Location = new Point(txtWoWPetBattleCriteria.Left - 1, btnImportWoWPetBattleCriteria.Bottom + btnOffset);
            btnSyncExternalLinking.Width = txtWoWPetBattleCriteria.Width + 2;

            gbxPetBattles.Height = btnSyncExternalLinking.Bottom + btnOffset;
        }

        private void AlignImportExportControls(int width, int gbxOffset, int btnOffset, int firstButtonYOffset)
        {
            gbxImportExport.Location = new Point(gbxPetBattles.Left, gbxPetBattles.Bottom + gbxOffset);
            gbxImportExport.Width = width;

            btnExport.Location = new Point(btnOffset, firstButtonYOffset); // 1st button needs more
            btnExport.Width = gbxImportExport.Width - btnOffset * 2;

            btnExportPetBattles.Location = new Point(btnExport.Left, btnExport.Bottom + btnOffset);
            btnExportPetBattles.Width = btnExport.Width;

            btnUpdateAchievement_AGT.Location = new Point(btnExport.Left, btnExportPetBattles.Bottom + btnOffset);
            btnUpdateAchievement_AGT.Width = btnExport.Width;

            pgbUpdateAchievement_AGT.Location = new Point(btnUpdateAchievement_AGT.Left + 1, btnUpdateAchievement_AGT.Top + 1);
            pgbUpdateAchievement_AGT.Width = btnUpdateAchievement_AGT.Width - 2;
            pgbUpdateAchievement_AGT.Height = btnUpdateAchievement_AGT.Height - 2;
            pgbUpdateAchievement_AGT.Visible = false;

            btnUpdateUIMap.Location = new Point(btnExport.Left, btnUpdateAchievement_AGT.Bottom + btnOffset);
            btnUpdateUIMap.Width = btnExport.Width;

            pgbUpdateUIMap.Location = new Point(btnUpdateUIMap.Left + 1, btnUpdateUIMap.Top + 1);
            pgbUpdateUIMap.Width = btnUpdateUIMap.Width - 2;
            pgbUpdateUIMap.Height = btnUpdateUIMap.Height - 2;
            pgbUpdateUIMap.Visible = false;

            btnUpdateXuFuEncounter.Location = new Point(btnExport.Left, btnUpdateUIMap.Bottom + btnOffset);
            btnUpdateXuFuEncounter.Width = btnExport.Width;

            pgbUpdateXuFuEncounter.Location = new Point(btnUpdateXuFuEncounter.Left + 1, btnUpdateXuFuEncounter.Top + 1);
            pgbUpdateXuFuEncounter.Width = btnUpdateXuFuEncounter.Width - 2;
            pgbUpdateXuFuEncounter.Height = btnUpdateXuFuEncounter.Height - 2;
            pgbUpdateXuFuEncounter.Visible = false;

            gbxImportExport.Height = btnUpdateXuFuEncounter.Bottom + btnOffset;
        }

        #endregion

        private void Form1_Load(object sender, EventArgs e)
        {
            txtCategoryName.GotFocus += TxtCategoryName_GotFocus;
            txtFunctionValue.GotFocus += TxtFunctionValue_GotFocus;
            txtAchievementID.GotFocus += TxtAchievementID_GotFocus;
            txtWoWPetBattleCriteria.GotFocus += TxtWoWPetBattleCriteria_GotFocus;
            txtWoWPetBattleCriteria.ResetText(); // Trigger text changes

            var connStrBuilder = new SqliteConnectionStringBuilder();
            connStrBuilder.DataSource = "../../../../Krowi_AchievementFilter.db";
            var connection = new SqliteConnection(connStrBuilder.ConnectionString);
            connection.Open();

            functionDataManager = new FunctionDataManager(connection);
            functionHandler = new FunctionHandler(cbxFunctions, functionDataManager);

            achievementCategoryDataManager = new AchievementCategoryDataManager(connection, functionDataManager);
            achievementCategoryHandler = new AchievementCategoryHandler(tvwAchievementCategories, achievementCategoryDataManager, functionHandler);

            achievementDataManager = new AchievementDataManager(connection);
            achievementHandler = new AchievementHandler(lsbAchievements, btnUpdateAchievement_AGT, pgbUpdateAchievement_AGT, achievementDataManager, achievementCategoryHandler);

            xuFuEncounterDataManager = new XuFuEncounterDataManager(connection);
            xuFuEncounterHandler = new XuFuEncounterHandler(btnUpdateXuFuEncounter, pgbUpdateXuFuEncounter, xuFuEncounterDataManager);

            petBattleLinksDataManager = new PetBattleLinksDataManager(connection);
            petBattleLinksHandler = new PetBattleLinksHandler(petBattleLinksDataManager, achievementDataManager, xuFuEncounterDataManager);

            uiMapDataManager = new UIMapDataManager(connection);
            uiMapHandler = new UIMapHandler(btnUpdateUIMap, pgbUpdateUIMap, uiMapDataManager);

            exportHandler = new ExportHandler((AchievementDataManager)achievementHandler.DataManager, (AchievementCategoryDataManager)achievementCategoryHandler.DataManager, (FunctionDataManager)functionHandler.DataManager, (PetBattleLinksDataManager)petBattleLinksHandler.DataManager);


            achievementCategoryHandler.RefreshTreeView();
            functionHandler.RefreshComboBox();

            btnAchievementCategoryMoveLeft.Text = char.ConvertFromUtf32(0x2190);
            btnAchievementCategoryMoveUp.Text = char.ConvertFromUtf32(0x2191);
            btnAchievementCategoryMoveDown.Text = char.ConvertFromUtf32(0x2193);
            btnAchievementCategoryMoveRight.Text = char.ConvertFromUtf32(0x2192);
            btnAchievementMoveUp.Text = char.ConvertFromUtf32(0x2191);
            btnAchievementMoveDown.Text = char.ConvertFromUtf32(0x2193);

            //// test
            //WebClient client = new WebClient();
            //StreamWriter writer = new StreamWriter(Path.Combine(Path.GetTempPath(), "testfile.txt"), true);
            //for (int i = 2; i < 1000; i++)
            //{
            //    var source = client.DownloadString($"https://www.wow-petguide.com/Strategy/{i}");
            //    var match = Regex.Match(source, "id=\"treasure_box.*?div", RegexOptions.Singleline);

            //    if (match.Success)
            //    {
            //        var s = Regex.Replace($"-- {i} -- {match.Value}", @"\s+", " ");
            //        writer.WriteLine(s);
            //    }
            //}
            //writer.Close();
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


        private void TvwAchievementCategories_AfterSelect(object sender, TreeViewEventArgs e)
        {
            achievementHandler.RefreshListBox();

            var category = achievementCategoryHandler.GetSelectedAchievementCategory();
            category.MapIDs = ((AchievementCategoryDataManager)achievementCategoryHandler.DataManager).GetMapIDs(category);
            txtMapIDs.Text = string.Join(", ", category.MapIDs);
            triggerActiveChange = false;
            triggerCanMergeChange = false;
            cbxIsActive.Checked = category.Active;
            cbxCanMerge.Checked = category.CanMerge;
            triggerActiveChange = true;
            triggerCanMergeChange = true;
        }

        private void cbxFunctions_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtCategoryName.Text))
                txtCategoryName.Text = ((Function)cbxFunctions.SelectedItem).Description;
        }

        private void LsbAchievements_SelectedIndexChanged(object sender, EventArgs e)
        {
            var achievement = (Achievement)lsbAchievements.SelectedItem;

            cbxObtainable.Checked = achievement.Obtainable;
            cbxWowheadLink.Checked = achievement.HasWowheadLink;

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

        private void cbxIsActive_CheckedChanged(object sender, EventArgs e)
        {
            if (!triggerActiveChange)
            {
                triggerActiveChange = true;
                return;
            }

            achievementCategoryHandler.ChangeActiveState(cbxIsActive.Checked);

            achievementCategoryHandler.RefreshTreeView();
        }

        private void cbxCanMerge_CheckedChanged(object sender, EventArgs e)
        {
            if (!triggerCanMergeChange)
            {
                triggerCanMergeChange = true;
                return;
            }

            achievementCategoryHandler.ChangeCanMergeState(cbxCanMerge.Checked);

            achievementCategoryHandler.RefreshTreeView();
        }

        private void BtnAchievementCategoryAdd_Click(object sender, EventArgs e)
        {
            var functionValue = string.IsNullOrEmpty(txtFunctionValue.Text) ? null : txtFunctionValue.Text;
            achievementCategoryHandler.Add(cbxCategoryAsParent.Checked, txtCategoryName.Text, functionValue, cbxLegacyCategory.Checked);

            cbxCategoryAsParent.Checked = false;
            txtCategoryName.Clear();
            txtFunctionValue.Clear();
            cbxLegacyCategory.Checked = false;
        }

        private void BtnAchievementCategoryRemove_Click(object sender, EventArgs e)
        {
            achievementCategoryHandler.Remove();
        }

        private void BtnAchievementCategoryMoveLeft_Click(object sender, EventArgs e)
        {
            achievementCategoryHandler.MoveLeft();
        }

        private void BtnAchievementCategoryMoveUp_Click(object sender, EventArgs e)
        {
            achievementCategoryHandler.MoveUp();
        }

        private void BtnAchievementCategoryMoveDown_Click(object sender, EventArgs e)
        {
            achievementCategoryHandler.MoveDown();
        }

        private void BtnAchievementCategoryMoveRight_Click(object sender, EventArgs e)
        {
            achievementCategoryHandler.MoveRight();
        }

        private void BtnUpdateMapIDs_Click(object sender, EventArgs e)
        {
            achievementCategoryHandler.UpdateMapIDs(txtMapIDs.Text);
        }

        #endregion

        #region Achievement

        private void TxtAchievementID_GotFocus(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtAchievementID.Text))
                txtAchievementID.Text = Clipboard.GetText();
        }

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

            achievementHandler.Add(txtAchievementID.Text, faction, covenant, cbxObtainable.Checked, cbxWowheadLink.Checked);

            txtAchievementID.Clear();
            cbxObtainable.Checked = true;
            cbxWowheadLink.Checked = true;
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

        #region Pet Battles

        private void TxtWoWPetBattleCriteria_GotFocus(object sender, EventArgs e)
        {
            txtWoWPetBattleCriteria.Text = "";
        }

        private void txtWoWPetBattleCriteria_Leave(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtWoWPetBattleCriteria.Text))
                txtWoWPetBattleCriteria.Text = "Paste WoW Pet Battle Criteria export here";
        }

        private void BtnImportWoWPetBattleCriteria_Click(object sender, EventArgs e)
        {
            petBattleLinksHandler.ImportFromText(txtWoWPetBattleCriteria.Text);
        }

        private void BtnSyncExternalLinking_Click(object sender, EventArgs e)
        {
            petBattleLinksHandler.SyncExternalLinking((Achievement)lsbAchievements.SelectedItem);
        }

        #endregion

        #region Import / Export

        private void BtnExport_Click(object sender, EventArgs e)
        {
            exportHandler.ExportAchievementFilter();
            exportHandler.ExportNextPatch();
        }

        private void BtnExportPetBattles_Click(object sender, EventArgs e)
        {
            exportHandler.ExportPetBattles();
        }

        private void BtnUpdateAchievement_AGT_Click(object sender, EventArgs e)
        {
            achievementHandler.UpdateFromFile();
        }

        private void BtnUpdateUIMap_Click(object sender, EventArgs e)
        {
            uiMapHandler.UpdateFromFile();
        }

        private void BtnUpdateXuFuEncounter_Click(object sender, EventArgs e)
        {
            xuFuEncounterHandler.UpdateFromWeb();
        }

        #endregion

    }
}