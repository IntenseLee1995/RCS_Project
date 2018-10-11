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
        int userID;

        protected void Page_Load(object sender, EventArgs e)
        {
            userType.Text = "";
            proName.Text = "";
            welPUser.Text = "";
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

            PullResumeInfo();
            DisplayFeedback();

            if (Request.QueryString["UserStatus"] == "Feedback Made")
            {
                Globals.conn.Close();
                string signOutMessage = "You have successfully given feedback.";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(signOutMessage);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
            if (Request.QueryString["UserStatus"] == "Feedback Not Given")
            {
                string signOutMessage = "You have not successfully given feedback.";
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
                welPUser.Text = reader["userType"].ToString();
                proName.Text = reader["userEmail"].ToString();
                userID = Convert.ToInt32(reader["userID"]);
            }
            reader.Close();
        }

        protected void submitFeedback_Click(object sender, EventArgs e)
        {
            Globals.conn.Open();
            if (fbEduTextBox.Text != "" && fbExpTextbox.Text != "" && fbSkiTextBox.Text != "" && fbProTextBox.Text != "")
            {
                UpdateFeedbackInputTable(fbEduTextBox.Text, fbExpTextbox.Text, fbSkiTextBox.Text, fbProTextBox.Text);
                PullResumeInfo();
                DisplayFeedback();
                Response.Redirect("~/P-Dashboard?UserStatus=Feedback Made", true);
            }
            else
            {
                PullResumeInfo();
                DisplayFeedback();
                Response.Redirect("~/P-Dashboard?UserStatus=Feedback Not Given", true);
            }
        }

        protected void PullResumeInfo()
        {
            string query = $"SELECT * from rcsdatabase.resumeinput WHERE rKey = '{userID}';";
            var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
            var reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                eduLabel.Text = reader["userEducation"].ToString();
                expLabel.Text = reader["userExperience"].ToString();
                skiLabel.Text = reader["userSkills"].ToString();
                proLabel.Text = reader["userProjects"].ToString();
            }
            reader.Close();
        }

        protected void DisplayFeedback()
        {
            string query = $"SELECT * from rcsdatabase.feedbackinput WHERE userID = '{userID}';";
            var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
            var reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                fbEduTextBox.Text = reader["educationComments"].ToString();
                fbExpTextbox.Text = reader["experienceComments"].ToString();
                fbSkiTextBox.Text = reader["skillsComments"].ToString();
                fbProTextBox.Text = reader["projectsComments"].ToString();
            }
            reader.Close();
            Globals.conn.Close();
        }

        protected void UpdateFeedbackInputTable(string value1, string value2, string value3, string value4)
        {
            string query1 = $"UPDATE rcsdatabase.feedbackinput SET educationComments = '{value1}', experienceComments = '{value2}', skillsComments = '{value3}', projectsComments = '{value4}'  where userID = '{userID}';";
            var cmd1 = new MySql.Data.MySqlClient.MySqlCommand(query1, Globals.conn);
            cmd1.ExecuteNonQuery();
        }
    }
}