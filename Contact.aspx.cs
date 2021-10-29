using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebApplication4Batch07
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListBox1.Items.Add("10");
            ListBox1.Items.Add("20");
            txtTestTextBox.Text = "";
        }
    }
}