package com.example.anthony.androidca;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Toast;

public class ChangeIpAlertDialog extends AlertDialog.Builder {
    SharedPreferences preferences;
    InputMethodManager imm;

    protected ChangeIpAlertDialog(final Context context, String dialogMessage) {
        this(context);
        setTitle(dialogMessage);
    }

    protected ChangeIpAlertDialog(final Context context) {
        super(context);
        preferences = context.getSharedPreferences(
           "shared_preferences",
            Context.MODE_PRIVATE
        );

        final EditText input = new EditText(context);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
        LinearLayout.LayoutParams.MATCH_PARENT,
        LinearLayout.LayoutParams.MATCH_PARENT);
        input.setLayoutParams(lp);
        input.setText(preferences.getString("ip", "10.0.2.2"));
        input.setSelection(input.getText().length());

        setCancelable(true);
        setTitle("Change IP Address");
        setMessage("Please enter a new IP address");
        setView(input);
        setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        setPositiveButton("Ok", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                String newIP = input.getText().toString();
                if (validateIPaddress(newIP)) {
                    preferences.edit().putString("ip", newIP).apply();
                    BookModel.setIPAddress(newIP);
                    Toast.makeText(
                            context,
                            preferences.getString("ip", ""),
                            Toast.LENGTH_SHORT
                    ).show();
                } else {
                    Toast.makeText(
                            context,
                            "The provided IP address is invalid.",
                            Toast.LENGTH_SHORT
                    ).show();
                }
            }
        });
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
}
