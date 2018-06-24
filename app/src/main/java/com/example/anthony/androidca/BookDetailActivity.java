package com.example.anthony.androidca;

import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.StrictMode;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

public class BookDetailActivity extends Activity {

    //@Override
    protected void onCreate(Bundle savedInstanceState, BookModel book) {
        super.onCreate(savedInstanceState);
        //the two line below is for setting the title dynamically
        //setContentView(R.layout.activity_book_detail);
        //this.setTitle(book.getTitle().toString());

        //StrictMode.setThreadPolicy(StrictMode.ThreadPolicy.LAX);
        //Intent i = getIntent();
        //String isbn = i.getStringExtra("isbn");

        new AsyncTask<String, Void, ArrayList<BookModel>>() {


            @Override

            protected ArrayList<BookModel> doInBackground(String... params) {

                String searchResult = "9780060555665";//params[0]
                return BookModel.search(searchResult);

            }


            protected void onPostExecute(List<BookModel> result) {
               for(BookModel book:result) {
                   book = BookModel.getbook("9780060555665");
                   show(book);
                   //BookDetailActivity.setTitle("Hello World");
               }

            }
        }.execute();



   }

    void show(BookModel book) {
        int[] ids = {R.id.textView_title, R.id.textView_anthorname, R.id.textView_categoryname,
                R.id.textView_isbn,  R.id.textView_discountedprice,R.id.textView_price,
                R.id.textView_categoryid,  R.id.textView_synopsis,R.id.textView_stocklevel,
                };
        String[] keys = {"Title", "AuthorName", "CategoryName", "ISBN","DiscountedPrice",
                "Price","CategoryID","Synopsis","StockLevel"};
        for (int i = 0; i < keys.length; i++) {
            TextView e = (TextView) findViewById(ids[i]);
            e.setText(book.get(keys[i]).toString());


        }


    }
}
