using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Team5BookStore.Models;

namespace Team5BookStore
{
    public partial class BookListing : System.Web.UI.Page
    {
        
       
        BookStoreEntities book = new BookStoreEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Button masterButton = (Button)Master.FindControl("search");
            masterButton.Click += masterButton_Click1;
           

            if (!IsPostBack)
            {
                LoadPg();
               
            }
            //creating page hyperlink at each postback
            PagedDataSource pg = new PagedDataSource();
            using (BookStoreEntities b = new BookStoreEntities())
            {
                pg.DataSource = b.Books.ToList();
                pg.AllowPaging = true;
                pg.PageSize = 10;
                for (int i = 0; i < pg.PageCount; i++)
                {
                    int j = i + 1;
                    LinkButton LButton = new LinkButton();
                    LButton.Text = "[" + j + "]";
                    LButton.Click += LButton_Click;

                    PlaceHolder1.Controls.Add(LButton);
                }
            }

        }

        private void masterButton_Click1(object sender, EventArgs e)
        {
            //check search condition
            
                List<int> selectedCategories = new List<int>();
                if (ChildenCheckBox.Checked)
                    selectedCategories.Add(1);
                if (FinanceCheckBox.Checked)
                    selectedCategories.Add(2);
                if (NonFictionCheckBox.Checked)
                    selectedCategories.Add(3);
                if (TechnicalCheckBox.Checked)
                    selectedCategories.Add(4);
                string searchResult = ((TextBox)Master.FindControl("TextBox1")).Text.ToString();
                SearchFilter s = new SearchFilter(selectedCategories, DiscountCheckBox.Checked, searchResult);
                List<Book> books = BookModel.SearchBooks(s);
            //load search result and display using paging object
                LoadPg(books);
        }

       

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        private void LButton_Click(object sender, EventArgs e)
        {
            using (BookStoreEntities b = new BookStoreEntities())
            {
                PagedDataSource pg = new PagedDataSource();

                pg.DataSource = b.Books.ToList();
                pg.AllowPaging = true;
                pg.PageSize = 10;
                pg.CurrentPageIndex = Int32.Parse(((LinkButton)sender).Text.Trim('[', ']')) - 1;
                DataList1.DataSource = pg;
                DataList1.DataBind();
            }
        }
        public void LoadPg()
        {
            using (BookStoreEntities b = new BookStoreEntities())
            {
                PagedDataSource pg = new PagedDataSource();
                pg.DataSource = b.Books.ToList();
                pg.AllowPaging = true;
                pg.PageSize = 10;
                DataList1.DataSource = pg;
                DataList1.DataBind();
            }
        }
        public void LoadPg(List< Book> list)
        {
            
                PagedDataSource pg = new PagedDataSource();
                pg.DataSource = list;
                pg.AllowPaging = true;
                pg.PageSize = 10;
                DataList1.DataSource = pg;
                DataList1.DataBind();
            
        }
        
        protected void MoreInfoButton_Click(object sender, EventArgs e)
        {
            Session["isbn"] = ((ImageButton)sender).ImageUrl.Split('.').First().Split('/').Last();
            Response.Redirect("BookDetails.aspx");
        }

        protected string GenImageURL(string isbn)
            => "Resources/BookCovers/" + isbn + ".jpg";
        

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "delete")
            {
                Response.Redirect("BookDetails.aspx?isbn=" + e.CommandArgument.ToString());
            }
        }

        protected void SortDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

            using (BookStoreEntities b=new BookStoreEntities())
            {

                if (SortDropDownList.SelectedValue == "0")
                {
                    var qry = from x in b.Books orderby x.Title select x;
                    LoadPg(  qry.ToList());
                 
                }
                if(SortDropDownList.SelectedValue=="1")
                {
                    //var qry = from x in b.Books orderby b.Books.FirstOrDefault().Author.AuthorName select x;
                    //LoadPg(qry.ToList());
                    var qry = (from x in b.Books select x).OrderBy(x=>x.Author.AuthorName);
                    LoadPg(qry.ToList());
                }
                
            }
        }
    }
}