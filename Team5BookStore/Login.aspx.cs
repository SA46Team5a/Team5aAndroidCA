using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team5BookStore
{    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            Session[Constants.USER_ID] = Login1.UserName;
            Response.Redirect("~/BookListing.aspx");
        }
    }
}