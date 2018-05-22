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
                <asp:CheckBox  ID="ChildenCheckBox" runat="server" Text="Childen" />
                <asp:CheckBox  ID="FinanceCheckBox" runat="server" Text="Finance" />
                <asp:CheckBox  ID="NonFictionCheckBox" runat="server" Text="Non-Fiction" />
                <asp:CheckBox  ID="TechnicalCheckBox" runat="server" Text="Technical" />
                 <br />
                <asp:CheckBox value="5" ID="DiscountCheckBox" runat="server" Text="Discount" />
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" style="font-weight: 700" Text="Sort by:"></asp:Label>
                <br />
                <br />
                <asp:DropDownList ID="SortDropDownList" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="SortDropDownList_SelectedIndexChanged">
                    <asp:ListItem Value="0">Book Title</asp:ListItem>
                    <asp:ListItem Value="1">Author</asp:ListItem>
                </asp:DropDownList>
            </div>
    <div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ISBN" RepeatColumns="6" OnItemCommand="DataList1_ItemCommand" RepeatDirection="Horizontal" >
                <ItemTemplate>
                    
                    <table class="auto-style1">
                        <tr>
                            <asp:ImageButton runat="server" ID="ThumbNail" ImageURL='<%# GenImageURL(Eval("ISBN").ToString()) %>' width="100" height="110" OnClick="MoreInfoButton_Click"/> 
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1"  runat="server" Commandname="Answer" Text='<%# Eval("Title") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label2" runat="server" Text='<%#  Eval("Category.CategoryName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Author.AuthorName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Button" CommandName="delete" CommandArgument='<%#  Eval("ISBN") %>'/>
                                <asp:Button ID="Button2" runat="server" Text="Button" />
                            </td>
                        </tr>
                    </table>
                   
                </ItemTemplate>
            </asp:DataList>
        </div>
             
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
             
            <br />
       
</asp:Content>
