<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="userPage.aspx.cs" Inherits="School_Site_Grade_10.userPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="animation-div"></div>
        <div id="cover-div"></div>

    <div class="curved">
                <h1>Profile</h1>
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 160"><path fill="#1f2833" fill-opacity="1" d="M0,64L48,85.3C96,107,192,149,288,144C384,139,480,85,576,64C672,43,768,53,864,80C960,107,1056,149,1152,154.7C1248,160,1344,128,1392,112L1440,96L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>
            </div>
    <div class="content-container">
        <div style="text-align:center;">

       <h1>Hello <% =firstName %> <% =lastName %>!</h1>
       <br />
       <hr />
       <p>
           <br />
       Profile Info: <br />
       Email address: <%=email %>
       <br />
       ID Number: <%=IDNum %>
       <br />
       Gender: <%=gender %>
       <br />
       Birth Date: <%=bDay %>
       <br />
       Username: <%=username %>
       </p>
       
       <br /><hr /><br />
       <h1>Other users</h1> <br />
       <div class="container table-container">
            <% =userList %>
        </div>
       <br /><br /><br />
       <form action="userPage.aspx" method="post">
           <% =userAlreadyExists %>
           Update: <select name="updateField" size="1">
            <option value="username">Username</option>
            <option value="email">Email</option>
            <option value="password">Password</option>
            </select>
            <br /><br />
            Enter the new value: <input type="text" name="updateValue" placeholder="Enter here..."/>
            <br /><br />
            <input type="submit" value="Update" name="updateSub" class="button" />
       </form>
            <br /> <br /> <br />
            </div>
        </div>
</asp:Content>
