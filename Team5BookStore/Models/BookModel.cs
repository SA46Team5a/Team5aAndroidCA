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
            if (!(ISBN.Length == 13) || !Int64.TryParse(ISBN, out Int64 x))
                throw new InvalidObjectParams("ISBN of book must be a 13-digit numeric string");
            else
            {
                List<Book> books = context.Books
                    .Where(b => b.ISBN == ISBN)
                    .ToList();
                if (books.Count > 0)
                    return books.First(b => b.ISBN == ISBN);
                else
                    return null;
            }

        }

        static public List<Book> GetAllBooks()
            => context.Books.ToList();

        static public List<Book> GetBooksByAuthor(Author author)
            => context.Books.Where(b => b.Author.AuthorID == author.AuthorID).ToList();

        static public List<Book> SearchBooks(SearchFilter filter)
        {
            List<Book> searchResult = new List<Book>();
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
            if (categoriesToSearch.Count > 0)
                categoriesToSearch.ForEach(c => searchResult.AddRange(c.Books));
            else if (!filter.Discount)
                searchResult.AddRange(GetAllBooks());

            // Only filter by search term if search term is not an empty string
            if (filter.SearchTerm.Length > 0 )
                searchResult.RemoveAll(b => 
                    !b.Title.Contains(filter.SearchTerm) 
                    && !b.Author.AuthorName.Contains(filter.SearchTerm));

            return searchResult;
        }
    }
}
