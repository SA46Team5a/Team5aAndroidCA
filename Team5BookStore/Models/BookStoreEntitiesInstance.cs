using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Team5BookStore.Models
{
    partial class BookStoreEntities
    {
        private static BookStoreEntities instance;

        public static BookStoreEntities Instance
        {
            get
            {
                if (instance is null)
                {
                    instance = new BookStoreEntities();
                }
                return instance;
            }
        }
    }
}
