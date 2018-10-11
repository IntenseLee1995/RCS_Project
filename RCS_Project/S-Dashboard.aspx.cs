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

            if (Request.QueryString["UserStatus"] == "Account Updated")
            {
                Globals.conn.Close();
                string signOutMessage = "You have successfully updated your resume.";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(signOutMessage);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
            if (Request.QueryString["UserStatus"] == "Account Not Updated")
            {
                string signOutMessage = "You have not successfully updated your resume.";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(signOutMessage);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
            if (Request.QueryString["UserStatus"] == "Resume Submitted")
            {
                string signOutMessage = "You have successfully submitted your resume.";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(signOutMessage);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
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
                userID = Convert.ToInt32(reader["userID"]);
            }
            reader.Close();
        }

        protected void submitResume_Click(object sender, EventArgs e)
        {
            try
            {
                Globals.conn.Open();
                string query = $"INSERT INTO rcsdatabase.resumeinput (userID, userEducation, userExperience, userSkills, userProjects) " +
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
                Response.Redirect("~/S-Dashboard?UserStatus=Resume Submitted", true);
            }
        }

        protected void PullResumeInfo()
        {
            string query = $"SELECT * from resumeinput WHERE userID = '{userID}';";
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
            string query = $"SELECT * from feedbackinput WHERE userID = {userID};";
            var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
            var reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                EducationFeedback.Text = reader["educationComments"].ToString();
                ExperienceFeedback.Text = reader["experienceComments"].ToString();
                SkillsFeedback.Text = reader["skillsComments"].ToString();
                ProjectsFeedback.Text = reader["projectsComments"].ToString();                
            }
            reader.Close();
            if (EducationFeedback.Text == "")
            {
                EducationFeedback.Text = "Pro Needs To Give Feedback";
            }
            if (ExperienceFeedback.Text == "")
            {
                ExperienceFeedback.Text = "Pro Needs To Give Feedback";
            }
            if (SkillsFeedback.Text == "")
            {
                SkillsFeedback.Text = "Pro Needs To Give Feedback";
            }
            if (ProjectsFeedback.Text == "")
            {
                ProjectsFeedback.Text = "Pro Needs To Give Feedback";
            }
            Globals.conn.Close();
        }

        protected void editResume_Click(object sender, EventArgs e)
        {            
            Globals.conn.Open();
            if(NewEducation.Text != "" && NewExperience.Text != "" && NewSkills.Text != "" && NewProjects.Text != "")
            {
                UpdateResumeInputTable(NewEducation.Text, NewExperience.Text, NewSkills.Text, NewProjects.Text);
                UpdateFeedbackInputTable();
                PullResumeInfo();
                DisplayFeedback();
                Response.Redirect("~/S-Dashboard?UserStatus=Account Updated", true);
            }
            else
            {
                PullResumeInfo();
                DisplayFeedback();
                Response.Redirect("~/S-Dashboard?UserStatus=Account Not Updated", true);
            }
        }

        protected void UpdateResumeInputTable(string value1, string value2, string value3, string value4)
        {
            string query1 = $"UPDATE rcsdatabase.resumeinput SET userEducation = '{value1}', userExperience = '{value2}', userSkills = '{value3}', userProjects = '{value4}'  where userID = '{userID}';";
            var cmd1 = new MySql.Data.MySqlClient.MySqlCommand(query1, Globals.conn);
            cmd1.ExecuteNonQuery();
        }
        protected void UpdateFeedbackInputTable()
        {
            string query1 = $"UPDATE rcsdatabase.feedbackinput SET educationComments ='Pro Needs To Give New Feedback', experienceComments='Pro Needs To Give New Feedback', skillsComments='Pro Needs To Give New Feedback', projectsComments='Pro Needs To Give New Feedback' WHERE userID={userID};";
            var cmd1 = new MySql.Data.MySqlClient.MySqlCommand(query1, Globals.conn);
            cmd1.ExecuteNonQuery();
        }
    }
}