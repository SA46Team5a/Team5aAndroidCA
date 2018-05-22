using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Team5BookStore.Models;
using System.Data.SqlClient;

namespace Team5BookStore
{
    public partial class BookDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string isbn = "9780062390851";

            if (!IsPostBack) {
                // Session[Constants.ISBN].ToString();
                if (isbn != null)
                {

                    Book b = BookModel.GetBookByISBN(isbn);
                    Label_Author.Text = b.Author.AuthorName;
                    Label_Title.Text = b.Title;
                    Label_Category.Text = b.Category.CategoryName;
                    Label_ISBN.Text = b.ISBN;
                    Label_Price.Text = b.Price.ToString();
                    Label_Discount.Text = b.Price.ToString();
                    Label_Synopsis.Text = b.Synopsis;
                    Image1.ImageUrl = "~/Resources/BookCovers/" + isbn.ToString() + ".jpg";

                
                    List<Book> list = BookModel.GetBooksByAuthor(b.Author);
                    DataList1.DataSource = list;
                    DataList1.DataBind();
                }

                //Session["isbn"] = ((ImageButton)sender).ImageUrl.Split('.').First().Split('/').Last();






                //BookModel bm = new BookModel();
                //Book book = bm.GetBookByISBN(isbn);
                //string value = Request.QueryString(BookDetails.ISBN);

                //Response.Write(value);
            }

        }

            protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button_Addtocart_Click(object sender, EventArgs e)
        {
            
                BookStoreEntities context = new BookStoreEntities();
                CartItem c = new CartItem();
                c.ISBN = Label_ISBN.Text;
                c.Quantity = Convert.ToInt32(TextBox_Quantity.Text);
                c.TimeAdded = DateTime.Now;

                context.CartItems.Add(c);
                context.SaveChanges();


         
            
        }
            
        
        protected string GenImageURL(object isbn)
            => "~/Resources/BookCovers/" + isbn.ToString() + ".jpg";
       
      protected void image_Click(object sender, EventArgs eventArgs )
        {
            
            Response.Redirect("BookDetails.aspx");
        }
    }
}

