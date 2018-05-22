<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookDetails.aspx.cs" Inherits="Team5BookStore.BookDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 622px;
            margin-bottom: 0px;
            width: 339px;
        }
        .auto-style2 {
            width: 233px;
            height: 218px;
            position: absolute;
            top: 44px;
            left: -26px;
        }
        .auto-style5 {
            position: absolute;
            top: 92px;
            left: -96px;
            height: 566px;
            width: 422px;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            margin-left: 418px;
            margin-top: 0px;
            margin-bottom: 0px;
            margin-right: 2px;
        }
        .auto-style9 {
            margin-left: 445px;
            margin-top: 0px;
        }
        .auto-style10 {
            text-align: right;
        }
        .auto-style11 {
            margin-top: 230px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <h1>Book Details</h1>
        <div class="auto-style5">

            
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="389px" Width="410px" />
            <table border="solid" style="margin-left: 553px; margin-top: 0px; " class="auto-style2">
  <tr>
    <th class="auto-style1" style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: normal; font-style: normal; text-align: left;">Author:<asp:Label ID="Label_Author" runat="server" Text="Author"></asp:Label>
      </th> 
  </tr>
  <tr>
    <td class="auto-style1">Title:<asp:Label ID="Label_Title" runat="server" Text="Title"></asp:Label>
      </td> 
  </tr>
  <tr>
    <td class="auto-style1">Category:<asp:Label ID="Label_Category" runat="server" Text="Category"></asp:Label>
      </td>
  </tr>
  <tr>
    <td class="auto-style1">ISBN number:<asp:Label ID="Label_ISBN" runat="server" Text="ISBN number"></asp:Label>
      </td> 
  </tr>
    <tr>
    <td class="auto-style1">Price:<asp:Label ID="Label_Price" runat="server" Text="Price"></asp:Label>
        </td> 
  </tr>
                <tr>
    <td class="auto-style1">Discount:<asp:Label ID="Label_Discount" runat="server" Text="Discount"></asp:Label>
        </td> 
  </tr>
                <tr>
    <td class="auto-style1">Synopsis:<asp:Label ID="Label_Synopsis" runat="server" Text="Synopsis"></asp:Label>
        </td> 
  </tr>
               

</table>


            <br />

       
&nbsp;<p>
                &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p aria-autocomplete="both" style="margin-top: 19px">
&nbsp;&nbsp;&nbsp;&nbsp;
            </p>

          
        
         <p aria-autocomplete="both" style="margin-top: 19px" class="auto-style7">
             </br>
         </p>
        
         <p aria-autocomplete="both" class="auto-style7" style="margin-top: 19px">
             &nbsp;</p>
         <p aria-autocomplete="both" class="auto-style7" style="margin-top: 19px">
             &nbsp;</p>
         <p aria-autocomplete="both" class="auto-style7" style="margin-top: 19px">
             &nbsp;</p>
         <p aria-autocomplete="both" class="auto-style7" style="margin-top: 19px">
             &nbsp;</p>
         <p aria-autocomplete="both" class="auto-style7" style="margin-top: 19px">
             &nbsp;</p>
        
         </br>
          </div>
     

        <div class="auto-style7">
      
         <p>
        
    
         </p>
         <p class="auto-style10">
             <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="SqlDataSource2" />
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString %>" SelectCommand="SELECT [AdImage], [TargetURL] FROM [Advertisements]"></asp:SqlDataSource>
            </p>
         <p>
             &nbsp;</p>
         <p>
             &nbsp;</p>
         <p>
             &nbsp;</p>
         <p>
             
         </p>
        </div>
         <p>
             &nbsp;</p>
         <p>
             <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text="Quantity" Width="113px" Height="46px"></asp:Label>
             <asp:TextBox ID="TextBox_Quantity" runat="server" CssClass="auto-style11" Height="32px"></asp:TextBox>
         </p>
         <p>
             &nbsp;</p>
         <p>
             &nbsp;</p>
         <p>
             <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="64px" Text="Add to cart" Width="202px" OnClick="Button_Addtocart_Click" />
          </p>
         <p>
             &nbsp;</p>
         <p>
             &nbsp;</p>
         <p>
             &nbsp;</p>
         <p>
             &nbsp;</p>
        <div>
         <asp:DataList ID="DataList1" runat="server" DataKeyField="ISBN" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" Height="93px" Width="169px" >
             <ItemTemplate>
                <asp:ImageButton runat="server" OnClick="image_Click" ID="image" ImageURL='<%# GenImageURL(Eval("ISBN")) %>' width="90" height="120"></asp:ImageButton>
                 Title:
                 <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                 <br />
              
                 AuthorID:
                 <asp:Label ID="AuthorIDLabel" runat="server" Text='<%# Eval("AuthorID") %>' />
                 <br />
                 CategoryID:
                 <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
                 <br />
                 ISBN:
                 <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                 <br />
                 Price:
                 <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                 <br />
                 StockLevel:
                 <asp:Label ID="StockLevelLabel" runat="server" Text='<%# Eval("StockLevel") %>' />
                 <br />
                 <br />
              
             </ItemTemplate>  

         </asp:DataList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString5 %>" SelectCommand="SELECT [Title], [AuthorID], [CategoryID], [ISBN], [Price], [StockLevel] FROM [Books]"></asp:SqlDataSource>
            </div>
    </form>
</body>
</html>
