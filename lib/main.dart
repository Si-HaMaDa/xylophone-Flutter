import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(
              child: Text('Let\'s sound'),
              onPressed: () {
                final audioCache = AudioCache();
                audioCache.play('note7.wav');
              },
            ),
          ),
        ),
      ),
    );
  }
}
