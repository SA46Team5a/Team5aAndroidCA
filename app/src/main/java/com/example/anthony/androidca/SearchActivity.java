package com.example.anthony.androidca;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;

public class SearchActivity extends Activity {
    EditText searchTerm;
    Button searchButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        getActionBar().setTitle("Search Books");

        setupViews();
    }

    private void setupViews() {
        searchTerm = findViewById(R.id.searchTerm);
        searchButton = findViewById(R.id.searchButton);

        InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
        imm.showSoftInput(searchTerm, InputMethodManager.SHOW_IMPLICIT);

        searchButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent searchIntent = new Intent(view.getContext(), ListOfBooksActivity.class);
                Log.i("searchTerm", searchTerm.getText().toString());
                searchIntent.putExtra("searchTerm", searchTerm.getText().toString());
                startActivity(searchIntent);
            }
        });
    }
}
