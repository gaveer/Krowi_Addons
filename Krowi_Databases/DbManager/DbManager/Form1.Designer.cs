
namespace DbManager
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.groupBox6 = new System.Windows.Forms.GroupBox();
            this.btnSyncExternalLinking = new System.Windows.Forms.Button();
            this.btnImportWoWPetBattleCriteria = new System.Windows.Forms.Button();
            this.pgbXuFu = new System.Windows.Forms.ProgressBar();
            this.btnGetXuFuIDs = new System.Windows.Forms.Button();
            this.txtAchCrit = new System.Windows.Forms.TextBox();
            this.lsbAchievements = new System.Windows.Forms.ListBox();
            this.lsbFunctions = new System.Windows.Forms.ListBox();
            this.tvwAchievementCategories = new System.Windows.Forms.TreeView();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.btnExportPetBattles = new System.Windows.Forms.Button();
            this.btnExport = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnAchievementMoveDown = new System.Windows.Forms.Button();
            this.btnAchievementMoveUp = new System.Windows.Forms.Button();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.flowLayoutPanel2 = new System.Windows.Forms.FlowLayoutPanel();
            this.rdbNoCovenant = new System.Windows.Forms.RadioButton();
            this.rdbKyrian = new System.Windows.Forms.RadioButton();
            this.rdbVenthyr = new System.Windows.Forms.RadioButton();
            this.rdbNightFae = new System.Windows.Forms.RadioButton();
            this.rdbNecrolord = new System.Windows.Forms.RadioButton();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.rdbNoFaction = new System.Windows.Forms.RadioButton();
            this.rdbAlliance = new System.Windows.Forms.RadioButton();
            this.rdbHorde = new System.Windows.Forms.RadioButton();
            this.label3 = new System.Windows.Forms.Label();
            this.txtAchievementID = new System.Windows.Forms.TextBox();
            this.btnAchievementRemove = new System.Windows.Forms.Button();
            this.cbxObtainable = new System.Windows.Forms.CheckBox();
            this.btnAchievementAdd = new System.Windows.Forms.Button();
            this.cbxHasWowheadLink = new System.Windows.Forms.CheckBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnUpdateMapIDs = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.cbxLegacyCategory = new System.Windows.Forms.CheckBox();
            this.cbxCategoryAsParent = new System.Windows.Forms.CheckBox();
            this.txtMapIDs = new System.Windows.Forms.TextBox();
            this.txtCategoryName = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnAchievementCategoryMoveLeft = new System.Windows.Forms.Button();
            this.txtFunctionValue = new System.Windows.Forms.TextBox();
            this.btnAchievementCategoryMoveUp = new System.Windows.Forms.Button();
            this.btnAchievementCategoryMoveRight = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.btnAchievementCategoryAdd = new System.Windows.Forms.Button();
            this.btnAchievementCategoryMoveDown = new System.Windows.Forms.Button();
            this.btnAchievementCategoryRemove = new System.Windows.Forms.Button();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.cbxIsActive = new System.Windows.Forms.CheckBox();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.groupBox6.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox5.SuspendLayout();
            this.flowLayoutPanel2.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.flowLayoutPanel1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl1.Location = new System.Drawing.Point(0, 0);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(1418, 863);
            this.tabControl1.TabIndex = 2;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.groupBox6);
            this.tabPage1.Controls.Add(this.txtAchCrit);
            this.tabPage1.Controls.Add(this.lsbAchievements);
            this.tabPage1.Controls.Add(this.lsbFunctions);
            this.tabPage1.Controls.Add(this.tvwAchievementCategories);
            this.tabPage1.Controls.Add(this.groupBox3);
            this.tabPage1.Controls.Add(this.groupBox2);
            this.tabPage1.Controls.Add(this.groupBox1);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(1410, 837);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Krowi\'s Achievement Filter";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // groupBox6
            // 
            this.groupBox6.Controls.Add(this.btnSyncExternalLinking);
            this.groupBox6.Controls.Add(this.btnImportWoWPetBattleCriteria);
            this.groupBox6.Controls.Add(this.pgbXuFu);
            this.groupBox6.Controls.Add(this.btnGetXuFuIDs);
            this.groupBox6.Location = new System.Drawing.Point(759, 594);
            this.groupBox6.Name = "groupBox6";
            this.groupBox6.Size = new System.Drawing.Size(212, 143);
            this.groupBox6.TabIndex = 27;
            this.groupBox6.TabStop = false;
            this.groupBox6.Text = "Pet Battle Criteria";
            // 
            // btnSyncExternalLinking
            // 
            this.btnSyncExternalLinking.Enabled = false;
            this.btnSyncExternalLinking.Location = new System.Drawing.Point(13, 77);
            this.btnSyncExternalLinking.Name = "btnSyncExternalLinking";
            this.btnSyncExternalLinking.Size = new System.Drawing.Size(184, 23);
            this.btnSyncExternalLinking.TabIndex = 27;
            this.btnSyncExternalLinking.Text = "Sync External Linking";
            this.btnSyncExternalLinking.UseVisualStyleBackColor = true;
            this.btnSyncExternalLinking.Click += new System.EventHandler(this.BtnSyncExternalLinking_Click);
            // 
            // btnImportWoWPetBattleCriteria
            // 
            this.btnImportWoWPetBattleCriteria.Location = new System.Drawing.Point(13, 106);
            this.btnImportWoWPetBattleCriteria.Name = "btnImportWoWPetBattleCriteria";
            this.btnImportWoWPetBattleCriteria.Size = new System.Drawing.Size(184, 23);
            this.btnImportWoWPetBattleCriteria.TabIndex = 28;
            this.btnImportWoWPetBattleCriteria.Text = "Import WoW Pet Battle Criteria";
            this.btnImportWoWPetBattleCriteria.UseVisualStyleBackColor = true;
            this.btnImportWoWPetBattleCriteria.Click += new System.EventHandler(this.BtnImportWoWPetBattleCriteria_Click);
            // 
            // pgbXuFu
            // 
            this.pgbXuFu.Location = new System.Drawing.Point(13, 48);
            this.pgbXuFu.Name = "pgbXuFu";
            this.pgbXuFu.Size = new System.Drawing.Size(184, 23);
            this.pgbXuFu.TabIndex = 27;
            // 
            // btnGetXuFuIDs
            // 
            this.btnGetXuFuIDs.Location = new System.Drawing.Point(13, 19);
            this.btnGetXuFuIDs.Name = "btnGetXuFuIDs";
            this.btnGetXuFuIDs.Size = new System.Drawing.Size(184, 23);
            this.btnGetXuFuIDs.TabIndex = 26;
            this.btnGetXuFuIDs.Text = "Get Xu-Fu IDs";
            this.btnGetXuFuIDs.UseVisualStyleBackColor = true;
            this.btnGetXuFuIDs.Click += new System.EventHandler(this.BtnGetXuFuIDs_Click);
            // 
            // txtAchCrit
            // 
            this.txtAchCrit.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtAchCrit.Location = new System.Drawing.Point(977, 6);
            this.txtAchCrit.Multiline = true;
            this.txtAchCrit.Name = "txtAchCrit";
            this.txtAchCrit.Size = new System.Drawing.Size(425, 823);
            this.txtAchCrit.TabIndex = 26;
            // 
            // lsbAchievements
            // 
            this.lsbAchievements.Dock = System.Windows.Forms.DockStyle.Left;
            this.lsbAchievements.FormattingEnabled = true;
            this.lsbAchievements.Location = new System.Drawing.Point(503, 3);
            this.lsbAchievements.Name = "lsbAchievements";
            this.lsbAchievements.Size = new System.Drawing.Size(250, 831);
            this.lsbAchievements.TabIndex = 15;
            this.lsbAchievements.SelectedIndexChanged += new System.EventHandler(this.LsbAchievements_SelectedIndexChanged);
            // 
            // lsbFunctions
            // 
            this.lsbFunctions.Dock = System.Windows.Forms.DockStyle.Left;
            this.lsbFunctions.FormattingEnabled = true;
            this.lsbFunctions.Location = new System.Drawing.Point(253, 3);
            this.lsbFunctions.Name = "lsbFunctions";
            this.lsbFunctions.Size = new System.Drawing.Size(250, 831);
            this.lsbFunctions.TabIndex = 2;
            this.lsbFunctions.SelectedIndexChanged += new System.EventHandler(this.LsbFunctions_SelectedIndexChanged);
            // 
            // tvwAchievementCategories
            // 
            this.tvwAchievementCategories.Dock = System.Windows.Forms.DockStyle.Left;
            this.tvwAchievementCategories.HideSelection = false;
            this.tvwAchievementCategories.Location = new System.Drawing.Point(3, 3);
            this.tvwAchievementCategories.Name = "tvwAchievementCategories";
            this.tvwAchievementCategories.Size = new System.Drawing.Size(250, 831);
            this.tvwAchievementCategories.TabIndex = 1;
            this.tvwAchievementCategories.AfterSelect += new System.Windows.Forms.TreeViewEventHandler(this.TvwAchievementCategories_AfterSelect);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.btnExportPetBattles);
            this.groupBox3.Controls.Add(this.btnExport);
            this.groupBox3.Location = new System.Drawing.Point(759, 743);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(212, 86);
            this.groupBox3.TabIndex = 25;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Import / Export";
            // 
            // btnExportPetBattles
            // 
            this.btnExportPetBattles.Location = new System.Drawing.Point(12, 48);
            this.btnExportPetBattles.Name = "btnExportPetBattles";
            this.btnExportPetBattles.Size = new System.Drawing.Size(184, 23);
            this.btnExportPetBattles.TabIndex = 1;
            this.btnExportPetBattles.Text = "Export Pet Battles to Lua";
            this.btnExportPetBattles.UseVisualStyleBackColor = true;
            this.btnExportPetBattles.Click += new System.EventHandler(this.BtnExportPetBattles_Click);
            // 
            // btnExport
            // 
            this.btnExport.Location = new System.Drawing.Point(12, 19);
            this.btnExport.Name = "btnExport";
            this.btnExport.Size = new System.Drawing.Size(184, 23);
            this.btnExport.TabIndex = 0;
            this.btnExport.Text = "Export to Lua";
            this.btnExport.UseVisualStyleBackColor = true;
            this.btnExport.Click += new System.EventHandler(this.BtnExport_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btnAchievementMoveDown);
            this.groupBox2.Controls.Add(this.btnAchievementMoveUp);
            this.groupBox2.Controls.Add(this.groupBox5);
            this.groupBox2.Controls.Add(this.groupBox4);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.txtAchievementID);
            this.groupBox2.Controls.Add(this.btnAchievementRemove);
            this.groupBox2.Controls.Add(this.cbxObtainable);
            this.groupBox2.Controls.Add(this.btnAchievementAdd);
            this.groupBox2.Controls.Add(this.cbxHasWowheadLink);
            this.groupBox2.Location = new System.Drawing.Point(759, 253);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(212, 335);
            this.groupBox2.TabIndex = 24;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "New Achievement";
            // 
            // btnAchievementMoveDown
            // 
            this.btnAchievementMoveDown.Location = new System.Drawing.Point(108, 301);
            this.btnAchievementMoveDown.Name = "btnAchievementMoveDown";
            this.btnAchievementMoveDown.Size = new System.Drawing.Size(89, 23);
            this.btnAchievementMoveDown.TabIndex = 26;
            this.btnAchievementMoveDown.Text = "D";
            this.btnAchievementMoveDown.UseVisualStyleBackColor = true;
            this.btnAchievementMoveDown.Click += new System.EventHandler(this.BtnAchievementMoveDown_Click);
            // 
            // btnAchievementMoveUp
            // 
            this.btnAchievementMoveUp.Location = new System.Drawing.Point(13, 301);
            this.btnAchievementMoveUp.Name = "btnAchievementMoveUp";
            this.btnAchievementMoveUp.Size = new System.Drawing.Size(89, 23);
            this.btnAchievementMoveUp.TabIndex = 25;
            this.btnAchievementMoveUp.Text = "U";
            this.btnAchievementMoveUp.UseVisualStyleBackColor = true;
            this.btnAchievementMoveUp.Click += new System.EventHandler(this.BtnAchievementMoveUp_Click);
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.flowLayoutPanel2);
            this.groupBox5.Location = new System.Drawing.Point(6, 167);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(200, 99);
            this.groupBox5.TabIndex = 24;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "Covenant";
            // 
            // flowLayoutPanel2
            // 
            this.flowLayoutPanel2.Controls.Add(this.rdbNoCovenant);
            this.flowLayoutPanel2.Controls.Add(this.rdbKyrian);
            this.flowLayoutPanel2.Controls.Add(this.rdbVenthyr);
            this.flowLayoutPanel2.Controls.Add(this.rdbNightFae);
            this.flowLayoutPanel2.Controls.Add(this.rdbNecrolord);
            this.flowLayoutPanel2.Location = new System.Drawing.Point(6, 19);
            this.flowLayoutPanel2.Name = "flowLayoutPanel2";
            this.flowLayoutPanel2.Size = new System.Drawing.Size(188, 74);
            this.flowLayoutPanel2.TabIndex = 26;
            // 
            // rdbNoCovenant
            // 
            this.rdbNoCovenant.AutoSize = true;
            this.rdbNoCovenant.Checked = true;
            this.rdbNoCovenant.Location = new System.Drawing.Point(3, 3);
            this.rdbNoCovenant.Name = "rdbNoCovenant";
            this.rdbNoCovenant.Size = new System.Drawing.Size(88, 17);
            this.rdbNoCovenant.TabIndex = 0;
            this.rdbNoCovenant.TabStop = true;
            this.rdbNoCovenant.Text = "No Covenant";
            this.rdbNoCovenant.UseVisualStyleBackColor = true;
            // 
            // rdbKyrian
            // 
            this.rdbKyrian.AutoSize = true;
            this.rdbKyrian.Location = new System.Drawing.Point(97, 3);
            this.rdbKyrian.Name = "rdbKyrian";
            this.rdbKyrian.Size = new System.Drawing.Size(54, 17);
            this.rdbKyrian.TabIndex = 1;
            this.rdbKyrian.Text = "Kyrian";
            this.rdbKyrian.UseVisualStyleBackColor = true;
            // 
            // rdbVenthyr
            // 
            this.rdbVenthyr.AutoSize = true;
            this.rdbVenthyr.Location = new System.Drawing.Point(3, 26);
            this.rdbVenthyr.Name = "rdbVenthyr";
            this.rdbVenthyr.Size = new System.Drawing.Size(61, 17);
            this.rdbVenthyr.TabIndex = 2;
            this.rdbVenthyr.Text = "Venthyr";
            this.rdbVenthyr.UseVisualStyleBackColor = true;
            // 
            // rdbNightFae
            // 
            this.rdbNightFae.AutoSize = true;
            this.rdbNightFae.Location = new System.Drawing.Point(70, 26);
            this.rdbNightFae.Name = "rdbNightFae";
            this.rdbNightFae.Size = new System.Drawing.Size(71, 17);
            this.rdbNightFae.TabIndex = 3;
            this.rdbNightFae.Text = "Night Fae";
            this.rdbNightFae.UseVisualStyleBackColor = true;
            // 
            // rdbNecrolord
            // 
            this.rdbNecrolord.AutoSize = true;
            this.rdbNecrolord.Location = new System.Drawing.Point(3, 49);
            this.rdbNecrolord.Name = "rdbNecrolord";
            this.rdbNecrolord.Size = new System.Drawing.Size(71, 17);
            this.rdbNecrolord.TabIndex = 4;
            this.rdbNecrolord.Text = "Necrolord";
            this.rdbNecrolord.UseVisualStyleBackColor = true;
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.flowLayoutPanel1);
            this.groupBox4.Location = new System.Drawing.Point(6, 92);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(200, 69);
            this.groupBox4.TabIndex = 23;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Faction";
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.Controls.Add(this.rdbNoFaction);
            this.flowLayoutPanel1.Controls.Add(this.rdbAlliance);
            this.flowLayoutPanel1.Controls.Add(this.rdbHorde);
            this.flowLayoutPanel1.Location = new System.Drawing.Point(6, 19);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(188, 44);
            this.flowLayoutPanel1.TabIndex = 26;
            // 
            // rdbNoFaction
            // 
            this.rdbNoFaction.AutoSize = true;
            this.rdbNoFaction.Checked = true;
            this.rdbNoFaction.Location = new System.Drawing.Point(3, 3);
            this.rdbNoFaction.Name = "rdbNoFaction";
            this.rdbNoFaction.Size = new System.Drawing.Size(77, 17);
            this.rdbNoFaction.TabIndex = 0;
            this.rdbNoFaction.TabStop = true;
            this.rdbNoFaction.Text = "No Faction";
            this.rdbNoFaction.UseVisualStyleBackColor = true;
            // 
            // rdbAlliance
            // 
            this.rdbAlliance.AutoSize = true;
            this.rdbAlliance.Location = new System.Drawing.Point(86, 3);
            this.rdbAlliance.Name = "rdbAlliance";
            this.rdbAlliance.Size = new System.Drawing.Size(62, 17);
            this.rdbAlliance.TabIndex = 1;
            this.rdbAlliance.Text = "Alliance";
            this.rdbAlliance.UseVisualStyleBackColor = true;
            // 
            // rdbHorde
            // 
            this.rdbHorde.AutoSize = true;
            this.rdbHorde.Location = new System.Drawing.Point(3, 26);
            this.rdbHorde.Name = "rdbHorde";
            this.rdbHorde.Size = new System.Drawing.Size(54, 17);
            this.rdbHorde.TabIndex = 2;
            this.rdbHorde.Text = "Horde";
            this.rdbHorde.UseVisualStyleBackColor = true;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(10, 22);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(83, 13);
            this.label3.TabIndex = 17;
            this.label3.Text = "Achievement ID";
            // 
            // txtAchievementID
            // 
            this.txtAchievementID.Location = new System.Drawing.Point(99, 19);
            this.txtAchievementID.Name = "txtAchievementID";
            this.txtAchievementID.Size = new System.Drawing.Size(100, 20);
            this.txtAchievementID.TabIndex = 16;
            // 
            // btnAchievementRemove
            // 
            this.btnAchievementRemove.Location = new System.Drawing.Point(108, 272);
            this.btnAchievementRemove.Name = "btnAchievementRemove";
            this.btnAchievementRemove.Size = new System.Drawing.Size(89, 23);
            this.btnAchievementRemove.TabIndex = 22;
            this.btnAchievementRemove.Text = "Remove";
            this.btnAchievementRemove.UseVisualStyleBackColor = true;
            this.btnAchievementRemove.Click += new System.EventHandler(this.BtnAchievementRemove_Click);
            // 
            // cbxObtainable
            // 
            this.cbxObtainable.AutoSize = true;
            this.cbxObtainable.Checked = true;
            this.cbxObtainable.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbxObtainable.Location = new System.Drawing.Point(13, 46);
            this.cbxObtainable.Name = "cbxObtainable";
            this.cbxObtainable.Size = new System.Drawing.Size(77, 17);
            this.cbxObtainable.TabIndex = 18;
            this.cbxObtainable.Text = "Obtainable";
            this.cbxObtainable.UseVisualStyleBackColor = true;
            // 
            // btnAchievementAdd
            // 
            this.btnAchievementAdd.Location = new System.Drawing.Point(13, 272);
            this.btnAchievementAdd.Name = "btnAchievementAdd";
            this.btnAchievementAdd.Size = new System.Drawing.Size(89, 23);
            this.btnAchievementAdd.TabIndex = 21;
            this.btnAchievementAdd.Text = "Add";
            this.btnAchievementAdd.UseVisualStyleBackColor = true;
            this.btnAchievementAdd.Click += new System.EventHandler(this.BtnAchievementAdd_Click);
            // 
            // cbxHasWowheadLink
            // 
            this.cbxHasWowheadLink.AutoSize = true;
            this.cbxHasWowheadLink.Checked = true;
            this.cbxHasWowheadLink.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbxHasWowheadLink.Location = new System.Drawing.Point(13, 69);
            this.cbxHasWowheadLink.Name = "cbxHasWowheadLink";
            this.cbxHasWowheadLink.Size = new System.Drawing.Size(120, 17);
            this.cbxHasWowheadLink.TabIndex = 20;
            this.cbxHasWowheadLink.Text = "Has Wowhead Link";
            this.cbxHasWowheadLink.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cbxIsActive);
            this.groupBox1.Controls.Add(this.btnUpdateMapIDs);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.cbxLegacyCategory);
            this.groupBox1.Controls.Add(this.cbxCategoryAsParent);
            this.groupBox1.Controls.Add(this.txtMapIDs);
            this.groupBox1.Controls.Add(this.txtCategoryName);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.btnAchievementCategoryMoveLeft);
            this.groupBox1.Controls.Add(this.txtFunctionValue);
            this.groupBox1.Controls.Add(this.btnAchievementCategoryMoveUp);
            this.groupBox1.Controls.Add(this.btnAchievementCategoryMoveRight);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.btnAchievementCategoryAdd);
            this.groupBox1.Controls.Add(this.btnAchievementCategoryMoveDown);
            this.groupBox1.Controls.Add(this.btnAchievementCategoryRemove);
            this.groupBox1.Location = new System.Drawing.Point(759, 6);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(212, 241);
            this.groupBox1.TabIndex = 23;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "New Category";
            // 
            // btnUpdateMapIDs
            // 
            this.btnUpdateMapIDs.Location = new System.Drawing.Point(91, 111);
            this.btnUpdateMapIDs.Name = "btnUpdateMapIDs";
            this.btnUpdateMapIDs.Size = new System.Drawing.Size(106, 23);
            this.btnUpdateMapIDs.TabIndex = 29;
            this.btnUpdateMapIDs.Text = "Update Map IDs";
            this.btnUpdateMapIDs.UseVisualStyleBackColor = true;
            this.btnUpdateMapIDs.Click += new System.EventHandler(this.BtnUpdateMapIDs_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(13, 94);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(47, 13);
            this.label4.TabIndex = 28;
            this.label4.Text = "Map IDs";
            // 
            // cbxLegacyCategory
            // 
            this.cbxLegacyCategory.AutoSize = true;
            this.cbxLegacyCategory.Location = new System.Drawing.Point(13, 117);
            this.cbxLegacyCategory.Name = "cbxLegacyCategory";
            this.cbxLegacyCategory.Size = new System.Drawing.Size(72, 17);
            this.cbxLegacyCategory.TabIndex = 15;
            this.cbxLegacyCategory.Text = "Is Legacy";
            this.cbxLegacyCategory.UseVisualStyleBackColor = true;
            // 
            // cbxCategoryAsParent
            // 
            this.cbxCategoryAsParent.AutoSize = true;
            this.cbxCategoryAsParent.Location = new System.Drawing.Point(13, 22);
            this.cbxCategoryAsParent.Name = "cbxCategoryAsParent";
            this.cbxCategoryAsParent.Size = new System.Drawing.Size(184, 17);
            this.cbxCategoryAsParent.TabIndex = 2;
            this.cbxCategoryAsParent.Text = "Use Selected Category As Parent";
            this.cbxCategoryAsParent.UseVisualStyleBackColor = true;
            // 
            // txtMapIDs
            // 
            this.txtMapIDs.Location = new System.Drawing.Point(97, 91);
            this.txtMapIDs.Name = "txtMapIDs";
            this.txtMapIDs.Size = new System.Drawing.Size(100, 20);
            this.txtMapIDs.TabIndex = 27;
            // 
            // txtCategoryName
            // 
            this.txtCategoryName.Location = new System.Drawing.Point(97, 39);
            this.txtCategoryName.Name = "txtCategoryName";
            this.txtCategoryName.Size = new System.Drawing.Size(100, 20);
            this.txtCategoryName.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 42);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(80, 13);
            this.label1.TabIndex = 4;
            this.label1.Text = "Category Name";
            // 
            // btnAchievementCategoryMoveLeft
            // 
            this.btnAchievementCategoryMoveLeft.Location = new System.Drawing.Point(12, 202);
            this.btnAchievementCategoryMoveLeft.Name = "btnAchievementCategoryMoveLeft";
            this.btnAchievementCategoryMoveLeft.Size = new System.Drawing.Size(41, 23);
            this.btnAchievementCategoryMoveLeft.TabIndex = 14;
            this.btnAchievementCategoryMoveLeft.Text = "L";
            this.btnAchievementCategoryMoveLeft.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryMoveLeft.Click += new System.EventHandler(this.btnAchievementCategoryMoveLeft_Click);
            // 
            // txtFunctionValue
            // 
            this.txtFunctionValue.Location = new System.Drawing.Point(97, 65);
            this.txtFunctionValue.Name = "txtFunctionValue";
            this.txtFunctionValue.Size = new System.Drawing.Size(100, 20);
            this.txtFunctionValue.TabIndex = 5;
            // 
            // btnAchievementCategoryMoveUp
            // 
            this.btnAchievementCategoryMoveUp.Location = new System.Drawing.Point(60, 202);
            this.btnAchievementCategoryMoveUp.Name = "btnAchievementCategoryMoveUp";
            this.btnAchievementCategoryMoveUp.Size = new System.Drawing.Size(41, 23);
            this.btnAchievementCategoryMoveUp.TabIndex = 12;
            this.btnAchievementCategoryMoveUp.Text = "U";
            this.btnAchievementCategoryMoveUp.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryMoveUp.Click += new System.EventHandler(this.btnAchievementCategoryMoveUp_Click);
            // 
            // btnAchievementCategoryMoveRight
            // 
            this.btnAchievementCategoryMoveRight.Location = new System.Drawing.Point(155, 202);
            this.btnAchievementCategoryMoveRight.Name = "btnAchievementCategoryMoveRight";
            this.btnAchievementCategoryMoveRight.Size = new System.Drawing.Size(41, 23);
            this.btnAchievementCategoryMoveRight.TabIndex = 13;
            this.btnAchievementCategoryMoveRight.Text = "R";
            this.btnAchievementCategoryMoveRight.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryMoveRight.Click += new System.EventHandler(this.btnAchievementCategoryMoveRight_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(13, 68);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(77, 13);
            this.label2.TabIndex = 6;
            this.label2.Text = "Function value";
            // 
            // btnAchievementCategoryAdd
            // 
            this.btnAchievementCategoryAdd.Location = new System.Drawing.Point(12, 173);
            this.btnAchievementCategoryAdd.Name = "btnAchievementCategoryAdd";
            this.btnAchievementCategoryAdd.Size = new System.Drawing.Size(89, 23);
            this.btnAchievementCategoryAdd.TabIndex = 7;
            this.btnAchievementCategoryAdd.Text = "Add";
            this.btnAchievementCategoryAdd.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryAdd.Click += new System.EventHandler(this.btnAchievementCategoryAdd_Click);
            // 
            // btnAchievementCategoryMoveDown
            // 
            this.btnAchievementCategoryMoveDown.Location = new System.Drawing.Point(107, 202);
            this.btnAchievementCategoryMoveDown.Name = "btnAchievementCategoryMoveDown";
            this.btnAchievementCategoryMoveDown.Size = new System.Drawing.Size(41, 23);
            this.btnAchievementCategoryMoveDown.TabIndex = 11;
            this.btnAchievementCategoryMoveDown.Text = "D";
            this.btnAchievementCategoryMoveDown.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryMoveDown.Click += new System.EventHandler(this.btnAchievementCategoryMoveDown_Click);
            // 
            // btnAchievementCategoryRemove
            // 
            this.btnAchievementCategoryRemove.Location = new System.Drawing.Point(107, 173);
            this.btnAchievementCategoryRemove.Name = "btnAchievementCategoryRemove";
            this.btnAchievementCategoryRemove.Size = new System.Drawing.Size(89, 23);
            this.btnAchievementCategoryRemove.TabIndex = 8;
            this.btnAchievementCategoryRemove.Text = "Remove";
            this.btnAchievementCategoryRemove.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryRemove.Click += new System.EventHandler(this.btnAchievementCategoryRemove_Click);
            // 
            // tabPage2
            // 
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(1410, 817);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Empty";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // cbxIsActive
            // 
            this.cbxIsActive.AutoSize = true;
            this.cbxIsActive.Checked = true;
            this.cbxIsActive.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbxIsActive.Location = new System.Drawing.Point(13, 140);
            this.cbxIsActive.Name = "cbxIsActive";
            this.cbxIsActive.Size = new System.Drawing.Size(67, 17);
            this.cbxIsActive.TabIndex = 30;
            this.cbxIsActive.Text = "Is Active";
            this.cbxIsActive.UseVisualStyleBackColor = true;
            this.cbxIsActive.CheckedChanged += new System.EventHandler(this.cbxIsActive_CheckedChanged);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1418, 863);
            this.Controls.Add(this.tabControl1);
            this.Name = "Form1";
            this.Text = "DB Manager";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            this.groupBox6.ResumeLayout(false);
            this.groupBox3.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox5.ResumeLayout(false);
            this.flowLayoutPanel2.ResumeLayout(false);
            this.flowLayoutPanel2.PerformLayout();
            this.groupBox4.ResumeLayout(false);
            this.flowLayoutPanel1.ResumeLayout(false);
            this.flowLayoutPanel1.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.ListBox lsbFunctions;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtFunctionValue;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtCategoryName;
        private System.Windows.Forms.CheckBox cbxCategoryAsParent;
        private System.Windows.Forms.Button btnAchievementCategoryAdd;
        private System.Windows.Forms.Button btnAchievementCategoryRemove;
        private System.Windows.Forms.Button btnAchievementCategoryMoveLeft;
        private System.Windows.Forms.Button btnAchievementCategoryMoveRight;
        private System.Windows.Forms.Button btnAchievementCategoryMoveUp;
        private System.Windows.Forms.Button btnAchievementCategoryMoveDown;
        private System.Windows.Forms.Button btnAchievementRemove;
        private System.Windows.Forms.Button btnAchievementAdd;
        private System.Windows.Forms.CheckBox cbxHasWowheadLink;
        private System.Windows.Forms.CheckBox cbxObtainable;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtAchievementID;
        private System.Windows.Forms.ListBox lsbAchievements;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Button btnExport;
        private System.Windows.Forms.CheckBox cbxLegacyCategory;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.RadioButton rdbHorde;
        private System.Windows.Forms.RadioButton rdbAlliance;
        private System.Windows.Forms.RadioButton rdbNoFaction;
        private System.Windows.Forms.TreeView tvwAchievementCategories;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.RadioButton rdbNecrolord;
        private System.Windows.Forms.RadioButton rdbNightFae;
        private System.Windows.Forms.RadioButton rdbVenthyr;
        private System.Windows.Forms.RadioButton rdbKyrian;
        private System.Windows.Forms.RadioButton rdbNoCovenant;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel2;
        private System.Windows.Forms.Button btnAchievementMoveDown;
        private System.Windows.Forms.Button btnAchievementMoveUp;
        private System.Windows.Forms.Button btnGetXuFuIDs;
        private System.Windows.Forms.ProgressBar pgbXuFu;
        private System.Windows.Forms.TextBox txtAchCrit;
        private System.Windows.Forms.GroupBox groupBox6;
        private System.Windows.Forms.Button btnImportWoWPetBattleCriteria;
        private System.Windows.Forms.Button btnSyncExternalLinking;
        private System.Windows.Forms.Button btnExportPetBattles;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtMapIDs;
        private System.Windows.Forms.Button btnUpdateMapIDs;
        private System.Windows.Forms.CheckBox cbxIsActive;
    }
}

