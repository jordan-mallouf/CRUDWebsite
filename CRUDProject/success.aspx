<%@ Page Title="Success" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="success.aspx.cs" Inherits="CRUDProject.success" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Login Successful!</h2>
    <asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label>
    <br />
<br />
If you would like to make changes to your account, please click
    <strong>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/update.aspx">here</asp:HyperLink>
    </strong>!<br />
    <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
</asp:Content>
