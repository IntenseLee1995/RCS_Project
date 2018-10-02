<%@ Page Title="Sign-Up" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sign-Up.aspx.cs" Inherits="RCS_Project.Sign_Up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1><%: Title %></h1>
        <p>Please fill in this form to create an account.</p>
        <div class="row">
            <div class="col-md-6 sign-up"></div> 
            <div class="col-md-6">
                <label for="email"><b>Email&nbsp;</b></label><asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox><br />
                <label for="psw"><b>Password&nbsp;</b></label><asp:TextBox ID="passwordTextBox" runat="server"></asp:TextBox><br />
                <label for="psw-repeat"><b>Repeat Password&nbsp;</b></label><asp:TextBox ID="passwordRepeatTextBox" runat="server"></asp:TextBox><br />
                <asp:CompareValidator ID="passwordCompareValidator" runat="server" ControlToCompare="passwordRepeatTextBox" ControlToValidate="passwordTextBox" ErrorMessage="Password need to match" Visible="False"></asp:CompareValidator>
                <br />
                <div>
                    <asp:DropDownList ID="userTypeDropDownList" runat="server">
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Professional</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <br />
                <div>
                    <asp:DropDownList ID="userIndustryDropDownList" runat="server">
                        <asp:ListItem>Fiance</asp:ListItem>
                        <asp:ListItem>Marketing</asp:ListItem>
                        <asp:ListItem>Computer Information System</asp:ListItem>
                        <asp:ListItem>Compuer Science</asp:ListItem>
                        <asp:ListItem>Accounting</asp:ListItem>
                        <asp:ListItem>Art</asp:ListItem>
                        <asp:ListItem>Science</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <p class="mar-10">By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
                <div class="row">
                    <div class="col-md-6"><a href="Login" class="btn btn-default wit-100">Login</a></div>
                    <div class="col-md-6"><asp:Button ID="submitButton" runat="server" Text="Sign-Up" OnClick="submitButton_Click" CssClass="btn btn-primary wit-100" /></div>
                </div>              
            </div>
        </div>
    </div>
</asp:Content>
