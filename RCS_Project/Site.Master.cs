﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RCS_Project
{
    // Allows every page that uses the master page to use Vars that allow them to connect to the database
    public static class Globals     // Global variables section
    {

        public static string dbConnectionString = "server=den1.mysql2.gear.host;" + 
                                                "uid=rcsdatabase;" + 
                                                "pwd=Fj6K?t-PMy94;database=rcsdatabase;" +
                                                "ssl mode=none;";       // Our Gear Host MySQL server does not support SSL. This will prevent SSL errors that prevent the site from loading.

        public static MySql.Data.MySqlClient.MySqlConnection conn = new MySql.Data.MySqlClient.MySqlConnection(dbConnectionString);
    }

    public partial class SiteMaster : MasterPage
    {
        // Make every page unload and close connection to the database
        // Have to close the data base when transfering to the new page as it will reconnect to the database each page
        protected void Page_Unload(object sender, EventArgs e)	// Close the connection to the database when the page unloads
        {
            Globals.conn.Close();
        }
    }
}