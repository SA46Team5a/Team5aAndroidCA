using System.Collections.Generic;
using System.Linq;

namespace Team5BookStore.Models
{
    static class CategoryModel
    {
        private static BookStoreEntities context = BookStoreEntities.Instance;

        public static List<Category> GetCategories()
            => context.Categories.ToList();

        public static Category GetCategoryByID(int id)
            => context.Categories.Where(c => c.CategoryID == id).First();
    }
}