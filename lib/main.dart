import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  final oynatici = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  final oynatici = AudioCache();
  void sesliCal(String ses) {
    oynatici.play('$ses.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('bongo', Colors.blueAccent),
                  ),
                  Expanded(
                    child: buildDrumPad('bip', Colors.redAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('clap1', Colors.purpleAccent),
                  ),
                  Expanded(
                    child: buildDrumPad('clap2', Colors.blueGrey),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('clap3', Colors.orange),
                  ),
                  Expanded(
                    child: buildDrumPad('crash', Colors.lightBlueAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('how', Colors.pinkAccent),
                  ),
                  Expanded(
                    child: buildDrumPad('ridebel', Colors.brown),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  FlatButton buildDrumPad(String ses, Color renk) {
    return FlatButton(
      padding: EdgeInsets.all(8),
      onPressed: () {
        sesliCal(ses);
      },
      child: Container(
        color: renk,
      ),
    );
  }
}
