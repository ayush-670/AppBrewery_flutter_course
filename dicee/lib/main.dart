import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red[900],
          centerTitle: true,
        
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
   void _random(){
setState(() {
                   lftDiNo= Random().nextInt(6)+1;
                   rftDiNo= Random().nextInt(6)+1;
                });
}

  int lftDiNo=1;
  int rftDiNo=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                
               _random();
              },
              child: Image.asset('images/dice$lftDiNo.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
             onPressed: (){
                _random();
             },
              child: Image.asset('images/dice$rftDiNo.png'),
            ),
          ),
        ],
      ),
    );
  }
}


