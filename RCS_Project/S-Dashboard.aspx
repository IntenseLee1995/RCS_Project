﻿<%@ Page Title="Student Dashboard" Language="C#" AutoEventWireup="true" CodeBehind="S-Dashboard.aspx.cs" Inherits="RCS_Project.S_Dashboard" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Student Dashboard - Rebel Scrum App</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://rcs.gearhostpreview.com/content/style3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
        <link rel="stylesheet" href="http://rcs.gearhostpreview.com/content/Site.css">
    </head>
    <body>
        <form runat="server">
        <div class="wrapper">
            <nav id="sidebar">
                <div id="dismiss">
                    <i class="glyphicon glyphicon-arrow-left"></i>
                </div>
                <div class="sidebar-header">
                    <h3><asp:Label runat="server" ID="userType"></asp:Label><br />Dashboard</h3>
                </div>
                <ul class="list-unstyled components">
                    <p>Welcome, <asp:Label ID="stuName" runat="server"></asp:Label></p>
                    <li>
                        <a href="#" class="tabLink" onclick="showTab(event,'m')">Home</a>
                    </li>
                    <li>
                        <a href="#" class="tabLink" onclick="showTab(event,'sr')">Submit Resume</a>
                    </li>
                    <li>
                        <a href="#" class="tabLink" onclick="showTab(event,'sf')">See Feedback</a>
                    </li>
                    <li>
                        <a href="#" class="tabLink" onclick="showTab(event,'as')">Account Settings</a>
                    </li>
                    <li>
                        <a href="#" class="tabLink" onclick="showTab(event,'ps')">Profile Settings</a>
                    </li>
                    <li>
                        <a href="#" class="tabLink" onclick="showTab(event,'history')">History</a>
                    </li>
                    <li>
                        <asp:hyperlink runat="server" Text="Sign Out" NavigateUrl="~/Default.aspx?UserStatus=Sign Out"></asp:hyperlink>
                    </li>
                </ul>
            </nav>
            <div class="col-lg-3 col-md-3 col-sm-1-6 col-xs-12" id="content">
                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                                <i class="glyphicon glyphicon-align-left"></i>
                                <span>Menu</span>
                            </button>
                        </div>
                        <div class="nav navbar-nav navbar-right">
                            <a href="#" class="btn btn-info navbar-btn tabLink" onclick="showTab(event,'sr')">Submit Resume</a>
                        </div>
                    </div>
                </nav>

                <div id="m" class="tabContent">
                    <div class="jumbotron bg-img">
                        <h1 style="text-align:center; color: #FFFFFF;">WELCOME <asp:Label runat="server" ID="welSUser" CssClass="text-uppercase"></asp:Label><br />TO YOUR RESUME<br />BUILDER SYSTEM</h1>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="sys-mission">
                                <h2 style="text-align:center; color: #FFFFFF;">Submit Resume</h2>
                                <p>&nbsp;</p>
                                <p style="text-align:center; color: #FFFFFF;">
                                    <a class="btn btn-primary tabLink" href="#" onclick="showTab(event,'sr')">CLICK HERE &raquo;</a>
                                </p>
                            </div>
                        </div>
                        <div class="col-md-4 ">
                            <div class="sys-team">
                                <h2 style="text-align:center; color: #FFFFFF;">See Feedback</h2>
                                <p>&nbsp;</p>
                                <p style="text-align:center; color: #FFFFFF;">
                                    <a class="btn btn-primary tabLink" href="#" onclick="showTab(event,'sf')">CLICK HERE &raquo;</a>
                                </p>
                            </div>
                        </div>
                        <div class="col-md-4 ">
                            <div class="sys-features">
                                <h2 style="text-align:center; color: #FFFFFF;">History Feature</h2>
                                <p>&nbsp;</p>
                                <p style="text-align:center; color: #FFFFFF;">
                                    <a class="btn btn-primary tabLink" href="#" onclick="showTab(event,'history')">CLICK HERE &raquo;</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="sr" class="d-none tabContent">
                    <div class="jumbotron bg-img">
                        <h1 style="text-align:center; color: #FFFFFF;">SUBMIT RESUME</h1>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-2">
                                <h4>Education:</h4>
                                <p>&nbsp;</p>
                            </div>
                            <div class="col-md-10">
                                <asp:TextBox ID="eduTextBox" runat="server"></asp:TextBox>
                                <p><em>Input your most current or most recently completed education</em></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <h4>Experience:</h4>
                                <p>&nbsp;</p>
                            </div>
                            <div class="col-md-10">
                                <asp:TextBox ID="expTextBox" runat="server"></asp:TextBox>
                                <p><em>Input any work experience or internship experience</em></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <h4>Skills:</h4>
                                <p>&nbsp;</p>
                            </div>
                            <div class="col-md-10">
                                <asp:TextBox ID="skiTextBox" runat="server"></asp:TextBox>
                                <p><em>Input any hard skills(programming, Microsoft Office, etc.) and any soft skills(communication, team work, etc.)</em></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <h4>Projects:</h4>
                                <p>&nbsp;</p>
                            </div>
                            <div class="col-md-10">
                                <asp:TextBox ID="proTextBox" runat="server"></asp:TextBox>
                                <p><em>Input any class or work projects that you have worked on</em></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6"><a href="#" class="btn btn-default wit-100 tabLink" onclick="showTab(event,'m')">Cancel</a></div>
                            <div class="col-md-6"><asp:Button ID="submitResume" runat="server" Text="Submit Resume" CssClass="btn btn-primary wit-100" OnClick="submitResume_Click" /></div>
                        </div>
                    </div>
                </div>        

                <div id="sf" class="d-none tabContent">
                    <div class="jumbotron bg-img">
                        <h1 style="text-align:center; color: #FFFFFF;">SEE FEEDBACK</h1>
                    </div>
                      <div class="container">
                        <div class="row">
                            <div class="col-md-2">
                                <h3 style="text-align: center;">Subjects</h3>
                            </div>
                            <div class="col-md-3">
                                <h3 style="text-align: center;">Student's Inputs</h3>
                            </div>
                            <div class="col-md-3">
                                <h3 style="text-align: center;">Pro's Feedback</h3>
                            </div>
                            <div class="col-md-4">
                               <h3 style="text-align: center;">Edit Current Inputs Here</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <h4>Education:</h4>
                                <p>&nbsp;</p>
                            </div>
                            <div class="col-md-3">
                                <asp:Label runat="server" ID="EducationCurrent"></asp:Label>
                            </div>
                            <div class="col-md-3">
                                <asp:Label runat="server" ID="EducationFeedback"></asp:Label>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="NewEducation" runat="server"></asp:TextBox>
                                <p><em>Edit Your Current Input Here</em></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <h4>Experience:</h4>
                                <p>&nbsp;</p>
                            </div>
                            <div class="col-md-3">
                                <asp:Label runat="server" ID="ExperienceCurrent"></asp:Label>
                            </div>
                            <div class="col-md-3">
                                <asp:Label runat="server" ID="ExperienceFeedback"></asp:Label>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="NewExperience" runat="server"></asp:TextBox>
                                <p><em>Edit Your Current Input Here</em></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <h4>Skills:</h4>
                                <p>&nbsp;</p>
                            </div>
                            <div class="col-md-3">
                                <asp:Label runat="server" ID="SkillsCurrent"></asp:Label>
                            </div>
                            <div class="col-md-3">
                                <asp:Label runat="server" ID="SkillsFeedback"></asp:Label>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="NewSkills" runat="server"></asp:TextBox>
                                <p><em>Edit Your Current Input Here</em></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <h4>Projects:</h4>
                                <p>&nbsp;</p>
                            </div>
                            <div class="col-md-3">
                                <asp:Label runat="server" ID="ProjectsCurrent"></asp:Label>
                            </div>
                            <div class="col-md-3">
                                <asp:Label runat="server" ID="ProjectsFeedback"></asp:Label>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="NewProjects" runat="server"></asp:TextBox>
                                <p><em>Edit Your Current Input Here</em></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6"><a href="#" class="btn btn-default wit-100 tabLink" onclick="showTab(event,'m')">Cancel</a></div>
                            <div class="col-md-6"><asp:Button ID="editResume" runat="server" Text="Edit Resume" CssClass="btn btn-primary wit-100" OnClick="editResume_Click" /></div>
                        </div>
                    </div>
                </div>

                <div id="as" class="d-none tabContent">
                    <div class="jumbotron bg-img">
                        <h1 style="text-align:center; color: #FFFFFF;">COMING SOON<br />TO YOUR RESUME<br />BUILDER SYSTEM</h1>
                    </div>
                </div>

                <div id="ps" class="d-none tabContent">
                    <div class="jumbotron bg-img">
                        <h1 style="text-align:center; color: #FFFFFF;">COMING SOON<br />TO YOUR RESUME<br />BUILDER SYSTEM</h1>
                    </div>
                </div>

                <div id="history" class="d-none tabContent">
                    <div class="jumbotron bg-img">
                        <h1 style="text-align:center; color: #FFFFFF;">COMING SOON<br />TO YOUR RESUME<br />BUILDER SYSTEM</h1>
                    </div>
                </div>

            </div>
        </div>
        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#sidebar").mCustomScrollbar({
                    theme: "minimal"
                });

                $('#dismiss, .overlay').on('click', function () {
                    $('#sidebar').removeClass('active');
                    $('.overlay').fadeOut();
                });

                $('#sidebarCollapse').on('click', function () {
                    $('#sidebar').addClass('active');
                    $('.overlay').fadeIn();
                    $('.collapse.in').toggleClass('in');
                    $('a[aria-expanded=true]').attr('aria-expanded', 'false');
                });
            });
            function showTab(event, tabName) {
                var i, tabContentElems, tabLinkElems;

                tabContentElems = document.getElementsByClassName("tabContent");

                for (i = 0; i < tabContentElems.length; i++)
                {
                    tabContentElems[i].style.display = "none";
                }

                tabLinkElems = document.getElementsByClassName("tabLink");

                for (i = 0; i < tabLinkElems.length; i++)
                {
                    tabLinkElems[i].className =
                        tabLinkElems[i].className.replace("active", "");
                    $('#sidebar').removeClass('active');
                    $('.overlay').fadeOut();
                }

                document.getElementById(tabName).style.display = "block";
            }
        </script>
        </form>
        <div class="overlay"></div>
    </body>
</html>