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
        protected void Page_PreInit(object sender, EventArgs e)
        {
            MasterPageFile = MasterPagePicker.Picker(this);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //String isbn=Session[Constants.ISBN].ToString();
            string isbn = "9781484746424";

            //if (!IsPostBack)
            //{
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

                    List<Book> list = BookModel.GetBooksByCategory(b.Category);
                    DataList1.DataSource = list;
                    DataList1.DataBind();
                   
                //}
            }
        }
        protected string GenImageURL(object isbn)
                   => "~/Resources/BookCovers/" + isbn.ToString() + ".jpg";

        protected void image_Click(object sender, EventArgs eventArgs)
        {
            Session[Constants.ISBN] = ((ImageButton)sender).Attributes["Value"];
            Response.Redirect("BookDetails.aspx");
           
        }

            protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button_Addtocart_Click1(object sender, EventArgs e)
        {
            if (Session[Constants.USER_ID] is null)
            { 
                Session[Constants.REDIRECT_BOOK] = Label_ISBN.Text;
                Response.Redirect("~/Login.aspx");
            }
            else
            { 
                CartItemModel.AddToCart(Label_ISBN.Text, Session[Constants.USER_ID].ToString(), Convert.ToInt32(TextBox_Quantity.Text));
                Response.Write("<script LANGUAGE='JavaScript' >alert('Book added successful')</script>");
                TextBox_Quantity.Text = "";
            }
        }
    }
       }
    
