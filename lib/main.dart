import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var index = 0;

  void answer() {
    setState(() {
      index += 1;
    });

    print(index);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'how old are you',
      'where are you from',
      'what is your name',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fisrt Flutter App'),
        ),
        body: Column(
          children: [
            Question(questions[index]),
            RaisedButton(
              child: Text('Click ME'),
              onPressed: answer,
            ),
            RaisedButton(
              child: Text('Click ME'),
              onPressed: () => print('hello'),
            ),
            RaisedButton(
              child: Text('Click ME'),
              onPressed: () {
                print('1234');
              },
            ),
          ],
        ),
      ),
    );
  }
}
