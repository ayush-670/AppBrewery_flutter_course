import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask me Anything'),
        centerTitle: true,
      ),
      body: Ball(),
      backgroundColor: Colors.blue,
    );
  }
}

class Ball extends StatefulWidget {
  
  @override

  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber=1;
  int _ballNo(){
    setState(() {
      ballNumber= Random().nextInt(4)+1;

    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          _ballNo();
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
