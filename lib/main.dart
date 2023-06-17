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
    var question = [
      'whats your fav color',
      'whats your fav animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MY FIRST APP'),
          titleTextStyle: const TextStyle(fontSize: 25),
        ),
        body: Column(
            // mainAxisAlignment: MainAxisAlignment.values,
            children: [
              Question(
                question[questionindex],
              ),
              Answer(answerquestion),
              SizedBox(
                height: 5,
              ),
              Answer(answerquestion),
              SizedBox(
                height: 5,
              ),
              Answer(answerquestion),
            ]),
      ),
    );
  }
}
