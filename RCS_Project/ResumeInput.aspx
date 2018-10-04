<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResumeInput.aspx.cs" Inherits="RCS_Project.ResumeInput" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h2>Resume Input</h2>
    <asp:Panel ID="Panel1" runat="server">
        <table class="nav-justified">
            <tr>
                <td style="width: 372px">
                    <h4>Education:</h4>
                </td>
                <td rowspan="2">
                    <asp:TextBox ID="educationTxtBox" runat="server" Width="413px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 372px">I<span style="font-size: small"><em>nput your most current or most recently completed education </em></span></td>
            </tr>
            <tr>
                <td style="width: 372px">
                    <h4>Experience: </h4>
                </td>
                <td rowspan="2">
                    <asp:TextBox ID="experienceTxtBox" runat="server" Width="413px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 372px; font-size: small"><em>Input any work experience or internship experience</em></td>
            </tr>
            <tr>
                <td style="width: 372px">
                    <h4>Skills:</h4>
                </td>
                <td rowspan="2">
                    <asp:TextBox ID="skillsTxtBox" runat="server" Width="413px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 372px; font-size: small; height: 30px"><em>Input any hard skills(programming, Microsoft Office, etc.) and any soft skills(communication, team work, etc.)</em></td>
            </tr>
            <tr>
                <td style="width: 372px">
                    <h4>Projects: </h4>
                </td>
                <td rowspan="2">
                    <asp:TextBox ID="projectsTxtBox" runat="server" Width="413px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 372px; font-size: x-small"><em>I<span style="font-size: small">nput any class or work projects that you have worked on</span></em></td>
            </tr>
        </table>
        <br />
        <asp:Button ID="submitBtn" runat="server" Text="Submit" />
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
    <br />
    

</asp:Content>
