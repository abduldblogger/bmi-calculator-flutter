import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onPress;

  ReUsableCard({@required this.color, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
      ),
    );
  }

  void myGestureDetector(GestureDetector gestureDetector) {}
}
