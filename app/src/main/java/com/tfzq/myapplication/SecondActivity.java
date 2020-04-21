package com.tfzq.myapplication;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

import com.thinkive.analytics.TkStatisticAgent;

import java.util.HashMap;
import java.util.Map;

public class SecondActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);
        TkStatisticAgent.visitPage("home.tgPage");

        findViewById(R.id.button3).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Map<String, String> params = new HashMap<>();
                params.put("i_info_type", "1");
                params.put("i_info_id", "fsfersg");
                params.put("i_info_title", "LPR5年期下调20个基点");
                params.put("i_info_auth", "新华网");
                TkStatisticAgent.onEvent("home.tgPage.infoList", params);
            }
        });

    }
}
