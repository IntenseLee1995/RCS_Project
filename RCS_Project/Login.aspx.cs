using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RCS_Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Globals.conn.Open();
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            var userName = "";
            var userPassword = "";

            userName = emailTextBox.Text;
            userPassword = passTextBox.Text;

        }
    }
}