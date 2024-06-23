import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dice',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
          elevation: 8,
        ),
        backgroundColor: Colors.red,
        body: Center(
          child: DicePage(),
        ),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: rollDice, // Call rollDice when left dice is tapped
              child: Image.asset(
                'assets/images/dice$leftDiceNumber.png', // Adjusted image path
                height: 100,
                width:100,
              ),
            ),
            GestureDetector(
              onTap: rollDice, // Call rollDice when right dice is tapped
              child: Image.asset(
                'assets/images/dice$rightDiceNumber.png', // Adjusted image path
                height: 100,
                width:100,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
