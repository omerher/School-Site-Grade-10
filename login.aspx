<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="School_Site_Grade_10.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="animation-div"></div>
        <div id="cover-div"></div>

    <div class="curved">
            <h1>Login Form</h1>
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 160"><path fill="#1f2833" fill-opacity="1" d="M0,64L48,85.3C96,107,192,149,288,144C384,139,480,85,576,64C672,43,768,53,864,80C960,107,1056,149,1152,154.7C1248,160,1344,128,1392,112L1440,96L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>
        </div>

    <div class="content-container">
        <div style="text-align:center;">
    <% if (Session["message"] != null) { %>
                <div class="greenContainer"> <% =Session["message"].ToString() %> </div>
            <%  Session["message"] = null; } 
      if (Session["error"] != null) { %>
                <div class="redContainer"> <% =Session["error"].ToString() %> </div>
                
            <% Session["error"] = null; } %>

        <% if (Session["Login"] == null && Session["Admin"] == null)
            { %>
        

      <div class="forms-container">
         <form method="post" action="login.aspx">
      <div class="formcontainer">
      <div class="inside-container">
        <label for="uname"><strong>Username</strong></label>
        <input type="text" name="uName" placeholder="Enter username..." required>
        <label for="psw"><strong>Password</strong></label>
        <input type="password" name="pWord" id="pWord" placeholder="Enter password..." required>
      </div>
      <input type="submit" name="sub1" value="Login"/>

          <input type="checkbox" onclick="myFunction()"> Show password
                <script>
                    function myFunction() {
                        var x = document.getElementById("pWord");
                        if (x.type === "password") {
                            x.type = "text";
                        } else {
                            x.type = "password";
                        }
                    }
                </script>
      </div>
    </form>
    </div>

        <% }
    else
    {%>
        <form method="post" action="login.aspx">
            <h1>Log out</h1>
            <input type="submit" name="sub2" value="Log out" class="subBtn" />
        </form>
        <% } %>
    <% =error %>
        </div>
    </div>
</asp:Content>
