<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="CRUDProject.update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style5 {
        text-align: center;
        width: 287px;
    }
        .auto-style12 {
            height: 106px;
            text-align: center;
        }
        .auto-style13 {
        text-align: center;
        width: 234px;
    }
        .auto-style14 {
            width: 234px;
        }
        .auto-style19 {
            text-align: center;
            width: 1018px;
        }
        .auto-style20 {
        height: 106px;
        width: 1018px;
    }
        .auto-style21 {
            width: 1018px;
        }
        .auto-style22 {
            width: 234px;
            height: 106px;
            text-align: center;
        }
        .auto-style37 {
            text-align: center;
            width: 234px;
            height: 93px;
        }
        .auto-style38 {
            text-align: center;
            width: 287px;
            height: 93px;
        }
        .auto-style39 {
            width: 1018px;
            height: 93px;
        }
        .auto-style40 {
            height: 93px;
            text-align: center;
        }
        .auto-style41 {
            width: 234px;
            height: 80px;
        }
        .auto-style43 {
            text-align: center;
            width: 1018px;
            height: 80px;
        }
        .auto-style44 {
            text-align: center;
            height: 80px;
        }
        .auto-style45 {
            text-align: center;
            width: 287px;
            height: 80px;
        }
        .auto-style46 {
            text-align: center;
            width: 234px;
            height: 111px;
        }
        .auto-style48 {
            width: 1018px;
            height: 111px;
        }
        .auto-style49 {
            height: 111px;
            text-align: center;
        }
        .auto-style50 {
            text-align: center;
            width: 287px;
            height: 111px;
        }
        .auto-style51 {
            text-align: center;
            width: 287px;
            height: 106px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style13"><strong>Update Information</strong></td>
            <td class="auto-style5"><strong>Current Values</strong></td>
            <td class="auto-style19"><strong>
                <asp:Label ID="lblNewValue" runat="server" Text="New Value" Visible="False"></asp:Label>
                </strong></td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style5">Email:<strong>
                <asp:Label ID="lblEmail" runat="server"></asp:Label>
                </strong></td>
            <td class="auto-style19"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style41">
                <div class="auto-style2">
                    <div class="auto-style2">
                        Change Password</div>
                    <asp:CheckBox ID="cbPassword" runat="server" AutoPostBack="true" OnCheckedChanged="cbPassword_CheckedChanged" />
                </div>
            </td>
            <td class="auto-style45">Password:<strong>
                <asp:Label ID="lblPassword" runat="server"></asp:Label>
                </strong></td>
            <td class="auto-style43">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style44">
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style5">
                <asp:Label ID="lblPasswordC" runat="server" Visible="False">Confirm Password</asp:Label>
                </td>
            <td class="auto-style21">
                <asp:TextBox ID="txtPasswordC" runat="server" TextMode="Password" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordC" ErrorMessage="Passwords do not match!"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style46">
                Change First Name<br />
                <asp:CheckBox ID="cbFName" runat="server" AutoPostBack="true" OnCheckedChanged="cbFName_CheckedChanged" />
            </td>
            <td class="auto-style50">First Name:<strong>
                <asp:Label ID="lblFName" runat="server"></asp:Label>
                </strong></td>
            <td class="auto-style48">
                <asp:TextBox ID="txtFName" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style49">
                <asp:RequiredFieldValidator ID="rfvFName" runat="server" ControlToValidate="txtFName" ErrorMessage="First Name is required!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">
                Change Last Name<br />
                <asp:CheckBox ID="cbLName" runat="server" AutoPostBack="true" OnCheckedChanged="cbLName_CheckedChanged" />
            </td>
            <td class="auto-style51">Last Name:<strong>
                <asp:Label ID="lblLName" runat="server"></asp:Label>
                </strong></td>
            <td class="auto-style20">
                <asp:TextBox ID="txtLName" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="rfvLName" runat="server" ControlToValidate="txtLName" ErrorMessage="Last Name is required!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style37">
                Change DOB<br />
                <asp:CheckBox ID="cbYOB" runat="server" AutoPostBack="true" OnCheckedChanged="cbYOB_CheckedChanged" />
            </td>
            <td class="auto-style38">Year of Birth (YYYY):<strong>
                <asp:Label ID="lblYOB" runat="server"></asp:Label>
                </strong></td>
            <td class="auto-style39">
                <asp:TextBox ID="txtYOB" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style40">
                <asp:RequiredFieldValidator ID="rfvYOB" runat="server" ControlToValidate="txtYOB" ErrorMessage="Year of Birth is required!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Click<strong> <a href="delete.aspx">here</a> </strong>to delete you account.</td>
            <td class="auto-style5">
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update Information" />
            </td>
            <td class="auto-style21">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student4720ConnectionString3 %>" DeleteCommand="DELETE FROM [Login] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Login] ([Email], [Password], [FName], [LName], [YOB]) VALUES (@Email, @Password, @FName, @LName, @YOB)" ProviderName="<%$ ConnectionStrings:Student4720ConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Login] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Login] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB WHERE [Email] = @Email">
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
            <td class="auto-style2">
                <asp:Button ID="btnLogoff" runat="server" OnClick="btnLogoff_Click" Text="Logoff" />
            </td>
        </tr>
    </table>
</asp:Content>
