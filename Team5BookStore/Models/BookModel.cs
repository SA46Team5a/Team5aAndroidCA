using System;
using System.Collections.Generic;
using System.Linq;
using Team5BookStore.Exceptions;

namespace Team5BookStore.Models
{
    static class BookModel
    {
        static private BookStoreEntities context = BookStoreEntities.Instance;


        static public Book GetBookByISBN(string ISBN)
        {

            if (!Int64.TryParse(ISBN, out Int64 x) || !(ISBN.Length == 13))
                throw new InvalidObjectParams("ISBN of book must be a 13-digit numeric string");
            else
            {
                List<Book> books = DiscountBooks(context.Books
                    .Where(b => b.ISBN == ISBN)
                    .ToList());
                if (books.Count > 0)
                    return books.First(b => b.ISBN == ISBN);
                else
                    return null;
            }

        }


        static public List<Book> GetBooksByAuthor(Author author)
            => DiscountBooks(context.Books.Where(b => b.Author == author).ToList());


        static public List<Book> SearchBooks(SearchFilter filter)
        {
            List<Book> searchResult = context.Books.ToList();
            List<Category> categoriesToSearch = filter.Categories;

            if (filter.Discount)
            {
                List<Category> discountedCategories = 
                    DiscountModel.GetOngoingDiscounts()
                    .Select(d => d.Category).ToList();

                // This step removes categories that are not discounted. If any
                // of the discountedCategories is null, it means that all selected
                // categories have to be searched.
                if (!discountedCategories.Contains(null))
                {
                    categoriesToSearch = categoriesToSearch
                        .Where(c => discountedCategories.Any(dc => dc == c))
                        .ToList();
                }
            }

            // Filter by selected categories
            searchResult.Where(b => categoriesToSearch.Any(c => c == b.Category));

            // Only filter by search term if search term is not an empty string
            if (filter.SearchTerm.Length > 0 )
                searchResult.RemoveAll(b => 
                    !b.Title.Contains(filter.SearchTerm) 
                    && !b.Author.AuthorName.Contains(filter.SearchTerm));

            return DiscountBooks(searchResult);
        }

        static public List<Book> DiscountBooks(List<Book> books)
        {
            List<Discount> discounts = DiscountModel.GetOngoingDiscounts();
            
            foreach (Book book in books)
            {
                decimal discountPercent = 1;
                foreach (Discount discount in discounts)
                {
                    if (discount.Category is null || discount.Category == book.Category)
                        discountPercent *= discount.DiscountPercent;
                }
                if (discountPercent == 1)
                    book.DiscountedPrice = null;
                else
                    book.DiscountedPrice = book.Price * discountPercent / 100;
            }
            return books;
        }
    }
}
