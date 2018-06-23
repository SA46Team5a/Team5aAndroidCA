package com.example.anthony.androidca;

import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
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
        holder.title.setText(book.getTitle());
        holder.author.setText(book.getAuthorName());
        NumberFormat currencyFormatter = NumberFormat.getCurrencyInstance();
        holder.price.setText(currencyFormatter.format(book.getPrice()));

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
}
