package com.example.torchapp;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraManager;
import android.os.Bundle;
import android.widget.Button;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    private boolean isFlashlightOn = false;
    private CameraManager cameraManager;
    private String cameraId;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button toggleButton = findViewById(R.id.toggleButton);
        cameraManager = (CameraManager) getSystemService(CAMERA_SERVICE);

        try {
            cameraId = cameraManager.getCameraIdList()[0];
        } catch (CameraAccessException e) {
            e.printStackTrace();
        }

        toggleButton.setOnClickListener(v -> {
            try {
                if (isFlashlightOn) {
                    cameraManager.setTorchMode(cameraId, false);
                    isFlashlightOn = false;
                    Toast.makeText(MainActivity.this, "Flashlight Off", Toast.LENGTH_SHORT).show();
                } else {
                    cameraManager.setTorchMode(cameraId, true);
                    isFlashlightOn = true;
                    Toast.makeText(MainActivity.this, "Flashlight On", Toast.LENGTH_SHORT).show();
                }
            } catch (CameraAccessException e) {
                e.printStackTrace();
            }
        });
    }
}
