import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        /*drawer: Drawer(
          child: Center(
            child: Text('Hello Robin Schulz'),
          ),
        ),*/
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          title: Text('I am Rich'),
          backgroundColor: Colors.blueGrey[900],
          //iconTheme:IconThemeData(color: Colors.deepPurple)
        ),
        body: Center(
          child: Image(
            image: AssetImage(
                'images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}


//icons8, vecteezy