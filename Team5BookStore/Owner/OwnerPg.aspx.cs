using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Team5BookStore.Models;

namespace Team5BookStore
{
    public partial class OwnerPg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        private void BindGrid()
        {
            BookStoreEntities book = new BookStoreEntities();
            GridView1.DataSource = book.Books.ToList();
            GridView1.DataBind();
            
        }
        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            String ISBN = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
            decimal price = decimal.Parse((row.FindControl("TextBox1") as TextBox).Text);
            int stock =Int32.Parse((row.FindControl("TextBox2") as TextBox).Text);
            
            BookModel.Updatebook(ISBN,price,stock);
            GridView1.EditIndex = -1;
            BindGrid();
        }
        


        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindGrid();
        }



    }
}