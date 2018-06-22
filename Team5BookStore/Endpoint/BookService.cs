using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Team5BookStore.Models;

namespace Team5BookStore.Endpoint
{
    class BookService : IBookService
    {
        public List<WCF_Book> GetAllBooks()
        {
            List<Book> books = BookModel.GetAllBooks();
            return ConvertBooksToWCF_Books(books);
        }

        public WCF_Book GetBookByISBN(string ISBN)
        {
            Book book = BookModel.GetBookByISBN(ISBN);
            return new WCF_Book(book);
        }

        public List<WCF_Book> GetBooksByCategory(string categoryID)
        {
            if (Int32.TryParse(categoryID, out int catId)) {
                Category category = CategoryModel.GetCategoryByID(catId);
                List<Book> books = BookModel.GetBooksByCategory(category);
                return ConvertBooksToWCF_Books(books);
            }
            return null;
        }

        public List<WCF_Book> ConvertBooksToWCF_Books(List<Book> books)
        {
            List<WCF_Book> convertedBooks = new List<WCF_Book>();
            foreach (Book book in books)
            {
                convertedBooks.Add(new WCF_Book(book));
            }
            return convertedBooks;
        
        }
    }
}
