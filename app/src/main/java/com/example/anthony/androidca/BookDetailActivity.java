package com.example.anthony.androidca;

import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.StrictMode;
import android.widget.EditText;
import android.widget.ImageView;

import java.util.ArrayList;
import java.util.List;

public class BookDetailActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //setContentView(R.layout.activity_book_detail);
        //StrictMode.setThreadPolicy(StrictMode.ThreadPolicy.LAX);
        //Intent i = getIntent();
        //String isbn = i.getStringExtra("isbn");
        new AsyncTask<String, Void, ArrayList<BookModel>>() {


            @Override

            protected ArrayList<BookModel> doInBackground(String... params) {

                String searchResult = "9780060555665";
                return BookModel.search(searchResult);

            }


            protected void onPostExecute(List<BookModel> result) {
               for(BookModel book:result) {
                   book = BookModel.getbook("9780060555665");
                   show(book);
               }

            }
        }.execute();



   }

    void show(BookModel book) {
        int[] ids = {R.id.editText1, R.id.editText2, R.id.editText3, R.id.editText4,
                R.id.editText5, R.id.editText6, R.id.editText7, R.id.editText8, R.id.editText9};
        String[] keys = {"Title", "AuthorName", "CategoryName", "ISBN","DiscountedPrice",
                "Price","CategoryID","Synopsis","StockLevel"};
        for (int i = 0; i < keys.length; i++) {
            EditText e = (EditText) findViewById(ids[i]);
            e.setText(book.get(keys[i]).toString());


        }


    }
}
