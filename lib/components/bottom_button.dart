import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String title;

  BottomButton({@required this.onTap, @required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            title,
            style: kResultsTextStyle,
          ),
        ),
      ),
    );
  }
}
