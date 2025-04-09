<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="create.aspx.cs" Inherits="CRUDProject.create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
        .auto-style2 {
            width: 143px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            color: #C0C0C0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Welcome to the Registration Page!</h2>
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style3" colspan="2">Please complete the form to register.</td>
        </tr>
        <tr>
            <td class="auto-style2">Email:</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style4">johndoe@apple.com</asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is Required!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Confirm Email:</td>
            <td>
                <asp:TextBox ID="txtEmailC" runat="server" CssClass="auto-style4">johndoe@apple.com</asp:TextBox>
                <asp:CompareValidator ID="cvEmail" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtEmailC" ErrorMessage="Emails do not match!"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password:</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password is required!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Confirm Password:</td>
            <td>
                <asp:TextBox ID="txtPasswordC" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordC" ErrorMessage="Passwords do not match!"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">First Name:</td>
            <td>
                <asp:TextBox ID="txtFName" runat="server" CssClass="auto-style4">John</asp:TextBox>
                <asp:RequiredFieldValidator ID="rfFName" runat="server" ErrorMessage="First Name is required!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Last Name:</td>
            <td>
                <asp:TextBox ID="txtLName" runat="server" CssClass="auto-style4">Doe</asp:TextBox>
                <asp:RequiredFieldValidator ID="rfLName" runat="server" ErrorMessage="Last Name is required!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Year of Birth (YYYY):</td>
            <td>
                <asp:TextBox ID="txtYOB" runat="server" CssClass="auto-style4">YYYY</asp:TextBox>
                <asp:RegularExpressionValidator ID="revYOB" runat="server" ErrorMessage="Please use a four digit year!" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:Button ID="btnRegister" runat="server" Height="40px" OnClick="btnRegister_Click" Text="Register" Width="101px" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student4720ConnectionString2 %>" DeleteCommand="DELETE FROM [Login] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Login] ([Email], [Password], [FName], [LName], [YOB]) VALUES (@Email, @Password, @FName, @LName, @YOB)" ProviderName="<%$ ConnectionStrings:Student4720ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Login] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Login] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB WHERE [Email] = @Email">
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
                        <asp:Parameter Name="Email" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="FName" Type="String" />
                        <asp:Parameter Name="LName" Type="String" />
                        <asp:Parameter Name="YOB" Type="Int32" />
                        <asp:Parameter Name="Email" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
