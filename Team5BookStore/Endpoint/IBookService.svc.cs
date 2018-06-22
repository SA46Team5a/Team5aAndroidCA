using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using Team5BookStore.Models;

namespace Team5BookStore.Endpoint
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IBookService" in both code and config file together.
    [ServiceContract]
    public interface IBookService
    {
        [OperationContract]
        [WebGet(UriTemplate = "/Books/{ISBN}", ResponseFormat = WebMessageFormat.Json)]
        WCF_Book GetBookByISBN(string ISBN);

        [OperationContract]
        [WebGet(UriTemplate = "/Books/", ResponseFormat = WebMessageFormat.Json)]
        List<WCF_Book> GetAllBooks();

        [OperationContract]
        [WebGet(UriTemplate = "/Books/Category/{CategoryID}", ResponseFormat = WebMessageFormat.Json)]
        List<WCF_Book> GetBooksByCategory(string CategoryID);

        [OperationContract]
        [WebGet(UriTemplate = "/Books/Search/{searchterm}", ResponseFormat = WebMessageFormat.Json)]
        List<WCF_Book> SearchBooksByTitle(string searchterm);
    }

    [DataContract]
    public class WCF_Book
    {
        [DataMember] public string ISBN;
        [DataMember] public string Title;
        [DataMember] public string AuthorName;
        [DataMember] public int CategoryID;
        [DataMember] public string CategoryName;
        [DataMember] public decimal Price;
        [DataMember] public decimal DiscountedPrice;
        [DataMember] public int StockLevel;
        [DataMember] public string Synopsis;

        public WCF_Book(Book book)
        {
            ISBN = book.ISBN;
            AuthorName = book.Author.AuthorName;
            Title = book.Title;
            CategoryID = book.Category.CategoryID;
            CategoryName = book.Category.CategoryName;
            Price = book.Price;
            DiscountedPrice = book.DiscountedPrice is null ? book.Price : (decimal)book.DiscountedPrice;
            StockLevel = book.StockLevel;
            Synopsis = book.Synopsis;
        }
    }
}
