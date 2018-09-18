<%@ Page Title="Feedback" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="RCS_Project.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1><%: Title %></h1>
        <p>
              <label><b>Work Experience:</b></label><br />
              <textarea name="myTextBox" cols="100" rows="7">UserInput</textarea>
             <label class="container">Great!
      <input type="checkbox" id ="greatCheck" name="greatCheck">
    </label>
            <label class="container">Needs Work  
    <input type="checkbox" id="checkBad" name="checkBad" onclick="disableMyText()"/>   
    </label>
            <textarea id="myTextBox" cols="50" rows="5">Comments</textarea>
            <button type="button" name="submitButton">Submit</button>
            <script type="text/javascript" >    
            
                function disableMyText() { 
             document.getElementByName("myTextBox").hidden = true; 
             if (document.getElementByName("checkBad").checked == true) {  
                  document.getElementsByName("myTextBox").hidden = false;  
              }else{
                document.getElementByName("myTextBox").hidden = true;
              }  
         }  
         </script> 
        </p>
      <label><b>Education:</b></label><br />
              <textarea name="myTextBox" cols="100" rows="7">UserInput</textarea>
        <label class="container">Great!
      <input type="checkbox" name="check">
    </label>
        <label class="container">Needs Work
      <input type="checkbox" name="checkBad" onclick="disableMyText()"/>
    </label>
        <textarea id="TextBox" cols="50" rows="5">Comments</textarea>
        <button type="button" name="submitButton">Submit</button>
      <br>
        <br>
      <label><b>Skils/Additional Information:</b></label><br />
              <textarea name="myTextBox" cols="100" rows="7">UserInput</textarea>
            <label class="container">Great!
      <input type="checkbox" name="check">
    </label>
        <label class="container">Needs Work
      <input type="checkbox" name="checkBad" onclick="disableMyText()"/>
    </label>
        <textarea cols="50" rows="5">Comments</textarea>
        <button type="button" name="submitButton">Submit</button>
      <br>
    </div>
</asp:Content>
