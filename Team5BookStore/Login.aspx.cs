using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
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

        protected void Login1_LoggedIn(object sender, EventArgs e)
        {
            if (Login1.UserName == "Anthony")
            {
                Session[Constants.IS_BOSS] = true;
                Response.Redirect("~/OwnerPg.aspx");
            }
            Session[Constants.USER_ID] = Login1.UserName;
            Response.Redirect("~/BookListing.aspx");

        }
    }
}
