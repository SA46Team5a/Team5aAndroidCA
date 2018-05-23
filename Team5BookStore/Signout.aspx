<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signout.aspx.cs" Inherits="Team5BookStore.Signout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <div style="margin-left: auto; margin-right: auto; text-align: center;">
            <asp:Label ID="Label1" runat="server" style="text-align:center" Text="Signed out sucessfully.<br/>Thank you for visiting.<br/>Do you want to login again?<br/> Please click the home button below<br/>" ForeColor="#6600CC"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" />


        </div>

        </div>
    </form>
</body>
</html>
