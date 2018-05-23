using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team5BookStore
{
    public partial class AllUsers : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Search_Click(object sender, EventArgs e)
        {

        }

        protected void GoToCart(object sender, EventArgs e)
        {
            Response.Redirect("~/ShoppingCart.aspx");
        }

    }
}