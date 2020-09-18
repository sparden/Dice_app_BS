import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Dice_App',
          ),
        ),
        body: DiceApp(),
      ),
    ),
  );
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int photoNumL = 1;
  int photoNumR = 1;
  void changePhoto() {
    photoNumL = Random().nextInt(6) + 1;
    photoNumR = Random().nextInt(6) + 1;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changePhoto();
                });
              },
              child: Image.asset('images/ak$photoNumL.jpg'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changePhoto();
                });
              },
              child: Image.asset('images/ak$photoNumR.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
