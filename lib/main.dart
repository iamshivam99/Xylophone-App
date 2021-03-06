import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({int noteNumber, Color color}) {
    return Expanded(
      child: FlatButton(
          onPressed: () {
            playSound(noteNumber);
          },
          color: color,
          child: null),
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
              buildKey(noteNumber: 1, color: Colors.red[600]),
              buildKey(noteNumber: 2, color: Colors.orange[600]),
              buildKey(noteNumber: 3, color: Colors.yellow[600]),
              buildKey(noteNumber: 4, color: Colors.green[600]),
              buildKey(noteNumber: 5, color: Colors.teal[600]),
              buildKey(noteNumber: 6, color: Colors.blue[600]),
              buildKey(noteNumber: 7, color: Colors.purple[600]),
            ],
          ),
        ),
      ),
    );
  }
}
