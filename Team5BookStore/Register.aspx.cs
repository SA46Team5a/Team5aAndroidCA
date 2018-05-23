using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Team5BookStore.Models;

namespace Team5BookStore
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            string sUsername = CreateUserWizard1.UserName;
            string sEmail = CreateUserWizard1.Email;
            string sName = CreateUserWizard1.Answer;
            string sContact = CreateUserWizard1.Question;
            UserDetailModel.AddNewUser(sUsername,sEmail,sName,sContact);
            Response.Write("<script LANGUAGE='JavaScript' >alert('User registered successfully')</script>");
            Response.Redirect("~/Login.aspx");
        }
    }
}