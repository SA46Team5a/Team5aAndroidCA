package com.example.anthony.androidca;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
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
import android.widget.LinearLayout;
import android.widget.Toast;

import java.util.ArrayList;

public class ListOfBooksActivity extends Activity {
    EditText searchTerm;
    Button searchButton;
    RecyclerView searchResultsList;
    ResultsAdapter resultsAdapter;
    RecyclerView.LayoutManager layoutManager;
    SharedPreferences preferences;
    InputMethodManager imm;

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
        new getSearchResults().execute("");

        preferences = getSharedPreferences(
           "shared_preferences",
            Context.MODE_PRIVATE
        );
        preferences.edit().putString("ip", "10.0.2.2");
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.action_buttons, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.change_ip:
                callChangeIPAlertDialog();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    public void callChangeIPAlertDialog() {

        final EditText input = new EditText(this);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.MATCH_PARENT);
        input.setLayoutParams(lp);
        input.setText(preferences.getString("ip", "10.0.2.2"));
        input.setSelection(input.getText().length());
        imm.showSoftInput(input, InputMethodManager.SHOW_IMPLICIT);

        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder
                .setCancelable(true)
                .setTitle("Change IP Address")
                .setMessage("Please enter a new IP address")
                .setView(input)
                .setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                    }
                })
                .setPositiveButton("Ok", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        String newIP = input.getText().toString();
                        if (validateIPaddress(newIP)) {
                            preferences.edit().putString("ip", newIP).apply();
                            Toast.makeText(
                                    ListOfBooksActivity.this,
                                    preferences.getString("ip", ""),
                                    Toast.LENGTH_SHORT
                            ).show();
                            BookModel.setIPAddress(newIP);
                        } else {
                            Toast.makeText(
                                    ListOfBooksActivity.this,
                                    "The provided IP address is invalid.",
                                    Toast.LENGTH_SHORT
                            ).show();
                        }
                    }
                });
        builder.show();
    }

    private boolean validateIPaddress(String ip) {
        String[] ipParts = ip.split("\\.");
        if (ipParts.length != 4)
            return false;
        for (String ipPart : ipParts) {
            try {
                int ipInt = Integer.parseInt(ipPart);
                if (ipInt < 0 || ipInt >= 256)
                    return false;
            } catch (Exception e) {
                return false;
            }
        }
        return true;
    }

    public class getSearchResults extends AsyncTask<String, Void, ArrayList<BookModel>> {
        @Override
        protected ArrayList<BookModel> doInBackground(String... strings) {
            ArrayList<BookModel> books = new ArrayList<BookModel>();
            if (strings != null) {
                books = BookModel.search(strings[0]);
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
