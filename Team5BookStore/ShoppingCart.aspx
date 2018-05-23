<%@ Page Title="" Language="C#" MasterPageFile="~/AllUsers.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Team5BookStore.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style3 {
            margin-right: 0px;
        }
        .newStyle1 {
            position: absolute;
        }
        .newStyle2 {
            position: absolute;
        }
        .newStyle3 {
            position: absolute;
        }
        .newStyle4 {
            position: absolute;
        }
    </style>
    <script type="text/javascript" language="javascript">
        function Confirm()
        {
          if (confirm("Are you sure you want to check out?")==true)
            return true;
          else
            return false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><asp:Label ID="Label1" runat="server" Text="Shopping Cart"></asp:Label></h1>
    <div>
               <asp:GridView ID="GridView1" runat="server" EnableViewState="False" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="324px" Width="707px" CssClass="auto-style3" DataKeyNames="CartItemID" OnRowDeleting="GridView1_RowDeleting">
                   <Columns>
                       <asp:TemplateField HeaderText="Item">
                           <ItemTemplate>
                               <image src="Resources/BookCovers/<%# Eval("ISBN") %>.jpg" width="100" height="100"/>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField>
                           <ItemTemplate>
                               <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Book.Title") %>'></asp:Label>
                               <br />
                               <asp:Label ID="Label3" runat="server" Text='<%# Eval("Book.Author.AuthorName") %>'></asp:Label>
                               <br />
                               <asp:Label ID="Label5" runat="server" Text='<%# Eval("Book.ISBN") %>'></asp:Label>
                               <br />
                               <asp:Label ID="Label6" runat="server" Text='<%# Eval("Book.Category.CategoryName") %>'></asp:Label>
                               <br />
                           </ItemTemplate>
                       </asp:TemplateField>

                       <asp:TemplateField HeaderText="Price">
                           <ItemTemplate>
                               <asp:Label ID="Label4" runat="server"  Font-Strikeout='<%# isStrikethrough(Convert.ToInt32(Eval("Book.Price")), Convert.ToInt32(Eval("FinalPrice"))) %>' Text='<%# string.Format("{0:C}", Eval("Book.Price")) %>'></asp:Label>
                               <asp:Label ID="Label7" runat="server" Text='<%# displayPrice(Convert.ToInt32(Eval("Book.Price")), Convert.ToInt32(Eval("FinalPrice"))) %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>

                       <asp:TemplateField HeaderText="Quantity">
                           <ItemTemplate>
                               <asp:TextBox ID="TextBox1" runat="server" EnableViewState="false" TextMode="Number" min="1" max='<%# getStockLevel(Eval("Book.ISBN").ToString()) %>' step="1" Text='<%#Eval("Quantity") %>'></asp:TextBox>
                           </ItemTemplate>
                       </asp:TemplateField>

                       <asp:TemplateField HeaderText="Subtotal">
                           <ItemTemplate>
                               <asp:Label ID="AmountLabel" runat="server" Text='<%# string.Format("{0:C}", Eval("TotalPrice")) %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                   </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    
               <br />
    
               <asp:Button ID="RefreshButton" runat="server" OnClick="RefreshButton_Click" Text="Refresh Cart" style="position:relative; float:left; margin-left:600px; top: -1px; left: -1px;"/>
               <br />
               <br />
               
               <asp:Label ID="Label8" runat="server" CssClass="newStyle4" style="position:relative; margin-left:600px; top: 5px; left: -7px; width: 45px; height: 23px; right: 868px; bottom: 141px" Text="Total Amount:"></asp:Label>
               <br />
               <br />
               <asp:Label ID="TotalAmountLabel" runat="server" Text="Total Amount" style="position:relative; float:left; margin-left:650px; top: 5px; left: -7px; width: 101px; bottom: 141px;"></asp:Label>

               <br />
  
               <br />
               <br />
    
               <asp:Button ID="CheckOutButton" runat="server" OnClick="CheckOutButton_Click" Text="Check Out" OnClientClick="return Confirm();"  style="position:relative; float:left; margin-left:570px; bottom: 10px; left: 26px; height: 42px; width: 125px;"/>
    
               <br />
               <br />
    
               <br />
               
    </div>
</asp:Content>
