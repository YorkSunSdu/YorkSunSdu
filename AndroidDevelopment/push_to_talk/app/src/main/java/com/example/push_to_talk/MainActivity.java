package com.example.push_to_talk;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

import java.net.DatagramPacket;
import java.net.InetAddress;
import java.net.MulticastSocket;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
    public  void sender(View view){
        TextView editText1=findViewById(R.id.editText1);
        try {
            byte[] arb=new byte[1024];
            String one=editText1.getText().toString();
            int k=one.length();
            for (int i=0;i<k;i++){
                arb[i]=(byte)one.charAt(i);
            }
            InetAddress inetadress=InetAddress.getByName("224.5.1.7");
            DatagramPacket datagram=new DatagramPacket(arb,arb.length,inetadress,7777);
            MulticastSocket multicastSocket1=new MulticastSocket();
            multicastSocket1.send(datagram);

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
    public void receiver(View view){
     j j0=new j();
    }
}
