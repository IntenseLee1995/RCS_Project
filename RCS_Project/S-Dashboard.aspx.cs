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
        int userID;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            userType.Text = "";
            stuName.Text = "";
            welSUser.Text = "";
            try
            {
                if (Session["userName"].ToString() != null) /*--> why do we need this?*/
                {
                    string userName = Session["userName"].ToString();
                    string query = $"SELECT * FROM user WHERE userEmail = '{userName}'";
                    ConnectDatabase(query);
                }
            }
            catch (Exception)
            {

            }

            PullResumeInfo();
            DisplayFeedback();
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
                userID = Convert.ToInt32(reader["userID"]);
            }
            reader.Close();

        }

        protected void submitResume_Click(object sender, EventArgs e)
        {
            try
            {
                Globals.conn.Open();
                //read the info in textboxes and input into the resume input table
                string query = $"INSERT INTO resumeinput (userID, userEducation, userExperience, userSkills, userProjects) " +
                    $"VALUES('{userID}', '{eduTextBox.Text}', '{expTextBox.Text}', '{skiTextBox.Text}','{proTextBox.Text}')";
                var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {

            }
            finally
            {
                eduTextBox.Text = "";
                expTextBox.Text = "";
                skiTextBox.Text = "";
                proTextBox.Text = "";
                Globals.conn.Close();
                Response.Redirect("S-Dashboard.aspx", true);
            }
        }

        protected void PullResumeInfo()
        {
            string query = "select * from resumeinput";
            var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
            var reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                EducationCurrent.Text = reader["userEducation"].ToString();
                ExperienceCurrent.Text = reader["userExperience"].ToString();
                SkillsCurrent.Text = reader["userSkills"].ToString();
                ProjectsCurrent.Text = reader["userProjects"].ToString();
            }
            reader.Close();
        }

        protected void DisplayFeedback()
        {
            string query = "select * from feedbackinput";
            var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
            var reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                if (userID == Convert.ToInt32(reader["userID"]))
                {
                    EducationFeedback.Text = reader["educationComments"].ToString();
                    ExperienceFeedback.Text = reader["experienceComments"].ToString();
                    SkillsFeedback.Text = reader["skillsComments"].ToString();
                    ProjectsFeedback.Text = reader["projectsComments"].ToString();
                }
            }
            reader.Close();
            Globals.conn.Close();
        }

        protected void editResume_Click(object sender, EventArgs e)
        {            
            Globals.conn.Open();
            if(NewEducation.Text != "")
            {
                UpdateResumeInputTable("userEducation", NewEducation.Text);                           
            }
            else if(NewExperience.Text != "")
            {
                UpdateResumeInputTable("userExperience", NewExperience.Text);
            }
            else if(NewSkills.Text != "")
            {
                UpdateResumeInputTable("userSkills", NewSkills.Text);
            }
            else if(NewProjects.Text != "")
            {
                UpdateResumeInputTable("userProjects", NewProjects.Text);
            }
            Globals.conn.Close();
        }

        protected void UpdateResumeInputTable(string columnName, string value)
        {
            string query = $"UPDATE rcsdatabase.resumeinput set {columnName} = '{value}' where userID = {userID};";
            var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
            cmd.ExecuteNonQuery();
            Response.Redirect("S-Dashboard.aspx", true);
        }
    }
}