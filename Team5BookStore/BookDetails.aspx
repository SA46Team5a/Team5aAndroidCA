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
            height: 446px;
            width: 422px;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style10 {
            text-align: right;
        }
        .auto-style12 {
            width: 100%;
        }
        .newStyle1 {
            position: absolute;
        }
        .auto-style13 {
            position: absolute;
            left: 478px;
            top: 653px;
            width: 160px;
            height: 56px;
        }
        a {
            position: absolute;
        }
        .auto-style15 {
            text-align: center;
        }
        .newStyle2 {
            position: absolute;
        }
        .auto-style16 {
            position: absolute;
            left: 478px;
            top: 796px;
            width: 164px;
        }
        .auto-style17 {
            position: absolute;
            left: 32px;
            top: 676px;
            width: 67px;
            margin-left: 360px;
            margin-top: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="auto-style10">
         <h1 class="auto-style15">Book Details</h1>
        <div class="auto-style5">

            
            <asp:Image ID="Image1" runat="server" Height="393px" />
             
            
            <br />
            <br />
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
        <p aria-autocomplete="both" style="margin-top: 19px">
&nbsp;&nbsp;&nbsp;&nbsp;
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
        
         </br>
          </div>
     

             <asp:Image ID="Image9" runat="server" Height="200px" ImageUrl="C:\Users\GongMeiting\Desktop\CA7\Team5BookStore\Team5BookStore\Resources\AdImages\amazon.png" /></br>
     
             &nbsp;<div class="auto-style7">
      
         <p class="auto-style10">
        
    
             
            
        
    
             <asp:Image ID="Image10" runat="server" Height="200px" ImageUrl="C:\Users\GongMeiting\Desktop\CA7\Team5BookStore\Team5BookStore\Resources\AdImages\Sentosa.jpg" Width="197px" />
        
    
             
            
        
    
         </p>
         <p class="auto-style10" property="og:image" style="font-size: x-small">
             &nbsp;</p>
         <p>
             &nbsp;</p>
         <p>
             &nbsp;</p>
         <p>
             &nbsp;</p>
         <p>
             
             &nbsp;</p>
        </div>
         <p>
             <asp:TextBox ID="TextBox_Quantity" runat="server" CssClass="auto-style13" TextMode="Number"></asp:TextBox></p>
         <p>
             <asp:Label ID="Label1" runat="server" CssClass="auto-style17" Text="Quantity" Height="41px"></asp:Label>
             </br>

          
         </p>
         <p>
             &nbsp;</p>
         <p class="auto-style15">
             <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Height="43px" Text="Add to cart" OnClick="Button_Addtocart_Click" />
             </p>
         <p>
             &nbsp;</p>
         <p>
             &nbsp;</p>
         <p>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </p>
         <p class="auto-style10">
            
         </p>
         <p>
             &nbsp;</p>
        <div class="auto-style10">
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table class="auto-style12">
                        <tr>
                            <td><asp:ImageButton runat="server" ID="ThumbNail" ImageURL='<%# GenImageURL(Eval("ISBN").ToString()) %>' width="100" height="110" OnClick="image_Click"/></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
               
            </asp:DataList>
            </div>
        <div class="auto-style15">
        </div>
         <p class="auto-style10">
             &nbsp;</p>
         </div>
    </form>
</body>
</html>
