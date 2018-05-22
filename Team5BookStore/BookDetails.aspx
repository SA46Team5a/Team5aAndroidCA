<%@ Page Title="" Language="C#" MasterPageFile="~/AllUsers.Master" AutoEventWireup="true" CodeBehind="BookDetails.aspx.cs" Inherits="Team5BookStore.BookDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        
        .test{
            color:coral;
            background-color:white;
            border:thick;
            border-color:brown;

        }
        .table{
            background-color:antiquewhite;
            border-color:antiquewhite;
            border:thick;
            border-color:brown;
        }
        
        .auto-style5 {
            position: absolute;
            z-index: auto;
            left: 10px;
            top: 1070px;
            width: 215px;
        }
      
        .auto-style7 {
            position: absolute;
            left: 363px;
            top: 347px;
        }
        .auto-style8 {
            position: absolute;
            left: 254px;
            top: -5px;
            width: 176px;
            height: 223px;
        }
     
        h1 {
            text-align: center;
            color:white;
            background-color:#873a3a;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:large;
        }
        .auto-style17 {
            position: absolute;
            left: 470px;
            top: -355px;
            height: 40px;
            width: 138px;
            margin-right: 0px;
        }
        .auto-style13 {
            position: absolute;
            left: 627px;
            top: -364px;
            height: 39px;
            width: 187px;
            margin-bottom: 0px;
             border: solid #07839f;
                    -webkit-border-radius: 10px;
                    -moz-border-radius: 10px;
                    /*-ms-border-radius: 10px;
                    -o-border-radius: 10px;*/
                    border-radius: 10px;
        }
        .auto-style18 {
            position: absolute;
            left: 0px;
            top: -756px;
            height: 282px;
            width: 294px;
        }
        .auto-style19 {
            margin-top: 369px;
        }
        .auto-style20 {
            position: absolute;
            left: 686px;
            top: 315px;
            height: 692px;
            margin-left: 0px;
            margin-right: 0px;
            width: 818px;
        }
      
        
        .newStyle8 {
            position: absolute;
            top: 472px;
            left: -51px;
            height: 41px;
            width: 616px;
            text-align: left;
        }
        .auto-style23 {
            position: absolute;
            left: 277px;
            top: 242px;
            height: 34px;
            width: 85px;
            bottom: 632px;
        }
        .h1 {
            position: absolute;
            color:white;
            background-color:#873a3a;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:large;
            height:50px;

        }
        
       
        .auto-style25 {
            position: absolute;
            left: 35px;
            top: -383px;
            height: 89px;
            width: 181px;
        }
       
        .auto-style26 {
            position: absolute;
            left: 257px;
            top: 320px;
            width: 175px;
            height: 167px;
        }
       
        .auto-style27 {
            position: absolute;
            color: white;
            background-color: #873a3a;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size: large;
            left: 23px;
            top: 181px;
            width: 1118px;
            height: 61px;
        }
        .auto-style31 {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            width: 285px;
        }
       
       
      
        .newStyle9 {
            position: absolute;
        }
        .newStyle10 {
            position: absolute;
        }
       
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style10" style="border-style: solid; border-width: thin; font-size: 30px">
         <h1 class="auto-style27" style="font-size: 58px; font-weight: bold; font-style: inherit; background-color: #990000;" aria-dropeffect="none">Book Details</h1>
        <div class="auto-style5">

          
            <div>
            <asp:Image ID="Image_BookImage" runat="server" CssClass="auto-style18" />
            <br />
            <p class="auto-style9">
             <asp:Label ID="Label_Quantity" runat="server" CssClass="auto-style17" Text="Quantity:" BorderColor="#990033" Font-Bold="True" ForeColor="#993333"></asp:Label>
             <asp:TextBox ID="TextBox_Quantity" runat="server" CssClass="auto-style13" TextMode="Number" BackColor="#FFCC99" BorderColor="#993333" BorderStyle="Solid" ForeColor="Black"></asp:TextBox></p>
                <p class="auto-style9">
                    &nbsp;</p>

            </div>
 <p class="auto-style9">
 
             </p>

            <br />
        <p aria-autocomplete="both" style="margin-top: 19px">

             </br>
            <asp:Label  ID="Label_Recommendedbooks" ForeColor="#993300" Font-Bold="true" Font-Size="Larger" Font-Italic="true"  runat="server" CssClass="auto-style25" Text="Recommended books"></asp:Label>
            </p>
         <p aria-autocomplete="both" class="auto-style7" style="margin-top: 19px">
             &nbsp;</p>
                 
         </br>
          </div>
     

             </br>
     
             &nbsp;<div class="auto-style20">
      
         <p class="auto-style22">
        
    
             
            
        
    
             <asp:Image ID="Image10" runat="server" ImageUrl="~/Resources/AdImages/Sentosa.jpg" CssClass="auto-style8" />
             <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style23" NavigateUrl="https://www.sentosa.com.sg/" BackColor="White" BorderColor="#993333" ForeColor="#993333">Sentosa</asp:HyperLink>
        
    
             
            
        
    
             
        
    
             
            
        
    
         </p>
        <div class="auto-style34">
        </div>
             <p class="auto-style22" style="border-color: #993333">
        
    
             
            
        
    
                 &nbsp;</p>
         <p class="auto-style10" property="og:image" style="font-size: x-small">
             &nbsp;</p>
         <p>
             &nbsp;</p>
         <p>
             <asp:Image ID="Image11" runat="server" CssClass="auto-style26" ImageUrl="~/Resources/AdImages/NUS_ISS.jpg" />
             2<asp:HyperLink ID="HyperLink3" runat="server" CssClass="newStyle10" ForeColor="#993333" NavigateUrl="https://www.iss.nus.edu.sg/" style="right: 388px; top: 519px; height: 64px; width: 174px">Come and join us</asp:HyperLink>
       
            <asp:Button ID="Button_Addtocart" runat="server" BackColor="#FFCC99" CssClass="newStyle8" ForeColor="Black" OnClick="Button_Addtocart_Click1" style="width: 197px" Text="Add to cart" />
             </p>
        </div>
         <p>
             &nbsp;</p>
         <p>
             <br>
             </br>

          
         </p>
         <p>
             &nbsp;</p>
         
        <div class="auto-style10">
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" CssClass="auto-style19" Height="16px" Width="431px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
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
       
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox_Quantity" CssClass="newStyle9" ErrorMessage="The quantity should within 1-50" ForeColor="#993333" MaximumValue="50" MinimumValue="1" style="top: 841px; left: 640px; width: 251px; height: 62px; margin-right: 0px" Type="Integer"></asp:RangeValidator>
            <table font-size: medium  class="newStyle15"

                 id="Table_BookDetails" align="center" style="position: absolute; top: 310px; left: 343px; height: 287px; width: 536px; font-size: small;">
  <tr>
    <th class="auto-style31" style="border-color: #993333; border-style: solid; background-color: #FFCC99;"  >Author:<asp:Label ID="Label_Author" runat="server" Text="Author" Font-Bold="False"></asp:Label>
      </th> 
  </tr>
  <tr>
    <td class="auto-style31" style="border-color: #993333; border-style: solid; background-color: #FFCC99;">Title&nbsp;&nbsp; <asp:Label ID="Label_Title" runat="server" Text="Title"></asp:Label>
      </td> 
  </tr>
  <tr>
    <td class="auto-style31" style="border-color: #993333; border-style: solid; background-color: #FFCC99;">Category:<asp:Label ID="Label_Category" runat="server" Text="Category"></asp:Label>
      </td>
  </tr>
  <tr>
    <td class="auto-style31" style="border-color: #993333; border-style: solid; background-color: #FFCC99;">ISBN number:<asp:Label ID="Label_ISBN" runat="server" Text="ISBN number"></asp:Label>
      </td> 
  </tr>
    <tr>
    <td class="auto-style31" style="border-color: #993333; border-style: solid; background-color: #FFCC99;">Price:<asp:Label ID="Label_Price" runat="server" Text="Price"></asp:Label>
        </td> 
  </tr>
                <tr>
    <td class="auto-style31" style="border-color: #993333; border-style: solid; background-color: #FFCC99;">Discount:<asp:Label ID="Label_Discount" runat="server" Text="Discount"></asp:Label>
        </td> 
  </tr>
                <tr>
    <td class="auto-style31" style="border-color: #993333; border-style: solid; background-color: #FFCC99;">Synopsis:<asp:Label ID="Label_Synopsis" runat="server" Text="Synopsis"></asp:Label>
        </td> 
  </tr>
               

</table>
            </div>
         </div>
</asp:Content>
