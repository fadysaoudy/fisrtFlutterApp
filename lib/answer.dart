import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandeler;
  final String answerText;

  Answer(this.selectHandeler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: RaisedButton(
          textColor: Colors.white,
          child: Text(answerText),
          color: Colors.grey[700],
          onPressed: selectHandeler,
        ));
  }
}
