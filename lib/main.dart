import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, statusBarBrightness: Brightness.light));

  runApp(
    MaterialApp(
      home: Scaffold(
        body: Xylophone(),
      ),
    ),
  );
}

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        buildColouredButton(Hexcolor('#6d6875'), 1),
        buildColouredButton(Hexcolor('#b5838d'), 2),
        buildColouredButton(Hexcolor('#e5989b'), 3),
        buildColouredButton(Hexcolor('#ffb4a2'), 4),
        buildColouredButton(Hexcolor('#ffcdb2'), 5),
        buildColouredButton(Hexcolor('#fcd5ce'), 6),
        buildColouredButton(Hexcolor('#ffe5d9'), 7),
      ],
    );
  }
}

Expanded buildColouredButton(Color color, int index) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playSound(index);
      },
    ),
  );
}

void playSound(index) {
  final player = AudioCache();
  player.play('note$index.wav');
}
