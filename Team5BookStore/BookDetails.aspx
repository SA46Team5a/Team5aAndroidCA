<%@ Page Title="" Language="C#" MasterPageFile="~/AllUsers.Master" AutoEventWireup="true" CodeBehind="BookDetails.aspx.cs" Inherits="Team5BookStore.BookDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .newStyle1 {
            position: absolute;
        }
        .auto-style4 {
            position: absolute;
            left: 415px;
            top: -714px;
            width: 336px;
            height: 230px;
        }
        .newStyle2 {
            position: absolute;
            z-index: auto;
        }
        .auto-style5 {
            position: absolute;
            z-index: auto;
            left: 10px;
            top: 1070px;
            width: 215px;
        }
        .newStyle3 {
            position: absolute;
        }
        .newStyle4 {
            position: absolute;
        }
        .auto-style7 {
            position: absolute;
            left: 363px;
            top: 347px;
        }
        .auto-style8 {
            position: absolute;
            left: 479px;
            top: -14px;
            width: 218px;
            height: 269px;
        }
        .newStyle5 {
            position: absolute;
        }
        .newStyle6 {
            position: absolute;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style16 {
            position: absolute;
            left: 456px;
            top: 865px;
            height: 38px;
            width: 135px;
        }
        .auto-style17 {
            position: absolute;
            left: 401px;
            top: 788px;
            height: 28px;
            width: 122px;
            margin-right: 0px;
        }
        .auto-style13 {
            position: absolute;
            left: 521px;
            top: 787px;
            height: 30px;
            width: 133px;
            margin-bottom: 0px;
        }
        .auto-style18 {
            position: absolute;
            left: 0px;
            top: -764px;
            height: 290px;
            width: 368px;
        }
        .auto-style19 {
            margin-top: 488px;
        }
        .auto-style20 {
            position: absolute;
            left: 356px;
            top: 318px;
            height: 974px;
        }
        .auto-style21 {
            margin-left: 469px;
            margin-top: 355px;
        }
        .auto-style22 {
            text-align: right;
        }
        .newStyle7 {
            position: absolute;
        }
        .newStyle8 {
            position: absolute;
        }
        .auto-style23 {
            position: absolute;
            left: 492px;
            top: 281px;
            height: 28px;
            width: 138px;
            bottom: 665px;
        }
        .newStyle9 {
            position: absolute;
        }
        .auto-style24 {
            position: absolute;
            left: 508px;
            top: 629px;
            width: 171px;
            height: 33px;
        }
        .newStyle10 {
            position: absolute;
        }
        .auto-style25 {
            position: absolute;
            left: 0px;
            top: 71px;
            height: 30px;
        }
        .newStyle11 {
            position: absolute;
        }
        .auto-style26 {
            position: absolute;
            left: 474px;
            top: 705px;
            width: 224px;
            height: 235px;
        }
        .newStyle12 {
            position: absolute;
        }
        .auto-style27 {
            position: absolute;
            left: 487px;
            top: 962px;
            height: 29px;
            width: 206px;
        }
        .auto-style28 {
            width: 219px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style10">
         <h1 class="auto-style9">Book Details</h1>
        <div class="auto-style5">

            
            <asp:Image ID="Image1" runat="server" CssClass="auto-style18" />
             
            
            <br />
            <br />
            <table border="solid" style="margin-top: 0px; " class="auto-style4">
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
    <td>Synopsis:<asp:Label ID="Label_Synopsis" runat="server" Text="Synopsis"></asp:Label>
        </td> 
  </tr>
               

</table>


            <br />

       
&nbsp;<p>
                &nbsp;</p>
        <p aria-autocomplete="both" style="margin-top: 19px">
&nbsp;&nbsp;&nbsp;&nbsp;
             <br/>
            <asp:Label ID="Label_Recommendedbooks" runat="server" CssClass="auto-style25" Text="Recommended books"></asp:Label>
            </p>
         <p aria-autocomplete="both" class="auto-style7" style="margin-top: 19px">
             &nbsp;</p>
         <p aria-autocomplete="both" class="auto-style7" style="margin-top: 19px">
             &nbsp;</p>
         <p aria-autocomplete="both" class="auto-style7" style="margin-top: 19px">
             &nbsp;</p>
         <p aria-autocomplete="both" class="auto-style7" style="margin-top: 19px">
             &nbsp;</p>
        
         
          </div>
     

             
     
             &nbsp;<div class="auto-style20">
      
         <p class="auto-style22">
        
    
             
            
        
    
             <asp:Image ID="Image10" runat="server" ImageUrl="~/Resources/AdImages/Sentosa.jpg" CssClass="auto-style8" />
             <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style23" NavigateUrl="https://www.sentosa.com.sg/">Sentosa</asp:HyperLink>
             <asp:Image ID="Image2" runat="server" ImageUrl="~/Resources/AdImages/NUS_ISS.jpg" CssClass="auto-style21" Height="249px" Width="228px"  />
        
    
             
            
        
    
             
        
    
             
            
        
    
         </p>
         <p class="auto-style10" property="og:image" style="font-size: x-small">
             &nbsp;</p>
         <p>
             <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style24" NavigateUrl="https://www.iss.nus.edu.sg/">Go and join us</asp:HyperLink>
             </p>
         <p>
             <asp:Image ID="Image11" runat="server" CssClass="auto-style26" ImageUrl="~/Resources/AdImages/SingaporeAirline.jpg" />
             </p>
         <p class="auto-style28">
             <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style27" NavigateUrl="http://www.singaporeairline.com">Singapore Airline</asp:HyperLink>
             </p>
         <p>
             
             &nbsp;</p>
        </div>
         <p>
             &nbsp;</p>
         <p>
             <br>
             </br>

          
         </p>
         <p>
             &nbsp;</p>
         <p class="auto-style9">
             <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Text="Add to cart" OnClick="Button_Addtocart_Click" style="margin-left: 0px" />
             </p>
         <p>
             &nbsp;</p>
         <p class="auto-style9">
             <asp:Label ID="Label1" runat="server" CssClass="auto-style17" Text="Quantity"></asp:Label>
             <asp:TextBox ID="TextBox_Quantity" runat="server" CssClass="auto-style13" TextMode="Number"></asp:TextBox></p>
         <p class="newStyle3">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </p>
         <p class="auto-style10">
            
         </p>
         <p>
             &nbsp;</p>
        <div class="auto-style10">
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" CssClass="auto-style19" Height="342px" Width="431px">
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
</asp:Content>
