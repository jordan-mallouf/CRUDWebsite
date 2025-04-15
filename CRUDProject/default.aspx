<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CRUDProject._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome to my CRUD Project!</h1>
    <h3>This project is to demonstrate foundational knowledge in CRUD operations with Web-Design. In each page, you will be able to access a relevant operation (being Registration, Login, Update and Delete), where credentials will be stored, retrieved and altered in a backend database.</h3>
    <ul>
        <li>
            To visit the registration page, click 
            <asp:HyperLink ID="HyperLinkCreate" runat="server" NavigateUrl="create.aspx"><b>here</b></asp:HyperLink>
            .</li>
        <li>
            To visit the login page, click 
            <asp:HyperLink ID="HyperLinkRead" runat="server" NavigateUrl="read.aspx"><b>here</b></asp:HyperLink>.</li>
        <li>
            To visit the UPDATE page, click 
            <!-- <asp:HyperLink ID="HyperLinkUpdate" runat="server" NavigateUrl="update.aspx">here</asp:HyperLink> -->
        </li>
        <li>
            To visit the DELETE page, click 
            <!-- <asp:HyperLink ID="HyperLinkDelete" runat="server" NavigateUrl="delete.aspx">here</asp:HyperLink> -->
        </li>
    </ul>
</asp:Content>
