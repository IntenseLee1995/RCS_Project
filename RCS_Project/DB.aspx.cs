using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RCS_Project
{
    public partial class DB : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            userType.Text = "";
            stuName.Text = "";
        
            Globals.conn.Open();

            string query = "SELECT * FROM user WHERE userID = 12";

            var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
            var reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                userType.Text = reader["userType"].ToString();
                stuName.Text = reader["userType"].ToString();
            }
            reader.Close();
        }


    }
}