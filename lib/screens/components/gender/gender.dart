import 'package:flutter/material.dart';

class GenderSelected extends StatefulWidget {
  final Color colour;
  final AssetImage image;
  final String title;
  final Function onPress;

  const GenderSelected({this.colour, this.image, this.title, this.onPress});

  @override
  _GenderSelectedState createState() => _GenderSelectedState();
}

class _GenderSelectedState extends State<GenderSelected> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Column(
        children: [
          CircleAvatar(
            radius: 70,
            backgroundColor: widget.colour,
            backgroundImage: widget.image,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
