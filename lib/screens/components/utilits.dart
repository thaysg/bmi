import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Widget child;

  const RoundIconButton({this.child});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: () {},
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      child: child,
    );
  }
}
