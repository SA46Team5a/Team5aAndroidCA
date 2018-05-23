
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace Team5BookStore
{
    public static class MasterPagePicker
    {
        public static string Picker(Page page)
        {
            if (page.Session[Constants.USER_ID] != null)
                return "~/AllUsers.Master";
            else
                return "~/AnonUsers.Master";
        }
      
    }
}