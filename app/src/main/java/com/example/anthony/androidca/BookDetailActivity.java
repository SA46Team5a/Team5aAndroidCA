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
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_book_detail);
        Intent i = getIntent();
        final String isbn = i.getStringExtra("isbn");
        new AsyncTask<String, Void, BookModel>() {
            @Override
            protected BookModel doInBackground(String... params) {
                try {
                    return BookModel.getbook(isbn);
                } catch (Exception e){
                    return null;
                }
            }

            @Override
            protected void onPostExecute(BookModel result) {
                if (result == null)
                    new ChangeIpAlertDialog(BookDetailActivity.this, "The current IP address is invalid. Please enter a new IP address");
                else
                    show(result);
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
        getActionBar().setTitle(book.getTitle());
    }
}
