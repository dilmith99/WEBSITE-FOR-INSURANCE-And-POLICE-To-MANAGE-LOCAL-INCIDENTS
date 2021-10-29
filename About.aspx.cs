using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebApplication4Batch07
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // connection string is usually saved in the web.config file
            String connectionString = ConfigurationManager.ConnectionStrings["PUSL2002ConnectionString"].ConnectionString;
            // create a connection to a DB described in the connection string
            SqlConnection connection = new SqlConnection(connectionString);

        }
    }
}