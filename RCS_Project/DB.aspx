<%@ Page title="Dashboard" Language="C#" AutoEventWireup="true" CodeBehind="DB.aspx.cs" Inherits="RCS_Project.DB" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Dashboard</title>
        <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="http://rcs.gearhostpreview.com/content/style3.css">
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">     
    </head>
    <body>

        <div class="wrapper">
            <!-- Sidebar Holder -->
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
                        <a href="#">Home</a>
                   </li>
                    <li>
                        <a href="#">Submit Resume</a>
                    </li>
                    <li>
                        <a href="#">Feedback</a>
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
                        <a href="Default.aspx">Sign Out</a>
                    </li>
                </ul>
            </nav>

            <!-- Page Content Holder -->
            <div class="col-lg-3 col-md-3 col-sm-1-6 col-xs-12" id="content">

                <nav class="navbar navbar-default">
                    <div class="container-fluid">

                        <div class="navbar-header">
                            <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                                <i class="glyphicon glyphicon-align-left"></i>
                                <span>Menu</span>
                            </button>
                        </div>

                        <div>
                            <ul class="nav navbar-nav navbar-right">
                                <a href="#" class="btn btn-primary tw">Submit Resume</a>
                            </ul>
                        </div>
                    </div>
                </nav>


                <h2>Student Dashboard</h2>
                <p>Below you will find relevant metrics relating to your user history!</p>

                <div class="line"></div>

                <h2>Unique Open Count</h2>
                <a href="https://www.google.com/">Count of who has opened your resume.</a>

                <div class="line"></div>

                <h2>Raw Open Count</h2>
                <a href="https://www.google.com/">Raw count of your resume - total, even duplicates (if they re-evaluated you)</a>


                <!-- same as <hr>? -->
                <div class="line"></div>

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