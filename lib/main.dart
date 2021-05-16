import 'package:covid_app/Result.dart';
import 'package:flutter/material.dart';

import 'ButtonList.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  int _count = 0;

  void _nextIndex(int score) {
    _count += score;
    setState(() {
      _index++;
    });
  }

  void _restart() {
    setState(() {
      _count = 0;
      _index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'questionText': 'What is your temperature?',
        'options': [
          {'answer': '>=80', 'score': 10},
          {'answer': '<80', 'score': 0},
        ]
      },
      {
        'questionText': 'Having dry cough?',
        'options': [
          {'answer': 'YES', 'score': 10},
          {'answer': 'NO', 'score': 0},
        ]
      },
      {
        'questionText': 'Do you feel difficulty in breathing or shortness of breath?',
        'options': [
          {'answer': 'YES', 'score': 100},
          {'answer': 'NO', 'score': 0},
        ]
      },
      {
        'questionText': 'Loss of taste or smell?',
        'options': [
          {'answer': 'YES', 'score': 50},
          {'answer': 'NO', 'score': 0},
        ]
      },
      {
        'questionText': 'Do you have pain in chest or pressure?',
        'options': [
          {'answer': 'YES', 'score': 100},
          {'answer': 'NO', 'score': 0},
        ]
      },
      {
        'questionText': 'Do you feel tiredness?',
        'options': [
          {'answer': 'YES', 'score': 10},
          {'answer': 'NO', 'score': 0},
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Covid-19'),
        ),
        body: _index < question.length && _count < 100
            ? ButtonList(
                buttonInfo: question,
                index: _index,
                stateChange: _nextIndex,
              )
            : Result(restartState: _restart, symptomCount: _count),
      ),
    );
  }
}
