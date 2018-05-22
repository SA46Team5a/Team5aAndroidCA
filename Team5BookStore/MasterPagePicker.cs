
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace Team5BookStore
{
    public class MasterPage
    {
        public static void Picker(Page page)
        {
            if (page.Session["UserName"] != null)
                page.MasterPageFile = "~/AllUsers.Master";
            else
                page.MasterPageFile = "~/AnonUsers.Master";
        }
      
    }
}