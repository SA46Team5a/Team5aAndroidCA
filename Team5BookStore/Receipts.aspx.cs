using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Team5BookStore.Models;

namespace Team5BookStore
{
    public partial class Receipts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BookStoreEntities context = BookStoreEntities.Instance;
                GridView1.DataSource = context.CartItems.ToList();
                GridView1.DataBind();
                DetailsView1.DataSource = context.UserDetails.ToList();
                DetailsView1.DataBind();
            }
        }
    }
}