import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function changeState;
  final String optionText;

  Buttons({@required this.changeState, @required this.optionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        child: Text(
          optionText,
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        onPressed: changeState,
      ),
    );
  }
}
