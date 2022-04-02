package com.example.demo;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import java.io.InputStream;
import java.util.Scanner;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void onClick_go(View view) {
        EditText key = findViewById(R.id.id_key);
        TextView res = findViewById(R.id.id_res);
        InputStream input = getResources().openRawResource((R.raw.shi300));
        try {
            int k = 0;
            String temp = "";
            String result = "";
            Scanner scan = new Scanner(input);
            int max=100;
            while (scan.hasNext()) {
                String str = scan.nextLine();
                if (str.contains("：")) {
                    temp = str;
                    continue;
                }
                if (str.contains(key.getText().toString())) {
                    k++;
                    result += k + "." + str + temp + "\n";
                    max--;
                    if (max<=0) break;
                }
            }

            Toast.makeText(MainActivity.this, "一共有" + k + "句！", Toast.LENGTH_SHORT).show();
            res.setText(result);
            res.setMovementMethod(ScrollingMovementMethod.getInstance());
            scan.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
