using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RCS_Project
{
    public partial class S_Dashboard : System.Web.UI.Page
    {
        string userID;
        protected void Page_Load(object sender, EventArgs e)
        {
            userType.Text = "";
            stuName.Text = "";
            welSUser.Text = "";
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
                welSUser.Text = reader["userType"].ToString();
                stuName.Text = reader["userEmail"].ToString();
                userID = reader["userID"].ToString();
            }
            reader.Close();
        }

        protected void submitResume_Click(object sender, EventArgs e)
        {
            try
            {
                //read the info in textboxes and input into the resume input table
                string query = $"INSERT INTO resumeinput (userID, userEducation, userExperience, userSkills, userProjects) " +
                    $"VALUES('{userID}', '{eduTextBox.Text}', '{expTextBox.Text}', '{skiTextBox.Text}','{proTextBox.Text}')";
                var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
                cmd.ExecuteNonQuery();
            }
            catch(Exception)
            {

            }
            finally
            {
                eduTextBox.Text = "";
                expTextBox.Text = "";
                skiTextBox.Text = "";
                proTextBox.Text = "";
            }
        }
    }
}