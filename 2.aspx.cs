using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebApplication4Batch07
{
    public partial class _2 : System.Web.UI.Page
    {
        public String locationList = "{(10.2,10.2),(17.4, 5.4),(78.9, 6.0)}";

        protected void Page_Load(object sender, EventArgs e)
        {
            // connect to the database
            // collect the location and fill the locationList


            string city = Request.QueryString["city"];
            string state = Request.QueryString["state"];
            string zip = Request.QueryString["zip"];

            // if (!$city || strlen($state) != 2 || strlen($zip) != 5)
            if (city == null || state.Length != 2 || zip.Length != 5 )
            {
                // <h2>Error, invalid city/state submitted.</h2>
                lblWelcomeMessage.Text = "Error, invalid city/state submitted.";
            }





















            lblWelcomeMessage.ForeColor = System.Drawing.Color.BlueViolet;
            // we are going to access the package, the request object
            string value = Request.QueryString["emailConfirm"];
            lblWelcomeMessage.Text += value;
            if (Request.Cookies["email"] == null)
            {
                // set a cookie
                Response.Cookies["email"].Value = value;
                Response.Cookies["email"].Expires = DateTime.Now.AddMonths(12);
            }
            else
            {
                HttpCookie aCookie = Request.Cookies["email"];
                // lblWelcomeMessage.Text += aCookie.Value;
                // lblWelcomeMessage.Text += Server.HtmlEncode(aCookie.Value);
            }
        }
    }
}