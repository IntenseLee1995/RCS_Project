<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="P-Dashboard.aspx.cs" Inherits="RCS_Project.P_Dashboard" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Professional Dashboard</title>
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
                    <h3>Professional<br />Dashboard</h3>
                </div>

                <ul class="list-unstyled components">
                    <p>Welcome, [Pro Name]</p>
                    <li class="active">
                        <a href="#">Home</a>
                    </li>
                    <li>
                        <a href="#">Current Feedback</a>
                    </li>
                    <li>
                        <a href="#">Account Settings</a>
                    </li>
                    <li>
                        <a href="#">Profile Settings</a>
                    </li>
                    <li>
                        <a href="#">Rating</a>
                    </li>
                    <li>
                        <a href="#">Sign Out</a>
                    </li>
                </ul>
            </nav>

            <!-- Page Content Holder -->
            <div id="content">
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
                                <a href="#" class="btn btn-primary tw">Give Feedback</a>
                            </ul>
                        </div>
                    </div>
                </nav>

                <h2>Professional Dashboard</h2>

                <div class="line"></div>

                <h2>Favorited Resumes</h2>
                <a href="#">Link</a>
                <div class="line"></div>

                <h2>Leads</h2>
                <a href="#">link</a>
                <div class="line"></div>

                <h3>Review</h3>
                <a href="#">link</a>            

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