<%@ Page Title="" Language="C#" MasterPageFile="~/AllUsers.Master" AutoEventWireup="true" CodeBehind="Receipts.aspx.cs" Inherits="Team5BookStore.Receipts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
     <h1 class="auto-style3"> &nbsp;Receipts </h1>            
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="554px" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" HorizontalAlign="Center">
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField HeaderText="Name" ReadOnly="True" />
                <asp:BoundField HeaderText="Contact" ReadOnly="True" />
                <asp:BoundField HeaderText="Shipping Address" ReadOnly="True" />
                <asp:BoundField HeaderText="Total Price" ReadOnly="True" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:DetailsView>
     <div float:left><asp:Image ID="Image1" runat="server" ImageUrl="~/Resources/BookCovers/9780062377210.jpg" /></div>
    <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="168px" Width="553px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" style="text-align: center; margin-top: 0px;" HorizontalAlign="Center">
            <Columns>
                 <asp:BoundField HeaderText="Item ID" DataField="Book.ISBN" />
                    <asp:BoundField HeaderText="Book Title" DataField="Book.Title"/>
                    <asp:BoundField HeaderText="Quantity" DataField="Quantity"/>
                    <asp:BoundField HeaderText="Unit Price" DataField="Book.Price"/>
                    <asp:BoundField HeaderText="Amount"/>
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
    <p>
     
        &nbsp;</p>
    <p>
     
        &nbsp;</p>
    <p>
     
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Company Details: <br/> ISS book store<br/> Heng Mui Keng Terrace 25<br/>Singapore 119614 <br/> +65 87666666" style="color: #999999"></asp:Label>
        <br />
    </p>
</asp:Content>
