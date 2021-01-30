import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomButton extends StatelessWidget {
  final Function onTap;
  final String title;
  BottomButton({@required this.onTap, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 12.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xffF50057),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
