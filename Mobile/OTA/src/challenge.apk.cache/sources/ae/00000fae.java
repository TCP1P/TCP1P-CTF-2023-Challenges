package intechfest.cc.ota;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.appcompat.app.AppCompatActivity;
import dalvik.system.DexClassLoader;
import intechfest.cc.ota.MainActivity;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes3.dex */
public class MainActivity extends AppCompatActivity {
    public static Context context;
    private Spinner functionList;
    private ArrayList<Class<?>> functions;
    private SharedPreferences prefs;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        this.prefs = getSharedPreferences(getPackageName(), 0);
        try {
            OutputStream outputStream = openFileOutput("flag.txt", 0);
            outputStream.write("TCP1P{Th1s_w4s_0-D4y_Vu1N}".getBytes());
            outputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        context = this;
        ArrayList<Class<?>> arrayList = new ArrayList<>();
        this.functions = arrayList;
        arrayList.add(FuncRandomString.class);
        Button executeButton = (Button) findViewById(R.id.executeButton);
        executeButton.setOnClickListener(new View.OnClickListener() { // from class: intechfest.cc.ota.MainActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m46lambda$onCreate$0$intechfestccotaMainActivity(view);
            }
        });
        this.functionList = (Spinner) findViewById(R.id.functionList);
        ArrayAdapter<String> adapter = new ArrayAdapter<>(this, 17367048);
        Iterator<Class<?>> it = this.functions.iterator();
        while (it.hasNext()) {
            Class<?> clazz = it.next();
            try {
                adapter.add((String) clazz.getField("NAME").get(null));
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        adapter.setDropDownViewResource(17367049);
        this.functionList.setAdapter((SpinnerAdapter) adapter);
        checkForUpdate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onCreate$0$intechfest-cc-ota-MainActivity  reason: not valid java name */
    public /* synthetic */ void m46lambda$onCreate$0$intechfestccotaMainActivity(View v) {
        try {
            Class<?> clazz = this.functions.get(this.functionList.getSelectedItemPosition());
            clazz.getMethod("execute", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public static void showDialog(String title, String message) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setCancelable(false);
        builder.setTitle(title);
        builder.setMessage(message);
        builder.setPositiveButton("OK", (DialogInterface.OnClickListener) null);
        builder.show();
    }

    public void loadDex() {
        File dexPath = new File(getFilesDir(), "update.dex");
        if (!dexPath.exists()) {
            showDialog("Error", "Update file not found!");
            return;
        }
        DexClassLoader dexClassLoader = new DexClassLoader(dexPath.getAbsolutePath(), getFilesDir().getAbsolutePath(), null, getClassLoader());
        try {
            Class<?> clazz = dexClassLoader.loadClass("intechfest.cc.ota.EntryPoint");
            ArrayList<Class<?>> newFunctions = (ArrayList) clazz.getField("functions").get(null);
            this.functions.addAll(newFunctions);
            Iterator<Class<?>> it = newFunctions.iterator();
            while (it.hasNext()) {
                Class<?> newFunction = it.next();
                ArrayAdapter<String> adapter = (ArrayAdapter) this.functionList.getAdapter();
                adapter.add((String) newFunction.getField("NAME").get(null));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void checkForUpdate() {
        final ProgressDialog pDialog = new ProgressDialog(context);
        pDialog.setTitle("Checking for update...");
        pDialog.setMessage("Please wait...");
        pDialog.setCancelable(false);
        pDialog.setProgressStyle(0);
        pDialog.show();
        ExecutorService executor = Executors.newSingleThreadExecutor();
        final Handler handler = new Handler(Looper.getMainLooper());
        executor.execute(new Runnable() { // from class: intechfest.cc.ota.MainActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m44lambda$checkForUpdate$1$intechfestccotaMainActivity(handler, pDialog);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$checkForUpdate$1$intechfest-cc-ota-MainActivity  reason: not valid java name */
    public /* synthetic */ void m44lambda$checkForUpdate$1$intechfestccotaMainActivity(Handler handler, ProgressDialog pDialog) {
        OkHttpClient client = new OkHttpClient();
        Request request = new Request.Builder().url("http://ota-mobile.intechfest.cc/getVersion.php").build();
        client.newCall(request).enqueue(new AnonymousClass1(handler, pDialog));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: intechfest.cc.ota.MainActivity$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements Callback {
        final /* synthetic */ Handler val$handler;
        final /* synthetic */ ProgressDialog val$pDialog;

        AnonymousClass1(Handler handler, ProgressDialog progressDialog) {
            this.val$handler = handler;
            this.val$pDialog = progressDialog;
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, final IOException e) {
            Handler handler = this.val$handler;
            final ProgressDialog progressDialog = this.val$pDialog;
            handler.post(new Runnable() { // from class: intechfest.cc.ota.MainActivity$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.AnonymousClass1.lambda$onFailure$0(progressDialog, e);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void lambda$onFailure$0(ProgressDialog pDialog, IOException e) {
            pDialog.dismiss();
            MainActivity.showDialog("Error", e.getMessage());
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, final Response response) throws IOException {
            if (!response.isSuccessful()) {
                Handler handler = this.val$handler;
                final ProgressDialog progressDialog = this.val$pDialog;
                handler.post(new Runnable() { // from class: intechfest.cc.ota.MainActivity$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainActivity.AnonymousClass1.lambda$onResponse$1(progressDialog, response);
                    }
                });
                return;
            }
            final String res = response.body().string();
            if (res.equals(MainActivity.this.prefs.getString("version", HttpUrl.FRAGMENT_ENCODE_SET))) {
                Handler handler2 = this.val$handler;
                final ProgressDialog progressDialog2 = this.val$pDialog;
                handler2.post(new Runnable() { // from class: intechfest.cc.ota.MainActivity$1$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainActivity.AnonymousClass1.this.m47lambda$onResponse$2$intechfestccotaMainActivity$1(progressDialog2);
                    }
                });
                return;
            }
            Handler handler3 = this.val$handler;
            final ProgressDialog progressDialog3 = this.val$pDialog;
            handler3.post(new Runnable() { // from class: intechfest.cc.ota.MainActivity$1$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.AnonymousClass1.this.m48lambda$onResponse$3$intechfestccotaMainActivity$1(progressDialog3, res);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void lambda$onResponse$1(ProgressDialog pDialog, Response response) {
            pDialog.dismiss();
            MainActivity.showDialog("Error", response.message());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onResponse$2$intechfest-cc-ota-MainActivity$1  reason: not valid java name */
        public /* synthetic */ void m47lambda$onResponse$2$intechfestccotaMainActivity$1(ProgressDialog pDialog) {
            pDialog.dismiss();
            MainActivity.this.loadDex();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onResponse$3$intechfest-cc-ota-MainActivity$1  reason: not valid java name */
        public /* synthetic */ void m48lambda$onResponse$3$intechfestccotaMainActivity$1(ProgressDialog pDialog, String res) {
            pDialog.dismiss();
            MainActivity.this.downloadUpdate(res);
            SharedPreferences.Editor editor = MainActivity.this.prefs.edit();
            editor.putString("version", res);
            editor.apply();
        }
    }

    public void downloadUpdate(final String version) {
        final ProgressDialog pDialog = new ProgressDialog(context);
        pDialog.setTitle("Downloading update...");
        pDialog.setMessage("Please wait...");
        pDialog.setCancelable(false);
        pDialog.setProgressStyle(1);
        pDialog.show();
        ExecutorService executor = Executors.newSingleThreadExecutor();
        final Handler handler = new Handler(Looper.getMainLooper());
        executor.execute(new Runnable() { // from class: intechfest.cc.ota.MainActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m45lambda$downloadUpdate$2$intechfestccotaMainActivity(version, handler, pDialog);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$downloadUpdate$2$intechfest-cc-ota-MainActivity  reason: not valid java name */
    public /* synthetic */ void m45lambda$downloadUpdate$2$intechfestccotaMainActivity(String version, Handler handler, ProgressDialog pDialog) {
        OkHttpClient client = new OkHttpClient();
        Request request = new Request.Builder().url("http://ota-mobile.intechfest.cc/" + version + "/update.dex").build();
        client.newCall(request).enqueue(new AnonymousClass2(handler, pDialog));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: intechfest.cc.ota.MainActivity$2  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements Callback {
        final /* synthetic */ Handler val$handler;
        final /* synthetic */ ProgressDialog val$pDialog;

        AnonymousClass2(Handler handler, ProgressDialog progressDialog) {
            this.val$handler = handler;
            this.val$pDialog = progressDialog;
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, final IOException e) {
            Handler handler = this.val$handler;
            final ProgressDialog progressDialog = this.val$pDialog;
            handler.post(new Runnable() { // from class: intechfest.cc.ota.MainActivity$2$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.AnonymousClass2.lambda$onFailure$0(progressDialog, e);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void lambda$onFailure$0(ProgressDialog pDialog, IOException e) {
            pDialog.dismiss();
            MainActivity.showDialog("Error", e.getMessage());
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, final Response response) throws IOException {
            if (!response.isSuccessful()) {
                Handler handler = this.val$handler;
                final ProgressDialog progressDialog = this.val$pDialog;
                handler.post(new Runnable() { // from class: intechfest.cc.ota.MainActivity$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainActivity.AnonymousClass2.lambda$onResponse$1(progressDialog, response);
                    }
                });
                return;
            }
            InputStream inputStream = response.body().byteStream();
            OutputStream outputStream = null;
            try {
                try {
                    File file = new File(MainActivity.this.getFilesDir(), "update.dex");
                    outputStream = new FileOutputStream(file);
                    byte[] buffer = new byte[4096];
                    int total = 0;
                    while (true) {
                        int len = inputStream.read(buffer);
                        if (len == -1) {
                            break;
                        }
                        outputStream.write(buffer, 0, len);
                        total += len;
                        this.val$pDialog.setProgress((int) ((total * 100) / response.body().contentLength()));
                    }
                    outputStream.flush();
                    Handler handler2 = this.val$handler;
                    final ProgressDialog progressDialog2 = this.val$pDialog;
                    handler2.post(new Runnable() { // from class: intechfest.cc.ota.MainActivity$2$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainActivity.AnonymousClass2.this.m49lambda$onResponse$2$intechfestccotaMainActivity$2(progressDialog2);
                        }
                    });
                } catch (IOException e) {
                    Handler handler3 = this.val$handler;
                    final ProgressDialog progressDialog3 = this.val$pDialog;
                    handler3.post(new Runnable() { // from class: intechfest.cc.ota.MainActivity$2$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainActivity.AnonymousClass2.lambda$onResponse$3(progressDialog3, e);
                        }
                    });
                    if (outputStream == null) {
                        return;
                    }
                }
                outputStream.close();
            } catch (Throwable th) {
                if (outputStream != null) {
                    outputStream.close();
                }
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void lambda$onResponse$1(ProgressDialog pDialog, Response response) {
            pDialog.dismiss();
            MainActivity.showDialog("Error", response.message());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onResponse$2$intechfest-cc-ota-MainActivity$2  reason: not valid java name */
        public /* synthetic */ void m49lambda$onResponse$2$intechfestccotaMainActivity$2(ProgressDialog pDialog) {
            pDialog.dismiss();
            MainActivity.this.loadDex();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void lambda$onResponse$3(ProgressDialog pDialog, IOException e) {
            pDialog.dismiss();
            MainActivity.showDialog("Error", e.getMessage());
        }
    }
}