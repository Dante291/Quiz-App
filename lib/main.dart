import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionindex = 0;

  void answerquestion() {
    setState(() {
      questionindex = questionindex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questiontext': 'What\'s your fav animal? ',
        'answers': ['Black', 'Blue', 'Green', 'Pink']
      },
      {
        'questiontext': 'What\'s your fav color? ',
        'answers': ['Cat', 'Dog', 'Lion', 'Rabbit']
      },
      {
        'questiontext': 'What\'s your fav food? ',
        'answers': ['Mexican', 'Italian', 'Indian']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('QUIZ APP'),
          titleTextStyle: const TextStyle(fontSize: 25),
        ),
        body: Column(children: [
          Question(
            questions[questionindex]['questiontext'] as String,
          ),
          ...(questions[questionindex]['answers'] as List<String>)
              .map((answer) {
            return Answer(answerquestion, answer);
          }).toList()
        ]),
      ),
    );
  }
}
