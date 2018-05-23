<%@ Page Title="" Language="C#" MasterPageFile="~/AllUsers.Master" AutoEventWireup="true" CodeBehind="OwnerPg.aspx.cs" Inherits="Team5BookStore.OwnerPg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
            
            OnRowEditing="OnRowEditing" 
            OnRowCancelingEdit="OnRowCancelingEdit"
            OnRowUpdating="OnRowUpdating"
            DataKeyNames="ISBN" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="True"> 
            <Columns>
               
                       <asp:TemplateField>
                           <ItemTemplate>
                               <asp:Label ID="Label2" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                               <br />
                               <asp:Label ID="Label3" runat="server" Text='<%# Eval("Author.AuthorName") %>'></asp:Label>
                               <br />
                               <asp:Label ID="Label5" runat="server" Text='<%# Eval("ISBN") %>'></asp:Label>
                               <br />
                               <asp:Label ID="Label6" runat="server" Text='<%# Eval("Category.CategoryName") %>'></asp:Label>
                               <br />
                           </ItemTemplate>
                       </asp:TemplateField>

                       <asp:TemplateField HeaderText="Price">
                           <ItemTemplate>
                               <asp:TextBox ID="TextBox1" runat="server" EnableViewState="false" Text='<%# Eval("Price") %>'></asp:TextBox>
                           </ItemTemplate>
                       </asp:TemplateField>

                       <asp:TemplateField HeaderText="Stock">
                           <ItemTemplate>
                               <asp:TextBox ID="TextBox2" runat="server" EnableViewState="false" Text='<%# Eval("StockLevel") %>'></asp:TextBox>
                           </ItemTemplate>
                       </asp:TemplateField>

                       
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
            </Columns>
        </asp:GridView>

        <br />
    </div>
</asp:Content>
