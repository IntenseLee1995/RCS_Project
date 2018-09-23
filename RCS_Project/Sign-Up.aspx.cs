using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RCS_Project
{
    public partial class Sign_Up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Globals.conn.Open();
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            var userName = "";
            var userPassword = "";
            var userRepeatPassword = "";
            var userType = "";
            var userIndustry = "";
            var userNull = "Null";

            userName = emailTextBox.Text;
            userPassword = passwordTextBox.Text;
            userRepeatPassword = passwordRepeatTextBox.Text;
            userType = userTypeDropDownList.SelectedItem.Text;
            userIndustry = userIndustryDropDownList.SelectedItem.Text;

            if(userRepeatPassword != userPassword)
            {
                passwordCompareValidator.Visible = true;
            }
            else
            {
                string query = $"insert INTO user(userEmail,userPassword,userType,userRating,userIndustryType) VALUES('{userName}','{userPassword}','{userType}','{userNull}','{userIndustry}');";
                var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
                cmd.ExecuteNonQuery();
                Response.Redirect("Default.aspx",true);
                Globals.conn.Close();
            }
        }
    }
}