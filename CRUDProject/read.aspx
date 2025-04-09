<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="read.aspx.cs" Inherits="CRUDProject.read" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Welcome to the Login Page!</h2>
    <p>Glad to see you&#39;re back!</p>
<p>The login email is scrappy@unt.edu;</p>
    <p>The password is "unt123"</p>

    <asp:Label ID="lblMessage" runat="server" ForeColor="Red" />

    <p>
        Email:<br />
        <asp:TextBox ID="txtEmail" runat="server" />
        <asp:RequiredFieldValidator ID="rfwEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Required!"></asp:RequiredFieldValidator>
    </p>
    <p>
        Password:<br />
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
        <asp:RequiredFieldValidator ID="rfwPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Required!"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student4720ConnectionString %>" DeleteCommand="DELETE FROM [Login] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Login] ([Email], [Password], [FName], [LName], [YOB]) VALUES (@Email, @Password, @FName, @LName, @YOB)" ProviderName="<%$ ConnectionStrings:Student4720ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Login] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Login] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB WHERE [Email] = @Email">
            <DeleteParameters>
                <asp:Parameter Name="Email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="LName" Type="String" />
                <asp:Parameter Name="YOB" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="" Name="Email" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="LName" Type="String" />
                <asp:Parameter Name="YOB" Type="Int32" />
                <asp:Parameter Name="Email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
