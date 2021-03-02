<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="School_Site_Grade_10.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="animation-div"></div>
        <div id="cover-div"></div>
    
    <% =UserAlreadyExists %>
    <div class="conainer_3">
        <h1>Register</h1>
        <form action="register.aspx" method="post" id="signUp">
            First Name:
            <input type="text" name="fName" placeholder="Enter first name..." required/>
            <br/><br/>
            Last name:
            <input type="text" name="lName" placeholder="Enter last name..." required/>
            <br/><br/>
            Username:
            <input type="text" name="uName" placeholder="Enter username..." required/>
            <br/><br/><br/><br/>
            Email address:
            <input type="email" name="eMail" pattern="[^ @]*@[^ @]*" placeholder="Enter email..." title="Invalid email address" required>
            <br/><br/><br/>
            Password:
            <input type="password" name="pWord" placeholder="Enter password..." required/>
            <br//><br/><br/><br/>
            ID Number:
            <input type="text" name="idNum" placeholder="Enter ID..." required/>
            <br/><br/><br/><br/>
            Date of Birth:
            <input type="date" name="bDay"  style="color:#7f8c8d; width:350px;" required/ >
            <br/><br/>
            Gender:
            Male<input type="radio" name="gender" value="Male" required/> 
            Female<input type="radio" name="gender" value="Female" required/> 
            Prefer not to say<input type="radio" name="gender" value="Prefer not to say" required/> 
        
            <br/><br/><br/>
            <input type="submit" class="button" name="Submit" value="Submit"/>
            <input type="reset" class="button" name="Reset" value="Reset"/>
        </form>
    </div>
</asp:Content>