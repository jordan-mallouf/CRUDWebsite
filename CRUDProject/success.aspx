<%@ Page Title="Success" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="success.aspx.cs" Inherits="CRUDProject.success" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Login Successful!</h2>
    <asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label>
    <br /><br />
    <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
</asp:Content>
