package com.example.anthony.androidca;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;

import java.util.ArrayList;

public class ListOfBooksActivity extends Activity {
    EditText searchTerm;
    Button searchButton;
    RecyclerView searchResultsList;
    ResultsAdapter resultsAdapter;
    RecyclerView.LayoutManager layoutManager;
    InputMethodManager imm;
    SharedPreferences preferences;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_list_of_books);
        getActionBar().setTitle("Search Books");

        searchTerm = findViewById(R.id.searchTerm);
        searchButton = findViewById(R.id.searchButton);

        imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
        imm.showSoftInput(searchTerm, InputMethodManager.SHOW_IMPLICIT);

        searchButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                new getSearchResults().execute(searchTerm.getText().toString());
            }
        });

        resultsAdapter = new ResultsAdapter(this);
        layoutManager = new LinearLayoutManager(this);
        searchResultsList = (RecyclerView) findViewById(R.id.search_result_recycler);
        searchResultsList.setLayoutManager(layoutManager);

        preferences = getSharedPreferences(
                "shared_preferences",
                Context.MODE_PRIVATE
        );
        if (preferences.getString("ip", "").equals(""))
            new ChangeIpAlertDialog(ListOfBooksActivity.this, "The current IP address is invalid. Please enter a new IP address");
        else
            new getSearchResults().execute("");
   }

    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.action_buttons, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.change_ip:
                new ChangeIpAlertDialog(this).show();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

   public class getSearchResults extends AsyncTask<String, Void, ArrayList<BookModel>> {
        @Override
        protected ArrayList<BookModel> doInBackground(String... strings) {
            ArrayList<BookModel> books = new ArrayList<BookModel>();
            if (strings != null) {
                try {
                    books = BookModel.search(strings[0]);
                } catch (Exception e) {
                    new ChangeIpAlertDialog(ListOfBooksActivity.this, "The current IP address is invalid. Please enter a new IP address");
                }
            }
            return books;
        }

        @Override
        protected void onPostExecute(ArrayList<BookModel> books) {
            resultsAdapter.setSearchResults(books);
            searchResultsList.setAdapter(resultsAdapter);
        }
    }
}
