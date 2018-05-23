<%@ Page Title="" Language="C#" MasterPageFile="~/AnonUsers.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Team5BookStore.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <style>
        .center{
            text-align:center;
        }
        .newStyle1 {
            position: absolute;
        }
        .newStyle2 {
            position: absolute;
        }
        .auto-style9 {
            position: absolute;
            left: 321px;
            top: 116px;
            width: 494px;
            height: 297px;
            right: 358px;
        }
        .newStyle3 {
            position: absolute;
        }
        .auto-style10 {
            position: absolute;
            left: 790px;
            top: 181px;
            width: 355px;
            height: 82px;
        }
        .auto-style12 {
            width: 483px;
            height: 214px;
        }
        .newStyle4 {
            position: absolute;
        }
        .newStyle5 {
            position: absolute;
        }
        .auto-style13 {
            position: absolute;
            height: 61px;
        }
    </style>
    <div class="center" style="align-content:center">
        <h1>Log in</h1>
   
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Login1" 
            ShowSummary="true" DisplayMode="BulletList" ForeColor="#CC0000" CssClass="auto-style10" />
 
    <%--<asp:Login ID="Login1" runat="server" CssClass="auto-style9">
        <LayoutTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0" class="auto-style12">
                            <tr>
                                <td colspan="2" class="auto-style13">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" Display="None" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" Display="None" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" LoggedIn="LoginButton_Click" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>

    </asp:Login>--%>
         </div>
    <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/BookListing.aspx" OnLoggedIn="Login1_LoggedIn">
    </asp:Login>
</asp:Content>
