<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RCS_Project.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hr style="color:transparent;border-top: 0px;" />
    <img style="width:100%;height:auto;" src="http://rcs.gearhostpreview.com/Images/Login-Banner.jpg" alt="Login Image Banner" />
    <div class="row">
        <div class="col-md-12">
            <br /><label for="email"><b>Email&nbsp;</b></label><asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox><br />
            <br /><label for="psw"><b>Password&nbsp;</b></label><asp:TextBox ID="passTextBox" runat="server"></asp:TextBox><br />
            <br />
            <div class="row">
                <div class="col-md-6"><a class="btn btn-default wit-100" href="Sign-Up">Sign-Up</a></div>
                <div class="col-md-6"><asp:Button ID="loginButton" runat="server" Text="Login" OnClick="loginButton_Click" CssClass="btn btn-primary wit-100" /></div>
            </div>
        </div>
    </div>
    
    
</asp:Content>
