package intechfest.cc.imagetobase64;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.util.Base64;
import android.util.Log;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import java.io.InputStream;
import java.util.prefs.PreferencesFactory;

public class MainActivity extends AppCompatActivity {
    private EditText result;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        result = findViewById(R.id.result);

//        String flag = "TCP1P{C3rt1fi3d_1nt3nt_F0rg3r}";
        String flag = "flag{fake_flag_dont_submit}";
        SharedPreferences prefs = getSharedPreferences(getPackageName(), MODE_PRIVATE);
        SharedPreferences.Editor editor = prefs.edit();
        editor.putString("flag", flag);
        editor.apply();

        if (!checkPermission()) {
            requestPermissions();
        } else {
            openImage();
        }
    }

    private void openImage() {
        Intent intent = new Intent(Intent.ACTION_PICK);
        intent.setType("image/*");
        startActivityForResult(intent, 133337);
    }

    private boolean checkPermission() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            return Environment.isExternalStorageManager();
        }
        return ContextCompat.checkSelfPermission(this, "android.permission.READ_EXTERNAL_STORAGE") == PackageManager.PERMISSION_GRANTED &&
                ContextCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE") == PackageManager.PERMISSION_GRANTED;

    }

    private void requestPermissions() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            try {
                Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
                intent.addCategory("android.intent.category.DEFAULT");
                intent.setData(Uri.parse(String.format("package:%s", getApplicationContext().getPackageName())));
                startActivityForResult(intent, 1337);
            } catch (Exception e) {
                Intent intent2 = new Intent();
                intent2.setAction("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION");
                startActivityForResult(intent2, 1337);
            }
        } else {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 13337);
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1337) {
            if (Build.VERSION.SDK_INT == Build.VERSION_CODES.R) {
                if (!Environment.isExternalStorageManager()) {
                    Toast.makeText(this, "Allow permission for storage access!", Toast.LENGTH_LONG).show();
                    finish();
                } else {
                    openImage();
                }
            }
        }

        if (requestCode == 133337) {
            try {
                InputStream is = getContentResolver().openInputStream(data.getData());
                byte[] buf = new byte[is.available()];
                is.read(buf);
                is.close();

                result.setText(new String(Base64.encode(buf, Base64.DEFAULT)));
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == 13337) {
            boolean valid = true;
            for (int grantResult : grantResults) {
                if (grantResult != PackageManager.PERMISSION_GRANTED) {
                    valid = false;
                }
            }

            if (valid) {
                openImage();
            }
        }
    }
}