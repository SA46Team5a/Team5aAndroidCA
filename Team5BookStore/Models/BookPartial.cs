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
        public decimal? DiscountedPrice { get; set; }
    }
}
