using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RCS_Project
{
    public partial class Sign_Out : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Globals.conn.Close();
        }
    }
}