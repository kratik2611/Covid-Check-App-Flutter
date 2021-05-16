import 'package:covid_app/Questions.dart';
import 'package:flutter/material.dart';
import 'Buttons.dart';

class ButtonList extends StatelessWidget {
  final List<Map<String, Object>> buttonInfo;
  final int index;
  final Function stateChange;

  ButtonList(
      {@required this.buttonInfo,
      @required this.index,
      @required this.stateChange});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(buttonInfo[index]['questionText']),
        ...(buttonInfo[index]['options'] as List<Map<String, Object>>).map((x) {
          return Buttons(
            changeState: () => stateChange(x['score']),
            optionText: x['answer'],
          );
        }).toList(),
      ],
    );
  }
}
