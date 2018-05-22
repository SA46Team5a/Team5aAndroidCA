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
                return Carts.Last().CartItems.Select(ci => ci.FinalPrice).Sum();
            }
        }
    }
}