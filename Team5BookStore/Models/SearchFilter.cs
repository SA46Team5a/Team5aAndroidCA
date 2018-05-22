using System.Collections.Generic;

namespace Team5BookStore.Models
{
    public class SearchFilter
    {
        public List<Category> Categories { get; }
        public bool Discount { get; }
        public string SearchTerm { get; }

        public SearchFilter (List<int> categoryIDs, bool discount, string searchTerm)
        {
            foreach (int catID in categoryIDs)
            {
                Categories.Add(CategoryModel.GetCategoryByID(catID));
            }
            Discount = discount;
            SearchTerm = searchTerm;
        }
    }
}