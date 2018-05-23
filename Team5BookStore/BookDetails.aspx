<%@ Page Title="" Language="C#" MasterPageFile="~/AllUsers.Master" AutoEventWireup="true" CodeBehind="BookDetails.aspx.cs" Inherits="Team5BookStore.BookDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #container {
            display: grid;
            grid-template-columns: 3fr 3fr 3fr;
            grid-template-areas: 'book_header book_header  book_header '
                                 'book_cover  book_details ad_column'
                                 'book_cover  controls     c           '
                                 'recommended_books_label b            d           '
                                 'recommended_books       recommended_books        recommended_books       ';
            grid-row-gap: 50px;
        } 
     
        #book_header { grid-area: book_header;
                         align-self: center;
        }
        #book_cover  { grid-area: book_cover; }
        #book_details { grid-area: book_details;
                        font-size: 150%;
        }
        #Table_BookDetails {
            text-align: center;
        }
        #ad_column   { grid-area: ad_column;}
        #controls    { 
            grid-area: controls;
            font-size: 150%;
            font-size: 150%
        }
        #recommended_books_label { grid-area: recommended_books_label;}
        #recommended_books { 
            grid-area: recommended_books;
            width: 80%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <div class="grid_item" id="book_header" style="border-style: solid; border-width: thin; font-size: 30px">
            <h1 style="font-size: 58px; font-weight: bold; font-style: inherit; background-color: #990000;" aria-dropeffect="none">Book Details</h1>
        </div>
        <div class="grid_item" id="book_cover">
            <asp:Image ID="Image_BookImage" runat="server" />

        </div>
        <div class="grid_item" id="ad_column">
            <asp:Image ID="Image10" runat="server" ImageUrl="~/Resources/AdImages/Sentosa.jpg" />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.sentosa.com.sg/" BackColor="White" BorderColor="#993333" ForeColor="#993333" Font-Size="Small" Font-Underline="True">Sentosa</asp:HyperLink>
            <asp:Image ID="Image1" runat="server" CssClass="auto-style26" ImageUrl="~/Resources/AdImages/NUS_ISS.jpg" />
            <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="#993333" NavigateUrl="https://www.iss.nus.edu.sg/" Font-Size="Small" Font-Underline="True">Come and join us</asp:HyperLink>
        </div>
        <div class="grid_item" id="controls">
            <p>
                <asp:Label ID="Label_Quantity" runat="server" Text="Quantity:" BorderColor="#990033" Font-Bold="True" ForeColor="#993333"></asp:Label>
                <asp:TextBox ID="TextBox_Quantity" runat="server" TextMode="Number" BackColor="#FFCC99" BorderColor="#993333" BorderStyle="Solid" ForeColor="Black"></asp:TextBox>
            </p>
            <asp:Button ID="Button_Addtocart" runat="server" BackColor="#FFCC99" ForeColor="#993333" OnClick="Button_Addtocart_Click1" Text="Add to cart" BorderStyle="Solid" BorderWidth="3px" />
            <asp:Image ID="Image11" runat="server" ImageUrl="~/Resources/AdImages/NUS_ISS.jpg" />
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox_Quantity" ErrorMessage="The quantity should within 1-50" ForeColor="#993333" MaximumValue="50" MinimumValue="1" Style="margin-right: 0px" Type="Integer" Font-Size="Small"></asp:RangeValidator>
        </div>
        <div class="grid_item" id="recommended_books_label">
             <asp:Label ID="Label_Recommendedbooks" runat="server" Text="Recommended books"></asp:Label>
        </div>
        <div class="grid_item" id="recommended_books">
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" Height="16px" Width="431px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" EnableViewState="False">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <asp:ImageButton runat="server" ID="ThumbNail" ImageUrl='<%# GenImageURL(Eval("ISBN").ToString()) %>' Width="100" Height="110" OnClick="image_Click" Value='<%#Eval("ISBN") %>' />
                            </td>
                        </tr>
                        <tr>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>

        <div class="grid_item" id="book_details">
            <table id="Table_BookDetails" >
                <tr>
                    <th style="border-color: #993333; border-style: solid; background-color: #FFCC99;">Author:<asp:Label ID="Label_Author" runat="server" Text="Author" Font-Bold="False"></asp:Label>
                    </th>
                </tr>
                <tr>
                    <td style="border-color: #993333; border-style: solid; background-color: #FFCC99;">Title: 
                        <asp:Label ID="Label_Title" runat="server" Text="Title"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-color: #993333; border-style: solid; background-color: #FFCC99;">Category:<asp:Label ID="Label_Category" runat="server" Text="Category"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-color: #993333; border-style: solid; background-color: #FFCC99;">ISBN number:<asp:Label ID="Label_ISBN" runat="server" Text="ISBN number"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-color: #993333; border-style: solid; background-color: #FFCC99;">Price:<asp:Label ID="Label_Price" runat="server" Text="Price"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-color: #993333; border-style: solid; background-color: #FFCC99;">Discount:<asp:Label ID="Label_Discount" runat="server" Text="Discount"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-color: #993333; border-style: solid; background-color: #FFCC99;">Synopsis:<asp:Label ID="Label_Synopsis" runat="server" Text="Synopsis"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
