import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));

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
    return SafeArea(
      child: Container(),
    );
  }
}
