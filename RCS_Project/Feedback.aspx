<%@ Page Title="Feedback" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="RCS_Project.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>

    <div class="container">
        <h1><%: Title %></h1>
        <div class="container">
    <div class="row">
        <form role="form" class="col-md-9 go-right">
            <h2>Feedback Form</h2>
            <p>We welcome your feedback and the user appreciates your effort to help build their future</p>
            <div class="form-group">
            <label for="name">Your Name</label>
            <input id="name" name="name" type="text" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="email">Email Address</label>
            <input id="email" name="email" type="email" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="industry">Primary Industry</label>
            <input id="industry" name="industry" type="ind" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="message">Comments</label>
            <textarea id="message" name="comment" class="form-control" style="height: 150px" required></textarea>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
        </form>
    </div>
</div>
</asp:Content>
