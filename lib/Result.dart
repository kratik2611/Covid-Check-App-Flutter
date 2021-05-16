import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function restartState;
  final int symptomCount;

  Result({this.restartState, this.symptomCount});

  Widget get call {
    String result;
    if (symptomCount >= 100) {
      return Text(
        'Hurry! get to the hospital, you have CORONA!!!',
        style: TextStyle(fontSize: 25, color: Colors.red, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      );
    } else if (symptomCount > 30) {
      return Text(
        'You should consult a Doctor.',
        style: TextStyle(fontSize: 25, color: Colors.orange, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      );
    }
    else {
      return Text(
        'You are safe..',
        style: TextStyle(fontSize: 25, color: Colors.green, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          call,
          TextButton(
            onPressed: restartState,
            child: Text(
              '**Restart Covid-Test**',
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
              ),
            ),
          )
        ],
      ),
    );
  }
}
