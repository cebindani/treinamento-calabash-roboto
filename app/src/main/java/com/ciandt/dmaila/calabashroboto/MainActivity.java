package com.ciandt.dmaila.calabashroboto;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import static android.R.id.message;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Intent intent = getIntent();
        String loggedUser = intent.getStringExtra(LoginActivity.EXTRA_MESSAGE);
        TextView welcomeMessage = (TextView) findViewById(R.id.welcome_message);
        String greetingsMessage = "Olá " + loggedUser + "!";
        welcomeMessage.setText(greetingsMessage);

        Button logoffButton = (Button) findViewById(R.id.logoff_button);
        logoffButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent loginIntent = new Intent(getApplicationContext(), LoginActivity.class);
                startActivity(loginIntent);
            }
        });

    }
}
