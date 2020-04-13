import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home:BallPageLess(),
      ),
    );

class BallPageLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Center(
          child: Text('Ask Me Anything'),
        ),
      ),
      body: BallAsking(),
    );
  }
}

class BallAsking extends StatefulWidget {
  @override
  _BallAskingState createState() => _BallAskingState();
}

class _BallAskingState extends State<BallAsking> {
  int ballNumber = 1;

  void updateBall(){
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child:FlatButton(
          onPressed: (){
            updateBall();
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
    );
  }
}