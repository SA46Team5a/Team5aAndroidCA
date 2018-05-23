using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Team5BookStore.Models
{
    public partial class UserDetail
    {
        [NotMapped]
        public decimal? TotalCartPrice
        {
            get
            {
                return CartItemModel.GetCheckedOutCart(UserName).Select(c => c.TotalPrice).ToList().Sum();
            }
        }
    }
}