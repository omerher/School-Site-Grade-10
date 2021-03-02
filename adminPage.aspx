<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adminPage.aspx.cs" Inherits="School_Site_Grade_10.adminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Admin Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="animation-div"></div>
        <div id="cover-div"></div>
    
    <% if (Session["Admin"] != null)
        { %>
            <div class="curved">
                <h1>Admin Page</h1>
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 160"><path fill="#1f2833" fill-opacity="1" d="M0,64L48,85.3C96,107,192,149,288,144C384,139,480,85,576,64C672,43,768,53,864,80C960,107,1056,149,1152,154.7C1248,160,1344,128,1392,112L1440,96L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>
            </div>
    <div class="content-container">
        <div style="text-align:center;">
            <form style="display: inline-block;" class="search-form" method="post" action="adminPage.aspx">
                    Search by: <select name="searchType" size="1">
                        <option value="firstName">First Name</option>
                        <option value="lastName">Last Name</option>
                        <option value="username">Username</option>
                        <option value="ID">ID Number</option>
                        <option value="email">Email</option>
                        <option value="gender">Gender</option>
                             </select>
                    <br/><br/>
                    Enter your query: <input type="text" name="searchValue" placeholder="Enter here..."/>
                    <br /><br />
                    <input type="submit" value="Search" name="searchSub" />
                    <input type="submit" value="Reset" name="Reset" />
                </form>
        </div>        
        
        <br />
               <p> <% =userCount %> Registered users </p>
                <br /><br />
                
                <div class="container table-container">
                    <% =userList %>
                </div>

                <br /><br />
                <center><h2>Delete entry</h2></center>
                <br />
                <form class="deleteForm" method="post" action="adminPage.aspx">
                    Delete by: <select name="deleteType" size="1">
                        <option value="username">Username</option>
                        <option value="ID">ID Number</option>
                        <option value="email">Email</option>
                             </select>
                    <br />
                    Enter user information that you wish to delete <input type="text" name="deleteValue" placeholder = "Enter here..." />
                    <br /> 
                    <input type="submit" value="Delete" name="deleteSub" />
                </form>
    <% }
    else
    {
        Session["error"] = "Error code 403. Access denied.";
        Response.Redirect("login.aspx");
    } %>
        </div>
</asp:Content>
