import 'package:flutter/material.dart';
import './questions.dart';
import './quiz_brain.dart';



QuizBrain quizBrain = QuizBrain();


void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
List <Widget>scoreKeeper = [];
/*
List <String> questions= [
'You can lead a cow down stairs but not up stairs.',
'Approximately one quarter of human bones are in the feet.',
'A slug\'s blood is green.'
];


List<bool> ans =[
false,
true,
true
];
List<Question> questionBook = [
Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
Question(q: 'Approximately one quarter of human bones are in the feet.', a: true),
Question(q: 'A slug\'s blood is green.', a: true),

];*/

//Question q1= Question(q: 'You can lead a cow down stairs but not up stairs.', a: false);


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
              bool corrAns= quizBrain.getAnswer();
              if (corrAns == true){
                print('user got it right!');
              }  else {
                print('user got it wrong');
              }
                
                setState(() {
                 quizBrain.nextQues();
                });
                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {

                bool corrAns= quizBrain.getAnswer();
              if (corrAns == false){
                print('user got it right!');
              }  else {
                print('user got it wrong');
              }
                
                setState(() {
                  quizBrain.nextQues();
                });
                 //scoreKeeper.add(Icon(Icons.close),);
                //The user picked false.
              },
            ),
          ),
        ),
       Row(children: scoreKeeper,)
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
