package com.tcpip.netsight;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.JavascriptInterface;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import java.net.URISyntaxException;

/* loaded from: classes3.dex */
public class WebviewActivity extends AppCompatActivity {
    WebView myWebView;
    String url;

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        Context mContext;

        WebAppInterface(Context c) {
            this.mContext = c;
        }

        @JavascriptInterface
        public void showToast(String toast) {
            Toast.makeText(this.mContext, toast, 0).show();
        }

        @JavascriptInterface
        public void accessDeeplink(String url) {
            Uri uri = Uri.parse(url);
            Intent intent = new Intent();
            try {
                intent = Intent.parseUri(uri.toString(), 1);
            } catch (URISyntaxException e) {
                e.printStackTrace();
            }
            WebviewActivity.this.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_webview);
        WebView webView = (WebView) findViewById(R.id.webview);
        this.myWebView = webView;
        webView.addJavascriptInterface(new WebAppInterface(this), "netsight");
        init();
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("url");
        this.url = stringExtra;
        this.myWebView.loadUrl(stringExtra);
    }

    public void init() {
        WebSettings webSettings = this.myWebView.getSettings();
        webSettings.setJavaScriptEnabled(true);
    }
}