<%@ Page Title="Sign-Up" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sign-Up.aspx.cs" Inherits="RCS_Project.Sign_Up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1><%: Title %></h1>
        <p>Please fill in this form to create an account.</p>
        <div class="row">
            <div class="col-md-6 sign-up"></div> 
            <div class="col-md-6">
                <label for="email"><b>Email&nbsp;</b></label><input type="text" placeholder="Enter Email" name="email" required><br />
                <label for="psw"><b>Password&nbsp;</b></label><input type="password" placeholder="Enter Password" name="psw" required><br />
                <label for="psw-repeat"><b>Repeat Password&nbsp;</b></label><input type="password" placeholder="Repeat Password" name="psw-repeat" required><br />
                <br />
                <div>
                    <select>
                        <option value="0">Choose User Type:</option>
                        <option value="student">Student</option>
                        <option value="professional">Progessional</option>
                    </select>
                </div>
                <br />
                <div>
                    <select>
                        <option value="0">Shoose Industry Type:</option>
                        <option value="marketing">Marketing</option>
                        <option value="computer-information-system">CIS</option>
                        <option value="computer-science">Computer Science</option>
                        <option value="finance">Finance</option>
                    </select>
                </div>
                <p class="mar-10">By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
                <div class="row">
                    <div class="col-md-6"><a class="btn btn-default wit-100" href="Login">Login</a></div>
                    <div class="col-md-6"><a class="btn btn-primary wit-100 col-md-6" href="Sign-Up">Submit</a></div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
