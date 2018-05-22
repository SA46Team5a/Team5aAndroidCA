using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Team5BookStore.Models
{
    public partial class CartItem
    {
        [NotMapped]
        public decimal? FinalPrice
        {
            get
            {
                return Book.DiscountedPrice is null ? Book.Price : Book.DiscountedPrice;
            }
        }
        public decimal? TotalPrice
        {
            get
            {
                return FinalPrice * Quantity;
            }
        }
    }
}