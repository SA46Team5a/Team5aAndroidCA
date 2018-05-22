using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Team5BookStore.Models;

namespace Team5BookStore
{
    public partial class BookDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string isbn = Session[Constants.ISBN].ToString();

            if (!IsPostBack)
            {
                // Session[Constants.ISBN].ToString();
                if (isbn != null)
                {

               
                    Book b = BookModel.GetBookByISBN(isbn);
                    Label_Author.Text = b.Author.AuthorName;
                    Label_Title.Text = b.Title;
                    Label_Category.Text = b.Category.CategoryName;
                    Label_ISBN.Text = b.ISBN;
                    Label_Price.Text = b.Price.ToString();
                    Label_Discount.Text = b.DiscountedPrice.ToString();
                    Label_Synopsis.Text = b.Synopsis;
                    Image_BookImage.ImageUrl = "~/Resources/BookCovers/" + isbn.ToString() + ".jpg";

                    List<Book> list = BookModel.GetBooksByAuthor(b.Author);
                    DataList1.DataSource = list;
                    DataList1.DataBind();
                   
                }
            }
        }
        protected string GenImageURL(object isbn)
                   => "~/Resources/BookCovers/" + isbn.ToString() + ".jpg";



    protected void image_Click(object sender, EventArgs eventArgs)
                {

                    Response.Redirect("BookDetails.aspx");
                }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button_Addtocart_Click1(object sender, EventArgs e)
        {
            CartItemModel.AddToCart(Label_ISBN.Text, "Benjam62", Convert.ToInt32(TextBox_Quantity.Text));
            Response.Write("<script LANGUAGE='JavaScript' >alert('Book added successful')</script>");
        }
    }
       }
    
