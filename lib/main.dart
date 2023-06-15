import 'package:flutter/material.dart';
import './question.dart';

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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MY FIRST APP'),
          titleTextStyle: const TextStyle(fontSize: 25),
        ),
        body: Column(children: [
          Question[questionindex],
        ]),
      ),
    );
  }
}
