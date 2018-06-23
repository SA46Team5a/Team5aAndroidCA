package com.example.anthony.androidca;

import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;

import java.util.ArrayList;

public class ListOfBooksActivity extends Activity {
    RecyclerView searchResultsList;
    ResultsAdapter resultsAdapter;
    RecyclerView.LayoutManager layoutManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_list_of_books);
        getActionBar().setTitle("Search Results");

        resultsAdapter = new ResultsAdapter(this);
        layoutManager = new LinearLayoutManager(this);
        searchResultsList = (RecyclerView) findViewById(R.id.search_result_recycler);
        searchResultsList.setLayoutManager(layoutManager);
        new getSearchResults().execute();
    }

    public class getSearchResults extends AsyncTask<Void, Void, ArrayList<BookModel>> {
        @Override
        protected ArrayList<BookModel> doInBackground(Void... voids) {
            Intent intent = getIntent();
            ArrayList<BookModel> books = new ArrayList<BookModel>();
            if (intent.hasExtra("searchTerm")) {
                String searchTerm = intent.getStringExtra("searchTerm");
                books = BookModel.search(searchTerm);
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
