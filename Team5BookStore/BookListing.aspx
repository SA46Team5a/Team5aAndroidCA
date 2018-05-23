<%@ Page Title="" Language="C#" MasterPageFile="~/AnonUsers.Master" AutoEventWireup="true" CodeBehind="BookListing.aspx.cs" Inherits="Team5BookStore.BookListing" %>
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

            <div style ="text-align:center">
                <asp:ListView ID="ListView1" runat="server" DataSourceID="Books" GroupItemCount="4" >
                    <GroupTemplate>
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </GroupTemplate>
                    <ItemTemplate>
                        <td runat="server" style="">Title:
                            <asp:Label ID="TitleLabel" runat="server" ForeColor="#66ccff" Text='<%# Eval("Title") %>' />
                            <br />
                            <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                            <br />
                            <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                            <br />
                            <asp:Label ID="PriceLabel" runat="server" ForeColor="Red" Text='<%# Eval("Price") %>' />
                            <br />
                            <asp:ImageButton ImageUrl='<%# Eval("Address") %>' runat="server" OnClick="Image_ClickEvent" Value='<%# Eval("ISBN") %>'/>
                            <br />
                        </td>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="groupPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            <asp:NumericPagerField />
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="Books" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString %>" SelectCommand="SELECT b.Title, a.Author, c.Category, b.Price, CONCAT('~/Resources/BookCovers/', b.ISBN, '.jpg') as Address, b.ISBN
FROM Books b, Authors a, Categories c
Where a.AuthorID = b.AuthorID and c.CategoryID = b.CategoryID
"></asp:SqlDataSource>
            </div>    
</asp:Content>
