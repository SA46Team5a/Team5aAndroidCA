package com.example.anthony.androidca;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.StrictMode;
import android.widget.EditText;
import android.widget.ImageView;

public class BookDetailActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_book_detail);
    StrictMode.setThreadPolicy(StrictMode.ThreadPolicy.LAX);
    Intent i = getIntent();
    String btitle = i.getStringExtra("btitle");
    BookModel book = BookModel.getbook(btitle);
    show(book);

}

    void show(BookModel book) {
        int[] ids = {R.id.editText1, R.id.editText2, R.id.editText3, R.id.editText4,
                R.id.editText5, R.id.editText6, R.id.editText7, R.id.editText8, R.id.editText9};
        String[] keys = {"Title", "AuthorName", "CategoryName", "ISBN","Discountedprice",
                "Price","CategoryID","Synopsis","StockLevel"};
        for (int i = 0; i < keys.length; i++) {
            EditText e = (EditText) findViewById(ids[i]);
            e.setText(book.get(keys[i]).toString());


        }


    }
}
