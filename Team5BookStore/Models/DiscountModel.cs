using System;
using System.Collections.Generic;
using System.Linq;
using Team5BookStore.Exceptions;

namespace Team5BookStore.Models
{
    static class DiscountModel
    {
        private static BookStoreEntities context = BookStoreEntities.Instance;

        public static List<Discount> GetOngoingDiscounts()
        {
            DateTime today = DateTime.Now;
            return context.Discounts
                .Where(d => d.StartDate <= today && today <= d.EndDate)
                .ToList();
        }

        public static void AddDiscount(Category category, DateTime startDate,
            DateTime endDate, decimal discountPercent)
        {
            if (startDate > endDate)
                throw new InvalidObjectParams("Discount start date should be before end date");
            else if (discountPercent < 0 || discountPercent > 100) 
                throw new InvalidObjectParams("Discount percent should be between 0 and 100");
            else
            {
                Discount discount = new Discount();
                discount.Category = category;
                discount.StartDate = startDate;
                discount.EndDate = endDate;
                discount.DiscountPercent = Math.Round(discountPercent, 2);
                context.Discounts.Add(discount);
                context.SaveChanges();
            }
        }
    }
}