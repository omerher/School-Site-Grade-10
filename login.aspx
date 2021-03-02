<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="School_Site_Grade_10.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="animation-div"></div>
        <div id="cover-div"></div>
    <% if (Session["message"] != null) { %>
                <div class="greenContainer"> <% =Session["message"].ToString() %> </div>
            <%  Session["message"] = null; } 
      if (Session["error"] != null) { %>
                <div class="redContainer"> <% =Session["error"].ToString() %> </div>
                
            <% Session["error"] = null; } %>
     <div class="conainer_3">

        <% if (Session["Login"] == null && Session["Admin"] == null)
            { %>
        <form method="post" action="login.aspx">
            <h1>Username</h1><br />
            <input type="text" name="uName" placeholder="Enter username..." style="height:50px; width:250px;"/>
            <br /><br />
            <h1>Password</h1><br />
            <input type="password" name="pWord" placeholder="Enter password..." style="height:50px; width:250px;" id="pWord" ;"/><br />
        
            <input type="checkbox" onclick="myFunction()"> Show password
            <br /><br />
            <input type="submit" name="sub1" value="Login" class="subBtn"/>
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
        </form>
        <% }
    else
    {%>
        <form method="post" action="login.aspx">
            <h1>Log out</h1>
            <input type="submit" name="sub2" value="Log out" class="subBtn" />
        </form>
        <% } %>
        </div>
    <% =error %>
</asp:Content>
