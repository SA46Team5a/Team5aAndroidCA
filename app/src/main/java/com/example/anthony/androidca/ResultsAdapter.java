package com.example.anthony.androidca;

import android.app.ActionBar;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.support.annotation.NonNull;
import android.support.constraint.ConstraintLayout;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.text.NumberFormat;
import java.util.ArrayList;

public class ResultsAdapter extends RecyclerView.Adapter<ResultsAdapter.ViewHolder> {
    ArrayList<BookModel> books;
    ListOfBooksActivity activity;

    public ResultsAdapter(ListOfBooksActivity activity) {
        this.activity = activity;
    }

    public void setSearchResults(ArrayList<BookModel> books) {
        this.books = books;
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        public ImageView bookCover;
        public TextView title, author, price;
        public ViewHolder(View itemView) {
            super(itemView);
            bookCover = itemView.findViewById(R.id.book_cover);
            title = itemView.findViewById(R.id.title);
            author = itemView.findViewById(R.id.author);
            price = itemView.findViewById(R.id.price);
        }
    }

    @Override
    public ResultsAdapter.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = (View) LayoutInflater.from(parent.getContext())
                .inflate(R.layout.search_result_row, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull final ViewHolder holder, final int position) {
        final BookModel book = books.get(position);
        holder.itemView.setLayoutParams(new ConstraintLayout.LayoutParams(
                ConstraintLayout.LayoutParams.MATCH_PARENT,
                ConstraintLayout.LayoutParams.WRAP_CONTENT
        ));
        holder.title.setText(book.getTitle()
                .trim()
                .replace("\n", " ")
                .replace("  ", " "));
        holder.author.setText(book.getAuthorName()
                .trim()
                .replace("\n", " ")
                .replace("  ", " "));
        NumberFormat currencyFormatter = NumberFormat.getCurrencyInstance();
        holder.price.setText(currencyFormatter.format(book.getPrice()));
        new getBookCover().execute(new Object[] {book.getISBN(), holder.bookCover});

        holder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent bookDetailIntent = new Intent(activity, BookDetailActivity.class);
                bookDetailIntent.putExtra("isbn", book.getISBN());
                activity.startActivity(bookDetailIntent);
            }
        });
    }

    @Override
    public int getItemCount() {
        return books.size();
    }

    private class getBookCover extends AsyncTask<Object, Void, ArrayList<Object>> {
        @Override
        protected ArrayList<Object> doInBackground(Object... objects) {
            String isbn = (String) objects[0];
            ArrayList<Object> returnObjects = new ArrayList<Object>();
            try {
                returnObjects.add(BookModel.getBookCover(isbn));
                returnObjects.add(objects[1]);
                return returnObjects;
            } catch (Exception e) {
                return null;
            }
       }

        @Override
        protected void onPostExecute(ArrayList<Object> objects) {
           if (objects == null)
                new ChangeIpAlertDialog(activity, "The current IP address is invalid. Please enter a new IP address");
           else {
               Bitmap bitmap = (Bitmap) objects.get(0);
               ImageView bookCover = (ImageView) objects.get(1);
               bookCover.setImageBitmap(bitmap);
           }
        }
    }
}
