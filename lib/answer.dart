import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selecthandler;

  Answer(this.selecthandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
              padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
              textStyle: MaterialStateProperty.all(
                  const TextStyle(fontSize: 14, color: Colors.white))),
          onPressed: null,
          child: Text('Answer A'),
        ));
  }
}
