package com.example.anthony.androidca;

import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;


public class BookModel extends HashMap<String, Object>{

    final static String baseURL="http://172.17.249.19/BookStore/Endpoint/IBookService.svc/Books/";



    public BookModel(String title, String authorName, String categoryName,
                     String isbn, Integer categoryID,Double discountedprice,
                     Double price, Double stockLevel, String synopsis)
    {
        setTitle(title);
        setAuthorName(authorName);
        setcategoryName(categoryName);
        setISBN(isbn);
        setCategoryID(categoryID);
        setDiscountedPrice(discountedprice);
        setPrice(price);
        setStockLevel(stockLevel);
        setSynopsis(synopsis);

    }

    private BookModel() {};

    public String getTitle() {
        return (String) get("Title");
    }

    public void setTitle(String title) {
        put("Title", title);
    }
    public String getAuthorName() {
        return (String) get("AuthorName");
    }

    public void setAuthorName(String authorName) {
        put("AuthorName", authorName);
    }
    public Integer getCategoryID() {
        return (Integer) get("CategoryID");
    }
    public void setCategoryID(Integer categoryID) {
        put("CategoryID", categoryID);
    }

    public String getCategoryName() {
        return (String) get("CategoryName");
    }

    public void setcategoryName(String categoryName) {
        put("CategoryName", categoryName);
    }
    public Double getDiscountedPrice() {
        return (Double) get("DiscountedPrice");
    }

    public void setDiscountedPrice(Double discountedprice) {
        put("DiscountedPrice", discountedprice);
    }
    public Double getPrice() {
        return (Double) get("Price");
    }

    public void setPrice(Double price) {
        put("Price",price);
    }
    public Double getStockLevel() {
        return (Double) get("StockLevel");
    }

    public void setStockLevel(Double stockLevel) {
        put("StockLevel", stockLevel);
    }
    public String getSynopsis() {
        return (String) get("Synopsis");
    }

    public void setSynopsis(String synopsis) {
        put("Synopsis", synopsis);
    }
    public String getISBN() {
        return (String) get("ISBN");
    }

    public void setISBN(String isbn) {
        put("ISBN", isbn);
    }

    public static ArrayList<BookModel> search(String searchResult) {
        ArrayList<BookModel> list = new ArrayList<BookModel>();
        JSONArray a = JSONParser.getJSONArrayFromUrl(baseURL + "Search/" + searchResult);
        try {
            BookModel book;
            for (int i = 0; i<a.length(); i++) {

                    book = new BookModel();
                    JSONObject b = a.getJSONObject(i);
                    book.setTitle(b.getString("Title"));
                    book.setAuthorName(b.getString("AuthorName"));
                    book.setcategoryName(b.getString("CategoryName"));
                    book.setISBN(b.getString("ISBN"));
                    book.setDiscountedPrice(b.getDouble("DiscountedPrice"));
                    book.setPrice(b.getDouble("Price"));
                    book.setCategoryID(b.getInt("CategoryID"));
                    book.setSynopsis(b.getString("Synopsis"));
                    book.setStockLevel(b.getDouble("StockLevel"));

                    list.add(book);



            }
        } catch (Exception e) {
            Log.e("BookModel.list()", "JSONArray error");
        }
        return(list);
    }
    public static BookModel getbook(String isbn) {
        JSONObject b = JSONParser.getJSONFromUrl(baseURL + isbn);
        BookModel book = new BookModel();
        try {
            //BookModel book = new BookModel();

            book.setTitle(b.getString("Title"));
            book.setAuthorName(b.getString("AuthorName"));
            book.setcategoryName(b.getString("CategoryName"));
            book.setISBN(b.getString("ISBN"));
            book.setDiscountedPrice(b.getDouble("DiscountedPrice"));
            book.setPrice(b.getDouble("Price"));
            book.setCategoryID(b.getInt("CategoryID"));
            book.setSynopsis(b.getString("Synopsis"));
            book.setStockLevel(b.getDouble("StockLevel"));
            //return book;
        } catch (Exception e) {
            Log.e("BookModel.getBook()", "JSONArray error");
        }

        System.out.print(book.getAuthorName());
        return book;
    }
}
