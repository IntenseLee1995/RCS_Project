using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RCS_Project
{
    public partial class P_Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            userType.Text = "";
            proName.Text = "";
            try
            {
                if (Session["userName"].ToString() != null)
                {
                    string userName = Session["userName"].ToString();
                    string query = $"SELECT * FROM user WHERE userEmail = '{userName}'";
                    ConnectDatabase(query);
                }
            }
            catch (Exception)
            {

            }
        }

        public void ConnectDatabase(string query)
        {
            Globals.conn.Open();

            var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
            var reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                userType.Text = reader["userType"].ToString();
                proName.Text = reader["userEmail"].ToString();
            }
            reader.Close();
        }
    }
}