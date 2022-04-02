package com.example.push_to_talk;

import android.text.method.ScrollingMovementMethod;
import android.widget.TextView;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.MulticastSocket;
import java.net.SocketException;

public class j extends Thread{
public j(){
    try{
        //加入到Ip为230.0.1，端口为7777的多播组中，并通过创建一个多播套接字来接受多播消息
        MulticastSocket multicastsocket=new MulticastSocket(7777);
        InetAddress inetaddress=InetAddress.getByName("224.5.1.7");
        multicastsocket.joinGroup(inetaddress);

        //无线循环接收来自发送端的消息
        while(true){
            //System.out.print(1);
            byte[] arb=new byte[100];
            DatagramPacket datagrampacket=new DatagramPacket(arb,arb.length);
            //	System.out.print(1);
            multicastsocket.receive(datagrampacket);
            System.out.println("接收到消息");
            //	System.out.print(1);
            System.out.println(new String(arb));

        }
    }catch(Exception e){

    }

}


    }
