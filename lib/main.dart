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
                    child: FlatButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        sesliCal('bongo');
                      },
                      child: Container(
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        sesliCal('bip');
                      },
                      child: Container(
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        sesliCal('clap1');
                      },
                      child: Container(
                        color: Colors.purpleAccent,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        sesliCal('clap2');
                      },
                      child: Container(
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        sesliCal('clap3');
                      },
                      child: Container(
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        sesliCal('crash');
                      },
                      child: Container(
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        sesliCal('how');
                      },
                      child: Container(
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        sesliCal('ridebel');
                      },
                      child: Container(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
