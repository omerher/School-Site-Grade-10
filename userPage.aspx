<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="userPage.aspx.cs" Inherits="School_Site_Grade_10.userPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="animation-div"></div>
        <div id="cover-div"></div>
    
    <center><h1>Profile</h1></center>
        <p>Hello <% =firstName %> <% =lastName %>!</p>
       <br />
       <hr />
       <p>
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
       <h1>Other users</h1>
       <% =userList %>
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
</asp:Content>
