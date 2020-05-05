import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audio_cache.dart'; // because we are importing local assets audio files

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play("note$soundNumber.wav");
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
            Expanded(
              child: FlatButton(
                color: Colors.pinkAccent,
                onPressed: () {
                  playSound(1);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  playSound(2);
                },
                color: Colors.green,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  playSound(3);
                },
                color: Colors.orange,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                   playSound(4);
                },
                color: Colors.purple,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  playSound(5);
                },
                color: Colors.green,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  playSound(6);
                },
                color: Colors.indigo,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  playSound(7);
                },
                color: Colors.yellow,
              ),
            ),
          ],)
        ),
      ),
    );
  }
}

