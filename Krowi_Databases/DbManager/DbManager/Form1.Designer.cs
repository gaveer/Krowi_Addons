
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
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.btnExport = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.rdbHorde = new System.Windows.Forms.RadioButton();
            this.rdbAlliance = new System.Windows.Forms.RadioButton();
            this.rdbNoFaction = new System.Windows.Forms.RadioButton();
            this.label3 = new System.Windows.Forms.Label();
            this.txtAchievementID = new System.Windows.Forms.TextBox();
            this.btnAchievementRemove = new System.Windows.Forms.Button();
            this.cbxObtainable = new System.Windows.Forms.CheckBox();
            this.btnAchievementAdd = new System.Windows.Forms.Button();
            this.cbxHasWowheadLink = new System.Windows.Forms.CheckBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cbxLegacyCategory = new System.Windows.Forms.CheckBox();
            this.cbxCategoryAsParent = new System.Windows.Forms.CheckBox();
            this.txtCategoryName = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnAchievementCategoryMoveLeft = new System.Windows.Forms.Button();
            this.txtFunctionValue = new System.Windows.Forms.TextBox();
            this.btnAchievementCategoryMoveRight = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.btnAchievementCategoryMoveUp = new System.Windows.Forms.Button();
            this.btnAchievementCategoryAdd = new System.Windows.Forms.Button();
            this.btnAchievementCategoryMoveDown = new System.Windows.Forms.Button();
            this.btnAchievementCategoryRemove = new System.Windows.Forms.Button();
            this.lsbAchievements = new System.Windows.Forms.ListBox();
            this.lsbFunctions = new System.Windows.Forms.ListBox();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.treeView1 = new System.Windows.Forms.TreeView();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox4.SuspendLayout();
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
            this.tabControl1.Size = new System.Drawing.Size(1232, 893);
            this.tabControl1.TabIndex = 2;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.lsbAchievements);
            this.tabPage1.Controls.Add(this.lsbFunctions);
            this.tabPage1.Controls.Add(this.treeView1);
            this.tabPage1.Controls.Add(this.groupBox3);
            this.tabPage1.Controls.Add(this.groupBox2);
            this.tabPage1.Controls.Add(this.groupBox1);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(1224, 867);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Krowi\'s Achievement Filter";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.btnExport);
            this.groupBox3.Location = new System.Drawing.Point(759, 532);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(212, 55);
            this.groupBox3.TabIndex = 25;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Export";
            // 
            // btnExport
            // 
            this.btnExport.Location = new System.Drawing.Point(13, 19);
            this.btnExport.Name = "btnExport";
            this.btnExport.Size = new System.Drawing.Size(186, 23);
            this.btnExport.TabIndex = 0;
            this.btnExport.Text = "Export";
            this.btnExport.UseVisualStyleBackColor = true;
            this.btnExport.Click += new System.EventHandler(this.btnExport_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.groupBox4);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.txtAchievementID);
            this.groupBox2.Controls.Add(this.btnAchievementRemove);
            this.groupBox2.Controls.Add(this.cbxObtainable);
            this.groupBox2.Controls.Add(this.btnAchievementAdd);
            this.groupBox2.Controls.Add(this.cbxHasWowheadLink);
            this.groupBox2.Location = new System.Drawing.Point(759, 277);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(212, 249);
            this.groupBox2.TabIndex = 24;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "New Achievement";
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.rdbHorde);
            this.groupBox4.Controls.Add(this.rdbAlliance);
            this.groupBox4.Controls.Add(this.rdbNoFaction);
            this.groupBox4.Location = new System.Drawing.Point(6, 91);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(200, 88);
            this.groupBox4.TabIndex = 23;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Faction";
            // 
            // rdbHorde
            // 
            this.rdbHorde.AutoSize = true;
            this.rdbHorde.Location = new System.Drawing.Point(6, 65);
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
            this.btnAchievementRemove.Location = new System.Drawing.Point(13, 214);
            this.btnAchievementRemove.Name = "btnAchievementRemove";
            this.btnAchievementRemove.Size = new System.Drawing.Size(186, 23);
            this.btnAchievementRemove.TabIndex = 22;
            this.btnAchievementRemove.Text = "Remove";
            this.btnAchievementRemove.UseVisualStyleBackColor = true;
            this.btnAchievementRemove.Click += new System.EventHandler(this.btnAchievementRemove_Click);
            // 
            // cbxObtainable
            // 
            this.cbxObtainable.AutoSize = true;
            this.cbxObtainable.Checked = true;
            this.cbxObtainable.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbxObtainable.Location = new System.Drawing.Point(13, 45);
            this.cbxObtainable.Name = "cbxObtainable";
            this.cbxObtainable.Size = new System.Drawing.Size(77, 17);
            this.cbxObtainable.TabIndex = 18;
            this.cbxObtainable.Text = "Obtainable";
            this.cbxObtainable.UseVisualStyleBackColor = true;
            // 
            // btnAchievementAdd
            // 
            this.btnAchievementAdd.Location = new System.Drawing.Point(11, 185);
            this.btnAchievementAdd.Name = "btnAchievementAdd";
            this.btnAchievementAdd.Size = new System.Drawing.Size(186, 23);
            this.btnAchievementAdd.TabIndex = 21;
            this.btnAchievementAdd.Text = "Add";
            this.btnAchievementAdd.UseVisualStyleBackColor = true;
            this.btnAchievementAdd.Click += new System.EventHandler(this.btnAchievementAdd_Click);
            // 
            // cbxHasWowheadLink
            // 
            this.cbxHasWowheadLink.AutoSize = true;
            this.cbxHasWowheadLink.Checked = true;
            this.cbxHasWowheadLink.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbxHasWowheadLink.Location = new System.Drawing.Point(13, 68);
            this.cbxHasWowheadLink.Name = "cbxHasWowheadLink";
            this.cbxHasWowheadLink.Size = new System.Drawing.Size(120, 17);
            this.cbxHasWowheadLink.TabIndex = 20;
            this.cbxHasWowheadLink.Text = "Has Wowhead Link";
            this.cbxHasWowheadLink.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cbxLegacyCategory);
            this.groupBox1.Controls.Add(this.cbxCategoryAsParent);
            this.groupBox1.Controls.Add(this.txtCategoryName);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.btnAchievementCategoryMoveLeft);
            this.groupBox1.Controls.Add(this.txtFunctionValue);
            this.groupBox1.Controls.Add(this.btnAchievementCategoryMoveRight);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.btnAchievementCategoryMoveUp);
            this.groupBox1.Controls.Add(this.btnAchievementCategoryAdd);
            this.groupBox1.Controls.Add(this.btnAchievementCategoryMoveDown);
            this.groupBox1.Controls.Add(this.btnAchievementCategoryRemove);
            this.groupBox1.Location = new System.Drawing.Point(759, 6);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(212, 265);
            this.groupBox1.TabIndex = 23;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "New Category";
            // 
            // cbxLegacyCategory
            // 
            this.cbxLegacyCategory.AutoSize = true;
            this.cbxLegacyCategory.Location = new System.Drawing.Point(13, 91);
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
            this.btnAchievementCategoryMoveLeft.Location = new System.Drawing.Point(13, 201);
            this.btnAchievementCategoryMoveLeft.Name = "btnAchievementCategoryMoveLeft";
            this.btnAchievementCategoryMoveLeft.Size = new System.Drawing.Size(89, 23);
            this.btnAchievementCategoryMoveLeft.TabIndex = 14;
            this.btnAchievementCategoryMoveLeft.Text = "Move Left";
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
            // btnAchievementCategoryMoveRight
            // 
            this.btnAchievementCategoryMoveRight.Location = new System.Drawing.Point(108, 201);
            this.btnAchievementCategoryMoveRight.Name = "btnAchievementCategoryMoveRight";
            this.btnAchievementCategoryMoveRight.Size = new System.Drawing.Size(89, 23);
            this.btnAchievementCategoryMoveRight.TabIndex = 13;
            this.btnAchievementCategoryMoveRight.Text = "Move Right";
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
            // btnAchievementCategoryMoveUp
            // 
            this.btnAchievementCategoryMoveUp.Location = new System.Drawing.Point(57, 172);
            this.btnAchievementCategoryMoveUp.Name = "btnAchievementCategoryMoveUp";
            this.btnAchievementCategoryMoveUp.Size = new System.Drawing.Size(89, 23);
            this.btnAchievementCategoryMoveUp.TabIndex = 12;
            this.btnAchievementCategoryMoveUp.Text = "Move Up";
            this.btnAchievementCategoryMoveUp.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryMoveUp.Click += new System.EventHandler(this.btnAchievementCategoryMoveUp_Click);
            // 
            // btnAchievementCategoryAdd
            // 
            this.btnAchievementCategoryAdd.Location = new System.Drawing.Point(13, 114);
            this.btnAchievementCategoryAdd.Name = "btnAchievementCategoryAdd";
            this.btnAchievementCategoryAdd.Size = new System.Drawing.Size(184, 23);
            this.btnAchievementCategoryAdd.TabIndex = 7;
            this.btnAchievementCategoryAdd.Text = "Add";
            this.btnAchievementCategoryAdd.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryAdd.Click += new System.EventHandler(this.btnAchievementCategoryAdd_Click);
            // 
            // btnAchievementCategoryMoveDown
            // 
            this.btnAchievementCategoryMoveDown.Location = new System.Drawing.Point(57, 230);
            this.btnAchievementCategoryMoveDown.Name = "btnAchievementCategoryMoveDown";
            this.btnAchievementCategoryMoveDown.Size = new System.Drawing.Size(89, 23);
            this.btnAchievementCategoryMoveDown.TabIndex = 11;
            this.btnAchievementCategoryMoveDown.Text = "Move Down";
            this.btnAchievementCategoryMoveDown.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryMoveDown.Click += new System.EventHandler(this.btnAchievementCategoryMoveDown_Click);
            // 
            // btnAchievementCategoryRemove
            // 
            this.btnAchievementCategoryRemove.Location = new System.Drawing.Point(13, 143);
            this.btnAchievementCategoryRemove.Name = "btnAchievementCategoryRemove";
            this.btnAchievementCategoryRemove.Size = new System.Drawing.Size(184, 23);
            this.btnAchievementCategoryRemove.TabIndex = 8;
            this.btnAchievementCategoryRemove.Text = "Remove";
            this.btnAchievementCategoryRemove.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryRemove.Click += new System.EventHandler(this.btnAchievementCategoryRemove_Click);
            // 
            // lsbAchievements
            // 
            this.lsbAchievements.Dock = System.Windows.Forms.DockStyle.Left;
            this.lsbAchievements.FormattingEnabled = true;
            this.lsbAchievements.Location = new System.Drawing.Point(503, 3);
            this.lsbAchievements.Name = "lsbAchievements";
            this.lsbAchievements.Size = new System.Drawing.Size(250, 861);
            this.lsbAchievements.TabIndex = 15;
            // 
            // lsbFunctions
            // 
            this.lsbFunctions.Dock = System.Windows.Forms.DockStyle.Left;
            this.lsbFunctions.FormattingEnabled = true;
            this.lsbFunctions.Location = new System.Drawing.Point(253, 3);
            this.lsbFunctions.Name = "lsbFunctions";
            this.lsbFunctions.Size = new System.Drawing.Size(250, 861);
            this.lsbFunctions.TabIndex = 2;
            // 
            // tabPage2
            // 
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(1224, 867);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Empty";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // treeView1
            // 
            this.treeView1.Dock = System.Windows.Forms.DockStyle.Left;
            this.treeView1.HideSelection = false;
            this.treeView1.Location = new System.Drawing.Point(3, 3);
            this.treeView1.Name = "treeView1";
            this.treeView1.Size = new System.Drawing.Size(250, 861);
            this.treeView1.TabIndex = 1;
            this.treeView1.AfterSelect += new System.Windows.Forms.TreeViewEventHandler(this.treeView1_AfterSelect);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1232, 893);
            this.Controls.Add(this.tabControl1);
            this.Name = "Form1";
            this.Text = "DB Manager";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.groupBox3.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox4.ResumeLayout(false);
            this.groupBox4.PerformLayout();
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
        private System.Windows.Forms.TreeView treeView1;
    }
}

