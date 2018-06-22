package com.example.anthony.androidca;

import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


public class BookModel extends HashMap<String, Object>{
    final static String baseURL="172.17.249.19/BookStore/Endpoint/IBookService.svc/Books/";
    public BookModel(String title, String authorName, String categoryName,
                     String isbn, Integer categoryID,Double discountedprice,
                     Double price, Double stockLevel, String synopsis)
    {
        setTitle(title);
        setAuthorName(authorName);
        setcategoryName(categoryName);
        setISBN(isbn);
        setCategoryID(categoryID);
        setDiscountedprice(discountedprice);
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
    public Double getDiscountedprice() {
        return (Double) get("Discountedprice");
    }

    public void setDiscountedprice(Double discountedprice) {
        put("Discountedprice", discountedprice);
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
                    book.setDiscountedprice(b.getDouble("Discountedprice"));
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
    public static BookModel getbook(String btitle) {
        JSONObject b = JSONParser.getJSONFromUrl(baseURL + btitle);
        BookModel book = new BookModel();
        try {
            //BookModel book = new BookModel();
            book.setTitle(b.getString("Title"));
            book.setAuthorName(b.getString("AuthorName"));
            book.setcategoryName(b.getString("CategoryName"));
            book.setISBN(b.getString("ISBN"));
            book.setDiscountedprice(b.getDouble("Discountedprice"));
            book.setPrice(b.getDouble("Price"));
            book.setCategoryID(b.getInt("CategoryID"));
            book.setSynopsis(b.getString("Synopsis"));
            book.setStockLevel(b.getDouble("StockLevel"));
            return book;
        } catch (Exception e) {
            Log.e("BookModel.getBook()", "JSONArray error");
        }
        return book;
    }
}
