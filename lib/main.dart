import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audio_cache.dart'; // because we are importing local assets audio files

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }

  Expanded buildKeys({Color color , int soundNumber}){
   return Expanded(
      child: FlatButton(
        child: Text("play sound"),
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
              buildKeys(color: Colors.pink , soundNumber: 1),
              buildKeys(color: Colors.blue , soundNumber: 2),
              buildKeys(color: Colors.lightGreen , soundNumber: 3),
              buildKeys(color: Colors.deepOrangeAccent , soundNumber: 4),
              buildKeys(color: Colors.indigo , soundNumber: 5),
              buildKeys(color: Colors.purple , soundNumber: 6),
              buildKeys(color: Colors.cyan , soundNumber: 7),
          ],)
        ),
      ),
    );
  }
}

