import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selecthandler;
  final String answertext;

  Answer(this.selecthandler, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 5),
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
              padding: MaterialStateProperty.all(
                const EdgeInsets.all(20),
              ),
              textStyle: MaterialStateProperty.all(
                  const TextStyle(fontSize: 14, color: Colors.white))),
          onPressed: selecthandler,
          child: Text(answertext),
        ));
  }
}
