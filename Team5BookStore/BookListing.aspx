<%@ Page Title="" Language="C#" MasterPageFile="~/AllUsers.Master" AutoEventWireup="true" CodeBehind="BookListing.aspx.cs" Inherits="Team5BookStore.BookListing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .div1 {
            height: 446px;
            width: 283px;
            float:left;
            margin-top: 0px;
        }
    </style>
       <style type='text/css'>
          .tableCSS
     {
         table-layout: fixed;
     }
     .content
     {
         width:100%;
         white-space:nowrap;
         overflow:hidden;
         text-overflow:ellipsis;
    }
           .auto-style2 {
               height: 31px;
           }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br />
        <!DOCTYPE html>
        <h1 aria-readonly="True" style="text-align: center">    Welcome to ISS Book store! <br\>We hope you have a good day!</h1>

             <div class="div1">
                <h4>
                    <asp:Label ID="Label5" runat="server" style="font-weight: 700" Text="Catogory"></asp:Label>
                </h4>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" BorderStyle="Dotted" BorderWidth="0px" Height="116px" RepeatColumns="2" Width="196px">
                    <asp:ListItem>Children</asp:ListItem>
                    <asp:ListItem>Finance</asp:ListItem>
                    <asp:ListItem>Non-Fiction</asp:ListItem>
                    <asp:ListItem>Technical</asp:ListItem>
                </asp:CheckBoxList>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Discount" />
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" style="font-weight: 700" Text="Sort by:"></asp:Label>
                <br />
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    <asp:ListItem>Book Title</asp:ListItem>
                    <asp:ListItem>Author</asp:ListItem>
                </asp:DropDownList>
            </div>
             
            <asp:DataList ID="DataList1" runat="server" DataKeyField="BookID" DataSourceID="SqlDataSource1" Height="417px" style="margin-right: 292px; text-align: left; margin-left: 0px; margin-top: 0px;" RepeatColumns="6" RepeatDirection="Horizontal" Width="805px" CssClass="tableCSS">
                <ItemTemplate>
                    <table class="auto-style1" border="0">
                        <tr>
                            <td style="text-align: center" class="auto-style2">
                                 <a href="WebForm1"><image src="images/<%# Eval("ISBN") %>.jpg" width="150" height="150"></image> 
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Title").ToString ().Length>20?Eval("Title").ToString().Substring(0,20):Eval("Title").ToString() %>' style="text-align: justify" EnableTheming="True" ForeColor="#0099FF" ToolTip=<%# Eval("Title") %>></asp:Label>
                            
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:Label ID="Label2" runat="server" style="text-align: justify" Text='<%# Eval("Author").ToString ().Length>10?Eval("Author").ToString().Substring(0,10):Eval("Author").ToString() %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("CategoryID").ToString ().Length>20?Eval("CategoryID").ToString().Substring(0,20):Eval("CategoryID").ToString() %>'></asp:Label>
<%--                                                                         <%# Eval("id").ToString().Length>10?Eval("id").ToString().Substring(0,10):Eval("id").ToString %>                --%>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>' ForeColor="Red" style="font-weight: 700"></asp:Label>
                            </td>
                        </tr>                    
                    </table>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                </ItemTemplate>
            </asp:DataList> 
             
            <br />
       
</asp:Content>
