
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
            this.lsbAchievementCategories1 = new System.Windows.Forms.ListBox();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.btnAchievementCategoryMoveLeft = new System.Windows.Forms.Button();
            this.btnAchievementCategoryMoveRight = new System.Windows.Forms.Button();
            this.btnAchievementCategoryMoveUp = new System.Windows.Forms.Button();
            this.btnAchievementCategoryMoveDown = new System.Windows.Forms.Button();
            this.btnAchievementCategoryRemove = new System.Windows.Forms.Button();
            this.btnAchievementCategoryAdd = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.txtFunctionValue = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtCategoryName = new System.Windows.Forms.TextBox();
            this.cbxCategoryAsParent = new System.Windows.Forms.CheckBox();
            this.lsbFunctions = new System.Windows.Forms.ListBox();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.btnAchievementRemove = new System.Windows.Forms.Button();
            this.btnAchievementAdd = new System.Windows.Forms.Button();
            this.cbxHasWowheadLink = new System.Windows.Forms.CheckBox();
            this.cbxHasIATLink = new System.Windows.Forms.CheckBox();
            this.cbxObtainable = new System.Windows.Forms.CheckBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtAchievementID = new System.Windows.Forms.TextBox();
            this.lsbAchievementCategories2 = new System.Windows.Forms.ListBox();
            this.lsbAchievements = new System.Windows.Forms.ListBox();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            this.SuspendLayout();
            // 
            // lsbAchievementCategories1
            // 
            this.lsbAchievementCategories1.Dock = System.Windows.Forms.DockStyle.Left;
            this.lsbAchievementCategories1.FormattingEnabled = true;
            this.lsbAchievementCategories1.Location = new System.Drawing.Point(3, 3);
            this.lsbAchievementCategories1.Name = "lsbAchievementCategories1";
            this.lsbAchievementCategories1.Size = new System.Drawing.Size(250, 438);
            this.lsbAchievementCategories1.TabIndex = 0;
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl1.Location = new System.Drawing.Point(0, 0);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(800, 470);
            this.tabControl1.TabIndex = 2;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.btnAchievementCategoryMoveLeft);
            this.tabPage1.Controls.Add(this.btnAchievementCategoryMoveRight);
            this.tabPage1.Controls.Add(this.btnAchievementCategoryMoveUp);
            this.tabPage1.Controls.Add(this.btnAchievementCategoryMoveDown);
            this.tabPage1.Controls.Add(this.btnAchievementCategoryRemove);
            this.tabPage1.Controls.Add(this.btnAchievementCategoryAdd);
            this.tabPage1.Controls.Add(this.label2);
            this.tabPage1.Controls.Add(this.txtFunctionValue);
            this.tabPage1.Controls.Add(this.label1);
            this.tabPage1.Controls.Add(this.txtCategoryName);
            this.tabPage1.Controls.Add(this.cbxCategoryAsParent);
            this.tabPage1.Controls.Add(this.lsbFunctions);
            this.tabPage1.Controls.Add(this.lsbAchievementCategories1);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(792, 444);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "New Achievement Category";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // btnAchievementCategoryMoveLeft
            // 
            this.btnAchievementCategoryMoveLeft.Location = new System.Drawing.Point(509, 162);
            this.btnAchievementCategoryMoveLeft.Name = "btnAchievementCategoryMoveLeft";
            this.btnAchievementCategoryMoveLeft.Size = new System.Drawing.Size(89, 23);
            this.btnAchievementCategoryMoveLeft.TabIndex = 14;
            this.btnAchievementCategoryMoveLeft.Text = "Move Left";
            this.btnAchievementCategoryMoveLeft.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryMoveLeft.Click += new System.EventHandler(this.btnAchievementCategoryMoveLeft_Click);
            // 
            // btnAchievementCategoryMoveRight
            // 
            this.btnAchievementCategoryMoveRight.Location = new System.Drawing.Point(604, 162);
            this.btnAchievementCategoryMoveRight.Name = "btnAchievementCategoryMoveRight";
            this.btnAchievementCategoryMoveRight.Size = new System.Drawing.Size(89, 23);
            this.btnAchievementCategoryMoveRight.TabIndex = 13;
            this.btnAchievementCategoryMoveRight.Text = "Move Right";
            this.btnAchievementCategoryMoveRight.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryMoveRight.Click += new System.EventHandler(this.btnAchievementCategoryMoveRight_Click);
            // 
            // btnAchievementCategoryMoveUp
            // 
            this.btnAchievementCategoryMoveUp.Location = new System.Drawing.Point(553, 133);
            this.btnAchievementCategoryMoveUp.Name = "btnAchievementCategoryMoveUp";
            this.btnAchievementCategoryMoveUp.Size = new System.Drawing.Size(89, 23);
            this.btnAchievementCategoryMoveUp.TabIndex = 12;
            this.btnAchievementCategoryMoveUp.Text = "Move Up";
            this.btnAchievementCategoryMoveUp.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryMoveUp.Click += new System.EventHandler(this.btnAchievementCategoryMoveUp_Click);
            // 
            // btnAchievementCategoryMoveDown
            // 
            this.btnAchievementCategoryMoveDown.Location = new System.Drawing.Point(553, 191);
            this.btnAchievementCategoryMoveDown.Name = "btnAchievementCategoryMoveDown";
            this.btnAchievementCategoryMoveDown.Size = new System.Drawing.Size(89, 23);
            this.btnAchievementCategoryMoveDown.TabIndex = 11;
            this.btnAchievementCategoryMoveDown.Text = "Move Down";
            this.btnAchievementCategoryMoveDown.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryMoveDown.Click += new System.EventHandler(this.btnAchievementCategoryMoveDown_Click);
            // 
            // btnAchievementCategoryRemove
            // 
            this.btnAchievementCategoryRemove.Location = new System.Drawing.Point(509, 104);
            this.btnAchievementCategoryRemove.Name = "btnAchievementCategoryRemove";
            this.btnAchievementCategoryRemove.Size = new System.Drawing.Size(184, 23);
            this.btnAchievementCategoryRemove.TabIndex = 8;
            this.btnAchievementCategoryRemove.Text = "Remove";
            this.btnAchievementCategoryRemove.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryRemove.Click += new System.EventHandler(this.btnAchievementCategoryRemove_Click);
            // 
            // btnAchievementCategoryAdd
            // 
            this.btnAchievementCategoryAdd.Location = new System.Drawing.Point(509, 75);
            this.btnAchievementCategoryAdd.Name = "btnAchievementCategoryAdd";
            this.btnAchievementCategoryAdd.Size = new System.Drawing.Size(184, 23);
            this.btnAchievementCategoryAdd.TabIndex = 7;
            this.btnAchievementCategoryAdd.Text = "Add";
            this.btnAchievementCategoryAdd.UseVisualStyleBackColor = true;
            this.btnAchievementCategoryAdd.Click += new System.EventHandler(this.btnAchievementCategoryAdd_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(509, 52);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(77, 13);
            this.label2.TabIndex = 6;
            this.label2.Text = "Function value";
            // 
            // txtFunctionValue
            // 
            this.txtFunctionValue.Location = new System.Drawing.Point(593, 49);
            this.txtFunctionValue.Name = "txtFunctionValue";
            this.txtFunctionValue.Size = new System.Drawing.Size(100, 20);
            this.txtFunctionValue.TabIndex = 5;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(509, 26);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(80, 13);
            this.label1.TabIndex = 4;
            this.label1.Text = "Category Name";
            // 
            // txtCategoryName
            // 
            this.txtCategoryName.Location = new System.Drawing.Point(593, 23);
            this.txtCategoryName.Name = "txtCategoryName";
            this.txtCategoryName.Size = new System.Drawing.Size(100, 20);
            this.txtCategoryName.TabIndex = 3;
            // 
            // cbxCategoryAsParent
            // 
            this.cbxCategoryAsParent.AutoSize = true;
            this.cbxCategoryAsParent.Location = new System.Drawing.Point(509, 6);
            this.cbxCategoryAsParent.Name = "cbxCategoryAsParent";
            this.cbxCategoryAsParent.Size = new System.Drawing.Size(184, 17);
            this.cbxCategoryAsParent.TabIndex = 2;
            this.cbxCategoryAsParent.Text = "Use Selected Category As Parent";
            this.cbxCategoryAsParent.UseVisualStyleBackColor = true;
            // 
            // lsbFunctions
            // 
            this.lsbFunctions.Dock = System.Windows.Forms.DockStyle.Left;
            this.lsbFunctions.FormattingEnabled = true;
            this.lsbFunctions.Location = new System.Drawing.Point(253, 3);
            this.lsbFunctions.Name = "lsbFunctions";
            this.lsbFunctions.Size = new System.Drawing.Size(250, 438);
            this.lsbFunctions.TabIndex = 1;
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.lsbAchievements);
            this.tabPage2.Controls.Add(this.btnAchievementRemove);
            this.tabPage2.Controls.Add(this.btnAchievementAdd);
            this.tabPage2.Controls.Add(this.cbxHasWowheadLink);
            this.tabPage2.Controls.Add(this.cbxHasIATLink);
            this.tabPage2.Controls.Add(this.cbxObtainable);
            this.tabPage2.Controls.Add(this.label3);
            this.tabPage2.Controls.Add(this.txtAchievementID);
            this.tabPage2.Controls.Add(this.lsbAchievementCategories2);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(792, 444);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "New Achievement";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // btnAchievementRemove
            // 
            this.btnAchievementRemove.Location = new System.Drawing.Point(509, 130);
            this.btnAchievementRemove.Name = "btnAchievementRemove";
            this.btnAchievementRemove.Size = new System.Drawing.Size(186, 23);
            this.btnAchievementRemove.TabIndex = 11;
            this.btnAchievementRemove.Text = "Remove";
            this.btnAchievementRemove.UseVisualStyleBackColor = true;
            this.btnAchievementRemove.Click += new System.EventHandler(this.btnAchievementRemove_Click);
            // 
            // btnAchievementAdd
            // 
            this.btnAchievementAdd.Location = new System.Drawing.Point(509, 101);
            this.btnAchievementAdd.Name = "btnAchievementAdd";
            this.btnAchievementAdd.Size = new System.Drawing.Size(186, 23);
            this.btnAchievementAdd.TabIndex = 10;
            this.btnAchievementAdd.Text = "Add";
            this.btnAchievementAdd.UseVisualStyleBackColor = true;
            this.btnAchievementAdd.Click += new System.EventHandler(this.btnAchievementAdd_Click);
            // 
            // cbxHasWowheadLink
            // 
            this.cbxHasWowheadLink.AutoSize = true;
            this.cbxHasWowheadLink.Checked = true;
            this.cbxHasWowheadLink.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbxHasWowheadLink.Location = new System.Drawing.Point(509, 55);
            this.cbxHasWowheadLink.Name = "cbxHasWowheadLink";
            this.cbxHasWowheadLink.Size = new System.Drawing.Size(120, 17);
            this.cbxHasWowheadLink.TabIndex = 9;
            this.cbxHasWowheadLink.Text = "Has Wowhead Link";
            this.cbxHasWowheadLink.UseVisualStyleBackColor = true;
            // 
            // cbxHasIATLink
            // 
            this.cbxHasIATLink.AutoSize = true;
            this.cbxHasIATLink.Location = new System.Drawing.Point(509, 78);
            this.cbxHasIATLink.Name = "cbxHasIATLink";
            this.cbxHasIATLink.Size = new System.Drawing.Size(88, 17);
            this.cbxHasIATLink.TabIndex = 8;
            this.cbxHasIATLink.Text = "Has IAT Link";
            this.cbxHasIATLink.UseVisualStyleBackColor = true;
            // 
            // cbxObtainable
            // 
            this.cbxObtainable.AutoSize = true;
            this.cbxObtainable.Checked = true;
            this.cbxObtainable.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbxObtainable.Location = new System.Drawing.Point(509, 32);
            this.cbxObtainable.Name = "cbxObtainable";
            this.cbxObtainable.Size = new System.Drawing.Size(77, 17);
            this.cbxObtainable.TabIndex = 7;
            this.cbxObtainable.Text = "Obtainable";
            this.cbxObtainable.UseVisualStyleBackColor = true;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(506, 9);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(83, 13);
            this.label3.TabIndex = 6;
            this.label3.Text = "Achievement ID";
            // 
            // txtAchievementID
            // 
            this.txtAchievementID.Location = new System.Drawing.Point(595, 6);
            this.txtAchievementID.Name = "txtAchievementID";
            this.txtAchievementID.Size = new System.Drawing.Size(100, 20);
            this.txtAchievementID.TabIndex = 5;
            // 
            // lsbAchievementCategories2
            // 
            this.lsbAchievementCategories2.Dock = System.Windows.Forms.DockStyle.Left;
            this.lsbAchievementCategories2.FormattingEnabled = true;
            this.lsbAchievementCategories2.Location = new System.Drawing.Point(3, 3);
            this.lsbAchievementCategories2.Name = "lsbAchievementCategories2";
            this.lsbAchievementCategories2.Size = new System.Drawing.Size(250, 438);
            this.lsbAchievementCategories2.TabIndex = 1;
            this.lsbAchievementCategories2.SelectedIndexChanged += new System.EventHandler(this.lsbAchievementCategories2_SelectedIndexChanged);
            // 
            // lsbAchievements
            // 
            this.lsbAchievements.Dock = System.Windows.Forms.DockStyle.Left;
            this.lsbAchievements.FormattingEnabled = true;
            this.lsbAchievements.Location = new System.Drawing.Point(253, 3);
            this.lsbAchievements.Name = "lsbAchievements";
            this.lsbAchievements.Size = new System.Drawing.Size(250, 438);
            this.lsbAchievements.TabIndex = 12;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 470);
            this.Controls.Add(this.tabControl1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            this.tabPage2.ResumeLayout(false);
            this.tabPage2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ListBox lsbAchievementCategories1;
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
        private System.Windows.Forms.ListBox lsbAchievementCategories2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtAchievementID;
        private System.Windows.Forms.Button btnAchievementRemove;
        private System.Windows.Forms.Button btnAchievementAdd;
        private System.Windows.Forms.CheckBox cbxHasWowheadLink;
        private System.Windows.Forms.CheckBox cbxHasIATLink;
        private System.Windows.Forms.CheckBox cbxObtainable;
        private System.Windows.Forms.ListBox lsbAchievements;
    }
}

