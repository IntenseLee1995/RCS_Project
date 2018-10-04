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
            string userType = "";
            bool loggedIn = true;
            userName = emailTextBox.Text;
            userPassword = passTextBox.Text;
            Session["loggedIn"] = loggedIn;
            Session["username"] = userName;
            
            //connect to database
            string query = $"SELECT * FROM user WHERE userEmail = '{userName}'";
            var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
            var reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                userType = reader["userType"].ToString();

            }
            if (userType == "Student")
            {
                Response.Redirect("S-Dashboard.aspx", true);
                reader.Close();
            }
            else if (userType == "Professional")
            {
                Response.Redirect("P-Dashboard.aspx", true);
                reader.Close();
            }
        }
    }
}