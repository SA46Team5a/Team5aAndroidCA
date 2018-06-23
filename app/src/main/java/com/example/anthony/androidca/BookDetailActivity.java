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
        setContentView(R.layout.activity_book_detail);
        Intent i = getIntent();
        final String isbn = i.getStringExtra("isbn");
        new AsyncTask<String, Void, BookModel>() {
            @Override
            protected BookModel doInBackground(String... params) {
                return BookModel.getbook(isbn);
            }

            @Override
            protected void onPostExecute(BookModel result) {
               show(result);
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
