<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CRUDProject._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        font-weight: normal;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome to my CRUD Project!</h1>
    <h3 class="auto-style1">This project is to demonstrate foundational knowledge in CRUD operations with Web-Design. In each page, you will be able to access a relevant operation (being <strong>Registration</strong>, <strong>Login</strong>, <strong>Update</strong> and <strong>Delete</strong>), where credentials will be stored, retrieved and altered in a backend database.</h3>
    <ul>
        <li>
            To visit the registration page, click 
            <asp:HyperLink ID="HyperLinkCreate" runat="server" NavigateUrl="create.aspx"><b>here</b></asp:HyperLink>
            .</li>
        <li>
            To visit the login page, click 
            <asp:HyperLink ID="HyperLinkRead" runat="server" NavigateUrl="read.aspx"><b>here</b></asp:HyperLink>.</li>
    </ul>
    <p>
        If you would like to update your existing account, please visit the login page. Once authenticated, you will be able to change account information!</p>
</asp:Content>
