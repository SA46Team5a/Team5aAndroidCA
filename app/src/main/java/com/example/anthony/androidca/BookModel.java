package com.example.anthony.androidca;

import android.util.Log;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;


public class BookModel extends HashMap<String, Object>{

    final static String baseURL="http://172.17.200.251/BookStore/Endpoint/IBookService.svc/Books/";

    public BookModel(JSONObject b) throws JSONException {
        setTitle(b.getString("Title"));
        setAuthorName(b.getString("AuthorName"));
        setcategoryName(b.getString("CategoryName"));
        setISBN(b.getString("ISBN"));
        setDiscountedPrice(b.getDouble("DiscountedPrice"));
        setPrice(b.getDouble("Price"));
        setCategoryID(b.getInt("CategoryID"));
        setSynopsis(b.getString("Synopsis"));
        setStockLevel(b.getDouble("StockLevel"));
    }

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
        JSONArray a;
        if (searchResult == null || searchResult.equals(""))
            a = JSONParser.getJSONArrayFromUrl(baseURL);
        else
            a = JSONParser.getJSONArrayFromUrl(baseURL + "Search/" + searchResult);
        try {
            BookModel book;
            for (int i = 0; i<a.length(); i++) {
                JSONObject b = a.getJSONObject(i);
                book = new BookModel(b);
                list.add(book);
            }
        } catch (Exception e) {
            Log.e("BookModel.list()", "JSONArray error");
        }
        return(list);
    }
    public static BookModel getbook(String isbn) {
        JSONObject b = JSONParser.getJSONFromUrl(baseURL + isbn);
        BookModel book;
        try {
            book = new BookModel(b);
        } catch (Exception e) {
            book = new BookModel();
            Log.e("BookModel.getBook()", "JSONArray error");
        }

        System.out.print(book.getAuthorName());
        return book;
    }
}
