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
            Label2.Text = DateTime.Now.ToString();
            if (!IsPostBack)
            {
                string username = Session[Constants.USER_ID].ToString();
                GridView1.DataSource = CartItemModel.GetCartItems(username);
                GridView1.DataBind();
                List<UserDetail> user = new List<UserDetail>();
                user.Add(UserDetailModel.GetUserByUserName(username));
                DetailsView1.DataSource = user;
                DetailsView1.DataBind();
            }
        }

        protected void GoBack(object sender, EventArgs e)
            => Response.Redirect("~/BookListings");
    }
}