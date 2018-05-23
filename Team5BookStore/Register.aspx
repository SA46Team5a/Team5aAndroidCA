<%@ Page Title="" Language="C#" MasterPageFile="~/AnonUsers.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Team5BookStore.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .newStyle1 {
            position: absolute;
        }
        .auto-style10 {
            position: absolute;
            left: 366px;
            top: 144px;
            width: 439px;
            height: 207px;
        }
        .newStyle2 {
        }
        .newStyle3 {
            position: absolute;
        }
        .auto-style11 {
            position: absolute;
            left: 796px;
            top: 174px;
            width: 308px;
            height: 46px;
        }
        .auto-style13 {
            width: 563px;
            text-align: center;
        }
        .auto-style14 {
            width: 563px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
                     
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="CreateUserWizard1" 
            ShowSummary="true" DisplayMode="BulletList" ForeColor="#CC0000" CssClass="auto-style11" />

            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" CssClass="auto-style10" OnCreatedUser="CreateUserWizard1_CreatedUser" >
                <WizardSteps>
                    <asp:CreateUserWizardStep runat="server">
                        <ContentTemplate>
                            <table>
                                <tr>
                                    <td align="center" colspan="2">Sign Up for Your New Account</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                    </td>
                                    <td class="auto-style13">
                                        <asp:TextBox ID="UserName" runat="server" ValidationGroup="CreateUserWizard1" CssClass="col-xs-offset-0"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1" Display="None">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    </td>
                                    <td class="auto-style13">
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password" ValidationGroup="CreateUserWizard1"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1" Display="None">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="auto-style1">
                                        <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword" Width="188px">Confirm Password:</asp:Label>
                                    </td>
                                    <td class="auto-style13">
                                        <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" ValidationGroup="CreateUserWizard1"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1" Display="None">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" Width="78px">E-mail:</asp:Label>
                                    </td>
                                    <td class="auto-style14">
                                        <asp:TextBox ID="Email" runat="server" ValidationGroup="CreateUserWizard1"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1" Display="None">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="font-weight: bold">
                                        Phone Number:</td>
                                    <td class="auto-style13">
                                        <asp:TextBox ID="Question" runat="server" ValidationGroup="CreateUserWizard1" MaxLength="8" TextMode="Phone"></asp:TextBox>

                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                             ControlToValidate="Question" runat="server"
                                              ErrorMessage="Please enter a valid phone number"
                                              ValidationExpression="[689]\d{7}" Display="None" ForeColor="#CC0000" ValidationGroup="CreateUserWizard1"></asp:RegularExpressionValidator>

                                        <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Phone Number is required." ToolTip="Security question is required." ValidationGroup="CreateUserWizard1" Display="None">*</asp:RequiredFieldValidator>
                                                                             

                                    </td>
                                </tr>
                                <tr>

                                    <td align="right" style="font-weight: bold"
                                        Name:</td>
                                    <td class="auto-style13">

                                        <asp:TextBox ID="Answer" runat="server" ValidationGroup="CreateUserWizard1"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Address is required." ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1" Display="None">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                        <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:CreateUserWizardStep>
                    <asp:CompleteWizardStep runat="server" />
                </WizardSteps>
            </asp:CreateUserWizard>
            <br />
        </div>
</asp:Content>
