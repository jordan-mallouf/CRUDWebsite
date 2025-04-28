<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="CRUDProject.delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 25%;
        }
        .auto-style2 {
            width: 206px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 29%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Are you sure you want to delete your account?</p>
    <p>
        &nbsp;</p>
<p>
        Yes</p>
    <p>
        <table class="auto-style1">
            <tr>
                <td>
        <asp:CheckBox ID="cbDelete" runat="server" AutoPostBack="true" OnCheckedChanged="cbDelete_CheckedChanged" />
                </td>
                <td class="auto-style2">
        <asp:Button ID="btnDelete" runat="server" ForeColor="#FF3300" OnClick="btnDelete_Click" Text="Delete Account" Visible="False" />
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
    <p>
        No</p>
    <table class="auto-style4">
        <tr>
            <td>
                <asp:CheckBox ID="cbLogoff" runat="server" AutoPostBack="true" OnCheckedChanged="cbLogoff_CheckedChanged" />
            </td>
            <td class="auto-style3">
                <asp:Button ID="btnLogoff" runat="server" OnClick="btnLogoff_Click" Text="Logoff" Visible="False" />
            </td>
        </tr>
    </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student4720ConnectionString4 %>" DeleteCommand="DELETE FROM [Login] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Login] ([Email]) VALUES (@Email)" ProviderName="<%$ ConnectionStrings:Student4720ConnectionString4.ProviderName %>" SelectCommand="SELECT [Email] FROM [Login]">
            <DeleteParameters>
                <asp:Parameter Name="Email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </asp:Content>
