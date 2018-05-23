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
            left: 270px;
            top: -5px;
            width: 160px;
            height: 111px;
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
            left: 334px;
            top: -400px;
            height: 37px;
            width: 105px;
            margin-right: 0px;
        }
        .auto-style13 {
            position: absolute;
            left: 480px;
            top: -400px;
            height: 38px;
            width: 105px;
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
            left: 320px;
            top: 128px;
            height: 38px;
            width: 129px;
            bottom: 526px;
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
            top: -318px;
            height: 64px;
            width: 181px;
        }
       
        .auto-style26 {
            position: absolute;
            left: 269px;
            top: 212px;
            width: 169px;
            height: 115px;
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
       
      
        .newStyle11 {
            position: absolute;
        }
        .newStyle12 {
            position: absolute;
        }
        .auto-style32 {
            position: absolute;
            left: 342px;
            top: 310px;
            height: 258px;
            width: 503px;
        }
        .auto-style33 {
            position: absolute;
            top: 354px;
            left: -25px;
            height: 49px;
            width: 180px;
            text-align: left;
        }
        .auto-style34 {
            position: absolute;
            right: 388px;
            top: 359px;
            height: 224px;
            width: 174px;
        }
        .auto-style35 {
            position: absolute;
            right: 348px;
            top: 359px;
            height: 90px;
            width: 184px;
        }
        .auto-style36 {
            position: absolute;
            top: 414px;
            left: -25px;
            width: 180px;
            height: 64px;
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

             <br/>
            <asp:Label ID="Label_Recommendedbooks" runat="server" CssClass="auto-style25" Text="Recommended books"></asp:Label>
            </p>
          </div>
     

             
     
             &nbsp;<div class="auto-style20">
      
         <p class="auto-style22">
        
    
             
            
        
    
             <asp:Image ID="Image10" runat="server" ImageUrl="~/Resources/AdImages/Sentosa.jpg" CssClass="auto-style8" />
             <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style23" NavigateUrl="https://www.sentosa.com.sg/" BackColor="White" BorderColor="#993333" ForeColor="#993333" Font-Size="Small" Font-Underline="True">Sentosa</asp:HyperLink>
        
    
             
            
        
    
             
        
    
             
            
        
    
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
             2<asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style35" ForeColor="#993333" NavigateUrl="https://www.iss.nus.edu.sg/" Font-Size="Small" Font-Underline="True">Come and join us</asp:HyperLink>
       
            <asp:Button ID="Button_Addtocart" runat="server" BackColor="#FFCC99" CssClass="auto-style33" ForeColor="#993333" OnClick="Button_Addtocart_Click1" Text="Add to cart" BorderStyle="Solid" BorderWidth="3px" />
             <asp:Image ID="Image11" runat="server" CssClass="auto-style26" ImageUrl="~/Resources/AdImages/NUS_ISS.jpg" />
       
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox_Quantity" CssClass="auto-style36" ErrorMessage="The quantity should within 1-50" ForeColor="#993333" MaximumValue="50" MinimumValue="1" style="margin-right: 0px" Type="Integer" Font-Size="Small"></asp:RangeValidator>
             </p>
        </div>
         <p>
             &nbsp;</p>
         <p>
             <br />
          
         </p>
         <p>
             &nbsp;</p>
         
        <div class="auto-style10">
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" CssClass="auto-style19" Height="16px" Width="431px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" EnableViewState="False">
                <ItemTemplate>
                    <table class="auto-style12">
                        <tr>
                            <td><asp:ImageButton runat="server" ID="ThumbNail" ImageURL='<%# GenImageURL(Eval("ISBN").ToString()) %>'  width="100" height="110" OnClick="image_Click" Value='<%#Eval("ISBN") %>'/></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
               
            </asp:DataList>
       
            <table font-size: medium  class="auto-style32"

                 id="Table_BookDetails" align="center" style="font-size: x-small;">
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
