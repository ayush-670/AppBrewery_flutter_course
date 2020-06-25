import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(String sound) {
    final player = AudioCache();
    player.play(sound);
  }

  _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget buildkey(String note, {Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playsound(note);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: Center(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 35.0),
                  child: Text(
                    'Developed with love by, ',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w200),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0.0),
                  child: InkWell(
                    child: Text(
                      'Ayush Singh',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    onTap: () {
                      launch('https://www.github.com/ayush-670');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            'Play Me',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey('note1.wav', color: Colors.red),
              buildkey('note2.wav', color: Colors.orange),
              buildkey('note3.wav', color: Colors.yellow),
              buildkey('note4.wav', color: Colors.green),
              buildkey('note5.wav', color: Colors.teal),
              buildkey('note6.wav', color: Colors.blue),
              buildkey('note7.wav', color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
