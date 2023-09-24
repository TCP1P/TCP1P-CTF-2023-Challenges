package com.kuro.intention;

import android.os.Bundle;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class FlagSender extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

//        String flag = "TCP1P{M4l1c1ou5_Int3nti0ns}";
        String flag = "flag{fake_flag_dont_submit}";
        setResult(RESULT_OK, getIntent().putExtra("flag", flag));
    }
}
