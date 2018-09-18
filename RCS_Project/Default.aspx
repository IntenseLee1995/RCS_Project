<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RCS_Project._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <hr style="color:transparent;border-top: 0px;" />
    <div class="jumbotron bg-img">
        <p class="lead">&nbsp;</p>
        <h1 style="text-align:center; color: #FFFFFF;">WELCOME TO<br />YOUR RESUME BUILDER<br />SYSTEM</h1>
        <p class="lead">&nbsp;</p>
        <p style="text-align:center;"><a href="Login" class="btn btn-primary btn-lg">LOGIN</a>&nbsp;&nbsp;<a href="Sign-Up" class="btn btn-primary btn-lg">SIGN-UP</a></p>
        <p class="lead">&nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <div class="sys-features">
                <h2 style="text-align:center; color: #FFFFFF;">System Features</h2>
                <p>&nbsp;</p>
                <p style="text-align:center; color: #FFFFFF;">
                    <a class="btn btn-default" href="Feedback">Learn more &raquo;</a>
                </p>
            </div>
        </div>
        <div class="col-md-4 ">
            <div class="sys-team">
                <h2 style="text-align:center; color: #FFFFFF;">System Team</h2>
                <p>&nbsp;</p>
                <p style="text-align:center; color: #FFFFFF;">
                    <a class="btn btn-default" href="Default">Learn more &raquo;</a>
                </p>
            </div>
        </div>
        <div class="col-md-4 ">
            <div class="sys-mission">
                <h2 style="text-align:center; color: #FFFFFF;">System Mission</h2>
                <p>&nbsp;</p>
                <p style="text-align:center; color: #FFFFFF;">
                    <a class="btn btn-default" href="Default">Learn more &raquo;</a>
                </p>
            </div>
        </div>
    </div>

</asp:Content>
