using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DbManager.GUI.Custom
{
    public partial class CustomMessageBox : Form
    {
        public CustomMessageBox()
        {
            InitializeComponent();
        }

        public CustomMessageBox(string message, string button1Text, string button2Text, string button3Text, string button4Text, string button5Text) : this()
        {
            textBox1.Text = message;
            button1.Text = button1Text;
            button2.Text = button2Text;
            button3.Text = button3Text;
            button4.Text = button4Text;
            button5.Text = button5Text;
        }

        public CustomMessageBox(string message, List<string> options) : this()
        {
            textBox1.Text = message;
            textBox1.Enabled = false;
            if (options.Count > 0)
                button1.Text = options[0];
            else
                button1.Visible = false;
            if (options.Count > 1)
                button2.Text = options[1];
            else
                button2.Visible = false;
            if (options.Count > 2)
                button3.Text = options[2];
            else
                button3.Visible = false;
            if (options.Count > 3)
                button4.Text = options[3];
            else
                button4.Visible = false;
            if (options.Count > 4)
                button5.Text = options[4];
            else
                button5.Visible = false;
        }

        public string Selection { get; set; }

        private void button1_Click(object sender, EventArgs e)
        {
            Selection = button1.Text;
            Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Selection = button2.Text;
            Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Selection = button3.Text;
            Close();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Selection = button4.Text;
            Close();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            Selection = button5.Text;
            Close();
        }
    }
}
