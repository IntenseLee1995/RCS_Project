<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="P-Dashboard.aspx.cs" Inherits="RCS_Project.P_Dashboard" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Professional Dashboard - Rebel Scrum App</title>
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
                    <p>Welcome, <asp:Label ID="proName" runat="server"></asp:Label></p>
                    <li>
                        <a href="#" class="tabLink" onclick="showTab(event,'m')">Home</a>
                    </li>
                    <li>
                        <a href="#" class="tabLink" onclick="showTab(event,'gf')">Give Feedback</a>
                    </li>
                    <li>
                        <a href="#" class="tabLink" onclick="showTab(event,'cf')">Current Feedback</a>
                    </li>
                    <li>
                        <a href="#" class="tabLink" onclick="showTab(event,'as')">Account Settings</a>
                    </li>
                    <li>
                        <a href="#" class="tabLink" onclick="showTab(event,'ps')">Profile Settings</a>
                    </li>
                    <li>
                        <a href="#" class="tabLink" onclick="showTab(event,'rate')">Rating</a>
                    </li>
                    <li>
                        <asp:hyperlink runat="server" Text="Sign Out" NavigateUrl="~/Default.aspx?UserStatus=Sign Out"></asp:hyperlink>
                    </li>
                </ul>
            </nav>
            <div id="content">
                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                                <i class="glyphicon glyphicon-align-left"></i>
                                <span>Menu</span>
                            </button>
                        </div>
                        <div class="nav navbar-nav navbar-right">
                                <a href="#" class="btn btn-info navbar-btn tabLink" onclick="showTab(event,'gf')">Give Feedback</a>
                        </div>
                    </div>
                </nav>

                <div id="m" class="tabContent">
                    <div class="jumbotron bg-img">
                        <h1 style="text-align:center; color: #FFFFFF;">WELCOME <asp:Label runat="server" ID="welPUser" CssClass="text-uppercase"></asp:Label><br />TO YOUR RESUME<br />BUILDER SYSTEM</h1>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="sys-mission">
                                <h2 style="text-align:center; color: #FFFFFF;">Give Feedback</h2>
                                <p>&nbsp;</p>
                                <p style="text-align:center; color: #FFFFFF;">
                                    <a class="btn btn-primary tabLink" href="#" onclick="showTab(event,'gf')">CLICK HERE &raquo;</a>
                                </p>
                            </div>
                        </div>
                        <div class="col-md-4 ">
                            <div class="sys-team">
                                <h2 style="text-align:center; color: #FFFFFF;">Current Feedback</h2>
                                <p>&nbsp;</p>
                                <p style="text-align:center; color: #FFFFFF;">
                                    <a class="btn btn-primary tabLink" href="#" onclick="showTab(event,'cf')">CLICK HERE &raquo;</a>
                                </p>
                            </div>
                        </div>
                        <div class="col-md-4 ">
                            <div class="sys-features">
                                <h2 style="text-align:center; color: #FFFFFF;">Rating Feature</h2>
                                <p>&nbsp;</p>
                                <p style="text-align:center; color: #FFFFFF;">
                                    <a class="btn btn-primary tabLink" href="#" onclick="showTab(event,'rate')">CLICK HERE &raquo;</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="gf" class="d-none tabContent">
                    <div class="jumbotron sign-up">
                        <h1 style="text-align:center; color: #FFFFFF;">GIVE FEEDBACK</h1>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <h4>Education:</h4>
                                <asp:TextBox ID="eduTextBox" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="fbEduTextBox" runat="server"></asp:TextBox>
                                <div class="row">
                                    <div class="col-md-6"><asp:Button ID="Button1" runat="server" Text="Dislike" CssClass="btn btn-default wit-100" /></div>
                                    <div class="col-md-6"><asp:Button ID="Button2" runat="server" Text="Like" CssClass="btn btn-primary wit-100" /></div>
                                </div>
                            </div>
                        </div>
                        <p>&nbsp;</p>
                        <div class="row">
                            <div class="col-md-6">
                                <h4>Experience:</h4>
                                <asp:TextBox ID="expTextBox" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="fbExpTextbox" runat="server"></asp:TextBox>
                                <div class="row">
                                    <div class="col-md-6"><asp:Button ID="Button3" runat="server" Text="Dislike" CssClass="btn btn-default wit-100" /></div>
                                    <div class="col-md-6"><asp:Button ID="Button4" runat="server" Text="Like" CssClass="btn btn-primary wit-100" /></div>
                                </div>
                            </div>
                        </div>
                        <p>&nbsp;</p>
                        <div class="row">
                            <div class="col-md-6">
                                <h4>Skills:</h4>
                                <asp:TextBox ID="skiTextBox" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="fbSkiTextBox" runat="server"></asp:TextBox>
                                <div class="row">
                                    <div class="col-md-6"><asp:Button ID="Button5" runat="server" Text="Dislike" CssClass="btn btn-default wit-100" /></div>
                                    <div class="col-md-6"><asp:Button ID="Button6" runat="server" Text="Like" CssClass="btn btn-primary wit-100" /></div>
                                </div>
                            </div>
                        </div>
                        <p>&nbsp;</p>
                        <div class="row">
                            <div class="col-md-6">
                                <h4>Projects:</h4>
                                <asp:TextBox ID="proTextBox" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="fbProTextBox" runat="server"></asp:TextBox>
                                <div class="row">
                                    <div class="col-md-6"><asp:Button ID="Button7" runat="server" Text="Dislike" CssClass="btn btn-default wit-100" /></div>
                                    <div class="col-md-6"><asp:Button ID="Button8" runat="server" Text="Like" CssClass="btn btn-primary wit-100" /></div>
                                </div>
                            </div>
                        </div>
                        <p>&nbsp;</p>
                        <div class="row">
                            <div class="col-md-6"><a href="#" class="btn btn-default wit-100 tabLink" onclick="showTab(event,'m')">Cancel</a></div>
                            <div class="col-md-6"><asp:Button ID="giveFeedback" runat="server" Text="Give Feedback" CssClass="btn btn-primary wit-100" /></div>
                        </div>
                    </div>
                </div>

                <div id="cf" class="d-none tabContent">
                    <div class="jumbotron bg-img">
                        <h1 style="text-align:center; color: #FFFFFF;">COMING SOON<br />TO YOUR RESUME<br />BUILDER SYSTEM</h1>
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

                <div id="rate" class="d-none tabContent">
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