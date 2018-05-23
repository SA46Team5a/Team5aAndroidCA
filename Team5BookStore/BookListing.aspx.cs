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
        PagedDataSource pg = new PagedDataSource();
        DataList DataList1 = new DataList();

        protected void Page_PreInit(object sender, EventArgs e)
        {
                MasterPagePicker.Picker(this);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Image_ClickEvent(object sender, EventArgs e)
        {
            Session[Constants.ISBN] = ((ImageButton)sender).Attributes["Value"];
            Response.Redirect("BookDetails.aspx");
        }
    }
}