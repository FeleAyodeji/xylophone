import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audio_cache.dart'; // because we are importing local assets audio files

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }

  Expanded buildKeys({Color color , int soundNumber ,String name}){
   return Expanded(
      child: FlatButton(
        child: Text(name),
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKeys(color: Colors.pink , soundNumber: 1 ,name: "sound by fele DOH"),
              buildKeys(color: Colors.blue , soundNumber: 2, name: "sound by fele RE"),
              buildKeys(color: Colors.lightGreen , soundNumber: 3 , name: "sound by fele MI"),
              buildKeys(color: Colors.deepOrangeAccent , soundNumber: 4 , name: "sound by fele FAH"),
              buildKeys(color: Colors.indigo , soundNumber: 5, name: "sound by fele SOH"),
              buildKeys(color: Colors.purple , soundNumber: 6, name: "sound by fele LAH"),
              buildKeys(color: Colors.cyan , soundNumber: 7, name: "sound by fele TI"),
          ],)
        ),
      ),
    );
  }
}

