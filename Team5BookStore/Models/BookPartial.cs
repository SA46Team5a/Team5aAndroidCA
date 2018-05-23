using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Team5BookStore.Models
{
    partial class Book
    {
        [NotMapped]
        public decimal? DiscountedPrice
        {
            get
            {
                DateTime today = DateTime.Now;
                List<Discount> discounts = Category.Discounts
                    .Where(d => d.StartDate <= today && today <= d.EndDate)
                    .ToList();

                discounts.AddRange(
                        DiscountModel.GetOngoingDiscounts().Where(d => d.Category is null)
                    );

                decimal discountPercent = 1;
                if (discounts.Count > 0)
                {

                    foreach (Discount discount in discounts)
                    {
                        discountPercent *= discount.DiscountPercent;
                    }
                    return Price * (100 - discountPercent) /100;
                }
                else
                    return null;
            }
            set
            {
                DiscountedPrice = value;
            }
        }
        [NotMapped]
        public int StockExcludingInCarts
        {
            get
            {
                int totalInCart = CartItems
                    .Where(ci => !ci.Cart.CheckedOut)
                    .Select(ci => ci.Quantity).ToList().Sum();

                return StockLevel - totalInCart;
            }
        }
    }
}
