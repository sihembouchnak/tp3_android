package com.example.tp3;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import java.security.SecureRandom;

public class DiceActivity extends Activity implements View.OnClickListener {

    private TextView textResult;
    private int max;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_dice);

        // Récupération du paramètre max transmis par l'intent (par défaut 0)
        max = getIntent().getIntExtra("max", 0);

        TextView textTitle = (TextView) findViewById(R.id.textTitle);
        textTitle.setText(max + " sided dice");

        textResult = (TextView) findViewById(R.id.textResult);
        textResult.setText("");

        Button buttonRoll = (Button) findViewById(R.id.buttonRoll);
        buttonRoll.setOnClickListener(this);

        Button buttonReturn = (Button) findViewById(R.id.buttonReturn);
        buttonReturn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
    }

    @Override
    public void onClick(View v) {
        SecureRandom random = new SecureRandom();
        // Génère un nombre aléatoire entre 1 et max (inclus)
        int result = random.nextInt(max) + 1;
        textResult.setText(String.valueOf(result));
    }
}
