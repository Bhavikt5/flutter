import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftSideNumber = 1;
  var rightSideNumber = 1;

  void changeNo() {
    setState(() {
      leftSideNumber = Random().nextInt(6) + 1;
      rightSideNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeNo();
              },
              child: Image(
                image: AssetImage('images/dice$leftSideNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeNo();
              },
              child: Image(
                image: AssetImage('images/dice$rightSideNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
