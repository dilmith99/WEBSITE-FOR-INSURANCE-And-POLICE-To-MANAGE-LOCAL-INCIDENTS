using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebApplication4Batch07
{
    public partial class OurNewWebPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string value = Request.QueryString["name"];
            lblWelcome.Text = "Welcome " + value.ToUpper();

            lstYears.ForeColor = System.Drawing.Color.BlueViolet;
            lstYears.Font.Bold = true;
            lstYears.Font.Name = "Ebrima";
            for(int index = 1900; index < 2020; index++)
            {
                lstYears.Items.Add(index + "");
            }

            string[] names = DateTimeFormatInfo.CurrentInfo.MonthNames;
            foreach(string month in names)
            {
                if (!month.Equals(""))
                {
                    lstMonths.Items.Add(month);
                }
            }
        }
    }
}