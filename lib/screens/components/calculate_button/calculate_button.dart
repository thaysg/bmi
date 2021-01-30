import 'package:flutter/material.dart';

class CalculateButton extends StatefulWidget {
  @override
  _CalculateButtonState createState() => _CalculateButtonState();
}

class _CalculateButtonState extends State<CalculateButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 12.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return Container();
              }),
            );
          },
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xffF50057),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                'CALCULATE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
