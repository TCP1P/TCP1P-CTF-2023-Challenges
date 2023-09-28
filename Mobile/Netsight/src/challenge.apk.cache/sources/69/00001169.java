package com.tcpip.netsight;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.app.AppCompatActivity;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes3.dex */
public class MainActivity extends AppCompatActivity {
    Button button1;
    Button button2;
    Button button3;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        File directory = getFilesDir();
        File file = new File(directory, "flaggo.txt");
        try {
            FileOutputStream fos = new FileOutputStream(file);
            fos.write("TCP1P{mind_your_webview_pls}".getBytes());
            fos.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.button1 = (Button) findViewById(R.id.button1);
        this.button2 = (Button) findViewById(R.id.button2);
        this.button3 = (Button) findViewById(R.id.button3);
        this.button1.setOnClickListener(new View.OnClickListener() { // from class: com.tcpip.netsight.MainActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(MainActivity.this, WebviewActivity.class);
                intent.putExtra("url", "https://medium.com/@k_kisanak/binary-patching-with-ida-pro-part-1-c806d0f20d22");
                MainActivity.this.startActivity(intent);
                MainActivity.this.finish();
            }
        });
        this.button2.setOnClickListener(new View.OnClickListener() { // from class: com.tcpip.netsight.MainActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(MainActivity.this, WebviewActivity.class);
                intent.putExtra("url", "https://medium.com/@k_kisanak");
                MainActivity.this.startActivity(intent);
                MainActivity.this.finish();
            }
        });
        this.button3.setOnClickListener(new View.OnClickListener() { // from class: com.tcpip.netsight.MainActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(MainActivity.this, WebviewActivity.class);
                intent.putExtra("url", "http://www.quotationspage.com/random.php");
                MainActivity.this.startActivity(intent);
                MainActivity.this.finish();
            }
        });
    }
}