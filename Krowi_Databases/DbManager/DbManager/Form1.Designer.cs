
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
            this.tabKrowisAchievementFilter = new System.Windows.Forms.TabPage();
            this.pnlGroupBoxes = new System.Windows.Forms.Panel();
            this.gbxAchievementCategory = new System.Windows.Forms.GroupBox();
            this.cbxFunctions = new System.Windows.Forms.ComboBox();
            this.cbxCanMerge = new System.Windows.Forms.CheckBox();
            this.cbxIsActive = new System.Windows.Forms.CheckBox();
            this.btnUpdateMapIDs = new System.Windows.Forms.Button();
            this.cbxLegacyCategory = new System.Windows.Forms.CheckBox();
            this.cbxCategoryAsParent = new System.Windows.Forms.CheckBox();
            this.lblMapIDs = new System.Windows.Forms.Label();
            this.txtCategoryName = new System.Windows.Forms.TextBox();
            this.lblCategoryName = new System.Windows.Forms.Label();
            this.txtMapIDs = new System.Windows.Forms.TextBox();
            this.btnAchievementCategoryMoveLeft = new System.Windows.Forms.Button();
            this.txtFunctionValue = new System.Windows.Forms.TextBox();
            this.btnAchievementCategoryMoveUp = new System.Windows.Forms.Button();
            this.btnAchievementCategoryMoveRight = new System.Windows.Forms.Button();
            this.lblFunctionValue = new System.Windows.Forms.Label();
            this.btnAchievementCategoryAdd = new System.Windows.Forms.Button();
            this.btnAchievementCategoryMoveDown = new System.Windows.Forms.Button();
            this.btnAchievementCategoryRemove = new System.Windows.Forms.Button();
            this.gbxPetBattles = new System.Windows.Forms.GroupBox();
            this.btnSyncExternalLinking = new System.Windows.Forms.Button();
            this.txtWoWPetBattleCriteria = new System.Windows.Forms.TextBox();
            this.btnImportWoWPetBattleCriteria = new System.Windows.Forms.Button();
            this.gbxAchievement = new System.Windows.Forms.GroupBox();
            this.cbxObtainable = new System.Windows.Forms.CheckBox();
            this.btnAchievementMoveDown = new System.Windows.Forms.Button();
            this.cbxWowheadLink = new System.Windows.Forms.CheckBox();
            this.btnAchievementMoveUp = new System.Windows.Forms.Button();
            this.gbxAchievementCovenant = new System.Windows.Forms.GroupBox();
            this.rdbNecrolord = new System.Windows.Forms.RadioButton();
            this.rdbNightFae = new System.Windows.Forms.RadioButton();
            this.rdbVenthyr = new System.Windows.Forms.RadioButton();
            this.rdbKyrian = new System.Windows.Forms.RadioButton();
            this.rdbNoCovenant = new System.Windows.Forms.RadioButton();
            this.lblAchievementID = new System.Windows.Forms.Label();
            this.txtAchievementID = new System.Windows.Forms.TextBox();
            this.btnAchievementRemove = new System.Windows.Forms.Button();
            this.btnAchievementAdd = new System.Windows.Forms.Button();
            this.gbxAchievementFaction = new System.Windows.Forms.GroupBox();
            this.rdbHorde = new System.Windows.Forms.RadioButton();
            this.rdbAlliance = new System.Windows.Forms.RadioButton();
            this.rdbNoFaction = new System.Windows.Forms.RadioButton();
            this.gbxImportExport = new System.Windows.Forms.GroupBox();
            this.btnExportPetBattles = new System.Windows.Forms.Button();
            this.btnUpdateAchievement_AGT = new System.Windows.Forms.Button();
            this.btnExport = new System.Windows.Forms.Button();
            this.btnUpdateUIMap = new System.Windows.Forms.Button();
            this.btnUpdateXuFuEncounter = new System.Windows.Forms.Button();
            this.splitter2 = new System.Windows.Forms.Splitter();
            this.lsbAchievements = new System.Windows.Forms.ListBox();
            this.splitter1 = new System.Windows.Forms.Splitter();
            this.tvwAchievementCategories = new System.Windows.Forms.TreeView();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.pgbUpdateXuFuEncounter = new DbManager.GUI.Custom.TextProgressBar();
            this.pgbUpdateAchievement_AGT = new DbManager.GUI.Custom.TextProgressBar();
            this.pgbUpdateUIMap = new DbManager.GUI.Custom.TextProgressBar();
            this.tabControl1.SuspendLayout();
            this.tabKrowisAchievementFilter.SuspendLayout();
            this.pnlGroupBoxes.SuspendLayout();
            this.gbxAchievementCategory.SuspendLayout();
            this.gbxPetBattles.SuspendLayout();
            this.gbxAchievement.SuspendLayout();
            this.gbxAchievementCovenant.SuspendLayout();
            this.gbxAchievementFaction.SuspendLayout();
            this.gbxImportExport.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabKrowisAchievementFilter);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl1.Location = new System.Drawing.Point(0, 0);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(1149, 946);
            this.tabControl1.TabIndex = 2;
            // 
            // tabKrowisAchievementFilter
            // 
            this.tabKrowisAchievementFilter.Controls.Add(this.pnlGroupBoxes);
            this.tabKrowisAchievementFilter.Controls.Add(this.splitter2);
            this.tabKrowisAchievementFilter.Controls.Add(this.lsbAchievements);
            this.tabKrowisAchievementFilter.Controls.Add(this.splitter1);
            this.tabKrowisAchievementFilter.Controls.Add(this.tvwAchievementCategories);
            this.tabKrowisAchievementFilter.Location = new System.Drawing.Point(4, 22);
            this.tabKrowisAchievementFilter.Name = "tabKrowisAchievementFilter";
            this.tabKrowisAchievementFilter.Padding = new System.Windows.Forms.Padding(3);
            this.tabKrowisAchievementFilter.Size = new System.Drawing.Size(1141, 920);
            this.tabKrowisAchievementFilter.TabIndex = 0;
            this.tabKrowisAchievementFilter.Text = "Krowi\'s Achievement Filter";
            this.tabKrowisAchievementFilter.UseVisualStyleBackColor = true;
            // 
            // pnlGroupBoxes
            // 
            this.pnlGroupBoxes.Controls.Add(this.gbxAchievementCategory);
            this.pnlGroupBoxes.Controls.Add(this.gbxPetBattles);
            this.pnlGroupBoxes.Controls.Add(this.gbxAchievement);
            this.pnlGroupBoxes.Controls.Add(this.gbxImportExport);
            this.pnlGroupBoxes.Dock = System.Windows.Forms.DockStyle.Left;
            this.pnlGroupBoxes.Location = new System.Drawing.Point(609, 3);
            this.pnlGroupBoxes.Name = "pnlGroupBoxes";
            this.pnlGroupBoxes.Size = new System.Drawing.Size(209, 914);
            this.pnlGroupBoxes.TabIndex = 28;
            // 
            // gbxAchievementCategory
            // 
            this.gbxAchievementCategory.Controls.Add(this.cbxFunctions);
            this.gbxAchievementCategory.Controls.Add(this.cbxCanMerge);
            this.gbxAchievementCategory.Controls.Add(this.cbxIsActive);
            this.gbxAchievementCategory.Controls.Add(this.btnUpdateMapIDs);
            this.gbxAchievementCategory.Controls.Add(this.cbxLegacyCategory);
            this.gbxAchievementCategory.Controls.Add(this.cbxCategoryAsParent);
            this.gbxAchievementCategory.Controls.Add(this.lblMapIDs);
            this.gbxAchievementCategory.Controls.Add(this.txtCategoryName);
            this.gbxAchievementCategory.Controls.Add(this.lblCategoryName);
            this.gbxAchievementCategory.Controls.Add(this.txtMapIDs);
            this.gbxAchievementCategory.Controls.Add(this.btnAchievementCategoryMoveLeft);
            this.gbxAchievementCategory.Controls.Add(this.txtFunctionValue);
            this.gbxAchievementCategory.Controls.Add(this.btnAchievementCategoryMoveUp);
            this.gbxAchievementCategory.Controls.Add(this.btnAchievementCategoryMoveRight);
            this.gbxAchievementCategory.Controls.Add(this.lblFunctionValue);
            this.gbxAchievementCategory.Controls.Add(this.btnAchievementCategoryAdd);
            this.gbxAchievementCategory.Controls.Add(this.btnAchievementCategoryMoveDown);
            this.gbxAchievementCategory.Controls.Add(this.btnAchievementCategoryRemove);
            this.gbxAchievementCategory.Location = new System.Drawing.Point(6, 3);
            this.gbxAchievementCategory.Name = "gbxAchievementCategory";
            this.gbxAchievementCategory.Size = new System.Drawing.Size(200, 289);
            this.gbxAchievementCategory.TabIndex = 23;
            this.gbxAchievementCategory.TabStop = false;
            this.gbxAchievementCategory.Text = "New Category";
            // 
            // cbxFunctions
            // 
            this.cbxFunctions.FormattingEnabled = true;
            this.cbxFunctions.Location = new System.Drawing.Point(7, 46);
            this.cbxFunctions.Name = "cbxFunctions";
            this.cbxFunctions.Size = new System.Drawing.Size(186, 21);
            this.cbxFunctions.TabIndex = 32;
            this.cbxFunctions.SelectedIndexChanged += new System.EventHandler(this.cbxFunctions_SelectedIndexChanged);
            // 
            // cbxCanMerge
            // 
            this.cbxCanMerge.AutoSize = true;
            this.cbxCanMerge.Location = new System.Drawing.Point(10, 151);
            this.cbxCanMerge.Name = "cbxCanMerge";
            this.cbxCanMerge.Size = new System.Drawing.Size(78, 17);
            this.cbxCanMerge.TabIndex = 31;
            this.cbxCanMerge.Text = "Can Merge";
            this.cbxCanMerge.UseVisualStyleBackColor = true;
            this.cbxCanMerge.CheckedChanged += new System.EventHandler(this.cbxCanMerge_CheckedChanged);
            // 
            // cbxIsActive
            // 
            this.cbxIsActive.AutoSize = true;
            this.cbxIsActive.Checked = true;
            this.cbxIsActive.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbxIsActive.Location = new System.Drawing.Point(104, 128);
            this.cbxIsActive.Name = "cbxIsActive";
            this.cbxIsActive.Size = new System.Drawing.Size(56, 17);
            this.cbxIsActive.TabIndex = 30;
            this.cbxIsActive.Text = "Active";
            this.cbxIsActive.UseVisualStyleBackColor = true;
            this.cbxIsActive.CheckedChanged += new System.EventHandler(this.cbxIsActive_CheckedChanged);
            // 
            // btnUpdateMapIDs
            // 
            this.btnUpdateMapIDs.Location = new System.Drawing.Point(6, 260);
            this.btnUpdateMapIDs.Name = "btnUpdateMapIDs";
            this.btnUpdateMapIDs.Size = new System.Drawing.Size(188, 23);
            this.btnUpdateMapIDs.TabIndex = 29;
            this.btnUpdateMapIDs.Text = "Update Map IDs";
            this.btnUpdateMapIDs.UseVisualStyleBackColor = true;
            this.btnUpdateMapIDs.Click += new System.EventHandler(this.BtnUpdateMapIDs_Click);
            // 
            // cbxLegacyCategory
            // 
            this.cbxLegacyCategory.AutoSize = true;
            this.cbxLegacyCategory.Location = new System.Drawing.Point(10, 128);
            this.cbxLegacyCategory.Name = "cbxLegacyCategory";
            this.cbxLegacyCategory.Size = new System.Drawing.Size(61, 17);
            this.cbxLegacyCategory.TabIndex = 15;
            this.cbxLegacyCategory.Text = "Legacy";
            this.cbxLegacyCategory.UseVisualStyleBackColor = true;
            // 
            // cbxCategoryAsParent
            // 
            this.cbxCategoryAsParent.AutoSize = true;
            this.cbxCategoryAsParent.Location = new System.Drawing.Point(10, 105);
            this.cbxCategoryAsParent.Name = "cbxCategoryAsParent";
            this.cbxCategoryAsParent.Size = new System.Drawing.Size(184, 17);
            this.cbxCategoryAsParent.TabIndex = 2;
            this.cbxCategoryAsParent.Text = "Use Selected Category As Parent";
            this.cbxCategoryAsParent.UseVisualStyleBackColor = true;
            // 
            // lblMapIDs
            // 
            this.lblMapIDs.AutoSize = true;
            this.lblMapIDs.Location = new System.Drawing.Point(7, 237);
            this.lblMapIDs.Name = "lblMapIDs";
            this.lblMapIDs.Size = new System.Drawing.Size(47, 13);
            this.lblMapIDs.TabIndex = 28;
            this.lblMapIDs.Text = "Map IDs";
            // 
            // txtCategoryName
            // 
            this.txtCategoryName.Location = new System.Drawing.Point(104, 20);
            this.txtCategoryName.Name = "txtCategoryName";
            this.txtCategoryName.Size = new System.Drawing.Size(89, 20);
            this.txtCategoryName.TabIndex = 3;
            // 
            // lblCategoryName
            // 
            this.lblCategoryName.AutoSize = true;
            this.lblCategoryName.Location = new System.Drawing.Point(7, 24);
            this.lblCategoryName.Name = "lblCategoryName";
            this.lblCategoryName.Size = new System.Drawing.Size(80, 13);
            this.lblCategoryName.TabIndex = 4;
            this.lblCategoryName.Text = "Category Name";
            // 
            // txtMapIDs
            // 
            this.txtMapIDs.Location = new System.Drawing.Point(104, 233);
            this.txtMapIDs.Name = "txtMapIDs";
            this.txtMapIDs.Size = new System.Drawing.Size(89, 20);
            this.txtMapIDs.TabIndex = 27;
            // 
            // btnAchievementCategoryMoveLeft
            // 
            this.btnAchievementCategoryMoveLeft.Location = new System.Drawing.Point(6, 203);
            this.btnAchievementCategoryMoveLeft.Name = "btnAchievementCategoryMoveLeft";
            this.btnAchievementCategoryMoveLeft.Size = new System.Drawing.Size(43, 23);
            this.btnAchievementCategoryMoveLeft.TabIndex = 14;
            this.btnAchievementCategoryMoveLeft.Text = "L";
            this.btnAchievementCategoryMoveLeft.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryMoveLeft.Click += new System.EventHandler(this.BtnAchievementCategoryMoveLeft_Click);
            // 
            // txtFunctionValue
            // 
            this.txtFunctionValue.Location = new System.Drawing.Point(104, 74);
            this.txtFunctionValue.Name = "txtFunctionValue";
            this.txtFunctionValue.Size = new System.Drawing.Size(89, 20);
            this.txtFunctionValue.TabIndex = 5;
            // 
            // btnAchievementCategoryMoveUp
            // 
            this.btnAchievementCategoryMoveUp.Location = new System.Drawing.Point(54, 203);
            this.btnAchievementCategoryMoveUp.Name = "btnAchievementCategoryMoveUp";
            this.btnAchievementCategoryMoveUp.Size = new System.Drawing.Size(43, 23);
            this.btnAchievementCategoryMoveUp.TabIndex = 12;
            this.btnAchievementCategoryMoveUp.Text = "U";
            this.btnAchievementCategoryMoveUp.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryMoveUp.Click += new System.EventHandler(this.BtnAchievementCategoryMoveUp_Click);
            // 
            // btnAchievementCategoryMoveRight
            // 
            this.btnAchievementCategoryMoveRight.Location = new System.Drawing.Point(151, 203);
            this.btnAchievementCategoryMoveRight.Name = "btnAchievementCategoryMoveRight";
            this.btnAchievementCategoryMoveRight.Size = new System.Drawing.Size(43, 23);
            this.btnAchievementCategoryMoveRight.TabIndex = 13;
            this.btnAchievementCategoryMoveRight.Text = "R";
            this.btnAchievementCategoryMoveRight.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryMoveRight.Click += new System.EventHandler(this.BtnAchievementCategoryMoveRight_Click);
            // 
            // lblFunctionValue
            // 
            this.lblFunctionValue.AutoSize = true;
            this.lblFunctionValue.Location = new System.Drawing.Point(7, 78);
            this.lblFunctionValue.Name = "lblFunctionValue";
            this.lblFunctionValue.Size = new System.Drawing.Size(77, 13);
            this.lblFunctionValue.TabIndex = 6;
            this.lblFunctionValue.Text = "Function value";
            // 
            // btnAchievementCategoryAdd
            // 
            this.btnAchievementCategoryAdd.Location = new System.Drawing.Point(6, 174);
            this.btnAchievementCategoryAdd.Name = "btnAchievementCategoryAdd";
            this.btnAchievementCategoryAdd.Size = new System.Drawing.Size(91, 23);
            this.btnAchievementCategoryAdd.TabIndex = 7;
            this.btnAchievementCategoryAdd.Text = "Add";
            this.btnAchievementCategoryAdd.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryAdd.Click += new System.EventHandler(this.BtnAchievementCategoryAdd_Click);
            // 
            // btnAchievementCategoryMoveDown
            // 
            this.btnAchievementCategoryMoveDown.Location = new System.Drawing.Point(103, 203);
            this.btnAchievementCategoryMoveDown.Name = "btnAchievementCategoryMoveDown";
            this.btnAchievementCategoryMoveDown.Size = new System.Drawing.Size(43, 23);
            this.btnAchievementCategoryMoveDown.TabIndex = 11;
            this.btnAchievementCategoryMoveDown.Text = "D";
            this.btnAchievementCategoryMoveDown.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryMoveDown.Click += new System.EventHandler(this.BtnAchievementCategoryMoveDown_Click);
            // 
            // btnAchievementCategoryRemove
            // 
            this.btnAchievementCategoryRemove.Location = new System.Drawing.Point(103, 174);
            this.btnAchievementCategoryRemove.Name = "btnAchievementCategoryRemove";
            this.btnAchievementCategoryRemove.Size = new System.Drawing.Size(91, 23);
            this.btnAchievementCategoryRemove.TabIndex = 8;
            this.btnAchievementCategoryRemove.Text = "Remove";
            this.btnAchievementCategoryRemove.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryRemove.Click += new System.EventHandler(this.BtnAchievementCategoryRemove_Click);
            // 
            // gbxPetBattles
            // 
            this.gbxPetBattles.Controls.Add(this.btnSyncExternalLinking);
            this.gbxPetBattles.Controls.Add(this.txtWoWPetBattleCriteria);
            this.gbxPetBattles.Controls.Add(this.btnImportWoWPetBattleCriteria);
            this.gbxPetBattles.Location = new System.Drawing.Point(6, 602);
            this.gbxPetBattles.Name = "gbxPetBattles";
            this.gbxPetBattles.Size = new System.Drawing.Size(200, 135);
            this.gbxPetBattles.TabIndex = 27;
            this.gbxPetBattles.TabStop = false;
            this.gbxPetBattles.Text = "Pet Battle";
            // 
            // btnSyncExternalLinking
            // 
            this.btnSyncExternalLinking.Enabled = false;
            this.btnSyncExternalLinking.Location = new System.Drawing.Point(6, 106);
            this.btnSyncExternalLinking.Name = "btnSyncExternalLinking";
            this.btnSyncExternalLinking.Size = new System.Drawing.Size(188, 23);
            this.btnSyncExternalLinking.TabIndex = 27;
            this.btnSyncExternalLinking.Text = "Sync External Linking";
            this.btnSyncExternalLinking.UseVisualStyleBackColor = true;
            this.btnSyncExternalLinking.Click += new System.EventHandler(this.BtnSyncExternalLinking_Click);
            // 
            // txtWoWPetBattleCriteria
            // 
            this.txtWoWPetBattleCriteria.Location = new System.Drawing.Point(7, 20);
            this.txtWoWPetBattleCriteria.Multiline = true;
            this.txtWoWPetBattleCriteria.Name = "txtWoWPetBattleCriteria";
            this.txtWoWPetBattleCriteria.Size = new System.Drawing.Size(186, 50);
            this.txtWoWPetBattleCriteria.TabIndex = 26;
            this.txtWoWPetBattleCriteria.Leave += new System.EventHandler(this.txtWoWPetBattleCriteria_Leave);
            // 
            // btnImportWoWPetBattleCriteria
            // 
            this.btnImportWoWPetBattleCriteria.Location = new System.Drawing.Point(6, 77);
            this.btnImportWoWPetBattleCriteria.Name = "btnImportWoWPetBattleCriteria";
            this.btnImportWoWPetBattleCriteria.Size = new System.Drawing.Size(188, 23);
            this.btnImportWoWPetBattleCriteria.TabIndex = 28;
            this.btnImportWoWPetBattleCriteria.Text = "Import WoW Pet Battle Criteria";
            this.btnImportWoWPetBattleCriteria.UseVisualStyleBackColor = true;
            this.btnImportWoWPetBattleCriteria.Click += new System.EventHandler(this.BtnImportWoWPetBattleCriteria_Click);
            // 
            // gbxAchievement
            // 
            this.gbxAchievement.Controls.Add(this.cbxObtainable);
            this.gbxAchievement.Controls.Add(this.btnAchievementMoveDown);
            this.gbxAchievement.Controls.Add(this.cbxWowheadLink);
            this.gbxAchievement.Controls.Add(this.btnAchievementMoveUp);
            this.gbxAchievement.Controls.Add(this.gbxAchievementCovenant);
            this.gbxAchievement.Controls.Add(this.lblAchievementID);
            this.gbxAchievement.Controls.Add(this.txtAchievementID);
            this.gbxAchievement.Controls.Add(this.btnAchievementRemove);
            this.gbxAchievement.Controls.Add(this.btnAchievementAdd);
            this.gbxAchievement.Controls.Add(this.gbxAchievementFaction);
            this.gbxAchievement.Location = new System.Drawing.Point(6, 298);
            this.gbxAchievement.Name = "gbxAchievement";
            this.gbxAchievement.Size = new System.Drawing.Size(200, 298);
            this.gbxAchievement.TabIndex = 24;
            this.gbxAchievement.TabStop = false;
            this.gbxAchievement.Text = "Achievement";
            // 
            // cbxObtainable
            // 
            this.cbxObtainable.AutoSize = true;
            this.cbxObtainable.Checked = true;
            this.cbxObtainable.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbxObtainable.Location = new System.Drawing.Point(10, 52);
            this.cbxObtainable.Name = "cbxObtainable";
            this.cbxObtainable.Size = new System.Drawing.Size(77, 17);
            this.cbxObtainable.TabIndex = 18;
            this.cbxObtainable.Text = "Obtainable";
            this.cbxObtainable.UseVisualStyleBackColor = true;
            // 
            // btnAchievementMoveDown
            // 
            this.btnAchievementMoveDown.Location = new System.Drawing.Point(103, 269);
            this.btnAchievementMoveDown.Name = "btnAchievementMoveDown";
            this.btnAchievementMoveDown.Size = new System.Drawing.Size(91, 23);
            this.btnAchievementMoveDown.TabIndex = 26;
            this.btnAchievementMoveDown.Text = "D";
            this.btnAchievementMoveDown.UseVisualStyleBackColor = true;
            this.btnAchievementMoveDown.Click += new System.EventHandler(this.BtnAchievementMoveDown_Click);
            // 
            // cbxWowheadLink
            // 
            this.cbxWowheadLink.AutoSize = true;
            this.cbxWowheadLink.Checked = true;
            this.cbxWowheadLink.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbxWowheadLink.Location = new System.Drawing.Point(104, 52);
            this.cbxWowheadLink.Name = "cbxWowheadLink";
            this.cbxWowheadLink.Size = new System.Drawing.Size(98, 17);
            this.cbxWowheadLink.TabIndex = 20;
            this.cbxWowheadLink.Text = "Wowhead Link";
            this.cbxWowheadLink.UseVisualStyleBackColor = true;
            // 
            // btnAchievementMoveUp
            // 
            this.btnAchievementMoveUp.Location = new System.Drawing.Point(6, 269);
            this.btnAchievementMoveUp.Name = "btnAchievementMoveUp";
            this.btnAchievementMoveUp.Size = new System.Drawing.Size(91, 23);
            this.btnAchievementMoveUp.TabIndex = 25;
            this.btnAchievementMoveUp.Text = "U";
            this.btnAchievementMoveUp.UseVisualStyleBackColor = true;
            this.btnAchievementMoveUp.Click += new System.EventHandler(this.BtnAchievementMoveUp_Click);
            // 
            // gbxAchievementCovenant
            // 
            this.gbxAchievementCovenant.Controls.Add(this.rdbNecrolord);
            this.gbxAchievementCovenant.Controls.Add(this.rdbNightFae);
            this.gbxAchievementCovenant.Controls.Add(this.rdbVenthyr);
            this.gbxAchievementCovenant.Controls.Add(this.rdbKyrian);
            this.gbxAchievementCovenant.Controls.Add(this.rdbNoCovenant);
            this.gbxAchievementCovenant.Location = new System.Drawing.Point(7, 146);
            this.gbxAchievementCovenant.Name = "gbxAchievementCovenant";
            this.gbxAchievementCovenant.Size = new System.Drawing.Size(186, 88);
            this.gbxAchievementCovenant.TabIndex = 24;
            this.gbxAchievementCovenant.TabStop = false;
            this.gbxAchievementCovenant.Text = "Covenant";
            // 
            // rdbNecrolord
            // 
            this.rdbNecrolord.AutoSize = true;
            this.rdbNecrolord.Location = new System.Drawing.Point(97, 65);
            this.rdbNecrolord.Name = "rdbNecrolord";
            this.rdbNecrolord.Size = new System.Drawing.Size(71, 17);
            this.rdbNecrolord.TabIndex = 4;
            this.rdbNecrolord.Text = "Necrolord";
            this.rdbNecrolord.UseVisualStyleBackColor = true;
            // 
            // rdbNightFae
            // 
            this.rdbNightFae.AutoSize = true;
            this.rdbNightFae.Location = new System.Drawing.Point(6, 65);
            this.rdbNightFae.Name = "rdbNightFae";
            this.rdbNightFae.Size = new System.Drawing.Size(71, 17);
            this.rdbNightFae.TabIndex = 3;
            this.rdbNightFae.Text = "Night Fae";
            this.rdbNightFae.UseVisualStyleBackColor = true;
            // 
            // rdbVenthyr
            // 
            this.rdbVenthyr.AutoSize = true;
            this.rdbVenthyr.Location = new System.Drawing.Point(97, 42);
            this.rdbVenthyr.Name = "rdbVenthyr";
            this.rdbVenthyr.Size = new System.Drawing.Size(61, 17);
            this.rdbVenthyr.TabIndex = 2;
            this.rdbVenthyr.Text = "Venthyr";
            this.rdbVenthyr.UseVisualStyleBackColor = true;
            // 
            // rdbKyrian
            // 
            this.rdbKyrian.AutoSize = true;
            this.rdbKyrian.Location = new System.Drawing.Point(6, 42);
            this.rdbKyrian.Name = "rdbKyrian";
            this.rdbKyrian.Size = new System.Drawing.Size(54, 17);
            this.rdbKyrian.TabIndex = 1;
            this.rdbKyrian.Text = "Kyrian";
            this.rdbKyrian.UseVisualStyleBackColor = true;
            // 
            // rdbNoCovenant
            // 
            this.rdbNoCovenant.AutoSize = true;
            this.rdbNoCovenant.Checked = true;
            this.rdbNoCovenant.Location = new System.Drawing.Point(6, 19);
            this.rdbNoCovenant.Name = "rdbNoCovenant";
            this.rdbNoCovenant.Size = new System.Drawing.Size(88, 17);
            this.rdbNoCovenant.TabIndex = 0;
            this.rdbNoCovenant.TabStop = true;
            this.rdbNoCovenant.Text = "No Covenant";
            this.rdbNoCovenant.UseVisualStyleBackColor = true;
            // 
            // lblAchievementID
            // 
            this.lblAchievementID.AutoSize = true;
            this.lblAchievementID.Location = new System.Drawing.Point(7, 24);
            this.lblAchievementID.Name = "lblAchievementID";
            this.lblAchievementID.Size = new System.Drawing.Size(83, 13);
            this.lblAchievementID.TabIndex = 17;
            this.lblAchievementID.Text = "Achievement ID";
            // 
            // txtAchievementID
            // 
            this.txtAchievementID.Location = new System.Drawing.Point(104, 20);
            this.txtAchievementID.Multiline = true;
            this.txtAchievementID.Name = "txtAchievementID";
            this.txtAchievementID.Size = new System.Drawing.Size(89, 21);
            this.txtAchievementID.TabIndex = 16;
            // 
            // btnAchievementRemove
            // 
            this.btnAchievementRemove.Location = new System.Drawing.Point(103, 240);
            this.btnAchievementRemove.Name = "btnAchievementRemove";
            this.btnAchievementRemove.Size = new System.Drawing.Size(91, 23);
            this.btnAchievementRemove.TabIndex = 22;
            this.btnAchievementRemove.Text = "Remove";
            this.btnAchievementRemove.UseVisualStyleBackColor = true;
            this.btnAchievementRemove.Click += new System.EventHandler(this.BtnAchievementRemove_Click);
            // 
            // btnAchievementAdd
            // 
            this.btnAchievementAdd.Location = new System.Drawing.Point(6, 240);
            this.btnAchievementAdd.Name = "btnAchievementAdd";
            this.btnAchievementAdd.Size = new System.Drawing.Size(91, 23);
            this.btnAchievementAdd.TabIndex = 21;
            this.btnAchievementAdd.Text = "Add";
            this.btnAchievementAdd.UseVisualStyleBackColor = true;
            this.btnAchievementAdd.Click += new System.EventHandler(this.BtnAchievementAdd_Click);
            // 
            // gbxAchievementFaction
            // 
            this.gbxAchievementFaction.Controls.Add(this.rdbHorde);
            this.gbxAchievementFaction.Controls.Add(this.rdbAlliance);
            this.gbxAchievementFaction.Controls.Add(this.rdbNoFaction);
            this.gbxAchievementFaction.Location = new System.Drawing.Point(7, 75);
            this.gbxAchievementFaction.Name = "gbxAchievementFaction";
            this.gbxAchievementFaction.Size = new System.Drawing.Size(186, 65);
            this.gbxAchievementFaction.TabIndex = 23;
            this.gbxAchievementFaction.TabStop = false;
            this.gbxAchievementFaction.Text = "Faction";
            // 
            // rdbHorde
            // 
            this.rdbHorde.AutoSize = true;
            this.rdbHorde.Location = new System.Drawing.Point(97, 42);
            this.rdbHorde.Name = "rdbHorde";
            this.rdbHorde.Size = new System.Drawing.Size(54, 17);
            this.rdbHorde.TabIndex = 2;
            this.rdbHorde.Text = "Horde";
            this.rdbHorde.UseVisualStyleBackColor = true;
            // 
            // rdbAlliance
            // 
            this.rdbAlliance.AutoSize = true;
            this.rdbAlliance.Location = new System.Drawing.Point(6, 42);
            this.rdbAlliance.Name = "rdbAlliance";
            this.rdbAlliance.Size = new System.Drawing.Size(62, 17);
            this.rdbAlliance.TabIndex = 1;
            this.rdbAlliance.Text = "Alliance";
            this.rdbAlliance.UseVisualStyleBackColor = true;
            // 
            // rdbNoFaction
            // 
            this.rdbNoFaction.AutoSize = true;
            this.rdbNoFaction.Checked = true;
            this.rdbNoFaction.Location = new System.Drawing.Point(6, 19);
            this.rdbNoFaction.Name = "rdbNoFaction";
            this.rdbNoFaction.Size = new System.Drawing.Size(77, 17);
            this.rdbNoFaction.TabIndex = 0;
            this.rdbNoFaction.TabStop = true;
            this.rdbNoFaction.Text = "No Faction";
            this.rdbNoFaction.UseVisualStyleBackColor = true;
            // 
            // gbxImportExport
            // 
            this.gbxImportExport.Controls.Add(this.pgbUpdateXuFuEncounter);
            this.gbxImportExport.Controls.Add(this.pgbUpdateAchievement_AGT);
            this.gbxImportExport.Controls.Add(this.btnExportPetBattles);
            this.gbxImportExport.Controls.Add(this.pgbUpdateUIMap);
            this.gbxImportExport.Controls.Add(this.btnUpdateAchievement_AGT);
            this.gbxImportExport.Controls.Add(this.btnExport);
            this.gbxImportExport.Controls.Add(this.btnUpdateUIMap);
            this.gbxImportExport.Controls.Add(this.btnUpdateXuFuEncounter);
            this.gbxImportExport.Location = new System.Drawing.Point(6, 743);
            this.gbxImportExport.Name = "gbxImportExport";
            this.gbxImportExport.Size = new System.Drawing.Size(200, 166);
            this.gbxImportExport.TabIndex = 25;
            this.gbxImportExport.TabStop = false;
            this.gbxImportExport.Text = "Import / Export";
            // 
            // btnExportPetBattles
            // 
            this.btnExportPetBattles.Location = new System.Drawing.Point(6, 48);
            this.btnExportPetBattles.Name = "btnExportPetBattles";
            this.btnExportPetBattles.Size = new System.Drawing.Size(188, 23);
            this.btnExportPetBattles.TabIndex = 1;
            this.btnExportPetBattles.Text = "Export Pet Battles to Lua";
            this.btnExportPetBattles.Click += new System.EventHandler(this.BtnExportPetBattles_Click);
            // 
            // btnUpdateAchievement_AGT
            // 
            this.btnUpdateAchievement_AGT.Location = new System.Drawing.Point(6, 77);
            this.btnUpdateAchievement_AGT.Name = "btnUpdateAchievement_AGT";
            this.btnUpdateAchievement_AGT.Size = new System.Drawing.Size(188, 23);
            this.btnUpdateAchievement_AGT.TabIndex = 31;
            this.btnUpdateAchievement_AGT.Text = "Update Achievement (AGT)";
            this.btnUpdateAchievement_AGT.UseVisualStyleBackColor = true;
            this.btnUpdateAchievement_AGT.Click += new System.EventHandler(this.BtnUpdateAchievement_AGT_Click);
            // 
            // btnExport
            // 
            this.btnExport.Location = new System.Drawing.Point(6, 19);
            this.btnExport.Name = "btnExport";
            this.btnExport.Size = new System.Drawing.Size(188, 23);
            this.btnExport.TabIndex = 0;
            this.btnExport.Text = "Export to Lua";
            this.btnExport.UseVisualStyleBackColor = true;
            this.btnExport.Click += new System.EventHandler(this.BtnExport_Click);
            // 
            // btnUpdateUIMap
            // 
            this.btnUpdateUIMap.Location = new System.Drawing.Point(6, 106);
            this.btnUpdateUIMap.Name = "btnUpdateUIMap";
            this.btnUpdateUIMap.Size = new System.Drawing.Size(188, 23);
            this.btnUpdateUIMap.TabIndex = 28;
            this.btnUpdateUIMap.Text = "Update UIMap";
            this.btnUpdateUIMap.UseVisualStyleBackColor = true;
            this.btnUpdateUIMap.Click += new System.EventHandler(this.BtnUpdateUIMap_Click);
            // 
            // btnUpdateXuFuEncounter
            // 
            this.btnUpdateXuFuEncounter.Location = new System.Drawing.Point(6, 135);
            this.btnUpdateXuFuEncounter.Name = "btnUpdateXuFuEncounter";
            this.btnUpdateXuFuEncounter.Size = new System.Drawing.Size(188, 23);
            this.btnUpdateXuFuEncounter.TabIndex = 26;
            this.btnUpdateXuFuEncounter.Text = "Update XuFuEncounter";
            this.btnUpdateXuFuEncounter.UseVisualStyleBackColor = true;
            this.btnUpdateXuFuEncounter.Click += new System.EventHandler(this.BtnUpdateXuFuEncounter_Click);
            // 
            // splitter2
            // 
            this.splitter2.Location = new System.Drawing.Point(606, 3);
            this.splitter2.Name = "splitter2";
            this.splitter2.Size = new System.Drawing.Size(3, 914);
            this.splitter2.TabIndex = 29;
            this.splitter2.TabStop = false;
            // 
            // lsbAchievements
            // 
            this.lsbAchievements.Dock = System.Windows.Forms.DockStyle.Left;
            this.lsbAchievements.FormattingEnabled = true;
            this.lsbAchievements.Location = new System.Drawing.Point(256, 3);
            this.lsbAchievements.Name = "lsbAchievements";
            this.lsbAchievements.Size = new System.Drawing.Size(350, 914);
            this.lsbAchievements.TabIndex = 3;
            this.lsbAchievements.SelectedIndexChanged += new System.EventHandler(this.LsbAchievements_SelectedIndexChanged);
            // 
            // splitter1
            // 
            this.splitter1.Location = new System.Drawing.Point(253, 3);
            this.splitter1.Name = "splitter1";
            this.splitter1.Size = new System.Drawing.Size(3, 914);
            this.splitter1.TabIndex = 2;
            this.splitter1.TabStop = false;
            // 
            // tvwAchievementCategories
            // 
            this.tvwAchievementCategories.Dock = System.Windows.Forms.DockStyle.Left;
            this.tvwAchievementCategories.HideSelection = false;
            this.tvwAchievementCategories.Location = new System.Drawing.Point(3, 3);
            this.tvwAchievementCategories.Name = "tvwAchievementCategories";
            this.tvwAchievementCategories.Size = new System.Drawing.Size(250, 914);
            this.tvwAchievementCategories.TabIndex = 1;
            this.tvwAchievementCategories.AfterSelect += new System.Windows.Forms.TreeViewEventHandler(this.TvwAchievementCategories_AfterSelect);
            // 
            // tabPage2
            // 
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(1141, 920);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Empty";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // pgbUpdateXuFuEncounter
            // 
            this.pgbUpdateXuFuEncounter.CustomText = "";
            this.pgbUpdateXuFuEncounter.Location = new System.Drawing.Point(172, 136);
            this.pgbUpdateXuFuEncounter.Name = "pgbUpdateXuFuEncounter";
            this.pgbUpdateXuFuEncounter.ProgressColor = System.Drawing.Color.LightGreen;
            this.pgbUpdateXuFuEncounter.Size = new System.Drawing.Size(21, 21);
            this.pgbUpdateXuFuEncounter.TabIndex = 28;
            this.pgbUpdateXuFuEncounter.TextColor = System.Drawing.Color.Black;
            this.pgbUpdateXuFuEncounter.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 8.25F);
            this.pgbUpdateXuFuEncounter.VisualMode = DbManager.GUI.Custom.ProgressBarDisplayMode.CurrProgress;
            // 
            // pgbUpdateAchievement_AGT
            // 
            this.pgbUpdateAchievement_AGT.CustomText = "";
            this.pgbUpdateAchievement_AGT.Location = new System.Drawing.Point(172, 78);
            this.pgbUpdateAchievement_AGT.Name = "pgbUpdateAchievement_AGT";
            this.pgbUpdateAchievement_AGT.ProgressColor = System.Drawing.Color.LightGreen;
            this.pgbUpdateAchievement_AGT.Size = new System.Drawing.Size(21, 21);
            this.pgbUpdateAchievement_AGT.TabIndex = 30;
            this.pgbUpdateAchievement_AGT.TextColor = System.Drawing.Color.Black;
            this.pgbUpdateAchievement_AGT.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 8.25F);
            this.pgbUpdateAchievement_AGT.Visible = false;
            this.pgbUpdateAchievement_AGT.VisualMode = DbManager.GUI.Custom.ProgressBarDisplayMode.CurrProgress;
            // 
            // pgbUpdateUIMap
            // 
            this.pgbUpdateUIMap.CustomText = "";
            this.pgbUpdateUIMap.Location = new System.Drawing.Point(172, 107);
            this.pgbUpdateUIMap.Name = "pgbUpdateUIMap";
            this.pgbUpdateUIMap.ProgressColor = System.Drawing.Color.LightGreen;
            this.pgbUpdateUIMap.Size = new System.Drawing.Size(21, 21);
            this.pgbUpdateUIMap.TabIndex = 28;
            this.pgbUpdateUIMap.TextColor = System.Drawing.Color.Black;
            this.pgbUpdateUIMap.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 8.25F);
            this.pgbUpdateUIMap.VisualMode = DbManager.GUI.Custom.ProgressBarDisplayMode.CurrProgress;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1149, 946);
            this.Controls.Add(this.tabControl1);
            this.Name = "Form1";
            this.Text = "DB Manager";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.tabControl1.ResumeLayout(false);
            this.tabKrowisAchievementFilter.ResumeLayout(false);
            this.pnlGroupBoxes.ResumeLayout(false);
            this.gbxAchievementCategory.ResumeLayout(false);
            this.gbxAchievementCategory.PerformLayout();
            this.gbxPetBattles.ResumeLayout(false);
            this.gbxPetBattles.PerformLayout();
            this.gbxAchievement.ResumeLayout(false);
            this.gbxAchievement.PerformLayout();
            this.gbxAchievementCovenant.ResumeLayout(false);
            this.gbxAchievementCovenant.PerformLayout();
            this.gbxAchievementFaction.ResumeLayout(false);
            this.gbxAchievementFaction.PerformLayout();
            this.gbxImportExport.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabKrowisAchievementFilter;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.Label lblFunctionValue;
        private System.Windows.Forms.TextBox txtFunctionValue;
        private System.Windows.Forms.Label lblCategoryName;
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
        private System.Windows.Forms.CheckBox cbxWowheadLink;
        private System.Windows.Forms.CheckBox cbxObtainable;
        private System.Windows.Forms.Label lblAchievementID;
        private System.Windows.Forms.TextBox txtAchievementID;
        private System.Windows.Forms.ListBox lsbAchievements;
        private System.Windows.Forms.GroupBox gbxAchievement;
        private System.Windows.Forms.GroupBox gbxAchievementCategory;
        private System.Windows.Forms.GroupBox gbxImportExport;
        private System.Windows.Forms.Button btnExport;
        private System.Windows.Forms.CheckBox cbxLegacyCategory;
        private System.Windows.Forms.GroupBox gbxAchievementFaction;
        private System.Windows.Forms.RadioButton rdbHorde;
        private System.Windows.Forms.RadioButton rdbAlliance;
        private System.Windows.Forms.RadioButton rdbNoFaction;
        private System.Windows.Forms.TreeView tvwAchievementCategories;
        private System.Windows.Forms.GroupBox gbxAchievementCovenant;
        private System.Windows.Forms.RadioButton rdbNecrolord;
        private System.Windows.Forms.RadioButton rdbNightFae;
        private System.Windows.Forms.RadioButton rdbVenthyr;
        private System.Windows.Forms.RadioButton rdbKyrian;
        private System.Windows.Forms.RadioButton rdbNoCovenant;
        private System.Windows.Forms.Button btnAchievementMoveDown;
        private System.Windows.Forms.Button btnAchievementMoveUp;
        private System.Windows.Forms.Button btnUpdateXuFuEncounter;
        private System.Windows.Forms.TextBox txtWoWPetBattleCriteria;
        private System.Windows.Forms.GroupBox gbxPetBattles;
        private System.Windows.Forms.Button btnImportWoWPetBattleCriteria;
        private System.Windows.Forms.Button btnSyncExternalLinking;
        private System.Windows.Forms.Button btnExportPetBattles;
        private System.Windows.Forms.Label lblMapIDs;
        private System.Windows.Forms.TextBox txtMapIDs;
        private System.Windows.Forms.Button btnUpdateMapIDs;
        private System.Windows.Forms.CheckBox cbxIsActive;
        private System.Windows.Forms.CheckBox cbxCanMerge;
        private System.Windows.Forms.Button btnUpdateUIMap;
        private GUI.Custom.TextProgressBar pgbUpdateUIMap;
        private GUI.Custom.TextProgressBar pgbUpdateXuFuEncounter;
        private System.Windows.Forms.ComboBox cbxFunctions;
        private System.Windows.Forms.Panel pnlGroupBoxes;
        private System.Windows.Forms.Splitter splitter1;
        private System.Windows.Forms.Splitter splitter2;
        private GUI.Custom.TextProgressBar pgbUpdateAchievement_AGT;
        private System.Windows.Forms.Button btnUpdateAchievement_AGT;
    }
}

