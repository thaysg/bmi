import 'package:flutter/material.dart';

class MyContainers extends StatelessWidget {
  MyContainers(
      {@required this.colour,
      @required this.containerHeight,
      @required this.containerWidth,
      this.title,
      this.cardChild,
      this.onPress});

  final Color colour;
  final double containerWidth;
  final double containerHeight;
  final Widget cardChild;
  final Function onPress;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: colour),
        width: containerWidth,
        height: containerHeight,
        child: cardChild,
      ),
    );
  }
}
