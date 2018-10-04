<%@ Page Title="Student Dashboard" Language="C#" AutoEventWireup="true" CodeBehind="S-Dashboard.aspx.cs" Inherits="RCS_Project.S_Dashboard" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Student Dashboard</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://rcs.gearhostpreview.com/content/style3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
        <link rel="stylesheet" href="http://rcs.gearhostpreview.com/content/Site.css">
    </head>
    <body>
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
                    <li class="active">
                        <a href="Default.aspx">Home</a>
                   </li>
                    <li>
                        <a href="#">Submit Resume</a>
                    </li>
                    <li>
                        <a href="Feedback.aspx">Feedback</a>
                    </li>
                    <li>
                        <a href="#">Account Settings</a>
                    </li>
                    <li>
                        <a href="#">Profile Settings</a>
                    </li>
                    <li>
                        <a href="#">History</a>
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
                                <a href="#" class="btn btn-info navbar-btn">Submit Resume</a>
                        </div>
                    </div>
                </nav>
                <div class="jumbotron bg-img">
                    <h1 style="text-align:center; color: #FFFFFF;">WELCOME <asp:Label runat="server" ID="welSUser" CssClass="text-uppercase"></asp:Label><br />TO YOUR RESUME<br />BUILDER SYSTEM</h1>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="sys-mission">
                            <h2 style="text-align:center; color: #FFFFFF;">Submit Resume</h2>
                            <p>&nbsp;</p>
                            <p style="text-align:center; color: #FFFFFF;">
                                <a class="btn btn-default" href="#">CLICK HERE &raquo;</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4 ">
                        <div class="sys-team">
                            <h2 style="text-align:center; color: #FFFFFF;">View Feedback</h2>
                            <p>&nbsp;</p>
                            <p style="text-align:center; color: #FFFFFF;">
                                <a class="btn btn-default" href="#">CLICK HERE &raquo;</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4 ">
                        <div class="sys-features">
                            <h2 style="text-align:center; color: #FFFFFF;">History Feature</h2>
                            <p>&nbsp;</p>
                            <p style="text-align:center; color: #FFFFFF;">
                                <a class="btn btn-default" href="#">Coming Soon &raquo;</a>
                            </p>
                        </div>
                    </div>
                </div>
                </div>
        </div>



        <div class="overlay"></div>


        <!-- jQuery CDN -->
        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        <!-- Bootstrap Js CDN -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <!-- jQuery Custom Scroller CDN -->
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
        </script>
    </body>
</html>