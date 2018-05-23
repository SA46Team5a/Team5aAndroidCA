<%@ Page Title="" Language="C#" MasterPageFile="~/AllUsers.Master" AutoEventWireup="true" CodeBehind="Receipts.aspx.cs" Inherits="Team5BookStore.Receipts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
   
     <h1 class="auto-style3" style="background-color: #990000; color: #FFFFFF"> &nbsp;Receipts </h1>   
    <p style ="text-align:center"><asp:Label ID="Label2" runat="server" Text="Label" style="text-align: center" ></asp:Label> </p>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="554px" AutoGenerateRows="False" CellPadding="4" ForeColor="#333333" HorizontalAlign="Center" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField HeaderText="Name" ReadOnly="True" DataField="UserName"/>
                <asp:BoundField HeaderText="Contact" ReadOnly="True" DataField="ContactNumber"/>
                <asp:BoundField HeaderText="Email" ReadOnly="True"  DataField="Email"/>
                <asp:BoundField HeaderText="Total Price" ReadOnly="True"  DataField="TotalCartPrice"/>
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" BorderStyle="None" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
    <br/>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="168px" Width="553px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" style="text-align: center; margin-top: 0px;" HorizontalAlign="Center" ShowHeaderWhenEmpty="True">
            <Columns>
                 <asp:BoundField HeaderText="Item ID" DataField="Book.ISBN" />
                    <asp:BoundField HeaderText="Book Title" DataField="Book.Title"/>
                    <asp:BoundField HeaderText="Quantity" DataField="Quantity"/>
                    <asp:BoundField HeaderText="Unit Price" DataField="FinalPrice"/>
                    <asp:BoundField HeaderText="Amount" DataField="TotalPrice"/>
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
    <style>
        .center {
            text-align:center;
        }
        .bttn
              {
            border:solid #07839f;
           -webkit-border-radius:10px;
           -moz-border-radius:10px;
            border-radius:10px;
              }
        </style>
        <div class="center">
        <asp:Button ID="Button1" runat="server" Text="Back" style="text-align: center" Height="25px" Width="100px" CssClass="bttn" BorderColor="#99CCFF" BackColor="#99CCFF" OnClick="GoBack"/> 
        </div>  
    <p>  </p>
    <p>
     
        &nbsp;</p>
    <p>
     
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Company Details:<br/>ISS book store<br/> Heng Mui Keng Terrace 25 <br/>Singapore 119614 <br/> +65 87666666" style="color: #999999"></asp:Label>
        <br />
    </p>
</asp:Content>
